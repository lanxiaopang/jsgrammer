define(["jquery", "utils", "formCtrls", "tooltip", "message"], function ($, u, formCtrls, tooltip, message) {
    var formOption = {
        init: function (config) {
            var option = config.option;
            if (typeof option.of === "string") {
                option.of = $(option.of);
            }

            if (option.of && option.of.length) {
                this._transformAttribute(option.of, option);
                this._initFormCtrls(option.of, config);
                this._initHandler(option.of, config);
            }
        },
        sumbit: function (form, config) {
            var validateResult = this.validate(form, config);
            if (validateResult) {
                var formData = this.getFormData(config);
                if (config.option.getDataFunction && $.isFunction(config.option.getDataFunction)) {
                    formData = config.option.getDataFunction(formData);
                }

                if (config.option.sumbitFunction && $.isFunction(config.option.sumbitFunction)) {
                    config.option.sumbitFunction(form, formData);
                }
                else {
                    //TODO:
                    message.success("操作成功");
                }
            }
        },
        getFormData: function (config) {
            var result = {};
            if (config.ctrls) {
                for (var name in config.ctrls) {
                    var item = config.ctrls[name];
                    var ctrlElem = item.target || item.elem;
                    if (this._checkEnableSumbit(ctrlElem) === false) continue;
                    result[name] = item.getValue(item.elem);
                }
            }

            return result;
        },
        validate: function (form, config) {
            if (config.option.validateFunction && $.isFunction(config.option.validateFunction)) {
                return config.option.validateFunction(form, config);
            }
            var result = true;
            if (config.ctrls) {
                for (var name in config.ctrls) {
                    var item = config.ctrls[name];

                    var ctrlElem = item.target || item.elem;
                    if (this._checkEnableValidate(ctrlElem) === false) continue;
                    var validateResult = item.validate(ctrlElem);
                    if (!validateResult.result) {
                        result = false;
                        if (config.option.validateErrShowFunction || $.isFunction(config.option.validateErrShowFunction)) {
                            config.option.validateErrShowFunction(name, ctrlElem, validateResult.message, form);
                        }
                        else {
                            config.option.toolTipOption.of = ctrlElem;
                            config.option.toolTipOption.content = validateResult.message;

                            tooltip.show(config.option.toolTipOption);
                        }

                        if (config.option.fullValidate === false) {
                            return false;
                        }
                    }
                }
            }
            return result;
        },
        _checkEnableSumbit: function (ctrlElem) {
            return ((ctrlElem.is(":visible")
                || (ctrlElem[0].tagName.toLowerCase() === "input" && ctrlElem[0].type === "hidden"))
                && ctrlElem.is(":disabled") === false);
        },
        _checkEnableValidate: function (ctrlElem) {
            return (ctrlElem.is(":visible")
                && ctrlElem.is(":disabled") === false);
        },
        _initFormCtrls: function ($form, config) {
            $form.find("[name]").each(function () {
                var name = this.name;
                if (name !== "" && name !== undefined) {
                    //若多个name 应保留一个，类似radio
                    if (config.ctrls[name]) return;
                    config.ctrls[name] = formCtrls.init($(this));
                }
            });
        },
        _initHandler: function (form, config) {
            var self = this;
            form.on({
                click: function (e) {
                    e.preventDefault();
                    self.sumbit(form, config);
                }
            }, "input[type='submit'],button[type='submit']");
        },
        _transformAttribute: function (elem, option) {
            option.url = option.url || elem.attr("url");
            option.ajaxType = option.ajaxType || elem.attr("method") || "post";
        }
    };
    var defaultFormOption = {
        of: "",
        url: "",
        success: undefined,
        error: undefined,
        always: undefined,
        ajaxType: "",
        fullValidate: true,
        getDataFunction: undefined,
        sumbitFunction: undefined,
        validateFunction: undefined,
        validateErrShowFunction: undefined,
        toolTipOption: {
            to: this.of,
            position: "right",
            className: "tooltip-error"
        }
    };
    $.fn.form = function () {
        var option = $.extend(true, {}, defaultFormOption);
        delete option.of;

        option = u.paramTransform(option, arguments);
        option.of = $(this);
        return handler(option);
    }

    var handler = function () {
        var self = {};
        self.ctrls = {};
        self.option = u.paramTransform(defaultFormOption, arguments);
        self.get = function () {
            if (arguments.length === 0) {
                return formOption.getFormData(self);
            }
            else if (arguments.length === 1 && typeof arguments[0] === "string") {
                var ctrl = self.ctrls[arguments[0]];
                if (ctrl) {
                    return ctrl.getValue(ctrl.elem);
                }
            }
            else if (arguments.length === 1 && $.isArray(arguments[0])) {
                var result = {};
                for (var i in arguments[0]) {
                    var item = arguments[0][i];
                    var ctrl = self.ctrls[item];
                    if (ctrl) {
                        result[item] = ctrl.getValue(ctrl.elem);
                    }
                }
                return result;
            }
        }

        self.set = function () {
            if (arguments.length === 1 && typeof arguments[0] === "object") {
                for (var name in arguments[0]) {
                    var ctrl = self.ctrls[name];
                    if (ctrl) {
                        ctrl.setValue(ctrl.elem, arguments[0][name]);
                    }
                }
            }
            else if (arguments.length === 2 && typeof arguments[0] === "string") {
                var ctrl = self.ctrls[arguments[0]];
                if (ctrl) {
                    ctrl.setValue(ctrl.elem, arguments[1]);
                }
            }
        }

        self.sumbit = function () {
            formOption.sumbit(self.option.of, self);
        }

        self.validate = function () {
            formOption.validate(self.option.of, self);
        }

        self.setOption = function () {
            if (arguments.length === 0 && typeof arguments[0] === "object") {
                self.option = $.extend(true, self.option, arguments[0]);
            }
            else if (arguments.length === 2 && typeof arguments[0] === "string") {
                var name = arguments[0];
                var option = arguments[1];

                var ctrl = self.ctrls[name];
                if (ctrl) {
                    ctrl.setOption(ctrl.elem, option);
                }
            }
        }
        formOption.init(self);
        return self;
    }

    return handler;
});