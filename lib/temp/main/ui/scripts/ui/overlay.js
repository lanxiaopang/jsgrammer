define(["jquery", "utils"], function ($, u) {
    var overlayOption = {
        className: "overlay",
        defaultZindex: 100,
        overlayList: []
    };

    $(window).resize(function () {
        $(".overlayOption").css({
            width: "100%",
            height: "100%"
        });
    });

    /*\
    *  {
    *       color: "#000",
    *       zindex: 500,
    *       to:"body",
    *       click:undefined
    *  }
    \*/
    return function (option) {
        var defaultOption = {
            color: "#f5f5f5",
            zindex: 500,
            to: "body",
            click: undefined
        };

        option = $.extend({}, defaultOption, option);
        var self = this;
        self.zindex = option.zindex === undefined ? overlayOption.defaultZindex : option.zindex;
        self.id = u.guid();

        self.open = function () {
            $("." + overlayOption.className).hide();
            var aimElem = $("#" + self.id);
            if (aimElem.length) {
                aimElem.show();
                return; aimElem;
            }
            var html = $(u.format('<div class="{0}" id="{1}" style="background:{2};z-index:{3}"></div>', overlayOption.className, self.id, option.color, self.zindex));
            $(option.to).append(html);
            self._initHandler(html);
            overlayOption.overlayList.push(self);
            return html;
        }
        self.close = function () {
            for (var index in overlayOption.overlayList) {
                var item = overlayOption.overlayList[index];
                if (item.id == self.id) {
                    overlayOption.overlayList.splice(index, 1);
                    break;
                }
            }

            $("#" + self.id).remove();
            self.showNext();
        };
        self._initHandler = function (html) {
            if (option.click && $.isFunction(option.click)) {
                html.click(function () {
                    option.click(self);
                });
            }
        }

        self.showNext = function () {
            var handler = overlayOption.overlayList[overlayOption.overlayList.length - 1];
            if (handler) {
                handler.open();
            }
        }
        return self;
    }
})