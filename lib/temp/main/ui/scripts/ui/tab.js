define(["jquery", "utils", "message"], function ($, u, m) {
    var tabOption = {
        init: function (config) {
            config.container.addClass(config.option.className);
            config.tabHead = config.container.find(".tab-head");
            config.tabContent = config.container.find(".tab-content");

            var activeLi = config.tabHead.find("li.active");
            if (activeLi.length) {
                config.selectTab(activeLi.index());
            }
            else {
                config.selectTab(config.option.defaultSelect);
            }

            config.tabHead.find("li span.close").each(function () {
                $(this).html("×");
            });
            this.initHandler(config);

        },
        initHandler: function (config) {
            var self = this;
            config.tabHead.on({
                click: function () {
                    self.selectTab($(this), config);
                }
            }, "li");

            config.tabHead.on({
                click: function () {
                    var tabItem = $(this).closest("li");
                    self.remove(tabItem, config);
                    return false;
                }
            }, "li span.close");
        },
        selectTab: function (tabItem, config) {
            if (tabItem && tabItem.length) {
                var name = tabItem.attr("data-tab-name");
                var oldActiveLi = config.tabHead.find("li.active");
                if (oldActiveLi && oldActiveLi.length) {
                    var oldName = oldActiveLi.attr("data-tab-name");
                    if (name != oldName) {
                        var oldContent = config.tabContent.find("#" + oldName);
                        if (config.onblur && $.isFunction(config.onblur)) {
                            if (config.onblur(oldName, oldContent) === false) {
                                return;
                            }
                        }

                        oldActiveLi.removeClass("active");
                        oldContent.hide();
                    }
                }

                var tabContent = config.tabContent.find("#" + name);
                if (tabItem.hasClass("active") === false) {
                    tabItem.addClass("active");
                    if (config.onselect && $.isFunction(config.onselect)) {
                        config.onselect(name, tabContent);
                    }
                }
                if (config.onfocus && $.isFunction(config.onfocus)) {
                    config.onfocus(name, tabContent);
                }
                tabContent.show();
            }
        },
        activeNextTab: function (neadActiveTab, config) {
            if (neadActiveTab.length) {
                this.selectTab(neadActiveTab, config);
            }
            else {
                this.selectTab(config.tabHead.find("li:last"), config);
            }
        },
        remove: function (tabItem, config) {
            if (tabItem && tabItem.length) {
                var name = tabItem.attr("data-tab-name");
                var neadActiveTab = tabItem.next();
                tabItem.remove();
                config.tabContent.find("#" + name).remove();
                if (tabItem.hasClass("active")) {
                    this.activeNextTab(neadActiveTab, config);
                }

                this.resize(config.tabHead);
            }
        },
        add: function (option, config) {

            if (config.tabHead.find("li").length >= config.option.maxTabLength && config.option.maxTabLength !== 0) {
                m.warn("当前标签页长度限制为最大" + config.option.maxTabLength + "项。");
                return;
            }

            var tabHeadItem = $(u.format('<li data-tab-name="{0}" class="{3}">{1}{2}</li>',
                option.name || option.text || "",
                option.text || option.name || "",
                option.hideClose ? "" : "<span class='close'>×</span>",
                option.className));
            config.tabHead.append(tabHeadItem);

            var tabContentItem = $(u.format('<div id="{0}">{1}</div>', option.name || option.text || "", option.content || ""));
            config.tabContent.append(tabContentItem);

            if (option.autoSelect) {
                this.selectTab(tabHeadItem, config);
            }
            this.resize(config.tabHead);
        },
        resize: function (tabhead) {
            (tabhead || $(".tab-head")).each(function () {
                var pw = $(this).width();
                var allWidth = 0;
                var children = $(this).children("li");
                $(this).removeClass("autoWidth");
                children.width("auto");
                children.each(function () {
                    //允许5px的间距
                    allWidth += $(this).outerWidth(true) + 5;
                });

                if (allWidth > pw) {
                    $(this).addClass("autoWidth");
                    children.width(pw / children.length - 2);
                }
                else {
                    $(this).removeClass("autoWidth");
                    children.width("auto");
                }
            });
        }
    };

    $(window).resize(function () {
        tabOption.resize();
    });
    var defaultOption = {
        to: "",
        defaultSelect: 0,
        onselect: function () { },
        onfocus: function () { },
        onblur: function () { },
        className: "tab-default",
        maxTabLength: 10
    };

    var defaultTabItem = {
        name: "",
        text: "",
        content: "",
        className: "",
        autoSelect: true,
        hideClose: false
    }
    return function () {
        var self = {};

        self.option = u.paramTransform(defaultOption, arguments);

        self.selectTab = function (value) {
            if ($.isNumeric(value) && value > -1 && value < self.tabHead.find("li").length) {
                tabOption.selectTab(self.tabHead.find("li:eq(" + value + ")"), self);
            }
            else {
                tabOption.selectTab(self.tabHead.find("li[data-tab-name='" + value + "']"), self);
            }
        }

        self.add = function (option) {
            option = $.extend({}, defaultTabItem, option);
            if (option.name || option.text) {
                tabOption.add(option, self);
            }
        }

        self.remove = function (value) {
            if ($.isNumeric(value) && value > -1 && value < self.tabHead.find("li").length) {
                tabOption.remove(self.tabHead.find("li:eq(" + value + ")"), self);
            }
            else {
                tabOption.remove(self.tabHead.find("li[data-tab-name='" + value + "']"), self);
            }
        }

        var parentContainer;
        if (typeof self.option.to === "string") {
            parentContainer = $(self.option.to);
        }
        else {
            parentContainer = self.option.to;
        }

        if (parentContainer && parentContainer.length) {
            self.container = parentContainer;
            tabOption.init(self);
        }
        return self;
    }
});