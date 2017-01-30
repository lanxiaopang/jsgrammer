/**
 * Created by Administrator on 2017/1/18.
 */

/**
 *
 * @param age {Number}
 * @constructor
 */
function User(age) {
    this.age = age;
}
/**
 *
 * @type {{getAge: Function}}
 */
User.prototype = {
    /**
     *
     * @returns {age}
     */
    getAge: function () {
        return this.age;
    },
    /**
     *
     * @param {Number}newAge
     * @returns {Number}
     */
    setAge: function (newAge) {
        return newAge;
    }
}