define(["jquery", "formCtrls", "utils", "jqueryui"], function ($, ctrls, utils) {
    var autoCompleteOption = {
        className: "autocomplete"
    };

    var defaultOption = {
        appendTo: null,
        delay: 300,
        minLength: 1,
        position: {
            my: "left top",
            at: "left bottom",
            collision: "none"
        },
        source: []
    };

    ctrls.add({
        name: "autocomplete",
        tagName: "input",
        searching: undefined,
        term: "",
        menu: "",
        opt: undefined,
        init: function (elem) {
            this.opt = defaultOption;
            var self = this;
            elem.on({
                keydown: function (e) {

                    switch (e.keyCode) {
                        case utils.keyCode.UP:
                            self._selectMenu("prev");
                            e.preventDefault();
                            break;
                        case utils.keyCode.DOWN:
                            self._selectMenu("next");
                            break;
                        case utils.keyCode.ENTER:
                            if (self.menu.is(":visible")) {
                                self.elem.val(self.menu.find(".selected").text());
                                self._close();
                                return false;
                            }
                            break;
                        default:
                            self._searchTimeOut(e);
                            break;
                    }

                },
                focus: function (e) {
                    e.preventDefault();
                },
                keypress: function (e) {
                    switch (e.keyCode) {
                        case utils.keyCode.ENTER:
                            if (self.menu.is(":visible")) {
                                self.elem.val(self.menu.find(".selected").text());
                                self._close();
                                return false;
                            }
                            break;
                        default:
                            self._searchTimeOut(e);
                            break;
                    }
                }
            });
        },
        setOption: function (elem, option) {
            this.opt = $.extend(true, this.opt || defaultOption, option);
        },
        _getMenu: function (elem) {
            var self = this;
            if (this.menu && this.menu.length) return this.menu;
            this.menu = $("<ul class='" + autoCompleteOption.className + "'></ul>");
            if (this.opt.appendTo && this.opt.appendTo.length) {
                this.opt.appendTo.append(this.menu);
            }
            else {
                elem.after(this.menu);
            }
            this.menu.css("min-width", elem.outerWidth());
            this.menu.on({
                mouseenter: function () {
                    self.menu.find(".selected").removeClass("selected");
                    $(this).addClass("selected");
                },
                mouseleave: function () {
                    $(this).removeClass("selected");
                },
                click: function () {
                    self.elem.val($(this).text());
                    self._close();
                }
            }, "li");
            return this.menu;
        },
        _search: function (value) {
            value = value || this.elem.val(), self = this;;
            if (value.length < this.opt.minLength) {
                return this._close();
            }
            this.term = value;
            var precision = [];
            var vague = [];
            if (this.opt.source && this.opt.source.length) {
                for (var i in this.opt.source) {
                    var item = this.opt.source[i];
                    var lowercaseItem = item.toLowerCase();
                    value = value.toLowerCase();
                    if (lowercaseItem.indexOf(value) === 0) {
                        precision.push(item);
                    }
                    else if (lowercaseItem.indexOf(value) > 0) {
                        vague.push(item);
                    }
                }
            }

            var menu = this._getMenu(this.elem);
            menu.empty();
            for (var i in precision) {
                menu.append("<li>" + precision[i] + "</li>");
            }

            for (var i in vague) {
                menu.append("<li>" + vague[i] + "</li>");
            }

            if (menu.children().length) {
                this.opt.position.of = this.elem;
                this.menu.show().position(this.opt.position);

                $(document).one("click", function (e) {
                    self._close();
                });
            } else {
                this._close();
            }

        },
        _searchTimeOut: function (event) {
            window.clearTimeout(this.searching);
            var self = this;
            this.searching = setTimeout(function () {
                var equalValues = self.term === self.elem.val(),
                    menuVisable = self.menu && self.menu.is(":visible"),
                    modifierKey = event.altKey || event.ctrlKey || event.metaKey || event.shiftKey;
                if (!equalValues || (equalValues && !menuVisable && !modifierKey)) {
                    self._search();
                }

            }, this.opt.delay);
        },
        _close: function () {
            this.term = "";
            if (this.menu) {
                this.menu.empty();
                this.menu.hide();
            }
        },
        _selectMenu: function (direction) {
            var oldSelected = this.menu.find(".selected").removeClass("selected");
            switch (direction) {

                case "prev":
                    if (oldSelected.length && oldSelected.index() > 0) {
                        oldSelected.prev().addClass("selected");
                    }
                    else {
                        this.menu.find("li:first").addClass("selected");
                    }
                    break;
                default:
                    if (oldSelected.length && oldSelected.index() !== this.menu.children().length - 1) {
                        oldSelected.next().addClass("selected");
                    }
                    else {
                        this.menu.find("li:first").addClass("selected");
                    }
                    break;
            }
        }
    });
});