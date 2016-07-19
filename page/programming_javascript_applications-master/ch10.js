chapter: Internationalization
//==================
var locale = require('locale'),
  // ... other requires ...
  // Tell locale which locales you support.
  supportedLocales = ['en', 'en_US', 'ja'];

// locale() returns a middleware function that pulls the
// req.headers["accept-language"] attribute and runs the value
// through locales.best(supported) to determine the closest
// matching locale.
app.use( locale(supportedLocales) );
    
    
////==================//==================
Globalize.loadTranslation('pt_BR', {
  greetings: {
    hello: "Olá",
    bye: "Tchau"
  }
});
    
    
//==================//==================
// Set the locale
  Globalize.locale('pt_BR');

  // Select the text you want to translate.
  // Organized by path:
  Globalize.translate('greetings/bye');
    
    
//==================