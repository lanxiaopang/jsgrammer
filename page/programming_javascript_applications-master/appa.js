appendix: JavaScript Style Guide
//================
var highPass = function highPass(number, cutoff) {
    if (number >= cutoff) {
      return true;
    } else {
      return false;
    }
  },

  lowPass = function lowPass(number, cutoff) {
    if (number >= cutoff) {
      return true;
    } else {
      return false;
    }
  };

module('Filter Examples');

test('highPass', function () {
  ok(!highPass(2, 5), 'Lower values should not pass.');
  ok(highPass(8, 5), 'Higher values should pass.');
});

test('lowPass', function () {
  ok(lowPass(2, 5), 'Lower values should pass.'); // Fails
  ok(!lowPass(8, 5),
    'Higher values should not pass.'); // Fails
});
    
    
////================================
if (number >= cutoff) {
    
    
////================================
if (number <= cutoff) {
    
    
////================================
test('Name', function () {
  // Your assertions here...
});
    
    
////================================
ok(true, 'Description');
    
    
////================================
var a = true;

equal(a, true, 'a should be true.');
    
    
////================================
test('Missing semicolon before +', function () {
  var a = 1 + 1
    +'3';

  equal(a, 2,
    'a should be 2.'
  ); // Fails. a = 23
});

test('Missing semicolon before [', function () {
  var b = 1 + 1
  [1, 1].forEach(function (num) {
    b += num;
  });

  // Error: Cannot call method forEach of undefined.
  equal(b, 4,
    'b should be 4.'); 
});

test('Missing semicolon before (', function () {
  var x = 1,
    f = function f () {
      ok(false, 'This test should not run.'); // Fails.
    }

  (function () {
    /* Do something interesting. */
  }());
});
    
    
////================================
var getLocation = function getLocation()
{
  return  
  {
    x: 20,
    y: 20
  };
};
    
    
////================================
var getLocation = function getLocation() {
  return {
    x: 20,
    y: 20
  };
};
    
    
////================================
var x;
// Do stuff with x...
    
    
////================================
(function myScript() {
  var x;
  // Do stuff with x...
}());
    
    
////================================
var add = function add(number) {
  x = 2;
  return number + x;
  };

test('Without var.', function () {
  equal(add(2), 4,
    'add() should add 2 to whatever you pass in.');

  // Fails
  ok(!x, 'x should not pollute the global scope.');
});
    
    
//================//================
var add = function add(number) {
  var x = 2;
  return number + x;
};

test('With var.', function () {
  equal(add(2), 4,
    'add() should add 2 to whatever you pass in.');

  ok(!x, 'x should not pollute the global scope.');
});
    
    
//================//================
(function myScript() {
  var x = true;
  var y = true;
  /* do some stuff with x and y */
  var z = true;
  /* do some stuff with z */
}());
    
    
//================//================
(function myScript() {
  var x = true,
  y = true,
  z = true;
  /* do some stuff with x, y, and z */
}());
    
    
//================//================
var createUserBox = function createUserBox() {
  var WIDTH = '80px',
    HEIGHT = '80px';

    return {
      width: WIDTH,
      height: HEIGHT
    };
  },

  createMenuBox = function createMenuBox() {
    var WIDTH = '200px',
    HEIGHT = '400px';

    return {
      width: WIDTH,
      height: HEIGHT
    };
  };

test('Avoid Constants', function () {
  var userBox = createUserBox(),
    menuBox = createMenuBox();
 
  equal(userBox.width, '80px',
    'userBox should be 80px wide.');

  equal(menuBox.width, '200px', 
    'menuBox should be 200px wide.');
});
    
    
//================//================
var createBox = function createBox(options) {
  var defaults = {
    width: '80px',
    height: '80px'
  };

  return $.extend({}, defaults, options);
};

test('Avoid Constants', function () {
  var userBox = createBox({
    width: '80px',
    height: '80px'
  }),

  menuBox = createBox({
    width: '200px',
    height: '400px'
  });

  equal(userBox.width, '80px', 
    'userBox should be 80px wide.');

  equal(menuBox.width, '200px', 
    'menuBox should be 200px wide.');
});
    
    
//================//================
var getCount = function getCount() {
  var i,
    count = [1, 2, 3],
    length = count.length,
    text = '';

  for (i = 0; i < length; i += 1) {
    text += count[i] + ' ';
  }

  return text;
};

test('Looping over an array:', function () {
  var text = getCount();

  equal(text, '1 2 3 ', 
    'getCount() should count to three.');
});
    
    
//================//================
var getCount = function getCount() {
  var count = [1, 2, 3],
  text = '';

  count.forEach(function (number) {
    text += number + ' ';
  });

  return text;
};

test('Functional iterator:', function () {
  var text = getCount();

  equal(text, '1 2 3 ', 
    'getCount() should count to three.'
  );
});
    
    
//================//================
var getCount = function getCount() {
  var count = [1, 2, 3];

  return count.reduce(function (previous, number) {
    return previous + number + ' ';
  }, '');
};
    
    
//================//================
// Shim .forEach()
if ( !Array.prototype.forEach ) {
  Array.prototype.forEach = function(fn, scope) {
    for (var i = 0, len = this.length; i < len; ++i) {
      fn.call(scope || this, this[i], i, this);
    }
  };
}
    
    
//================//================
var myBool = new Boolean(false);

test('Boolean object', function () {
  ok(!myBool, 'Should be falsy'); // Fails

  ok(!myBool.valueOf(), 
  'Should be falsy.'); // Passes
});
    
    
//================//================
var myBool = false;

test('Boolean object', function () {
  ok(!myBool, '!myBool should be false.');
});
    
    
//================//================
function truthy(x) {
  if (x) {
    return true;
  } else {
    return false;
  }
}

test('Truthy', function () {
  // Falsy
  equal(truthy(0), true, 'truthy(0)'); // Fail
  equal(truthy(''), true, "truthy('')");  // Fail
  equal(truthy(null), true, 'truthy(null)'); // Fail
  equal(truthy(undefined), true, 
  'truthy(undefined)'); // Fail
  equal(truthy(false), true, 'truthy(false)'); // Fail

  // Truthy
  equal(truthy('0'), true, "truthy('0')"); // Pass
  equal(truthy(new Boolean(false)), true, 
  'truthy(new Boolean(false))'); // Pass
  equal(truthy({}), true, 'truthy({})'); // Pass
  equal(truthy([]), true, 'truthy([])'); // Pass
  equal(truthy([0]), true, 'truthy([0])'); // Pass
  equal(truthy([1]), true, 'truthy([1])'); // Pass
  equal(truthy(['0']), true, "truthy(['0'])"); // Pass
  equal(truthy(['1']), true, "truthy(['1'])"); // Pass
});
    
    
//================//================
function exists(x) {
  if (x !== undefined && x !== null) {
    return true;
  } else {
    return false;
  }
}

test('exists', function () {
  // Falsy
  equal(exists(0), true, 'exists(0)'); // Pass
  equal(exists(''), true, "exists('')"); // Pass
  equal(exists(null), true, 'exists(null)');
  equal(exists(undefined), true, 'exists(undefined)');
  equal(exists(false), true, 'exists(false)'); // Pass

  // Truthy
  equal(exists('0'), true, "exists('0')"); // Pass
  equal(exists(new Boolean(false)), true, 
  'exists(new Boolean(false))'); // Pass
  equal(exists({}), true, 'exists({})'); // Pass
  equal(exists([]), true, 'exists([])'); // Pass
  equal(exists([0]), true, 'exists([0])'); // Pass
  equal(exists([1]), true, 'exists([1])'); // Pass
  equal(exists(['0']), true, "exists(['0'])"); // Pass
  equal(exists(['1']), true, "exists(['1'])"); // Pass
});
    
    
//================//================
function exists(x) {
  return (x !== undefined && x !== null);
}
    
    
//================//================
var isFalse = function isFalse(x) {
  return (x == false);
};

test('isFalse using ==', function () {
  // Falsy
  equal(isFalse(0), true, 'isFalse(0)'); // Pass
  equal(isFalse(''), true, "isFalse('')"); // Pass
  equal(isFalse(null), true, 'isFalse(null)'); // Fail
  equal(isFalse(undefined), true, 'isFalse(undefined)'); // Fail
  equal(isFalse(false), true, 'isFalse(false)'); // Pass


  // Truthy
  equal(isFalse('0'), true, "isFalse('0')"); // Pass
  equal(isFalse(new Boolean(false)), true, 
  'isFalse(new Boolean(false))'); // Pass
  equal(isFalse({}), true, 'isFalse({})'); // Fail
  equal(isFalse([]), true, 'isFalse([])'); // Pass
  equal(isFalse([0]), true, 'isFalse([0])'); // Pass
  equal(isFalse([1]), true, 'isFalse([1])'); // Fail
  equal(isFalse(['0']), true, "isFalse(['0'])"); // Pass
  equal(isFalse(['1']), true, "isFalse(['1'])"); // Fail
});
    
    
//================//================
var isFalse = function isFalse(x) {
  return (x === false);
};
    
    
//================//================
var isTrue = function isTrue(x) {
  return (x == true);
};
    
    
//================//================
if (typeof foo.bar === 'function') {
  foo.bar();
}
    
    
//================//================
var x = 0;

function increment() {
  x += 1;
  return x;
}

test('increment() with side effects.', function () {
  var val = increment();

  equal(val, 1,
    'increment() should add one.'
  );

  equal(x, 0,
    'x should be unchanged outside the function.'
  ); // Fails
});
    
    
//================//================
var x = 0;

function increment(x) {
  x += 1;
  return x;
}

test('increment() without side effects.', function () {
  var val = increment(x);

  equal(val, 1,
    'increment() adds one.');

  equal(x, 0,
    'x is unchanged.');
});
    
    
//================//================
var obj = {
    value: 2
  };

function setValue(obj, value) {
  obj.value = value;
  return obj;
}

test('setValue() with side effects', function () {
  var myObj = setValue(obj, 3);

  equal(myObj.value, 3, 
    'setValue() returns new value.');

  equal(obj.value, 2,
    'The original should be unchanged.'
  ); // Fails
});
    
    
//================//================
var obj = {
    value: 2
  };

function setValue(obj, value) {
  // Note: extend() is jQuery.extend(),
  // Underscore .extend(), or similar...
  var instance = extend({}, obj);

  return instance;
}

test('setValue() without side effects', function () {
  var myObj = setValue(obj, 3);

  equal(myObj.value, 3,
    'setValue() should return new value.');

  equal(obj.value, 2,
    'The original is should be unchanged!'); // Passes
});
    
    
//================//================
function doAction(action) {
  switch (action) {
    case 'hack':
      return 'hack';
    break;

    case 'slash':
      return 'slash';
    break;

    case 'run':
      return 'run';
    break;

    default:
      throw new Error('Invalid action.');
    break;
  }
}
    
    
//================//================
function doAction(action) {
  var actions = {
    'hack': function () {
      return 'hack';
    },

    'slash': function () {
      return 'slash';
    },

    'run': function () {
      return 'run';
    }
  };

  if (typeof actions[action] !== 'function') {
    throw new Error('Invalid action.');
  }


  return actions[action]();
}
    
    
//================//================
function handleOpen(token) {
  return 'Open object / array.';
}

function handleClose(token) {
  return 'Close object / array';
}
    
    
//================//================
function processToken (token) {
  switch (token) {
    case '{':
    case '[':
      handleOpen(token);
    break;

    case ']':
    case '}':
      handleClose(token);
    break;

    default:
      throw new Error('Invalid token.');
    break;
  }
}
    
    
//================//================
var tokenActions = {
    '{': handleOpen,
    '[': handleOpen,
    ']': handleClose,
    '}': handleClose
  };

function processToken(token) {
  if (typeof tokenActions[token] !== 'function') {
    throw new Error('Invalid token.');
  }

  return tokenActions[token](token);
}
    
//================