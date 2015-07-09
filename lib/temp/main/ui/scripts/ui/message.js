define(["jquery", "utils", "jqueryui"], function ($, u) {
    var messageOption = {
        className: "message-container",
        lefttopQueue: [],
        righttopQueue: [],
        leftbottomQueue: [],
        rightbottomQueue: [],

        resize: function (position) {
            if (position === undefined) {
                this.resize(["left", "top"]);
                this.resize(["left", "bottom"]);
                this.resize(["right", "top"]);
                this.resize(["right", "bottom"]);
                return;
            }

            var my = "", css = {};
            if (position[0] === "left") {
                my += "left+10";
                css = { left: 10 };
            }
            else {
                my += "right-10";
                css = { right: 10, left: "auto" };
            }
            if (position[1] === "top") {
                my += " top+";
            }
            else {
                my += " bottom-";
            }

            var height = 10;
            $("." + this.className + "[data-position='" + (position.join('_')) + "']").each(function () {
                $(this).position({
                    of: window,
                    at: position.join(' '),
                    my: my + height
                })
                .css(css);//这里如果提示消息过快，水平坐标会出现偏移，未找到原因，暂时用重新定位解决
                height += $(this).outerHeight(true);
                var queue = messageOption[position.join('') + "Queue"];
                if (height > $(window).height()) {
                    //如果超出屏幕高度
                    var config = $(this)[0].messageOption;
                    $(this).remove();
                    //重新载入列队
                    queue.push(config);
                }
                else {
                    if (queue.length) {
                        queue[0].open(queue[0].option);
                        queue.splice(0, 1);
                    }
                }
            });
        }
    };

    $("body").on({
        click: function (e) {
            var messageContainer = $(this).closest("." + messageOption.className);
            messageContainer.addClass("remove");
            if (messageContainer[0].timer !== undefined) {
                window.clearTimeout(messageContainer[0].timer);
            }
            setTimeout(function () {
                var attribute = messageContainer.attr("data-position");
                var position = attribute.split('_');
                var configTag = position.join('') + "Queue";
                messageContainer.remove();
                if (messageOption[configTag].length) {
                    messageOption[configTag][0].open(messageOption[configTag][0].option);
                    messageOption[configTag].splice(0, 1);
                }
                messageOption.resize(position);
            }, 500);
            e.stopPropagation();
        }
    }, "." + messageOption.className + " a.close");
    $(window).resize(function () {
        messageOption.resize();
    });
    return {
        open: function () {
            var defaultOption = {
                content: "",
                click: function () { },
                timer: 10,
                theme: "default",
                position: ["right", "top"]
            }

            this.option = u.paramTransform(defaultOption, arguments);

            var html = this._createHtml();

            var inDocument = $("." + messageOption.className + "[data-position='" + this.option.position.join('_') + "']");
            var height = 0;
            inDocument.each(function () {
                height += $(this).outerHeight(true);
            });

            if (height + html.outerHeight(true) > $(window).height()) {
                //若超出范围，则打回队列，等待下次触发
                messageOption[this.option.position.join('') + "Queue"].push(this);
                html.remove();
                return;
            }

            html[0].messageOption = this;
            messageOption.resize(this.option.position);
            this._initHandler(html, this.option);

        },
        warn: function () {
            var option = {
                content: "",
                click: function () { },
                position: ["right", "top"]
            };
            option = u.paramTransform(option, arguments);
            option.theme = "warn";
            option.timer = 0;
            this.open(option);
        },
        error: function () {
            var option = {
                content: "",
                click: function () { },
                position: ["right", "top"]
            };
            option = u.paramTransform(option, arguments);
            option.theme = "error";
            option.timer = 0;
            this.open(option);
        },
        info: function () {
            var option = {
                content: "",
                click: function () { },
                position: ["right", "top"]
            };
            option = u.paramTransform(option, arguments);
            option.theme = "info";
            this.open(option);
        },
        success: function () {
            var option = {
                content: "",
                click: function () { },
                position: ["right", "top"]
            };
            option = u.paramTransform(option, arguments);
            option.theme = "success";
            this.open(option);
        },
        _createHtml: function () {
            var html = $([
                '<div data-position="' + (this.option.position.join('_')) + '" class="' + messageOption.className + ' ' + this.option.theme + '">',
                '   <div class="message-body"></div>',
                '   <a href="javascript:void(0)" class="close">×</a>',
                '</div>'
            ].join(''));
            var body = html.find(".message-body");
            body.html(this.option.content);
            $("body").append(html);
            return html;
        },
        _initHandler: function (html, option) {
            if (option.click && $.isFunction(option.click)) {
                html.click(function (e) {
                    if ($(e.target).hasClass("close") === false) {
                        option.click();
                    }
                });
            }

            if (option.timer !== 0) {
                html[0].timer = setTimeout(function () {
                    html.find(".close").click();
                }, option.timer * 1000);
            }
        }
    }
});