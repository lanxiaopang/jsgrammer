define(["jquery", "utils", "overlay", "jqueryui"], function ($, u, overlay) {
    var modalOption = {
        modalDialog: "modalDialog",
        zindex: 110,
        maxpadding: 40,
        modalQueue: [],
        checkAllowOpen: function (id) {
            //过滤重复id
            if ($("body").find("[data-modalid='" + id + "']").length) {
                return false;
            }

            for (var i in this.modalQueue) {
                var item = this.modalQueue[i];
                if (item.option == id) {
                    return false;
                }
            }

            return true;
        },
        open: function (config) {
            if (this.checkAllowOpen(config.option.id)) {
                if (config.option.modalQueue) {
                    this.modalQueue.push(config);
                    if (this.modalQueue.length === 1) {
                        config.open();
                    }
                }
                else {
                    config.open();
                }
            }
        },
        close: function (config) {
            for (var i in this.modalQueue) {
                var item = this.modalQueue[i];
                if (item.option.id === config.option.id) {
                    this.modalQueue.splice(i, 1);
                    break;
                }
            }

            config.overlay.close();
            config.elem.remove();

            if (this.modalQueue.length) {
                this.modalQueue[0].open();
            }
        }
    };
    $(window).resize(function () {
        $(".modalDialog").each(function () {
            var dialog = $(this);

            var ow = dialog.attr("data-width");
            var oh = dialog.attr("data-height");
            var footerheight = dialog.find(".modal-footer").outerHeight(true);
            ow = ow === "0" ? 450 : ow;
            if ($(window).width() - modalOption.maxpadding < ow) {
                ow = $(window).width() - modalOption.maxpadding;
            }

            dialog.width(ow);

            if (oh === "0") {
                var contentHeight = dialog.find(".modal-content").height();
                oh = contentHeight + 77 + footerheight;
            }
            if ($(window).height() - modalOption.maxpadding < oh) {
                oh = $(window).height() - modalOption.maxpadding;
            }
            dialog.find(".modal-body").height(oh - 77 - footerheight);
            dialog.position({ of: window });
        });
    });
    return {
        dialog: function () {
            var self = {};
            var defaultOption = {
                id: "",
                title: "",
                content: "",
                className: "",
                src: "",
                modalQueue: false,
                width: 0,
                height: 0,
                btnData: [],
                close: undefined
            };

            self.option = u.paramTransform(defaultOption, arguments);
            self.option.id = self.option.id || u.guid();
            self.overlay = new overlay({
                zindex: modalOption.zindex
            });
            self._createHtml = function () {
                var html = $([
                    '<div data-width="' + self.option.width + '" data-height="' + self.option.height + '" data-modalid="' + self.option.id + '" class="' + modalOption.modalDialog + " " + self.option.className + '" style="z-index:' + (modalOption.zindex++) + '">',
                    '   <div class="modal-header"><span>' + self.option.title + '</span><a href="javascript:void(0)" class="close">×</a></div>',
                    '   <div class="modal-body">',
                    '       <div class="modal-content"></div>',
                    '   </div>',
                    '</div>'
                ].join(''));

                self.option.width = self.option.width || 450;
                if ($(window).width() - modalOption.maxpadding < self.option.width) {
                    self.option.width = $(window).width() - modalOption.maxpadding;
                }
                html.width(self.option.width);

                if (self.option.src) {
                    //TODO:load page 
                }
                else {
                    html.find(".modal-content").append(self.option.content);
                }

                if (self.option.btnData && self.option.btnData.length) {
                    var footHtml = $("<div class='modal-footer'></div>");
                    for (var i in self.option.btnData) {
                        var item = self.option.btnData[i];
                        var btn = $("<button class='" + item.className + "'>" + item.text + "</button>");
                        if (item.click && $.isFunction(item.click)) {
                            (function (btn, item, self) {
                                btn.click(function (e) {
                                    item.click(self, e);
                                });
                            })(btn, item, self);
                        }

                        footHtml.append(btn);
                    }

                    html.append(footHtml);
                }

                $("body").append(html);

                if ($(window).height() - modalOption.maxpadding < html.height()) {
                    self.option.height = $(window).height() - modalOption.maxpadding;
                }

                if (self.option.height !== 0) {
                    html.find(".modal-body").height(self.option.height - 77 - html.find(".modal-footer").outerHeight(true));
                }

                html.position({
                    of: window
                });


                return html;
            }
            self._initHandler = function () {
                self.elem.find(".modal-header a.close").click(function () {
                    self.close();
                });
            }

            self.open = function () {
                self.overlay.open();
                self.elem = self._createHtml();
                self._initHandler();
            }

            self.close = function () {
                var result;
                if (self.option.close && $.isFunction(self.option.close)) {
                    result = self.option.close(self);
                }
                if (result !== false) {
                    modalOption.close(self);
                }
            }
            modalOption.open(self);
            return self;
        },
        alert: function () {
            var option = {
                message: "",
                ok: function () { },
                close: function () { },
                title: "提醒",
                width: 0,
                id: undefined
            };

            option = u.paramTransform(option, arguments);

            return this.dialog({
                title: option.title,
                className: "alertDialog",
                modalQueue: true,
                content: option.message,
                width: option.width,
                id: option.id,
                btnData: [
                    {
                        text: "确定",
                        className: "ok",
                        click: function (modalObj, e) {
                            option.ok(modalObj, e);
                            modalObj.close();
                        }
                    }
                ],
                close: option.close
            });
        },
        confirm: function () {
            var option = {
                message: "",
                ok: function () { },
                cancel: function () { },
                close: function () { },
                title: "请选择",
                width: 0,
                id: undefined
            };

            option = u.paramTransform(option, arguments);

            return this.dialog({
                title: option.title,
                className: "confirmDialog",
                modalQueue: true,
                content: option.message,
                width: option.width,
                id: option.id,
                btnData: [
                    {
                        text: "确定",
                        className: "ok",
                        click: function (modalObj, e) {
                            option.ok(modalObj, e);
                            modalObj.close();
                        }
                    },
                    {
                        text: "取消",
                        className: "cancel",
                        click: function (modalObj, e) {
                            option.cancel(modalObj, e);
                            modalObj.close();
                        }
                    }
                ],
                close: option.close
            });
        }
    };
});