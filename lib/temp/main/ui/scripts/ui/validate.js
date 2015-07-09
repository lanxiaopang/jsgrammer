define(["jquery", "utils", "tooltip"], function ($, u, tooltip) {
    var validateOption = {
        verify: function (config) {
            if (typeof config.of === "string") {
                config.of = $(config.of);
            }

            if (config.of && config.of.length) {
                tooltip.hide(config.of);
                var errMessage = this._getVerifyResult(config);
                if (errMessage !== "" && errMessage !== undefined) {
                    if (config.showTip) {
                        config.tipOption.of = config.of;
                        config.tipOption.content = errMessage;

                        tooltip.show(config.tipOption);
                    }

                    if (config.errorHandler && $.isFunction(config.errorHandler)) {
                        config.errorHandler(errMessage, config.of);
                    }
                }
                return (errMessage === "" || errMessage === undefined);
            }
        },
        pluginExtend: {
            require: {
                tag: "data-val-required",
                validate: function (elem, value, attValue) {
                    if ($.trim(value) === "") {
                        return attValue || "此项为必填项，请填写。";
                    }
                }
            },
            number: {
                tag: "data-val-number",
                validate: function (elem, value, attValue) {
                    if (isNaN(value)) {
                        return attValue || "请填写数字类型的值。";
                    }
                }
            },
            int: {
                tag: "data-val-int",
                validate: function (elem, value, attValue) {
                    if (isNaN(value) || value.toString().indexOf(".") > -1) {
                        return attValue || "请填写整数类型的值";
                    }
                }
            },
            range: {
                tag: "data-val-range",
                validate: function (elem, value, attValue) {
                    var isNaNMessage = validateOption.pluginExtend.number.validate(elem, value);
                    if (isNaNMessage === undefined) {
                        var min = parseFloat(elem.attr("data-val-range-min") || 0);
                        var max = parseFloat(elem.attr("data-val-range-max") || 0);
                        value = parseFloat(value);
                        if (isNaN(min) || isNaN(max) || (min === 0 && max === 0)) {
                            return;
                        }
                        else if (isNaN(value) === false) {
                            if (min == 0) {
                                if (value > max)
                                    return attValue || (u.format("最大为{0}，请重新输入", max));
                            }
                            else if (max == 0) {
                                if (value < min)
                                    return attValue || (u.format("最小为{0}，请重新输入", min));
                            }
                            else {
                                if (value > max || value < min)
                                    return attValue || (u.format("输入值必须在{0}到{1}，请重新输入", min, max));
                            }
                        }
                    }
                    else {
                        return isNaNMessage;
                    }
                }
            },
            length: {
                tag: "data-val-length",
                validate: function (elem, value, attValue) {
                    var min = parseInt(elem.attr("data-val-length-min") || 0);
                    var max = parseInt(elem.attr("data-val-length-max") || 0);

                    if (isNaN(min) || isNaN(max) || (min === 0 && max === 0)) {
                        return;
                    }
                    else {
                        if (min == 0) {
                            if (value.length > max)
                                return attValue || (u.format("最大长度为{0}位，请重新输入", max));
                        }
                        else if (max == 0) {
                            if (value.length < min)
                                return attValue || (u.format("最小长度为{0}位，请重新输入", min));
                        }
                        else {
                            if (value.length > max || value.length < min)
                                return attValue || (u.format("长度必须是{0}到{1}位，请重新输入", min, max));
                        }
                    }
                }
            },
            regex: {
                tag: "data-val-regex",
                validate: function (elem, value, attValue) {
                    var exp = elem.attr("data-val-regex-pattrn");
                    if (exp) {
                        var clientRegex = new RegExp(exp);
                        if (clientRegex.test(value) == false) {
                            return attValue || "正则匹配失败";
                        }
                    }

                }
            },
            email: {
                validate: function (elem, value) {
                    var clientRegex = /^\s*([A-Za-z0-9_-]+(\.\w+)*@([\w-]+\.)+\w{2,10})\s*$/;
                    if (clientRegex.test(value) == false) {
                        return "请输入正确的邮箱地址"
                    }


                }
            }
        },
        getValue: function ($elem, config) {
            if (config.value === undefined) {
                var elem = $elem[0];
                switch (elem.type) {
                    case "checkbox":
                        return $elem.prop("checked");
                        break;
                    default:
                        return $elem.val();
                        break;
                }
            }
            return config.value;
        },
        _getVerifyResult: function (config) {
            var value = this.getValue(config.of, config);

            var attributes = config.of[0].attributes;
            //全局验证
            for (var name in this.pluginExtend) {
                var item = this.pluginExtend[name];
                if (item.tag === undefined) continue;

                var attributeValue = attributes[item.tag];
                if (attributeValue === undefined) continue;

                var result = item.validate(config.of, value, attributeValue.value);
                if (result !== undefined && result !== "") {
                    return result;
                }
            }

            //指定插件验证
            var pluginType = attributes["data-val-type"];
            if (attributes["data-val-type"]) {
                var plugin = this.pluginExtend[attributes["data-val-type"].value];
                if (plugin && plugin.validate) {
                    var result = plugin.validate(config.of, value);
                    if (result !== undefined && result !== "") {
                        return result;
                    }
                }
            }

            //自定义验证
            if (config.extra && config.extra.length) {
                for (var i = 0; i < config.extra; i++) {
                    var item = config.extra[i];
                    var result;
                    if ($.isFunction(item)) {
                        result = item(config.of, value);
                        if (result !== undefined && result !== "") {
                            return result;
                        }
                    }
                    else if (typeof item === "string") {
                        var plugin = this.pluginExtend[item];
                        if (plugin && plugin.validate) {
                            result = plugin.validate(config.of, value);
                            if (result !== undefined && result !== "") {
                                return result;
                            }
                        }
                    }
                }
            }
        }

    };
    var defaultValidateOption = {
        of: "",
        extra: [],
        value: undefined,
        showTip: true,
        errorHandler: function (message, elem) { },
        tipOption: {
            position: "right",
            className: "tooltip-error"
        }
    };
    $.fn.validate = function () {
        var fnValidate = $.extend(true, {}, defaultValidateOption);
        delete fnValidate.of;

        fnValidate = u.paramTransform(fnValidate, arguments);
        fnValidate.of = $(this);
        return validateOption.verify(fnValidate);

    }
    return {
        verify: function () {
            var option = u.paramTransform(defaultValidateOption, arguments);
            return validateOption.verify(option);
        },
        add: function (plugin) {
            if (plugin && plugin.name && plugin.validate) {
                validateOption.pluginExtend[plugin.name] = {
                    tag: plugin.tag,
                    validate: plugin.validate
                };
            }
        }
    };
});