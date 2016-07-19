chapter: Logging
//==================
  var foo = function foo() {
      console.trace();
    },
    bar = function bar() {
      foo();
    };

  bar();

  /*
  Trace
      at foo (repl:2:9)
      at bar (repl:5:1)
      at repl:1:1
      at REPLServer.self.eval (repl.js:110:21)
      at repl.js:249:20
      at REPLServer.self.eval (repl.js:122:7)
      at Interface.<anonymous> (repl.js:239:12)
      at Interface.EventEmitter.emit (events.js:95:17)
      at Interface._onLine (readline.js:202:10)
      at Interface._line (readline.js:531:8)
  */
    
    
//==================//==================
  console.time('timer label');

  var foo = [];

  // Warning: Avoid large set iterations blocking 
  // the event loop like this one does.
  for (var i = 0, end = 1000000; i < end; i++) {
    foo[foo.length] = i;
  }

  console.timeEnd('timer label');

  timer label: 87ms
    
    
//==================//==================
  var serializers = {
    req: function reqSerializer(req) {
      if (!req || !req.connection) {
        return req;
      }

      return {
        url: req.url,
        method: req.method,
        protocol: req.protocol,
        requestId: req.requestId,

        // In case there's a proxy server:
        ip: req.headers['x-forwarded-for'] ||
          req.connection.remoteAddress,
        headers: req.headers
      };
    },
    res: function resSerializer(res) {
      if (!res) {
        return res;
      }

      return {
        statusCode: res.statusCode,
        headers: res._header,
        requestId: res.requestId,
        responseTime: res.responseTime
      };
    },
    err: function errSerializer(err) {
      if (!err || !err.stack) {
        return err;      
      }

      return {
          message: err.message,
          name: err.name,
          stack: getFullStack(err),
          code: err.code,
          signal: err.signal,
          requestId: err.requestId
      };    
    }
  };
    
    
//==================//==================
  log.info(req);
    
    
//==================//==================
  log.info({req: req});
    
    
//==================//==================
  log.requestLogger = function
      createRequestLogger() {

    return function requestLogger(req, res,
        next) {

      // Used to calculate response times:
      var startTime = Date.now();

      // Add a unique identifier to the request.
      req.requestId = cuid();

      // Log the request
      log.info({req: req});

      // Make sure responses get logged, too:
      req.on('end', function () {
        res.responseTime = Date.now() - startTime;
        res.requestId = req.requestId;
        log.info({res: res});
      });

      next();
    };
  };

  log.errorLogger = function
      createErrorLogger() {

    return function errorLogger(err, req, res,
        next) {

      // Add the requestId so we can link the
      // error back to the originating request.
      err.requestId = req.requestId;

      log.error({err: err});
      next(err);
    };
  };
    
    
//==================//==================
  // Tracking pixel / web bug
  // 
  // Using a 1x1 transparent gif allows you to
  // use the logger in emails or embed the 
  // tracking pixel on third party sites without
  // requiring JavaScript.
  log.route = function route() {
    return function pixel(req, res) {
      var data;

      if (settings.logParams && req.params) {
        data = mixIn({}, req.params, {
          requestId: req.requestId
        });
        log.info(req.params);
      }

      res.header('content-type', 'image/gif');

      // GIF images can be so small, it's
      // easy to just inline it instead of
      // loading from a file:
      res.send(
        'GIF89a\u0001\u0000\u0001\u0000' +
        '\u00A1\u0001\u0000\u0000\u0000\u0000' +
        '\u00FF\u00FF\u00FF\u00FF\u00FF\u00FF' +
        '\u00FF\u00FF\u00FF\u0021\u00F9\u0004' +
        '\u0001\u000A\u0000\u0001\u0000\u002C' +
        '\u0000\u0000\u0000\u0000\u0001\u0000' +
        '\u0001\u0000\u0000\u0002\u0002\u004C' +
        '\u0001\u0000;');
    };
  };
    
    
//==================//==================
  $ npm install --save bunyan-request-logger
    
    
//==================//==================
  'use strict';

  var express = require('express'),
    logger = require('../request-logger.js'),
    noCache = require('connect-cache-control'),
    log = logger(),
    app = express(),
    port = 3000;

  app.use( log.requestLogger() );

  // Route to handle client side log messages.
  //
  // This route prepends the cache-control
  // middleware so that the browser always logs
  // to the server instead of fetching a useless
  // OK message from its cache.
  app.get( '/log.gif', noCache, log.route() );

  app.listen(port, function () {
    log.info('Listening on port ' + port);
  });
    
    
//==================//==================
  // Log request errors:
  app.use(log.errorLogger);
    
    
//==================//==================
  log.errorLogger = function
      createErrorLogger() {

    return function errorLogger(err, req, res,
        next) {

      // Add the requestId so we can link the
      // error back to the originating request.
      err.requestId = req.requestId;

      log.error({err: err});
      next(err);
    };
  };
    
    
//==================//==================
  $ npm install --save express-error-handler
    
    
//==================//==================
  'use strict';

  var express = require('express'),
    logger = require('../request-logger.js'),
    noCache = require('connect-cache-control'),
    errorHandler = require('express-error-handler'),
    log = logger(),
    app = express(),
    env = process.env,
    port = env.myapp_port || 3000,
    http = require('http'),
    server;

  app.use( log.requestLogger() );

  // Route to handle client-side log messages.
  //
  // This route prepends the cache-control
  // middleware so that the browser always logs
  // to the server instead of fetching a useless
  // OK message from its cache.
  app.get( '/log.gif', noCache, log.route() );

  // Route that triggers a sample error:
  app.get('/error', function createError(req,
      res, next) {
    var err = new Error('Sample error');
    err.status = 500;
    next(err);
  });

  // Log request errors:
  app.use( log.errorLogger() );

  // Create the server object that we can pass
  // in to the error handler:
  server = http.createServer(app);

  // Respond to errors and conditionally shut
  // down the server. Pass in the server object
  // so the error handler can shut it down
  // gracefully:
  app.use( errorHandler({server: server}) );

  server.listen(port, function () {
    log.info('Listening on port ' + port);
  });
    
    
//==================//==================
  $ cd ./node_modules/bunyan-request-logger
  $ node ./examples/app.js
    
    
//==================//==================
  {
     "name":"unnamed app",
     "hostname":"unnamed-host",
     "pid":62136,
     "level":30,
     "msg":"Listening on port 3000",
     "time":"2013-10-07T07:52:59.236Z",
     "v":0
  }
    
    
//==================//==================
  $ curl localhost:3000/log?somedata=yay
    
    
//==================//==================
  {
     "name":"unnamed app",
     "hostname":"unnamed-host",
     "pid":62136,
     "level":30,
     "req":{
        "url":"/log?somedata=yay",
        "method":"GET",
        "protocol":"http",
        "requestId":"chmhekaby0000y0ixelvt7y7u",
        "ip":"127.0.0.1",
        "headers":{
           "user-agent":"curl/7.24.0 
           (x86_64-apple-darwin12.0) 
           libcurl/7.24.0 OpenSSL/0.9.8x 
           zlib/1.2.5",
           "host":"localhost:3000",
           "accept":"*/*"
        }
     },
     "msg":"",
     "time":"2013-10-07T07:53:07.150Z",
     "v":0
  }
    
    
//==================//==================
  {
     "name":"unnamed app",
     "hostname":"unnamed-host",
     "pid":62136,
     "level":30,
     "res":{
        "statusCode":200,
        "headers":"HTTP/1.1 200 OK
        X-Powered-By: Express
        Expires: 0
        Cache-Control: no-store, no-cache,
        must-revalidate, max-age=0
        Pragma: no-cache
        Content-Type: text/plain
        Content-Length: 2
        Date: Mon, 07 Oct 2013 07:53:07 GMT
        Connection: keep-alive",
        "requestId":"chmhekaby0000y0ixelvt7y7u",
        "responseTime":3
     },
     "msg":"",
     "time":"2013-10-07T07:53:07.154Z",
     "v":0
  }
    
    
//==================//==================
  $ curl localhost:3000/error
    
    
//==================//==================
  {
     "name":"unnamed app",
     "hostname":"unnamed-host",
     "pid":62136,
     "level":30,
     "req":{
        "url":"/error",
        "method":"GET",
        "protocol":"http",
        "requestId":"chmhekbuq0001y0ix6k6brxq6",
        "ip":"127.0.0.1",
        "headers":{
           "user-agent":"curl/7.24.0
           (x86_64-apple-darwin12.0)
           libcurl/7.24.0 OpenSSL/0.9.8x
           zlib/1.2.5",
           "host":"localhost:3000",
           "accept":"*/*"
        }
     },
     "msg":"",
     "time":"2013-10-07T07:53:09.122Z",
     "v":0
  }
    
    
//==================//==================
  {
     "name":"unnamed app",
     "hostname":"unnamed-host",
     "pid":62136,
     "level":50,
     "err":{
        "message":"Sample error",
        "name":"Error",
        "requestId":"chmhekbuq0001y0ix6k6brxq6",
        "stack":"Error: Sample error
        at createError (/Users/user/Dropbox/dev/
        pja-source/bunyan-request-logger/examples/
        app.js:39:13)
        at ..."
     },
     "msg":"",
     "time":"2013-10-07T07:53:09.124Z",
     "v":0
  }
    
    
//==================//==================
  {
     "name":"unnamed app",
     "hostname":"unnamed-host",
     "pid":62136,
     "level":30,
     "res":{
        "statusCode":500,
        "headers":"HTTP/1.1 500 Internal Server
        Error
        X-Powered-By: Express
        Content-Type: text/plain
        Content-Length: 21
        Date: Mon, 07 Oct 2013 07:53:09 GMT
        Connection: keep-alive",
        "requestId":"chmhekbuq0001y0ix6k6brxq6",
        "responseTime":3
     },
     "msg":"",
     "time":"2013-10-07T07:53:09.125Z",
     "v":0
  }
    
    
//==================//==================
  $ npm install --save newrelic

  # assuming ./ is app root
  $ cp node_modules/newrelic/newrelic.js ./
    
    
//==================//==================
  require('newrelic');
    
    
//==================//==================
  $ npm install nodetime
    
    
//==================//==================
  require('nodetime').profile({
    accountKey: your_account_key
  });
    
    
//==================//==================
var express = express = require('express'),
  logger = require('../request-logger.js'),
  noCache = require('connect-cache-control'),
  log = logger(),
  app = express(),
  port = 3000;

app.use( log.requestLogger() );

// Route to handle client-side log messages.
//
// Counter to intuition, client-side logging
// works best with GET requests.
// 
// AJAX POST sends headers and body in two steps,
// which slows it down.
// 
// This route prepends the cache-control
// middleware so that the browser always logs
// to the server instead of fetching a useless
// No Content message from its cache.
app.get( '/log.gif', noCache, log.route() );

app.listen(port, function () {
  log.info('Listening on port ' + port);
});
    
    
//==================