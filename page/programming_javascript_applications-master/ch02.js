//chapter: Functions
//==================
test('Order WITH unintentional side effect.', function () {
  var cartProto = {
      items: [],

      addItem: function addItem(item) {
        this.items.push(item);
      }
    },

    createCart = function (items) {
      var cart = Object.create(cartProto);
      cart.items = items;
      return cart;
    },

    // Load cart with stored items.
    savedCart = createCart(["apple", "pear", "orange"]),

    session = {
      get: function get() {
        return this.cart;
      },

      // Grab the saved cart.
      cart: createCart(savedCart.items)
    };

  // addItem gets triggered by an event handler somewhere:
  session.cart.addItem('grapefruit');

  ok(session.cart.items.indexOf('grapefruit')
    !== -1, 'Passes: Session cart has grapefruit.');

  ok(savedCart.items.indexOf('grapefruit') === -1,
    'Fails: The stored cart is unchanged.');
});
    
    
//==================//==================
createCart = function (items) {
  var cart = Object.create(cartProto);
  cart.items = items;
  return cart;
},
    
    
//==================//==================
cart.items = Object.create(items);
    
    
//==================//==================
function foo() {

  /* Warning: arguments.callee is deprecated.
     Use with caution. Used here strictly for
     illustration. */

  return arguments.callee;
}

foo(); //=> [Function: foo]
    
    
//==================//==================
var score = 6;

if (score > 5) {
  function grade() {
    return 'pass';
  }
} else {
  function grade() {
    return 'fail';
  }
}

module('Pass or Fail');

test('Conditional function declaration.', function () {

  // Firefox: Pass
  // Chrome, Safari, IE, Opera: Fail
  equal(grade(), 'pass',
    'Grade should pass.');
});
    
    
//==================//==================
var bar = function () {
    return arguments.callee;
};

bar(); //=> [Function] (Note: It's anonymous.)
    
    
//==================//==================
/*
(Anonymous function)
(Anonymous function)
(Anonymous function)
(Anonymous function)
(Anonymous function)
(Anonymous function)
(Anonymous function)
(Anonymous function)
(Anonymous function)
(Anonymous function)
(Anonymous function)
(Anonymous function)
    */
    
//==================//==================
var baz = {
    f: function () {
        return arguments.callee;
    }
  };

baz.f(); // => [Function] (Note: Also anonymous.)
    
    
//==================//==================
var lightBulbAPI = {
    toggle: function () {},
    getState: function () {},
    off: function () {},
    on: function () {},
    blink: function () {}
  };
    
    
//==================//==================
var lightbulbAPI = {
    toggle: function toggle() {},
    getState: function getState() {},
    off: function off() {},
    on: function on() {},
    blink: function blink() {}
  };
    
    
//==================//==================
test('Named function expressions.', function () {
  var a = function x () {
    ok(x, 'x() is usable inside the function.');
  };

  a();

  try {
    x(); // Error
  } catch (e) {
    ok(true, 'x() is undefined outside the function.');
  }
});
    
    
//==================//==================
test('Function Scope', function () {
  var testDeclaration = false,
    foo;

  // This function gets erroneously overridden in IE8.
  function bar(arg1, bleed) {
    if (bleed) {

      ok(false, 
       'Declaration bar() should NOT be callable from'
       + ' inside the expression.');

    } else {

      ok(true, 
        'Declaration bar() should be called outside the'
        + ' expression.');

    }
    testDeclaration = true;
  }

  foo = function bar(declaration, recurse) {
    if (recurse) {

      ok(true,
        'Expression bar() should support scope safe'
        + ' recursion');

    } else if (declaration === true) {

      ok(true,
        'Expression bar() should be callable via foo()');
        bar(false, true);

    } else {

      // Fails in IE8 and older
      ok(false, 
      'Expression bar() should NOT be callable outside'
      + ' the expression');

    }
  };

  bar();
  foo(true);
    
  // Fails in IE8 and older
  ok(testDeclaration, 
    'The bar() declaration should NOT get overridden by'
    + ' the expression bar()');
});
    
    
//==================//==================
var sum = function sum() {
  var result = 0;

  [5, 5, 5].forEach(function addTo(number) { result += number; });

  return result;
};

test('Lambdas.', function () {
  equal(sum(), 15,
    'result should be 15.');
});
    
    
//==================//==================
var Lightbulb = function () {
    this.isOn = false;
  },
  lightbulb = new Lightbulb();

Lightbulb.prototype.toggle = function () {
  this.isOn = !this.isOn;
  return this.isOn;
};

Lightbulb.prototype.getState = function getState() {
  // Implementation...
};

Lightbulb.prototype.off = function off() {
  // Implementation...
};

Lightbulb.prototype.on = function on() {
  // Implementation...
};

Lightbulb.prototype.blink = function blink() {
  // Implementation...
};

test('Prototypes without IIFE.', function () {
  equal(lightbulb.toggle(), true, 'Lightbulb turns on.');
  equal(lightbulb.toggle(), false, 'Lightbulb turns off.');
});
    
    
//==================//==================
(function () {
  var isOn = false,
    toggle = function toggle() {
      isOn = !isOn;
      return isOn;
    },
    getState = function getState() {
      // Implementation...
    },
    off = function off() {
      // Implementation...
    },
    on = function on() {
      // Implementation...
    },
    blink = function blink() {
      // Implementation...
    },

    lightbulb = {
      toggle: toggle,
      getState: getState,
      off: off,
      on: on,
      blink: blink
    };

  test('Prototypes with IIFE.', function () {
    equal(lightbulb.toggle(), true,
      'Lightbulb turns on.');
    equal(lightbulb.toggle(), false,
      'Lightbulb turns off.');
  });
}());
    
    
//==================//==================
function highPass(number, cutoff) {
    cutoff = cutoff || this.cutoff;
    return (number >= cutoff);
}

var filter1 = {
    highPass: highPass,
    cutoff: 5
  },
  filter2 = {
    // No highPass here!
    cutoff: 3
  };
    
    
//==================//==================
test('Invoking a function.', function () {
  var result = highPass(6, 5);

  equal(result, true,
    '6 > 5 should be true.');
});
    
    
//==================//==================
test('Invoking a method.', function () {
  var result1 = filter1.highPass(3),
    result2 = highPass.call(filter2, 3),
    result3 = filter1.highPass(6);

  equal(result1, false,
    '3 >= filter1.cutoff should be false.');

  equal(result2, true,
    '3 >= filter2.cutoff should be true.');

  equal(result3, true,
    '6 >= filter1.cutoff should be true.');
});
    
    
//==================//==================
someMethod.call(context, argument1, argument2, ...);
    
    
//==================//==================
someMethod.apply(context, someArray);
    
    
//==================//==================
var lightbulb = {
    toggle: function toggle() {
      this.isOn = !this.isOn;
      return this.isOn;
    },
    isOn: false
  },
  toggle = lightbulb.toggle,
  lightswitch = document.getElementById('lightswitch');

lightswitch = document.getElementById('lightswitch');
lightswitch.addEventListener('click',
  lightbulb.toggle, false);
    
    
//==================//==================
toggle = lightbulb.toggle.bind(lightbulb);
    
    
//==================//==================
var x = 1;

(function () {
  console.log(x);
  var x = 2;
}());
    
    
//==================//==================
var x = 1;

(function () {
  var x; // Declaration is hoisted and x is undefined.
  console.log(x);
  x = 2; // Initialization is still down here.
}());
    
    
//==================//==================
test('Function declaration hoisting', function () {
  function number() {
    return 1;
  }

  (function () {
    equal(number(), 2, 'Inner scope wins.');

    function number() {
      return 2;
    }
  }());

  equal(number(), 1, 'Outer scope still works.');
});
    
    
//==================//==================
test('Function declaration hoisted.', function () {
  function number() {
    return 1;
  }

  (function () {
    function number() {
      return 2;
    }

    equal(number(), 2, 'Inner scope wins.');
  }());

  equal(number(), 1, 'Outer scope still works.');
});
    
    
//==================//==================
test('Function expression hoisting', function () {
  function number() {
    return 1;
  }

  (function () {
    try {
      number();
    } catch (e) {
      ok(true, 'number() is undefined.');
    }

    var number = function number() {
      return 2;
    }

    equal(number(), 2, 'number() is defined now.');
  }());

  equal(number(), 1, 'Outer scope still works.');
});
    
    
//==================//==================
test('Function Expression Hoisted', function () {
  function number() {
    return 1;
  }

  (function () {
    var number; // Declaration initialized to undefined.

    try {
      number();
    } catch (e) {
      ok(true, 'number() is undefined.');
    }

    number = function number() {
      return 2;
    }

    equal(number(), 2, 'number() is defined now.');
  }());

  equal(number(), 1, 'Outer scope still works.');
});
    
    
//==================//==================
var o = function o () {
  var data = 1,
    get;

  get = function get() {
    return data;
  };

  return {
    get: get
  };
};

test('Closure for object privacy.', function () {
  var obj = o(); // Get an object with the .get() method.

  try {
    ok(data, 'This throws an error.');
  } catch (e) {
    ok(true,'The data var is only available'
      + ' to privileged methods.');
  }

  equal(
    obj.get(), 1,
    '.get() should have access to the closure.'
  );
});
    
    
//==================//==================
(function () {
  var arr = [],
    count = 1,
    delay = 20,
    timer,
    complete;

  timer = function timer() {
    setTimeout(function inner() {
      arr.push(count);

      if (count < 3) {
        count += 1;
        timer();
      } else {
        complete();
      }
    }, delay);
  };

  asyncTest('Closure with setTimeout.', function () {
    complete = function complete() {
      equal(
        arr.join(','), '1,2,3',
        'arr should be [1,2,3]'
      );
      start();
    };

    timer();

    equal(
      arr.length, 0,
      'array should be empty until the first timout.'
    );
  });
}());
    
    
//==================//==================
var userProto = {
    name: '',
    email: '',
    alias: '',
    showInSearch: true,
    colorScheme: 'light'
  };

function createUser(name, email, alias, showInSearch, 
  colorScheme) {

  return {
    name: name || userProto.name,
    name: email || userProto.email,
    alias: alias || userProto.alias,
    showInSearch: showInSearch,
    colorScheme: colorScheme || userProto.colorScheme
  };
}

test('User account creation', function () {
  var newUser = createUser('Tonya', '', '', '', 'dark');
    
  equal(newUser.colorScheme, 'dark',
    'colorScheme stored correctly.');
});
    
    
//==================//==================
var newUser = createUser('Tonya', '', '', '', 'dark');
    
    
//==================//==================
var newUser = createUser({
  name: 'Mike',
  showInSearch: false
});
    
    
//==================//==================
function createUser(options) {
  return $.extend({}, userProto, options);
}
    
    
//==================//==================
var args = Array.prototype.slice.call(arguments, 0);
    
    
//==================//==================
var args = [].slice.call(arguments, 0);
    
    
//==================//==================
function sort() {
  var args = [].slice.call(arguments, 0);
  return args.sort();
}

test('Sort', function () {
  var result = sort('b', 'a', 'c');   
  ok(result, ['a', 'b', 'c'], 'Sort works!');
});
    
    
//==================//==================
var first = args.shift();
    
    
//==================//==================
function morph(options) {
  var args = [].slice.call(arguments, 0),
    animals = 'turtles'; // Set a default

  if (typeof options === 'string') {
    animals = options;
    args.shift();
  }

  return('The pet store has ' + args + ' ' + animals
    + '.');
}

test('Polymorphic branching.', function () {
  var test1 = morph('cats', 3),
    test2 = morph('dogs', 4),
    test3 = morph(2);

  equal(test1, 'The pet store has 3 cats.', '3 Cats.');
  equal(test2, 'The pet store has 4 dogs.', '4 Dogs.');
  equal(test3, 'The pet store has 2 turtles.',
    'The pet store has 2 turtles.');
});
    
    
//==================//==================
var methods = {
    init: function (args) {
      return 'initializing...';
    },
    hello: function (args) {
      return 'Hello, ' + args;
    },
    goodbye: function (args) {
      return 'Goodbye, cruel ' + args;
    }
  },
  greet = function greet(options) {
    var args = [].slice.call(arguments, 0),
      initialized = false,
      action = 'init'; // init will run by default

    if (typeof options === 'string' &&
        typeof methods[options] === 'function') {

      action = options;
      args.shift();
    }

    return methods[action](args);
  };

test('Dynamic dispatch', function () {
  var test1 = greet(),
    test2 = greet('hello', 'world!'),
    test3 = greet('goodbye', 'world!');
  
  equal(test2, 'Hello, world!',
    'Dispatched to hello method.');

  equal(test3, 'Goodbye, cruel world!',
    'Dispatched to goodbye method.');
});
    
    
//==================//==================
$(selection).yourPlugin('methodName', params);
    
    
//==================//==================
var toArray = function toArray(obj) {
  var arr = [],
    prop;

  for (prop in obj) {
    if (obj.hasOwnProperty(prop)) {
      arr.push(prop);
    }
  }
  return arr;
};
    
    
//==================//==================
var randomItem = function randomItem(collection) {
  var arr = ({}.toString.call(collection) !== 
    '[object Array]')
      ? toArray(collection)
      : collection;
  return arr[Math.floor(arr.length * Math.random())];
};

test('randomItem()', function () {
  var obj = {
      a: 'a',
      b: 'b',
      c: 'c'
    },
    arr = ['a', 'b', 'c'];

  ok(obj.hasOwnProperty(randomItem(obj)),
    'randomItem works on Objects.');

  ok(obj.hasOwnProperty(randomItem(arr)),
    'randomItem works on Arrays.');
});
    
    
//==================//==================
var validString = 'abc',
  invalidString = 'abcd',

  validArray = ['a', 'b', 'c'],
  invalidArray = ['a', 'b', 'c', 'd'],

  isValid = function isValid(char) {
    return validString.indexOf(char) >= 0;
  };

test('Array String generics', function () {
  ok(![].every.call(invalidString, isValid),
    'invalidString is rejected.');

  ok([].every.call(validString, isValid),
    'validString passes.');

  ok(![].every.call(invalidArray, isValid),
    'invalidArray is rejected.');

  ok([].every.call(validArray, isValid),
    'validArray passes.');
});
    
    
//==================//==================
var num = 303;

test('String number generics', function () {
  var i = ''.indexOf.call(num, 0);

  ok(i === 1,
    'String methods work on numbers.');
});
    
    
//==================//==================
$('.friend').hide().filter('.active').show();
    
    
//==================//==================
$('.friend')
  .hide()
  .filter('.active')
  .show();
    
    
//==================//==================
* Mick
* Hunz (active)
* Yannis
    
    
//==================//==================
* Hunz (active)
    
    
//==================//==================
var shows = [
    {
      artist: 'Kreap',
      city: 'Melbourne',
      ticketPrice: '40'
    },
    {
      artist: 'DJ EQ',
      city: 'Paris',
      ticketPrice: '38'
    },
    {
      artist: 'Treasure Fingers',
      city: 'London',
      ticketPrice: '60'
    }
  ],
  books = [
    {
      title: 'How to DJ Proper',
      price: '18'
    },
    {
      title: 'Music Marketing for Dummies',
      price: '26'
    },
    {
      title: 'Turntablism for Beginners',
      price: '15'
    }
  ];

test('Datatype abstraction', function () {
  var sortedShows = shows.sort(function (a, b) {
      return a.ticketPrice < b.ticketPrice;
    }),
    sortedBooks = books.sort(function (a, b) {
      return a.price < b.price;
    });
  ok(sortedShows[0].ticketPrice >
    sortedShows[2].ticketPrice,
    'Shows sorted correctly.');
  ok(sortedBooks[0].price >
    sortedBooks[1].price,
    'Books sorted correctly.');
});
    
    
//==================//==================
test('Traditional for loop', function () {
  var i,
    length = books.length;

  for (i = 0; i < length; i++) {
    books[i].category = 'music';
  }

  ok(books[0].category === 'music',
    'Books have categories.');
});
    
    
//==================//==================
test('Iterator abstraction', function () {
  books.forEach(function (book) {
    book.category = 'music';
  });

  ok(books[0].category === 'music',
    'Books have categories.');
});
    
    
//==================//==================
var rotate = function rotate(arr) {
  arr.push(arr.shift());
  return arr;
}

test('Rotate', function () {
  var original = [1, 2, 3];

  deepEqual(rotate(original), [2,3,1],
    'rotate() should rotate array elements.');

  // Fails! Original array gets mutated.
  deepEqual(original, [1,2,3],
    'Should not mutate external data.');
});
    
    
//==================//==================
var safeRotate = function safeRotate(arr) {
  var newArray = arr.slice(0);
  newArray.push(newArray.shift());
  return newArray;
}

test('safeRotate', function () {
  var original = [1, 2, 3];

  deepEqual(safeRotate(original), [2,3,1],
    'safeRotate() should rotate array elements.');

  // Passes.
  deepEqual(original, [1,2,3],
    'Should not mutate external data.');
});
    
    
//==================//==================
var multiply = function multiply(x, y) {
    return x * y;
  },

  partial = function partial(fn) {
    // Drop the function from the arguments list and
    // fix arguments in the closure.
    var args = [].slice.call(arguments, 1);

    // Return a new function with fixed arguments.
    return function() {
      // Combine fixed arguments with new arguments
      // and call fn with them.
      var combinedArgs = args.concat(
        [].slice.call(arguments));
      return fn.apply(this, combinedArgs);
    };
  },

  double = partial(multiply, 2);

test('Partial application', function () {
  equal(double(4), 8,
    'partial() works.');
});
    
    
//==================//==================
var boundDouble = multiply.bind(null, 2); // null context

test('Partial application with bind', function () {
  equal(boundDouble(4), 8,
      '.bind() should allow partial application.');
});
    
    
//==================//==================
var $button = $('<button class="select">Click</button>')
  .appendTo('body');


asyncTest('Async callback event listener.', function () {
  $button.on('click', function clicked() {
    ok(true, 'Button clicked.');
    start();
  });

  setTimeout(function timedOut() {
    $button.click();
    $button.remove();
  }, 20);
});
    
    
//==================//==================
var whenDataFetched = $.getJSON(
  'https://graph.facebook.com/jsapplications'
);

asyncTest('Ajax promise API', function () {
  whenDataFetched
    .done(function (response) {
      ok(response,
        'The server returned data.');
      start();
    })
    .fail(function () {
      ok(true,
        'There was an error.');
      start();
    });
});
    
    
//==================//==================
var timer = function timer(delay) {
  var whenTimedOut = $.Deferred(),
    promise = whenTimedOut.promise();

  promise.cancel = function (payload) {
    whenTimedOut.reject(payload);
  };

  setTimeout(function () {
    whenTimedOut.resolve();
  }, delay);

  return promise;
};

asyncTest('Deferred', function () {
  var startTime = new Date(),
    delay = 30,
    afterTimeout = 50,
    cancelTime = 100,
    myTimer = timer(delay),
    cancelTimer = timer(cancelTime);

  expect(4);

  myTimer.done(function () {
    ok(true,
      'First callback fired.');
  });

  myTimer.done(function () {
    var now = new Date();
    ok((now - startTime) > delay,
      'Delay works.'
      );
  });

  setTimeout(function () {
    ok(true,
      'Fires after timeout expires.');
  }, afterTimeout);

  setTimeout(function () {
    start();
  }, afterTimeout + 20);

  cancelTimer
    .done(function () {
      ok(false,
        'A canceled timer should NOT run .done().');
    })
    .fail(function () {
      ok(true,
        'A canceled timer calls .fail().');
    })
    .cancel();
});
    
    
//==================//==================
var a = timer(60),
  b = timer(70),
  c = timer(40),
  tasks = [a, b, c];

asyncTest('Multiple dependencies.', function () {
  $.when(a, b, c).done(function () {
    ok(true, 'Runs when all promises resolve');
    start();
  });
});
    
    
//==================