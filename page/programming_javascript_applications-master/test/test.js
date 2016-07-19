/**
 * Created by Administrator on 2016/7/2.
 */
/*
QUnit.test("hello test",function(assert){
    assert.ok(1 == "1","Passed!");
});
*/


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