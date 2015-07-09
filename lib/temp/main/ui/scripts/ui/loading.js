define(["jquery", "utils", "jqueryui"], function ($, u) {
    var loadingOption = {
        className: "loading"
    };
    var defaultOption = {
        to: "body",
        text: "",
        className: "loading-default"
    };
    return function () {
        var self = {};
        self.option = u.paramTransform(defaultOption, arguments);
        self.open = function () {
            var html = [
                '<div class="' + loadingOption.className + ' ' + self.option.className + '">',
                '   <div class="loading-body">',
                '       <div class="loading-img"></div>',
                '       <p>' + self.option.text + '</p>',
                '   </div>',
                '</div>'
            ];

            var parentContainer;
            if (typeof self.option.to === "string") {
                parentContainer = $(self.option.to);
            }
            else {
                parentContainer = self.option.to;
            }

            if (parentContainer && parentContainer.length) {
                self.container = $(html.join(''));
                parentContainer.append(self.container);

                self.container.find(".loading-body").position({
                    of: self.container
                });
            }
        }

        self.close = function () {
            if (self.container && self.container.length) {
                self.container.remove();
            }
        }
        return self;
    }
});