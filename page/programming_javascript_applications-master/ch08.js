chapter: Building RESTful APIs
//==================
  {
    "id": "chmzq50np0002gfixtr1qp64o",
    "name": "Settle",
    "artist": {
      "id": "chmzq4l480001gfixe8a3nzhm",
      "name": "Disclosure",
      "tourDates": [
        {
          "id": "chmzq45yn0000gfixa0wj6z9j",
          "date": "Sat Oct 19 2013",
          "name": "Treasure Island Music Festival",
          "location": "San Francisco, CA, US",
          "attending": [
            {
              "id": "chmzq7tyj0003gfix0rcylkls",
              "name": "Guy Lawrence"
            },
            {
              "id": "chmzqougy0004gfixuk66lhv4",
              "name": "Howard Lawrence"
            }
          ]
        }
      ]
    },
    "...": "..."
  }
    
    
//==================//==================
  {
    "id": "chmzq50np0002gfixtr1qp64o",
    "name": "Settle",
    "artist": "Disclosure",
    "artistId": "chmzq4l480001gfixe8a3nzhm",
    "coverImage": "/covers/medium/zrms5gxr.jpg",
    "year": "2013",
    "genres": [
      "electronic", "house", "garage", "UK garage",
      "future garage"
    ]
  }
    
    
//==================//==================
  // You need to parse the body to get the method param:
  app.use( express.json() );
  app.use( express.urlencoded() );

  // Now methodOverride() will work:
  app.use( express.methodOverride() );
    
    
//==================//==================
  app.get( '/albums', albumHandler() );
  app.all('/albums', function (req, res, next) {
    var err = new Error();
    err.route = '/albums';
    err.status = 405;
    next(err);
  });
    
    
//==================//==================
  app.get( '/albums', albumHandler() );
  app.all('/albums', function (req, res, next) {
    res.send(405);
  });
    
    
//==================//==================
  app.get( '/albums', albumHandler() );
  app.all( '/albums', errorHandler.httpError(405) );
    
    
//==================//==================
  'use strict';

  var express = require('express'),
    http = require('http'),
    logger = require('bunyan-request-logger'),
    errorHandler = require('express-error-handler'),
    app = express(),
    log = logger(),
    server,
    port = 3000;

  app.use( express.json() );
  app.use( express.urlencoded() );
  app.use( express.methodOverride() );
  app.use( log.requestLogger() );

  // Respond to get requests on /albums
  app.get('/albums', function (req, res) {
    res.send({
      chmzq50np0002gfixtr1qp64o: {
        "id": "chmzq50np0002gfixtr1qp64o",
        "name": "Settle",
        "artist": "Disclosure",
        "artistId": "chmzq4l480001gfixe8a3nzhm",
        "coverImage": "/covers/medium/zrms5gxr.jpg",
        "year": "2013",
        "genres": [
          "electronic", "house", "garage", "UK garage",
          "future garage"
        ]
      }
    });
  });

  // Deliver 405 errors if the request method isn't
  // defined.
  app.all( '/albums', errorHandler.httpError(405) );


  // Deliver 404 errors for any unhandled routes.
  // Express has a 404 handler built-in, but it
  // won't deliver errors consistent with your API.
  app.all( '*', errorHandler.httpError(404) );

  // Log errors.
  app.use( log.errorLogger() );

  // Create the server
  server = http.createServer(app);

  // Handle errors. Remember to pass the server
  // object into the error handler, so it can be
  // shut down gracefully in the event of an
  // unhandled error.
  app.use( errorHandler({
    server: server
  }) );

  server.listen(port, function () {
    console.log('Listening on port ' + port);
  });
    
    
//==================//==================
{
  "coverSourceURL":
    "http://cdn2.pitchfork.com/news/50535/f40d167d.jpg",
  "id": "chmzq50np0002gfixtr1qp64o",
  "name": "Settle",
  "artist": "Disclosure",
  "artistId": "chmzq4l480001gfixe8a3nzhm",
  "year": "2013",
  "genres": [
    "electronic", "house", "garage", "UK garage",
    "future garage"
  ]
}
    
    
//==================//==================
"coverImage": "/covers/medium/zrms5gxr.jpg"
    
    
//==================//==================
GET     /albums           ->  index
POST    /albums           ->  create, return URI
GET     /albums/:id       ->  show
PUT     /albums/:id       ->  create or update
DELETE  /albums/:id       ->  destroy
    
    
//==================//==================
// GET     /albums    ->  index
app.get('/albums', function (req, res) {
  var index = map(albums, function (album) {
    return {
      href: '/albums/' + album.id,
      properties: {
        name: album.name,
        artist: album.artist
      }
    };
  });
  res.send(index);
});
    
    
//==================//==================
{
  "chmzq50np0002gfixtr1qp64o": {
    "href": "/albums/chmzq50np0002gfixtr1qp64o",
    "properties": {
      "name": "Settle",
      "artist": "Disclosure"
    }
  }
}
    
    
//==================//==================
// POST    /albums    ->  create, return URI
app.post('/albums', function (req, res) {
  var id = cuid(),
    album = mixIn({}, req.body, {
      id: id
    });

  albums[id] = album;
  res.send(201, {
    href: '/albums/' + id
  });
});
    
    
//==================//==================
// Send available options on OPTIONS requests
app.options( '/albums', function (req, res) {
  res.send(['GET', 'POST', 'OPTIONS']);
});

// Deliver 405 errors if the request method isn't
// defined.
app.all( '/albums', errorHandler.httpError(405) );
    
    
//==================//==================
// GET     /albums/:id    ->  show
app.get('/albums/:id', function (req, res, next) {
  var id = req.params.id,
    body = albums[id],
    err;

  if (!body) {
    err = new Error('Album not found');
    err.status = 404;
    return next(err);
  }

  res.send(200, body);
});
    
    
//==================//==================
// PUT     /albums/:id    ->  create or update
app.put('/albums/:id', function (req, res) {
  var album = mixIn({}, req.body),
    id = req.params.id,
    exists = albums[id];

  album.id = id;
  albums[id] = album;

  if (exists) {
    return res.send(204);
  }

  res.send(201, {
    href: '/albums/' + album.id
  });
});
    
    
//==================//==================
// DELETE  /albums/:id    ->  destroy
app.delete('/albums/:id',
    function (req, res, next) {
  var id = req.params.id,
    body = albums[id],
    err;

  if (!body) {
    err = new Error('Album not found');
    err.status = 404;
    return next(err);
  }

  delete albums[id];

  res.send(204);
});
    
    
//==================//==================
  // Send available options on OPTIONS requests
  app.options( '/albums', function (req, res) {
    res.send(['GET', 'PUT', 'DELETE', 'OPTIONS']);
  });

  // 405 Method Not Allowed
  app.all( '/albums/:id', errorHandler.httpError(405) );
    
    
//==================//==================
  head
    title Order
  body.order
    h1 Order
    ul.properties
      li.property
        label Order Number
          span.orderNumber 42
      li.property
        label Item Count
          span.itemCount 3
      li.property
        label Status
          span.status pending

    ul.entities
      li.entity.items.collection
        a(rel='http://x.io/rels/order-items',
          href='http://api.x.io/orders/42/items')
          | Items

      li.entity.info.customer
        a(rel='http://x.io/rels/customer'
          href='http://api.x.io/customers/pj123'),
          ul.properties
            li.property
              label Customer ID
                span.customerId pj123
            li.property
              label Name
                span.name Peter Joseph

    ul.actions
      li.action
        // Action is one of:
        // index, create, show, put, delete, patch
        // The method in html is determined by the
        // mapping between actions and HTML methods.
        form(action='create',
          href='http://api.x.io/orders/42/items',
          type='application/x-www-form-urlencoded')
          fieldset
            legend Add Item
            label Order Number
              input(name='orderNumber', hidden='hidden', value='42')
            label Product Code
              input(name='productCode', type='text')
            label Quantity
              input(name='quantity', type='number')

    ul.links
      a(rel='self', href='http://api.x.io/orders/42',
        style='display: none;')
      a(rel='previous', href='http://api.x.io/orders/41') Previous
      a(rel='next', href='http://api.x.io/orders/43') Next
    
    
//==================//==================
  <head profile="http://ericelliott.me/profiles/resource">
      <title>Albums</title>
  </head>

  <body class="albums">
      <h1 class="title">Albums</h1>

      <ul class="properties">
          <li class="property">
              <p class="description">A list of albums you should listen to.</p>
          </li>

          <li class="property"><!-- A count of the total number of entities-->
          <!-- available. Useful for paging info.-->
          <label for="entityCount">Total count:</label> <span class="entityCount"
          id="entityCount">3</span></li>
      </ul>

      <ul class="entities">
          <li class="entity album">
              <a href="/albums/a65x0qxr" rel="item">
              <ul class="properties">
                  <li class="property name">Dark Side of the Moon</li>

                  <li class="property artist">Pink Floyd</li>
              </ul></a>
          </li>

          <li class="entity album">
              <a href="/albums/a7ff1qxw" rel="item">
              <ul class="properties">
                  <li class="property name">Random Access Memories</li>

                  <li class="property artist">Daft Punk</li>
              </ul></a>
          </li>
      </ul>

      <ul class="links">
          <li class="link">
              <a href="/albums?offset=2&amp;limit=1" rel="next">Next</a>
          </li>

          <li class="link">
              <link href="http://albums.com/albums" rel="self, canonical">
          </li>
      </ul>
  </body>
    
    
//==================//==================
  form(method='put', href="/names/123")
    label(for='name')
    input#name
    
    
//==================//==================
  <form method="PUT" href="/names/123">
    <label for="name"></label>
    <input id="name"/>
  </form>
    
    
//==================//==================
  a(headers='Accept:application/vnd.jiron+jade') Some Jiron resource
    
    
//==================//==================
  <a headers="Accept:application/vnd.jiron+jade">Some Jiron resource</a>
    
    
//==================//==================
  jade.render('a.album(href="/albums/123") Pretty Hate Machine');
    
    
//==================//==================
  <a href="/albums/123" class="album">Pretty Hate Machine</a>
    
    
//==================//==================
  # Get all albums, embed artist representations
  # in the response.
  GET /albums?embed=artist
    
    
//==================//==================
  # Fetch the artist represented by the 
  # `artist` rel in the album `links` 
  # collection.
  GET /albums?sideline=artist
    
    
//==================//==================
  # Sort albums by year, oldest to newest
  GET /albums?sort=year+asc

  # Sort albums by artist, alphabetical
  GET /albums?sort=artist+asc

  # Sort albums by year, newest to oldest, then album name, alphabetical
  GET /albums?sort=year+desc,name+asc
    
    
//==================//==================
  GET /albums?offset=10&limit=10
  # Or...
  GET /albums?page=2&limit=10
    
    
//==================//==================
  GET /albums?fields=name,year,artist
    
    
//==================//==================
  GET /albums?artist="Disclosure"

  # Get albums from all these years:
  GET /albums?year=1969,1977,1983,1994,1998,2013

  # Get albums from any of these years with the keyword "EP":
  GET /albums?year=1969,1977,1983,1994,1998,2013;keyword=EP

  # Get all albums except those with genre=country:
  GET /albums?genre=!country
    
    
//==================