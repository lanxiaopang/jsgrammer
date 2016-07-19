chapter: Modules
//==================
(function (exports) {
  'use strict';

  // Make sure local storage is supported.
  var ns = 'post',
    supportsLocalStorage =
      (typeof localStorage !== 'undefined')
        && localStorage !== null,

    storage,

    storageInterface = stampit().methods({
      save: function saveStorage() {
        throw new Error('.save() method not implemented.');
      }
    }),

    localStorageProvider = stampit
      .compose(storageInterface)
      .methods({
        save: function saveLocal() {
          localStorage.storage = JSON.stringify(storage);
        }
      }),

    cookieProvider = stampit
      .compose(storageInterface)
      .methods({
        save: function saveCookie() {
          $.cookie('storage', JSON.stringify(storage));
        }
      }),

    post = stampit().methods({
        save: function save() {
          storage[this.id] = this.data;
          storage.save();
          return this;
        },
        set: function set(name, value) {
          this.data[name] = value;
          return this;
        }
      })
      .state({
        data: {
          message: '',
          published: false
        },
        id: undefined
      })
      .enclose(function init() {
        this.id = generateUUID();
        return this;
      }),

    api = post;

  storage = (supportsLocalStorage)
    ? localStorageProvider()
    : cookieProvider();

  exports[ns] = api;

}((typeof exports === 'undefined')
    ? window
    : exports
  ));

$(function () {
  'use strict';

  var myPost = post().set('message', 'Hello, world!');

  test('Interface example', function () {
    var storedMessage,
      storage;

    myPost.save();
    storage = JSON.parse(localStorage.storage);
    storedMessage = storage[myPost.id].message;

    equal(storedMessage, 'Hello, world!',
      '.save() method should save post.');
  });
});
    
    
//==================//==================
    storageInterface = stampit().methods({
      save: function saveStorage() {
        throw new Error('.save() method not implemented.');
      }
    }),
    
    
//==================//==================
    localStorageProvider = stampit
      .compose(storageInterface)
      .methods({
        save: function saveLocal() {
          localStorage.storage = JSON.stringify(storage);
        }
      }),

    cookieProvider = stampit
      .compose(storageInterface)
      .methods({
        save: function saveCookie() {
          $.cookie('storage', JSON.stringify(storage));
        }
      }),
    
    
//==================//==================
  storage = (supportsLocalStorage)
    ? localStorageProvider()
    : cookieProvider();
    
    
//==================//==================
var myModule = (function () {
  return {
    hello: function hello() {
      return 'Hello, world!';
    }
  };
}());

test('Module pattern', function () {
  equal(myModule.hello(),
    'Hello, world!',
    'Module works.');
});
    
    
//==================//==================
(function (exports) {
  var api = {
      moduleExists: function test() {
        return true;
      }
    };
  $.extend(exports, api);
}((typeof exports === 'undefined') ?
    window : exports));

test('Pass in exports.', function () {
  ok(moduleExists(),
    'The module exists.');
});
    
    
//==================//==================
var app = {};

(function (exports) {

  (function (exports) {
    var api = {
        moduleExists: function test() {
          return true;
        }
      };
    $.extend(exports, api);
  }((typeof exports === 'undefined') ?
      window : exports));

}(app));

test('Pass app as exports.', function () {
  ok(app.moduleExists(),
    'The module exists.');
});
    
    
//==================//==================
define([moduleId,] dependencies, definitionFunction);
    
    
//==================//==================
define(['ch04/amd1', 'ch04/amd2'],
  function myModule(amd1, amd2) {
    var testResults = {
        test1: amd1.test(),
        test2: amd2.test()
      },

      // Define a public API for your module:
      api = {
        testResults: function () {
          return testResults;
        }
      };

    return api;
  });
    
    
//==================//==================
require(['ch04-amd'], function (amd) {
  var results = amd.testResults();

  test('AMD with Require.js', function () {
    equal(results.test1, true,
      'First dependency loaded correctly.');

    equal(results.test2, true,
      'Second dependency loaded correctly.');
  });
});
    
    
//==================//==================
if (typeof define === 'function') {
  define([], function () {
    return api;
  });
}
    
    
//==================//==================
'use strict';
require(['ch04/mymodule.js', 'text!ch04/mymodule.html'],
    function (myModule, view) {
  var container = document.body,
    css = 'ch04/mymodule.css';

  myModule.render(container, view, css);

  test('AMD Plugins', function () {
    equal($('#mymodule').text(), 'Hello, world!',
      'Plugin loading works.');
  });
});
    
    
//==================//==================
define(function () {
  'use strict';
  var api = {
    render: function render(container, view, css) {
      loadCss('ch04/mymodule.css');

      $(view).text('Hello, world!')
        .appendTo(container);
    }
  };

  return api;
});
    
    
//==================//==================
<div id="mymodule"></div>
    
    
//==================//==================
#mymodule {
  font-size:2em;
  color: green;
}
    
    
//==================//==================
function loadCss(url) {
  $('<link>', {
    type: 'text/css',
    rel: 'stylesheet',
    href: url,
  }).appendTo('head');
}
    
    
//==================//==================
'use strict';
var foo = function foo () {
  return true;
};

exports.foo = foo;
    
    
//==================//==================
var flatiron = require('flatiron'),
  app = flatiron.app;

app.use(flatiron.plugins.http, {
  // HTTP options
});

//
// app.router is now available. app[HTTP-VERB] is also available
// as a shortcut for creating routes
//
app.router.get('/version', function () {
  this.res.writeHead(200, { 'Content-Type': 'text/plain' })
  this.res.end('flatiron ' + flatiron.version);
});

app.start(8080);
    
    
//==================//==================
'use strict';
var mod = require('./ch04-modules.js'),
  result = (mod.foo() === true) ? 'Pass:' : 'Fail:';

console.log(result, '.foo() should return true.');
    
    
//==================//==================
//Example: package.json

{
  "name": "simple-express-static-server",
  "version": "0.1.0",
  "author": "Sandro Padin",
  "description": "A very simple static file server. For development use only.",
  "keywords": ["http", "web server", "static server"],
  "main": "./server.js",
  "scripts": {
    "start": "node ./server.js"
  },
  "repository": {
    "type": "git",
    "url": "https://github.com/spadin/simple-express-static-server.git"
  },
  "dependencies": {
    "express": "3.0.x"
  },
  "engines": {
    "node": ">=0.6"
  }
}
    
    
//==================//==================
var foo = function foo () {
  return true;
};

export { foo };
    
    
//==================//==================
import { foo } from 'es6-foo';

let test = foo() === true ? 'Pass' : 'Fail';

console.log(test, 'foo() should import and return true.');
    
    
//==================//==================
import { foo as bar } from 'es6-foo';
    
    
//==================//==================
var foo = function foo () {
  return true;
};

export default foo; // No braces required
    
    
//==================//==================
import foo from 'es6-foo'; // No braces required
    
    
//==================//==================
Example: guestlist/test/test.js

var $list = $('#guestlist-view'),
  checkedinClass = 'icon-check',
  guestSelector = '.guest';

test('Guestlist', function () {
  ok($list.length,
    'List element should have guests.');
});

test('Guests', function () {

  // Grab the first guest from the list
  var $guest = $($list.find(guestSelector)[0]),
    guestExists = !!$guest[0];

  // Simulate click
  $guest.click();

  ok($guest.hasClass(checkedinClass),
      'Should be checked on click');

  $guest.click();

  // To avoid a false positive, make sure
  // you have a guest element to test against.
  ok(guestExists && !$guest.hasClass(checkedinClass),
      'Should toggle off when clicked again');
});
    
    
//==================//==================
Example: guestlist/test/index.html

<!DOCTYPE html>
  <html>
    <head>
    </head>
    <body>
      <section>
        <h1 id="qunit-header">QUnit Test Suite</h1>  
        <h2 id="qunit-banner"></h2>  
        <div id="qunit-testrunner-toolbar"></div>  
        <h2 id="qunit-userAgent"></h2>  
        <ol id="qunit-tests"></ol>
      </section>

      <section id="container"></section>

      <script src="jquery.js"></script>
      <script src="qunit.js"></script>
      <script src="../public/app.js"></script>
      <script src="test.js"></script>
      <link href="qunit.css" rel="stylesheet"></style>

    </body>
  </html>
    
    
//==================//==================
Example: guestlist/src/guestlistmodel.js

var api = {
    load: function load() {
      return [
        'Jimi Hendrix',
        'Billie Holiday',
        'Nina Simone',
        'Jim Morrison',
        'Duke Ellington',
        'John Bonham'
      ];
    }
  };

module.exports = api;
    
    
//==================//==================
Example: guestlist/src/guestlistview.js

var $ = require('jquery-browserify'),
  checkedinClass = 'icon-check',
  listClass = 'dropdown-menu',
  guestClass = 'guest',

  toggleCheckedIn = function toggleCheckedIn(e) {
    $(this).toggleClass(checkedinClass);
  },

  $listView = $('<ol>', {
    id: 'guestlist-view',
    'class': listClass
  }).on('click', '.' + guestClass, toggleCheckedIn),

  render = function render(guestlist) {

    $listView.empty();

    guestlist.forEach(function (guest) {
      $guest = $('<li class="' + guestClass + '">' + 
        '<span class="name">' + guest + 
        '</span></li>');
      $guest.appendTo($listView);
    });

    return $listView;
  },

  api = {
    render: render
  };

module.exports = api;
    
    
//==================//==================
Example: guestlist/src/app.js

var $ = require('jquery-browserify'),
  guestlistModel = require('./guestlistmodel'),
  guestlistView = require('./guestlistview'),
  $container = $('#container');

$(function init() {
  var guestlistData = guestlistModel.load();
    $guestlist = guestlistView.render(guestlistData);
  $container.empty().append($guestlist);
});
    
    
//==================//==================
$ browserify src/app.js -o public/app.js
    
    
//==================//==================
Example: guestlist/package.json

{
  "name": "guestlist",
  "version": "0.1.0",
  "author": "Eric Elliott",
  "description": "A handy tool for bouncers.",
  "keywords": ["party", "guestlist"],
  "main": "dist/app.js",
  "scripts": {
    "test": "grunt test"
  },
  "dependencies": {
    "jquery-browserify": "*"
  },
  "devDependencies": {
    "traverse": "*",
    "grunt": "*",
    "grunt-browserify": "*",
    "browserify": "*"    
  },
  "engines": {
    "node": ">=0.6"
  }
}
    
    
//==================//==================
Example: guestlist/grunt.js

/*global module*/
module.exports = function(grunt) {
  'use strict';
  grunt.initConfig({

    // Read package.json into an object for later
    // reference (for example, in meta, below).
    pkg: '<json:package.json>',

    meta: {

      // A template to add to the top of the bundled
      // output.
      banner: '\n/*! <%= pkg.title || pkg.name %> ' +
        '- v<%= pkg.version %> - ' +
        '<%= grunt.template.today("yyyy-mm-dd") %>\n ' +
        '<%= pkg.homepage ? "* " + pkg.homepage + "\n' +
        ' *\n " : "" %>' +
        '* Copyright (c) ' +
        '<%= grunt.template.today("yyyy") %> ' +
        '<%= pkg.author.name %>;\n' +
        ' * Licensed under the <%= ' +
        '_.pluck(pkg.licenses, "type").join(", ") %>' +
        ' license */'
    },

    // Specify which files to send through JSHint.
    lint: {
      all: ['./grunt.js', './src/**/*.js',
        './test-src/test.js']
    },

    // JSHint configuration options.
    jshint: {
      browser: false,
      node: true,
      strict: false,
      curly: true,
      eqeqeq: true,
      immed: true,
      latedef: true,
      newcap: true,
      nonew: true,
      noarg: true,
      sub: true,
      undef: true,
      unused: true,
      eqnull: true,
      boss: false
    },

    // Specify test locations for QUnit.
    qunit: {
      browser: ['test/index.html']
    },

    // Configuration for browserify.
    browserify: {
      "public/app.js": {
        requires: ['traverse'],
        entries: ['src/**/*.js'],
        prepend: ['<banner:meta.banner>'],
        append: [],
        hook: function () {
          // bundle is passed in as first param
        }
      }
    }

  });

  // Load browserify tasks. Needed for bundling.
  grunt.loadNpmTasks('grunt-browserify');

  // Setup command line argument tasks. For e.g.:
  // $ grunt # executes lint, browserify, qunit
  // $ grunt test # runs qunit task, only.
  grunt.registerTask('default', 'lint browserify qunit');
  grunt.registerTask('install', 'browserify');
  grunt.registerTask('test', 'qunit');
};
    
    
//==================//==================
Example: Icon font CSS

@font-face {
  font-family: 'guestlist';
  src:url('fonts/guestlist.eot');
  src:url('fonts/guestlist.eot?#iefix')
      format('embedded-opentype'),
    url('fonts/guestlist.svg#guestlist')
      format('svg'),
    url('fonts/guestlist.woff') format('woff'),
    url('fonts/guestlist.ttf') format('truetype');
  font-weight: normal;
  font-style: normal;
}

[class^="icon-check"]:before,
[class*=" icon-check"]:before {
  font-family: 'guestlist';
  font-style: normal;
  font-size: .75em;
  speak: none;
  font-weight: normal;
  -webkit-font-smoothing: antialiased;
}
.icon-check:before {
  content: "\e000";
}
.dropdown-menu .icon-check .name {
  padding-left: 1em;
}
    
    
//==================