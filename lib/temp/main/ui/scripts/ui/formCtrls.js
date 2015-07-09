define(["jquery", "utils", "validate"], function ($, utils, validate) {
    var formCtrlOption = {
        init: function (elem, option) {
            var ctrl = this.getCtrlPlugin(elem);
            if (ctrl.init && $.isFunction(ctrl.init)) {
                ctrl.init(elem, option);
            }
            return ctrl;
        },
        getCtrlPlugin: function ($elem) {
            var elem = $elem[0];
            var tagName = elem.tagName.toLowerCase();
            var type = $elem.attr("data-ctrl-type") || (elem.attributes["type"] === undefined ? "" : elem.attributes["type"].value);
            var plugin;
            for (var name in this.plugins) {
                var item = this.plugins[name];
                if (item.tagName === undefined || item.tagName === "" || item.tagName === tagName || item.tagName === "*" || item.tagName.indexOf(tagName) > -1) {
                    if (plugin === undefined) {
                        plugin = item;
                    }
                    else if (type === name) {
                        plugin = item;
                    }
                }
            }

            var result = $.extend({}, defaultPluginItem, plugin);
            result.elem = $elem;

            return result;
        },
        plugins: {
            text: {
                tagName: "input"
            },
            number: {
                tagName: "input",
                init: function (elem) {
                    elem.attr("data-val-number", "");
                    elem.keydown(function (e) {
                        var value = $(this).val();;
                        var key = window.event ? e.keyCode : e.which;
                        return ((key > 95 && key < 106) ||                  //小键盘上的0到9
                        (key > 47 && key < 60) ||                   //大键盘上的0到9
                        (key == 189 && value.indexOf("-") < 0) ||   //负数
                        (key == 110 && value.indexOf(".") < 0) ||   //小键盘上的.而且以前没有输入.
                        (key == 190 && value.indexOf(".") < 0) ||   //大键盘上的.而且以前没有输入.
                        //不影响正常编辑键的使用(8:BackSpace;9:Tab;46:Delete;37:Left;39:Right)
                        key == 8 || key == 9 || key == 46 || key == 37 || key == 39);
                    });
                    elem.keyup(function () {
                        var value = $(this).val();
                        if (isNaN(value)) {
                            $(this).val("");
                        }
                    });
                }
            },
            currency: {
                tagName: "input",
                init: function (elem) {
                    var self = this;
                    elem.attr("data-val-number", "");
                    elem.focus(function () {
                        $(this).val($(this).val().replace(new RegExp('\,', ["g"]), ''));
                    });
                    elem.keydown(function (e) {
                        var value = $(this).val();
                        var key = window.event ? e.keyCode : e.which;
                        return ((key > 95 && key < 106) ||                  //小键盘上的0到9
                        (key > 47 && key < 60) ||                   //大键盘上的0到9
                        (key == 189 && value.indexOf("-") < 0) ||   //负数
                        (key == 110 && value.indexOf(".") < 0) ||   //小键盘上的.而且以前没有输入.
                        (key == 190 && value.indexOf(".") < 0) ||   //大键盘上的.而且以前没有输入.
                        //不影响正常编辑键的使用(8:BackSpace;9:Tab;46:Delete;37:Left;39:Right)
                        key == 8 || key == 9 || key == 46 || key == 37 || key == 39);
                    });
                    elem.keyup(function () {
                        var value = $(this).val();
                        if (isNaN(value)) {
                            $(this).val("");
                        }
                    });
                    elem.blur(function () {
                        $(this).val(self.valueTransform($(this).val()));
                    });

                    elem.val(self.valueTransform(elem.val()));
                },
                getValue: function (elem) {
                    return elem.val().replace(new RegExp('\,', ["g"]), '');
                },
                setValue: function (elem, value) {
                    elem.val(this.valueTransform(value));
                },
                valueTransform: function (value) {
                    return utils.toDecimalString(value, true, 2);
                }
            },
            radio: {
                tagName: "input",
                getValue: function (elem) {
                    var name = elem.attr("name");
                    return elem.closest("form").find("[name='" + name + "']:checked").val();
                },
                setValue: function (elem, value) {
                    var name = elem.attr("name");
                    elem.closest("form").find("[name='" + name + "'][value='" + value + "']").prop("checked", true);
                }
            }
        }
    };

    var defaultPluginItem = {
        elem: undefined,
        target: undefined,
        validate: function (elem) {
            var message;
            var result = {
                message: undefined,
                result: elem.validate({
                    value: this.getValue(elem),
                    showTip: false,
                    errorHandler: function (m) {
                        message = m;
                    }
                })
            };
            result.message = message;
            return result;
        },
        getValue: function (elem) {
            return elem.val();
        },
        setValue: function (elem, value) {
            elem.val(value);
        },
        setOption: function (elem, option) { }
    };

    return {
        init: function (elem, option) {
            if (elem && elem.length) {
                return formCtrlOption.init(elem, option);
            }
        },
        add: function (plugin) {
            if (plugin && typeof plugin === "object" && plugin.name) {
                var name = plugin.name;
                delete plugin.name;
                formCtrlOption.plugins[name] = plugin;
            }
        }
    }
});