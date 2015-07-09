define(["jquery"], function ($) {
    return {
        guid: function () {
            return "guid" + new Date().getTime() + Math.ceil(Math.random() * 1000);
        },
        paramTransform: function (defaultOption, arg) {
            var result = {};
            if (arg.length === 1 && typeof arg[0] === "object") {
                result = $.extend(true, {}, defaultOption, arg[0]);
            }
            else {
                var index = 0;
                for (var name in defaultOption) {
                    if (arg.length > index) {
                        if (typeof arg[index] === "object" && arg[index] !== null && arg[index].length === undefined) {
                            result[name] = $.extend({}, defaultOption[name], arg[index]);
                        }
                        else {
                            result[name] = arg[index];
                        }
                    }
                    else {
                        result[name] = defaultOption[name];
                    }
                    index++;
                }
            }
            return result;
        },
        format: function (args) {
            if (arguments.length > 0) {
                var result = arguments[0];
                if (arguments.length > 1) {
                    if (arguments.length == 2 && typeof (arguments[1]) == "object") {
                        for (var key in arguments[1]) {
                            var reg = new RegExp("({" + key + "})", "g");
                            result = result.replace(reg, arguments[1][key]);
                        }
                    }
                    else {
                        for (var i = 1; i < arguments.length; i++) {
                            if (arguments[i] == undefined) {
                                return args;
                            }
                            else {
                                var reg = new RegExp("({[" + (i - 1) + "]})", "g");
                                result = result.replace(reg, arguments[i]);
                            }
                        }
                    }
                }
                return result;
            }
            else {
                return args;
            }
        },
        toDecimalString: function (value, addComma, digits) {
            var str = '' + value;
            //	if (str.length == 0) str = '0';
            if (str.length == 0) str = "";
            str = str.replace(/\,/g, '');
            var reg = /^[+-]?((\d{1,3}(\,\d{3})*)|\d*)?(\.\d*)?$/;

            if (reg.test(str)) {
                if ($.trim(str) == '')
                    return '';
                //解析符号、整数部分和小数部分
                var sign = str.charAt(0);
                if (sign == '+' || sign == '-') {
                    str = str.substring(1);
                } else {
                    sign = null;
                }
                var pointPos = str.indexOf('.');
                var integer = str;
                var decimal = '';
                if (pointPos >= 0) {
                    integer = str.substring(0, pointPos);
                    decimal = str.substring(pointPos + 1);
                }
                while (integer.charAt(0) == '0') {
                    integer = integer.substring(1);
                }
                if ((!typeof digits == 'number' && digits >= 0) && (pointPos < 0 || pointPos + 1 == str.length)) {
                    digits = 0;
                }
                if (integer.length == 0) integer = '0';
                if (decimal.length == 0) decimal = '0';
                digits = digits || 2;//默认保留两位
                //小数和四舍五入
                if (digits && typeof digits == 'number' && digits >= 0) {
                    while (decimal.length < digits) {
                        decimal += '0';
                    }
                    var nextNumber = decimal.charAt(digits);
                    decimal = decimal.substr(0, digits);
                    if (parseInt(nextNumber) >= 5) {
                        var tmp = Math.pow(10, digits);
                        var newValue = (sign ? sign : '') + (parseInt(integer, 10) * tmp + parseInt(decimal, 10) + 1) / tmp;
                        return this.toDecimalString(newValue, addComma, digits);
                    }
                }
                //加逗号
                if (addComma) {
                    var sb = '';
                    for (var i = 0, len = integer.length; i < len; i++) {
                        sb += integer.charAt(i);
                        if ((i + 1) % 3 == len % 3 && (i + 1) != len) {
                            sb += ',';
                        }
                    }
                    integer = sb;
                }
                //拼合
                var res = '';
                if (sign) res += sign;
                res += integer;
                if (decimal) res += '.' + decimal;
                return res;
            }
        },
        keyCode: {
            BACKSPACE: 8,
            COMMA: 188,
            DELETE: 46,
            DOWN: 40,
            END: 35,
            ENTER: 13,
            ESCAPE: 27,
            HOME: 36,
            LEFT: 37,
            PAGE_DOWN: 34,
            PAGE_UP: 33,
            PERIOD: 190,
            RIGHT: 39,
            SPACE: 32,
            TAB: 9,
            UP: 38
        }
    };
});