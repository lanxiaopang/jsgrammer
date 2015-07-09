define(["jquery"], function ($) {
    var stepbarOption = {
        className: "stepbar",
        itemClass: "stepbar-item",
        contentClass: "stepbar-content",
        init: function (config) {
            this._createHtml(config.elem, config.option.data);
            config.elem.addClass("clearFix " + this.className + " " + config.option.theme);
            this.active(config.elem, config.option, config.option.value, "runing");
        },
        active: function (elem, option, value, tag) {
            if (value < 0) return;
            elem.find(">." + this.itemClass).removeClass("runing").removeClass("complete");
            elem.find(">." + this.itemClass + ":eq(" + (value) + ")").addClass("runing");
            elem.find(">." + this.itemClass + ":lt(" + (value) + ")").addClass("complete");

            if (option.change && $.isFunction(option.change)) option.change(value);

            if (value >= option.data.length) {
                if (option.complete && $.isFunction(option.complete)) option.complete();
            }
        },
        _createHtml: function (elem, data) {
            var html = [];
            for (var i in data) {
                var text = data[i];
                html.push([
                    '<div class="' + this.itemClass + '">',
                    '<div class="' + this.contentClass + '"><i>' + (+i + 1) + '</i></div>',
                    '<p>' + text + '</p>',
                    '</div>'
                ].join(''));
            }

            elem.append(html.join(''));
            var width = (100 / data.length) + "%";
            elem.find(">." + this.itemClass).width(width);
        }

    };
    var defaultOption = {
        data: [],
        value: 0,
        theme: "stepbar-default",
        change: undefined,
        complete: undefined
    };
    $.fn.stepbar = function () {
        var self = {};
        self.option = $.extend(true,{},defaultOption, arguments[0]);
        self.elem = $(this);
        if (self.option.data && self.option.data.length) {
            stepbarOption.init(self);
        }

        self.next = function () {
            var runingItem = self.elem.find(".runing");
            if (runingItem.length) {
                var index = runingItem.index();
                stepbarOption.active(self.elem, self.option, (index + 1), "runing");
            }
        }

        self.prev = function () {
            var runingItem = self.elem.find(".runing");
            if (runingItem.length) {
                var index = runingItem.index();
                stepbarOption.active(self.elem, self.option, (index - 1), "runing");
            }
        }

        self.active = function (index, tag) {
            index = parseInt(index);
            if (isNaN(index) === false) {
                tag = tag || "runing";
                if (tag === "complete") {
                    index = index + 1;
                }
                stepbarOption.active(self.elem, self.option, index, "runing");
            }
        }
        return self;
    }
});