define(["jquery", "utils", "tooltip"], function ($, utils, tooltip) {
    var progressbarOption = {
        className: "progressbar",
        barClass: "progressbar-value",
        init: function (config) {
            config.elem.addClass(this.className + " " + config.option.theme);
            this._createHtml(config.elem);
            if (config.option.showTip === true) {
                var tipbar = config.elem.find("." + this.barClass + " span");
                tooltip.show({
                    of: tipbar,
                    to: tipbar,
                    content: 0,
                    width: "45px",
                    className: "tooltip-info",
                    textalign: "center",
                    position: "top"
                });
            }

            this.setValue(config, config.option.value);
        },
        setValue: function (config, value) {
            value = parseFloat(value);
            if (isNaN(value) === false && value <= config.option.max && value >= 0) {
                var progress = (value / config.option.max) * 100;
                var bar = config.elem.find("." + this.barClass);
                if (progress > 100) progress = 100;
                if (progress < 0) progress = 0;
                bar.width(progress + "%");

                if (config.option.change && $.isFunction(config.option.change)) {
                    config.option.change();
                }
                if (progress === 100) {
                    if (config.option.complete && $.isFunction(config.option.complete)) {
                        config.option.complete();
                    }
                }

                if (config.option.showTip) {
                    tooltip.setText(bar.find("span"), config.option.tipText(progress.toFixed(0)));
                }
            }
        },
        _createHtml: function (elem) {
            var html = $("<div class='" + this.barClass + "'><span></span></div>");
            elem.append(html);
        }

    };


    var defaultOption = {
        max: 100,
        theme: "progressbar-default",
        showTip: true,
        value: 0,
        tipText: function (progressvalue) {
            return progressvalue + "%";
        },
        change: undefined,
        complete: undefined
    };


    $.fn.progressbar = function () {
        var self = {};

        self.option = $.extend(true, {}, defaultOption, arguments[0]);
        self.elem = $(this);
        progressbarOption.init(self);


        self.setValue = function (value) {
            progressbarOption.setValue(self, value);
        }

        return self;
    }
});