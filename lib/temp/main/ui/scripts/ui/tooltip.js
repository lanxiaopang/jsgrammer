define(["jquery", "utils", "jqueryui"], function ($, u) {
    var toolTipOption = {
        className: "tooltip",
        show: function (config, always) {
            var tipElem = this._createHtml(config);
            config.of[0].toolTipElement = tipElem;
            switch (config.position) {
                case "bottom":
                    tipElem.position({
                        of: config.of,
                        at: "center bottom+15px",
                        my: "center top",
                        collision: config.fit ? "fit" : "none",
                        using: function (position, o) {
                            if (always !== true && o.target.top + o.target.height > o.element.top) {
                                config.position = "top";
                                tipElem.remove();
                                toolTipOption.show(config, true);

                            }
                            tipElem.css({
                                top: position.top,
                                left: position.left
                            });

                            tipElem.find(".tooltip-arrow").css({
                                left: o.target.left - o.element.left + o.target.width / 2 - 10
                            });
                        }
                    });
                    break;
                case "left":
                    tipElem.position({
                        of: config.of,
                        at: "left-15px center",
                        my: "right center",
                        collision: config.fit ? "fit" : "none",
                        using: function (position, o) {
                            if (always !== true && o.target.left < o.element.left + o.element.width) {
                                config.position = "right";
                                tipElem.remove();
                                toolTipOption.show(config, true);

                            }
                            tipElem.css({
                                top: position.top,
                                left: position.left
                            });

                            tipElem.find(".tooltip-arrow").css({
                                top: (o.target.top - o.element.top) + o.target.height / 2 - 10
                            });
                        }
                    });
                    break;
                case "right":
                    tipElem.position({
                        of: config.of,
                        at: "right+15px center",
                        my: "left center",
                        collision: config.fit ? "fit" : "none",
                        using: function (position, o) {
                            if (always !== true && o.target.left + o.target.width > o.element.left) {
                                config.position = "left";
                                tipElem.remove();
                                toolTipOption.show(config, true);

                            }
                            tipElem.css({
                                top: position.top,
                                left: position.left
                            });

                            tipElem.find(".tooltip-arrow").css({
                                top: (o.target.top - o.element.top) + o.target.height / 2 - 10
                            });
                        }
                    });

                    break;
                default:
                    tipElem.position({
                        of: config.of,
                        at: "center top-15px",
                        my: "center bottom",
                        collision: config.fit ? "fit" : "none",
                        using: function (position, o) {
                            if (always !== true && o.target.top < o.element.top + o.element.height) {
                                config.position = "bottom";
                                tipElem.remove();
                                toolTipOption.show(config, true);

                            }
                            tipElem.css({
                                top: position.top,
                                left: position.left
                            });

                            tipElem.find(".tooltip-arrow").css({
                                left: (o.target.left - o.element.left) + o.target.width / 2 - 10
                            });
                        }
                    });
                    break;
            }

            tipElem.addClass("show");
        },
        _createHtml: function (config) {
            var html = $(u.format('<div class="{0}" style="max-width:{2}px; width:{3}; text-align:{4}"><div class="tooltip-content">{1}</div><div class="tooltip-arrow"></div></div>',
                toolTipOption.className + ' ' + config.className + ' ' + config.position,
                config.content,
                config.maxWidth,
                config.width,
                config.textalign));

            $(config.to).append(html);

            return html;
        }
    };

    $(function () {
        $("#container").on({
            mouseenter: function (e) {

                var elem = $(this);
                var content = elem.attr("data-tooltip-text");
                if (content) {
                    var option = {
                        of: elem,
                        content: content,
                        maxWidth: elem.attr("data-tooltip-maxwidth"),
                        className: elem.attr(" data-tooltip-class"),
                        position: elem.attr("data-tooltip-position"),
                        fit: true
                    };

                    window.clearTimeout(elem[0].toolTipTimer);
                    if (elem[0].toolTipElement) {
                        elem[0].toolTipElement.remove();
                    }
                    //elem.removeAttr("title");
                    toolTipOption.show($.extend({}, defaultToolTipOption, option));
                }
            },
            mouseleave: function () {
                var elem = $(this);
                if (elem[0].toolTipElement) {
                    elem[0].toolTipElement.removeClass("show");
                    window.clearTimeout(elem[0].toolTipTimer);
                    elem[0].toolTipTimer = setTimeout(function () {
                        elem[0].toolTipElement.remove();
                        elem[0].toolTipElement = undefined;
                    }, 600);
                }
            }
        }, "[role='tooltip']");
    });

    var defaultToolTipOption = {
        of: "",
        content: "",
        position: "top",
        className: "tooltip-default",
        maxWidth: 250,
        textalign:"left",
        width:"auto",
        to: "body",
        fit: false
    };


    return {
        show: function () {
            var option = u.paramTransform(defaultToolTipOption, arguments);

            if (option.of) {
                var ofElem = option.of;
                if (typeof option.of === "string") {
                    ofElem = $(option.of);
                }

                if (ofElem && ofElem.length) {
                    window.clearTimeout(ofElem[0].toolTipTimer);
                    if (ofElem[0].toolTipElement) {
                        ofElem[0].toolTipElement.remove();
                    }
                    option.of = ofElem;
                    toolTipOption.show(option);
                }
            }

        },
        setText:function(selector,text){
            var ofElem = selector;
            if (typeof selector === "string") {
                ofElem = $(selector);
            }
            if (ofElem && ofElem.length && ofElem[0].toolTipElement) {
                ofElem[0].toolTipElement.find(".tooltip-content").html(text);
            }
        },
        hide: function (selector) {
            var ofElem = selector;
            if (typeof selector === "string") {
                ofElem = $(selector);
            }
            if (ofElem && ofElem.length && ofElem[0].toolTipElement) {
                ofElem[0].toolTipElement.removeClass("show");
                window.clearTimeout(ofElem[0].toolTipTimer);
                ofElem[0].toolTipTimer = setTimeout(function () {
                    ofElem[0].toolTipElement.remove();
                    ofElem[0].toolTipElement = undefined;
                }, 600);
            }
        },
        hideAll: function (container) {
            (container || $("body")).find("." + toolTipOption.className).remove();
        }
    };
});