chapter: Separation of Concerns
//==================
$ git clone git://github.com/dilvie/tinyapp.git
    
    
//==================//==================
var app = require('tinyapp');

app.init({
  environment: environment,
  pageData: pageData,
  beforeRender: [promise1, promise2...]
});
    
    
//==================//==================
var app = require('tinyapp');
    
    
//==================//==================
var app = require('tinyapp'),

  hello = function hello() {
    return 'hello, world';
  },

  api = {
    hello: hello
  };
    
    
//==================//==================
var app = require('tinyapp'),

  hello = function hello() {
    return 'hello, world';
  },

  api = {
    hello: hello
  };

module.exports = api;
    
    
//==================//==================
app.register({
  load: load,
  render: render
});
    
    
//==================//==================
var
  app = require('tinyapp'),
  view = require('./view'),
  data,

  load = function load() {
    var url = 'http://api.bandsintown.com/artists/' +
      'Skrillex.json?api_version=2.0&amp;app_id=YOUR_APP_ID';

    whenLoaded = app.get(url);
    whenLoaded.done(function (response) {
      data = response;
    });

    return whenLoaded.promise();
  },

  render = function render() {
    view.render(data);
  };

app.register({
  load: load,
  render: render,
});

module.exports = api;
    
    
//==================//==================
_.extend(myObject, Backbone.Events);

myObject.on('my_event', function handle(data) {
  console.log(data);
});

object.trigger('my_event', 'hi'); // logs 'hi'
    
    
//==================//==================
// Set up an aggregator on your app object.
var app = {
  bus: _.extend({}, Backbone.Events)
};

// In your logger module, log all invites in the app.
app.bus.on('invite', function handle(inviteData) {
  console.log(inviteData);
});

// Trigger an event when a user invites a friend.
app.bus.trigger('invite', {
  user: 'userId',
  friend: 'friend.email@example.com'
});
    
    
//==================//==================
Example: guestmodel.js

var Model = require('backbone-browserify').Model,
  app = require('./tinyapp'),

  // Set the checkedIn attribute on the model.

  toggleCheckedIn = function toggleCheckedIn() {
    this.set('checkedIn', !this.get('checkedIn'));
  },

  delegate = function delegate() {
    var sourceId = this.get('id');

    // Listen for toggled event, sent from the view.
    // sourceId is used to filter the event. The model
    // does not need to know where the event comes from,
    // only which item was clicked.

    app.on('toggled-checkedin', sourceId,
      toggleCheckedIn.bind(this));


    // Relay the change event so the view can listen for it
    // without knowing anything about the model.

    this.on('change:checkedIn', function (item) {

      // Send a shallow copy of the list item as the
      // message payload. Make sure the new checkedIn
      // state is easy to access.

      var event = app.extend({}, item, {
        sourceId: this.id,
        checkedIn: item.get('checkedIn')
      });


      // Broadcast the message on the aggregator.

      app.trigger('changed.checkedIn', event);
    }.bind(this));  
  },

  // The collection expects a Backbone.Model constructor.

  api = Model.extend({
    initialize: delegate,
    toggleCheckedIn: toggleCheckedIn
  });

module.exports = api;
    
    
//==================//==================
app.on('toggled-checkedin', sourceId,
  toggleCheckedIn.bind(this));
    
    
//==================//==================
function on() {
  var args = [].slice.call(arguments),
    type = args[0],
    sourceId = args[1],
    callback = args[2];

  // If there's no sourceId, just pass this through
  // to the event emitter.

  if (args.length <= 2) {
    events.on.apply(events, arguments);
  } else {


    // Otherwise, filter out any events that don't match
    // the expected sourceId.

    events.on.call(events, type, function (event) {
      if (event.sourceId === sourceId) {
        callback(event);
      }
    });
  }
}
    
    
//==================//==================
Example: guestlistcollection.js

var app = require('./tinyapp'),
  Model = require('./guestmodel'),
  Collection = require('backbone-browserify')
    .Collection.extend({
      model: Model
    }),

  create = function create(models) {
    models = models || app.pageData.guestList;

    return new Collection(models);
  },

  api = {
    create: create
  };

module.exports = api;
    
    
//==================//==================
Example: guestlistview.js

var app = require('./tinyapp'),

  // Assign Backbone.View to the View var.

  View = require('backbone-browserify').View,

  $ = app.$,
  checkedinClass = 'icon-check',
  listClass = 'dropdown-menu',
  guestClass = 'guest',


  // Rebroadcast DOM click events on the app event
  // aggregator.

  relayClick = function relayClick(e) {

    // Get the ID from the element and use it to
    // namespace the event.

    var sourceId = $(this).attr('id'),
      event = app.extend(e, {
        sourceId: $(this).attr('id')
      });

    app.trigger('toggled-checkedin', event);
  },

  delegate = function delegate() {

    // Delegate all click events to the parent element.

    this.$el.on('click', '.' + guestClass, relayClick);

    // Listen for changed events from the model
    // and make sure the element reflects the current
    // state.

    app.on('changed.checkedIn', function changeHandler(event) {
      var id = event.id;


      // Select the right list item by ID.

      this.$el.find('#' + id)
        .toggleClass(checkedinClass, event.checkedIn);

    }.bind(this));
  },

  render = function render(guestlist) {
    var $el = this.$el;

    $el.empty();

    // Loop over the passed-in guest models and render
    // them as li elements.

    guestlist.forEach(function (guestModel) {
      var $guest;
      guest = guestModel.toJSON();
      $guest = $('<li class="' + guestClass + '" ' +
        'id="' + guest.id +'">' +
        '<span class="name">' + guest.name +
        '</span></li>');
      $guest.appendTo($el);
    });

    return this;
  },

  // Define the backbone view.
  GuestlistView = View.extend({
    tagName: 'ol',
    id: 'guestlist-view',
    className: listClass,
    initialize: delegate,
    render: render
  }),

  // Expose a factory function.
  create = function create() {
    return new GuestlistView();
  },

  api = {
    create: create
  };

module.exports = api;
    
    
//==================//==================
Example: Creating a Backbone view

// Define the backbone view.
GuestlistView = View.extend({
  tagName: 'ol',
  id: 'guestlist-view',
  className: listClass,
  initialize: delegate,
  render: render
}),
    
    
//==================//==================
render = function render(data) {
  var $el = this.$el;

  // Prevent memory leaks in rerender cases.
  $el.off('click.' + this.className);
  $el.empty();

  processTemplate($el, data);

  // Reattach listener.
  $el.on('click.' + this.className, handleClick);

  return this;
};
    
    
//==================//==================
events: {
  'click': handleClick
}
    
    
//==================//==================
// From the delegate() function:
// Delegate all click events to the parent element.
this.$el.on('click', '.' + guestClass, relayClick);
    
    
//==================//==================
// Define the backbone view.
GuestlistView = View.extend({
  tagName: 'ol',
  id: 'guestlist-view',
  className: listClass,
  initialize: delegate,
  render: render,

  // Add the handler to the view object:
  relayClick: relayClick,

  // Let Backbone handle the event delegation:
  events: {
    'click .guest': 'relayClick'
  }
}),
    
    
//==================//==================
'<li class="' + guestClass +
  '" ' +  'id="' + guest.id +'">' +
  '<span class="name">' + guest.name +
  '</span></li>'
    
    
//==================//==================
<li class="<%= guestClass %>" id="<%= id %>">
  <span class="name"><%= name %></span>
</li>
    
    
//==================//==================
<script id="guest" type="text/template">
  <li class="<%= guestClass %>" id="<%= id %>">
    <span class="name"><%= name %></span>
  </li>
</script>
    
    
//==================//==================
// Assign Backbone.View to the View var.
View = require('backbone-browserify').View,

// Grab the template utility from Underscore.
template = require('underscore').template,
    
    
//==================//==================
"underscore": "*",
    
    
//==================//==================
$ npm install
    
    
//==================//==================
Example: render() with template

render = function render(guestlist) {
  var $el = this.$el,

    // Compile the guest template.
    guestTemplate = template($('#guestTemplate').html());

  $el.empty();


  // Loop over the passed-in guest models and render
  // them as li elements.
  guestlist.forEach(function (guestModel) {
    var guest;

    // Build the data object to pass into the template.
    guest = guestModel.toJSON();

    // Add the guestClass to the data object.
    guest.guestClass = guestClass;

    // Process the template data and append the output to the
    // list element.
    $el.append(guestTemplate(guest));
  });

  return this;
}
    
    
//==================//==================
Example: document.register()

document.register('x-knob', {

  'prototype': Object.create( (window.HTMLInputElement ||
    window.HTMLSpanElement || window.HTMLElement).prototype ),

  'lifecycle': {

    created: function(proto) {
      this.type='range';
      console.log('x-knob created', this);
    },

    inserted: function() {
      console.log('x-knob inserted', this);
    },

    removed: function() {
      console.log('x-knob removed', this);
    },

    attributeChanged: function(attr, value) {
      console.log('x-knob attributeChanged', this, attr, value);
    }

  }
});
    
    
//==================//==================
var knob = document.createElement('x-knob');
    
    
//==================//==================
Example: Custom tag tests

$(function () {

  test('document.register()', function () {

    equal(typeof document.register, 'function',
      'Should exist.');

  });

  test('document.createElement("x-knob")', function () {
    var knob = document.createElement('x-knob');

    ok(knob.getAttribute,
      'should produce a custom element.');
  });

  test('x-knob inheritance', function () {
    var knob = document.createElement('x-knob');

    ok(knob.checkValidity,
      'should inherit from input element.');
  });

  test('x-knob input type', function () {
    var knob = document.createElement('x-knob');

    equal(knob.type, 'range',
      'should have type="range".');
  });

});
    
    
//==================//==================
$ curl https://raw.github.com/creationix/nvm/master/install.sh | sh
    
    
//==================//==================
$ mkdir my-first-project
$ cd my-first project
    
    
//==================//==================
$ npm init
    
    
//==================//==================
$ npm install --save express
    
    
//==================//==================
S3_KEY=mykey
S3_SECRET=mysecret
    
    
//==================//==================
$ cp s3.env.example s3.env
    
    
//==================//==================
var express = require('express'),

  // Create app instance.
  app = express();
    
    
//==================//==================
app.get('/', function (req, res) {
  res.setHeader('Content-Type', 'text/plain');

  res.end('Hello, world!');
});
    
    
//==================//==================
app.get('/:name', function(req, res){
  var name = req.params.name;

  res.send('Hello, ' + name);
});
    
    
//==================//==================
app.get(/(Hugh|Kevin)/, function (req, res, next) {
  var name = req.params[0], // Whitelisted user
    output;

  // Write something to output...

  res.send('Hello, ' + name);
});
    
    
//==================//==================
// Add some data to the request object that your other
// middleware and routes can use.
app.use(function (req, res, next) {
  req.foo = 'bar';
  next();
});
    
    
//==================//==================
'use strict';
var express = require('express'),

  // Create app instance.
  app = express(),

  // Use the `PORT` environment variable, or port 44444
  port = process.env.PORT || 44444;

// The new middleware adds the property `foo` to the request
// object and sets it to 'bar'.
app.use(function (req, res, next) {
  req.foo = 'bar';
  next();
});

app.get('/', function (req, res) {
  res.setHeader('Content-Type', 'text/plain');

  // Send the value passed from the middleware, above.
  res.end(req.foo);
});

app.listen(port, function () {
  console.log('Listening on port ' + port);
});
    
    
//==================//==================
$ curl http://localhost:44444/
bar
    
    
//==================//==================
'use strict';
var express = require('express'),

  // Create app instance.
  app = express(),

  // Use the `PORT` environment variable, or port 44444
  port = process.env.PORT || 44444;

// Some middleware that produces an error:
app.use(function (request, response, next) {
  var bar;

  try {

    // This will throw because `foo` is undefined.
    request.foo = foo.get('bar');

  } catch (error) {

    // Pass the error to the next error handler in the
    // middleware chain. If you forget `return` here,
    // it will continue to process the rest of the
    // function, and probably throw an unhandled exception.

    return next(error);
  }

  // Do something with bar.
});

// Tell express to process routes before it gets to the error handler.
app.use(app.router);


// Error handlers take four parameters. The first is the error.
// Generally, you'll want to add your error handler to the bottom of
// your app.use() stack.
app.use(function (error, request, response, next) {

  // Log the error.
  console.log(error);

  // Send the user a friendly message:
  response.send(500, 'Your request was not handled successfully. ' +
    'Our smartest fix-it guy has already been alerted. ' +
    'Contact us if you need help.');

  // Use setTimeout to give the app time to log and clean up,
  // but shut down ASAP to avoid unintended behavior.
  // Could also use setImmediate() in recent versions of Node.
  setTimeout(function () {
    process.exit(1);
  }, 0);

});

app.get('/', function (req, res) {
  res.setHeader('Content-Type', 'text/plain');

  // Sadly, nobody will ever see this friendly greeting.
  res.end('Hello, world!');
});

app.listen(port, function () {
  console.log('Listening on port ' + port);
});
    
    
//==================//==================
var hulk = require('hulk-hogan');
    
    
//==================//==================
// Tell express where to find your templates.
app.set('views', __dirname + '/views');

// By default, Express will use a generic HTML wrapper (a layout)
// to render all your pages. If you don't need that, turn it off.
app.set('view options', {layout: false});

// Tell express which engine to use.
app.set('view engine', 'hulk-hogan');

// Specify the extension you'll use for your views.
app.engine('.html', hulk.__express);
    
    
//==================//==================
app.all('/', function (req, res) {
  res.render('index', req.data, function callback(err, html) {
    // Handle error.
  });
});
    
    
//==================//==================
var express = require('express'),

    app = express(), // Create the express app.

    // Try pulling the port from the environment. Or
    // default to 5555 if no environment variable is set.
    port = +process.env.PORT || 5555;

// .bodyParser() parses the request body and creates the
// req.body object.
app.use( express.bodyParser() );

// .methodOverride() lets you simulate DELETE and PUT
// methods with POST methods. Common boilerplate.
app.use( express.methodOverride() );

// .static() creates a static file server, which looks for
// assets in the /public directory, in this case.
app.use( express.static(__dirname + '/public') );

// app.router handles path routing for express apps.
app.use( app.router );

// Express comes with a default error handler that is
// intended for development use. You'll want to implement
// your own for production systems.
app.use( express.errorHandler() );

app.listen(port, function () {
  console.log('Server listening on port ' + port);
});
    
    
//==================