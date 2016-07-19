chapter: Access Control
//==================
    /**
     * createSalt(keylength, callback) callback(err, salt)
     *
     * Generates a cryptographically secure random string for
     * use as a password salt using Node's built-in
     * crypto.randomBytes().
     *
     * @param  {Number} keyLength
     * @param  {Function} callback 
     * @return {undefined}
     */
    var createSalt = function createSalt(keyLength, callback) {
      crypto.randomBytes(keyLength, function (err, buff) {
        if (err) {
          return callback(err);
        }
        callback(null, buff.toString('base64'));
      });
    };
    
    
//==================//==================
    crypto.pbkdf2(password, salt,
      iterations, keyLength, function (err, hash) {
        if (err) {
          return callback(err);
        }
        callback(null, new Buffer(hash).toString('base64'));
      });
    
    
//==================//==================
    /**
     * constantEquals(x, y)
     *
     * Compare two strings, x and y with a constant time
     * algorithm to prevent attacks based on timing statistics.
     */
    constantEquals = function constantEquals(x, y) {
      var result = true,
        length = (x.length > y.length) ? x.length : y.length,
        i;

      for (i=0; i<length; i++) {
        if (x.charCodeAt(i) !== y.charCodeAt(i)) {
          result = false;
        }
      }
      return result;
    };
    
    
//==================//==================
    $ npm install --save credential
    
    
//==================//==================
    var pw = require('credential'),
      newPassword = 'I have a really great password.';

    pw.hash(newPassword, function (err, hash) {
      if (err) { throw err; }
      console.log('Store the password hash.', hash);
    });
    
    
//==================//==================
    var pw = require('credential'),
      storedHash = '{"hash":...', // truncated to fit on page
      userInput = 'I have a really great password.';

    pw.verify(storedHash, userInput, function (err, isValid) {
      var msg;
      if (err) { throw err; }
      msg = isValid ? 'Passwords match!' : 'Wrong password.';
      console.log(msg);
    });
    
    
//==================//==================
    var users = require('./users.js');

    var verify = function verify(username, password, verified) {
      var user = users.findOne(username);
      if (!user) {
        // No unexpected error, no user, reason for failure
        return verified(null, false, {
          message: 'User not found'
        });
      }

      pw.verify(user.hash, password, function (isValid) {
        if (!isValid) {
          // No unexpected error, no user, reason for failure
          return verified(null, false, {
            message: 'Incorrect password.'
          });
        }
        return verified(null, user);
      });
    };
    
    
//==================//==================
    var express = require('express'),
      passport = require('passport'),
      LocalStrategy = require('passport-local'),
      verify = require('./lib/password-auth.js'),
      app = express();

    passport.use( new LocalStrategy(verify) );

    app.post('/login', 
      passport.authenticate('local', { failureRedirect: '/login' }),
      function(req, res) {
        res.redirect('/');
      });

    app.listen(3000);
    
    
//==================//==================
    $ npm install --save speakeasy
    
    
//==================//==================
    var speakeasy = require('speakeasy');

    // Returns a key object with ascii, hex, base32, and
    // QR code representations (the QR code value is a
    // Google image URL):
    var key = speakeasy.generate_key({
      length: 20,
      google_auth_qr: true
    });

    // This should match the number on your phone:
    speakeasy.time({key: key.base32, encoding: 'base32'});
    
    
//==================//==================
    var getLocation = function getLocation(cb) {
      if (!navigator.geolocation) {
        return cb(new Error('Geolocation is not supported by this browser.'));
      }
      navigator.geolocation.getCurrentPosition(function (position) {
        cb(null, position);
      });
    };
    
    getLocation(function (err, position) {
      if (err) {
        return console.log(err);
      }
      console.log(position);
    });
    
    
//==================//==================
    <div id="fb-root"></div>
    <script>
      window.fbAsyncInit = function() {
        FB.init({
          appId      : 'YOUR_APP_ID', // App ID

          // Channel File
          channelUrl : '//WWW.YOUR_DOMAIN.COM/channel.html', 
          status     : true, // check login status
          // enable cookies to allow the server to access 
          // the session
          cookie     : true, 
          xfbml      : true  // parse XFBML
        });

        // Additional init code here

      };

      // Load the SDK asynchronously
      (function(d){
         var js,
           id = 'facebook-jssdk',
           ref = d.getElementsByTagName('script')[0];

         if (d.getElementById(id)) {return;}
         js = d.createElement('script');
         js.id = id;
         js.async = true;
         js.src = "//connect.facebook.net/en_US/all.js";
         ref.parentNode.insertBefore(js, ref);
       }(document));
    </script>
    
    
//==================//==================
    <script src="//connect.facebook.net/en_US/all.js"></script>
    
    
//==================//==================
  app.put('/posts/:id', authorize(), putPost);
    
    
//==================//==================
  var authorize = function authorize(options) {
    return function auth(req, res, next) {
      if (options.requiresAuth &&
          !(req.session && req.session.user)) {
        return res.send(403);
      }
      next();
    };
  };
    
    
//==================