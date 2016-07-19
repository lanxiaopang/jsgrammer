chapter: Feature Toggle
==================
  <!DOCTYPE html>
  <html>
    <head>
      <title>Feature Toggle Demo</title>
      <style>
        li {
          display: inline-block;
          margin-left: 1em;
        }

        .new-feature {
          display: none;
        }

        .ft-new-feature .new-feature {
          display: inline-block;
        }
      </style>
    </head>
    <body>
      <p>Add <code>?ft=new-feature</code> to the end
        of the url to see the new feature.</p>
      <div class="menu">
        <ul>
          <li class="old-feature">Boring old feature</li>
          <li class="new-feature">New feature!</li>
        </ul>
      </div>
      <script src="../dist/feature-toggle-client.js">
      </script>
      <script>
        // Activate the feature toggle system.
        var ft = featureToggle();
      </script>
    </body>
  </html>
    
    
//====================================
  'use strict';

  var union = require('mout/array/union'),
    contains = require('mout/array/contains'),
    EventEmitter = require('events').EventEmitter,
    stampit = require('stampit'),

    /**
     * Grab the url parameters and build a map of
     * parameter names and values.
     * @return {Object} params object
     */
    getParams = function getParams() {
      var params = {};
      if (location.search) {
        var parts = location.search.slice(1).split('&');

        parts.forEach(function (part) {
          var pair = part.split('=');
          pair[0] = decodeURIComponent(pair[0]);
          pair[1] = decodeURIComponent(pair[1]);
          params[pair[0]] = (pair[1] !== 'undefined') ?
            pair[1] : true;
        });
      }
      return params;
    },

    /**
     * Get a list of feature names from the url
     * parameters.
     * @return {Array} Features list
     */
    getParamFeatures = function getParamFeatures() {
      var features = getParams().ft;
      return features ? features.split(',') : undefined;
    },

    /**
     * Combine the list of base features with
     * the features passed in via URL parameters.
     * @type {Array} active features
     */
    getActiveFeatures =
        function getActiveFeatures(baseFeatures,
          paramFeatures) {
      return union(baseFeatures, paramFeatures);
    },

    /**
     * Takes an array of features and creates a class for
     * each of them on the body tag.
     * New features should be hidden in CSS by default
     * and revealed only when the feature toggle is set:
     *
     * .new-feature { display: none; }
     * .ft-new-feature .new-feature { display: block; }
     * 
     * @param {Array} features An array of active features.
     */
    setFlags = function setFlags(features) {
      var featureClasses = features.map(function (feature) {
          return 'ft-' + feature;
        }).join(' '),
        classNames = document.getElementsByTagName('body')[0]
          .className.split(' ').filter(function (className) {
            return !className.match(/^ft/);
          });
      document.getElementsByTagName('body')[0].className = 
        classNames.join(' ') + ' ' + featureClasses;
    },

    /**
     * Take an optional list of features, set the feature
     * classes on the body tag, and return the feature
     * toggle object.
     * @param {Array} baseFeatures List of base features.
     * @return {Object} feature object
     */
    setFeatures = function setFeatures(baseFeatures) {
      var paramFeatures = getParamFeatures(),
        activeFeatures = getActiveFeatures(baseFeatures,
          paramFeatures),

        methods = {
          /**
           * Check to see if a feature is active.
           * @param  {String} feature 
           * @return {Boolean}
           */
          active: function active(feature) {
            var testFeature = feature && feature.trim &&
              feature.trim();
            return contains(activeFeatures, testFeature);
          },

          /**
           * Activate a list of features.
           * @emits activated
           * @param  {Array} features 
           * @return {Object} this (for chaining)
           */
          /**
           * activated event.
           *
           * @event activated
           * @type {Array} activated features
           */
          activate: function activate(features) {
            activeFeatures = union(activeFeatures, features);
            setFlags(activeFeatures);
            this.emit('activated', features);
            return this;
          },

          /**
           * Deactivate a list of features.
           * @emits deactivated
           * @param  {Array} features 
           * @return {Object} this (for chaining)
           */
          /**
           * deactivated event.
           *
           * @event deactivated
           * @type {Array} deactivated features
           */        
          deactivate: function deactivate(features) {
            activeFeatures = 
              activeFeatures.filter(function (feature) {
                return !contains(features, feature);
              });
            setFlags(activeFeatures);
            this.emit('deactivated', features);
            return this;
          }
        },

        // Creates the feature toggle object by
        // composing these methods with an
        // event emitter using the Stampit
        // prototypal inheritance library.
        ft = stampit.compose(
          stampit.convertConstructor(EventEmitter),
          stampit(methods)
        ).create();

      // Kick things off by setting feature classes
      // for the currently active features.
      setFlags(activeFeatures);

      return ft;
    };

  module.exports = setFeatures;
    
    
====================================
  userPercentage = function userPercentage(userId, percent) {
    var id = parseInt(userId, 36);
    return (id % 100 < percent);
  };
    
    
==================