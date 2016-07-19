//chapter: Objects
//==================
'tonya@example.com'.split('@')[1]; // => example.com
    
    
//==================//==================
var highlander = {
    name: 'McLeod',
    catchphrase: 'There can be only one.'
  };
    
    
//==================//==================
if (!Object.create) {
  Object.create = function (o) {
    if (arguments.length > 1) {
      throw new Error('Object.create implementation'
      + ' only accepts the first parameter.');
    }
    function F() {}
    F.prototype = o;
    return new F();
  };
}
    
    
//==================//==================
var switchProto = {
    isOn: function isOn() {
      return this.state;
    },

    toggle: function toggle() {
      this.state = !this.state;
      return this;
    },

    state: false
  },
  switch1 = Object.create(switchProto),
  switch2 = Object.create(switchProto);

test('Object.create', function () {
  ok(switch1.toggle().isOn(),
    '.toggle() works.'
  );

  ok(!switch2.isOn(),
    'instance safe.'
  );
});
    
    
//==================//==================
var switchProto = {
    isOn: function isOn() {
      return this.state;
    },

    toggle: function toggle() {
      this.state = !this.state;
      return this;
    },

    meta: {
      name: 'Light switch'
    },

    state: false
  },
  switch1 = Object.create(switchProto),
  switch2 = Object.create(switchProto);

test('Prototype mutations.', function () {
  switch2.meta.name = 'Breaker switch';

  equal(switch1.meta.name, 'Breaker switch',
    'Object and array mutations are shared.'
  );

  switch2.meta = { name: 'Power switch' };

  equal(switch1.meta.name, 'Breaker switch',
    'Property replacement is instance-specific.'
  );
});
    
    
//==================//==================
_.extend = function(obj) {
  each(slice.call(arguments, 1), function(source) {
    for (var prop in source) {
      obj[prop] = source[prop];
    }
  });
  return obj;
};
    
    
//==================//==================
var switchProto = {
      isOn: function isOn() {
        return this.state;
      },

      toggle: function toggle() {
        this.state = !this.state;
        return this;
      },

      meta: {
        name: 'Light switch'
      },

      state: false
    },

    switch1 = extend({}, switchProto),
    switch2 = extend({}, switchProto);

  test('Prototype clones.', function () {

    switch1.isOn.isShared = true;

    ok(!switch2.isShared, 
      'Methods are copied for each instance, not shared.'
    );

    ok(switch1.toggle().isOn(),
      '.toggle() works.'
    );

    ok(!switch2.isOn(),
      'instance safe.'
    );

    switch2.meta.name = 'Breaker switch';

    equal(switch1.meta.name, 'Breaker switch',
      'Object and array mutations are shared.'
    );

    switch2.meta = { name: 'Power switch' };

    equal(switch1.meta.name, 'Breaker switch',
      'Property replacement is instance-specific.'
    );
  });
    
    
//==================//==================
var enemyPrototype = {
    name: 'Wolf',
    position: { // Override this with setPosition
      x: 0,
      y: 0
    },
    setPosition: function setPosition (x, y) {
      this.position = {
        x: x,
        y: y
      };
      return this;
    },
    health: 20, // Overrides automatically on change
    bite: function bite() {
    },
    evade: function evade() {
    }
  },

  spawnEnemy = function () {
    return Object.create(enemyPrototype);
  };

test('Flyweight pattern.', function () {
  var wolf1 = spawnEnemy(),
    wolf2 = spawnEnemy();

  wolf1.health = 5;
  ok(wolf2.health = 20,
    'Primitives override automatically.');

  ok(wolf1.setPosition(10, 10)
      .position.x === 10, 'Object override works.');
  equal(wolf2.position.x, 0,
      'The prototype should remain unchanged.');
});
    
    
//==================//==================
MyConstructor.prototype.myMethod = function () {
  // A method to be shared...
};
    
    
//==================//==================
function Car(color, direction, mph) {
  this.color = color || 'pink';
  this.direction = direction || 0; // 0 = Straight ahead
  this.mph = mph || 0;

  this.gas = function gas(amount) {
    amount = amount || 10;
    this.mph += amount;
    return this;
  };

  this.brake = function brake(amount) {
    amount = amount || 10;
    this.mph = ((this.mph - amount) < 0)? 0
      : this.mph - amount;
    return this;
  };
}

var myCar = new Car();

test('Constructor', function () {
  ok(myCar.color, 'Has a color');

  equal(myCar.gas().mph, 10,
    '.accelerate() should add 10mph.'
  );

  equal(myCar.brake(5).mph, 5,
    '.brake(5) should subtract 5mph.'
  );      
});
    
    
//==================//==================
function Car(color, direction, mph) {
  var isParkingBrakeOn = false;
  this.color = color || 'pink';
  this.direction = direction || 0; // 0 = Straight ahead
  this.mph = mph || 0;

  this.gas = function gas(amount) {
    amount = amount || 10;
    this.mph += amount;
    return this;
  };
  this.brake = function brake(amount) {
    amount = amount || 10;
    this.mph = ((this.mph - amount) < 0)? 0
      : this.mph - amount;
    return this;
  };
  this.toggleParkingBrake = function toggleParkingBrake() {
    isParkingBrakeOn = !isParkingBreakOn;
    return this;
  };
  this.isParked = function isParked() {
    return isParkingBrakeOn;
  }
}

var myCar = new Car();

test('Constructor with private property.', function () {
  ok(myCar.color, 'Has a color');
  equal(myCar.gas().mph, 10,
    '.accelerate() should add 10mph.'
  );
  equal(myCar.brake(5).mph, 5,
    '.brake(5) should subtract 5mph.'
  );
  ok(myCar.toggleParkingBrake().isParked(),
    '.toggleParkingBrake works.'
  );
});
    
    
//==================//==================
var myCar = {
  color: 'pink',
  direction: 0,
  mph: 0,

  gas: function gas(amount) {
    amount = amount || 10;
    this.mph += amount;
    return this;
  },

  brake: function brake(amount) {
    amount = amount || 10;
    this.mph = ((this.mph - amount) < 0)? 0
      : this.mph - amount;
    return this;
  }
};

test('Object literal notation.', function () {
  ok(myCar.color, 'Has a color');

  equal(myCar.gas().mph, 10,
    '.accelerate() should add 10mph.'
  );

  equal(myCar.brake(5).mph, 5,
    '.brake(5) should subtract 5mph.'
  );
});
    
    
//==================//==================
function factory() {
  var highlander = {
      name: 'MacLeod'
    };
    
  return {
    get: function get() {
      return highlander;
    }
  };
}

test('Singleton', function () {
  var singleton = factory();
    hero = singleton.get(),
    hero2 = singleton.get();
  
  hero.sword = 'Katana';

  // Since hero2.sword exists, you know it's the same
  // object.
  ok(hero2.sword, 'There can be only one.');
});
    
    
//==================//==================
var car = function car(color, direction, mph) {
  var isParkingBrakeOn = false;

  return {
    color: color || 'pink',
    direction: direction || 0,
    mph: mph || 0,
    gas: function gas(amount) {
      amount = amount || 10;
      this.mph += amount;
      return this;
    },

    brake: function brake(amount) {
      amount = amount || 10;
      this.mph = ((this.mph - amount) < 0) ? 0
        : this.mph - amount;
      return this;
    },

    toggleParkingBrake: function toggleParkingBrake() {
      isParkingBrakeOn = !isParkingBrakeOn;
      return this;
    },

    isParked: function isParked() {
      return isParkingBrakeOn;
    }
  };
},
myCar = car('orange', 0, 5);

test('Factory with private variable.', function () {
  ok(myCar.color, 'Has a color');

  equal(myCar.gas().mph, 15,
    '.accelerate() should add 10mph.'
  );

  equal(myCar.brake(5).mph, 10,
    '.brake(5) should subtract 5mph.'
  );

  ok(myCar.toggleParkingBrake().isParked(),
    '.toggleParkingBrake() toggles on.');

  ok(!myCar.toggleParkingBrake().isParked(),
    '.toggleParkingBrake() toggles off.');
});
    
    
//==================//==================
var carPrototype = {
    gas: function gas(amount) {
      amount = amount || 10;
      this.mph += amount;
      return this;
    },
    brake: function brake(amount) {
      amount = amount || 10;
      this.mph = ((this.mph - amount) < 0)? 0
        : this.mph - amount;
      return this;
    },
    color: 'pink',
    direction: 0,
    mph: 0
  },

  car = function car(options) {
    return extend(Object.create(carPrototype), options);
  },

  myCar = car({
    color: 'red'
  });

test('Flyweight factory with cloning', function () {
  ok(Object.getPrototypeOf(myCar).gas,
    'Prototype methods are shared.'
  );
});
    
    
//==================//==================
test('Flyweight factory with cloning', function () {
  // Swap out some prototype defaults:
  extend(carPrototype, {
    name: 'Porsche',
    color: 'black',
    mph: 220
  });

  equal(myCar.name, 'Porsche',
    'Instance inherits the new name.'
  );

  equal(myCar.color, 'red',
    'No instance properties will be impacted.'
  );
});
    
    
//==================//==================
stampit(methods, state, enclose);
    
    
//==================//==================
var testObj = stampit(
// methods
{
  delegateMethod: function delegateMethod() {
    return 'shared property';
  }
},

// state
{
  instanceProp: 'instance property'
},

// enclose
function () {
  var privateProp = 'private property';

  this.getPrivate = function getPrivate() {
    return privateProp;
  }
}).create();

test('Stampit with params', function () {
  equal(testObj.delegateMethod(), 'shared property',
    'delegate methods should be reachable');

  ok(Object.getPrototypeOf(testObj).delegateMethod,
    'delegate methods should be stored on the ' +
    'delegate prototype');

  equal(testObj.instanceProp, 'instance property',
    'state should be reachable.');

  ok(testObj.hasOwnProperty('instanceProp'),
    'state should be instance safe.');

  equal(testObj.hasOwnProperty('privateProp'), false,
    'should hide private properties');

  equal(testObj.getPrivate(), 'private property',
    'should support privileged methods');
});
    
    
//==================//==================
var testObj = stampit().methods({
    delegateMethod: function delegateMethod() {
      return 'shared property';
    }
  })
  .state({
    instanceProp: 'instance property'
  })
  .enclose(function () {
    var privateProp = 'private property';

    this.getPrivate = function getPrivate() {
      return privateProp;
    }
  })
  .create();
    
    
//==================//==================
var stamp = stampit().methods({
    delegateMethod: function delegateMethod() {
      return 'shared property';
    }
  }),
  obj1 = stamp(),
  obj2 = stamp();

Object.getPrototypeOf(obj1).delegateMethod = 
  function () {
    return 'altered';
  };

test('Prototype mutation', function () {
  equal(obj2.delegateMethod(), 'altered',
    'Instances share the delegate prototype.');
});
    
    
//==================//==================
var person = stampit().state({name: ''}),
  jimi = person({name: 'Jimi Hendrix'});


test('Initialization', function () {

  equal(jimi.name, 'Jimi Hendrix',
    'Object should be initialized.');

});
    
    
//==================//==================
var person = stampit().enclose(function () {
  var firstName = '',
    lastName = '';

  this.getName = function getName() {
    return firstName + ' ' + lastName;
  };

  this.setName = function setName(options) {
    firstName = options.firstName || '';
    lastName = options.lastName || '';
    return this;
  };
}),

jimi = person().setName({
  firstName: 'Jimi',
  lastName: 'Hendrix'
});

test('Init method', function () {

equal(jimi.getName(), 'Jimi Hendrix',
  'Object should be initialized.');

});
    
    
//==================//==================
var a = stampit().enclose(function () {
  var a = 'a';

  this.getA = function () {
    return a;
  };
});

a().getA(); // 'a'
    
    
//==================//==================
var b = stampit().enclose(function () {
  var a = 'b';

  this.getB = function () {
    return a;
  };
});

b().getB(); // 'b'
    
    
//==================//==================
var c = stampit.compose(a, b),
  foo = c();

foo.getA(); // 'a'
foo.getB(); // 'b'
    
    
//==================