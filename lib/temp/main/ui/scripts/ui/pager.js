define(["jquery", "utils"], function ($, u) {
    var pagerOption = {
        pagerClass: "pager",
        fullPager: {
            init: function (config) {

                var pagerOption = config.option.pagerOption, pagerData = config.option.pagerData;
                if (pagerOption.showPageWhenNotEnoughOnePage) return "";
                pagerData.pageIndex = pagerData.pageIndex || 1;
                pagerData.pageCount = pagerData.pageCount || 1;

                if (pagerData.dataCount > 0 && pagerData.dataIndex > 0 && pagerData.pageSize > 0) {
                    pagerData.pageCount = Math.ceil(pagerData.dataCount / pagerData.pageSize);
                    pagerData.pageIndex = Math.ceil(pagerData.dataIndex / pagerData.pageSize);
                }

                if ((pagerData.pageIndex > pagerData.pageCount && pagerData.pageCount > 0) || pagerData.pageIndex < 1) {
                    pagerData.pageIndex = 1;
                }
                pagerData.startPageIndex = pagerData.pageIndex - (pagerOption.numericPagerItemCount / 2);
                if (pagerData.startPageIndex + pagerOption.numericPagerItemCount > pagerData.pageCount) {
                    pagerData.startPageIndex = pagerData.pageCount + 1 - pagerOption.numericPagerItemCount;
                }
                if (pagerData.startPageIndex < 1) pagerData.startPageIndex = 1;
                pagerData.endPageIndex = pagerData.startPageIndex + pagerOption.numericPagerItemCount - 1;
                if (pagerData.endPageIndex > pagerData.pageCount) pagerData.endPageIndex = pagerData.pageCount;
                this._getBtns(config);
                var btns = this._createBtns(pagerOption);
                if (pagerOption.showPageText) {
                  
                    btns = "<div class='pager-text'>" + pagerData.pageIndex + "/" + pagerData.pageCount + "页 " + (pagerData.dataCount > 0 ? "共" + pagerData.dataCount + "条数据" : "") + "</div>" + btns;
                }
                config.container.html(btns);

            },
            _pagerItem: [],
            _addPagerItem: function (text, pageIndex, disabled, type) {
                this._pagerItem.push({
                    text: text,
                    pageIndex: pageIndex,
                    disabled: disabled,
                    type: type
                });
            },
            _createBtns: function (pagerOption) {
                var html = [];
                for (var i in this._pagerItem) {
                    var item = this._pagerItem[i];
                    html.push(this._getPagerElem(item, pagerOption));
                }
                this._pagerItem = [];
                return html.join('');
            },
            _getPagerElem: function (item, pagerOption) {
                if (pagerOption.showDisabledPagerItems === false && item.disabled) return;
                return "<div data-pageindex='" + item.pageIndex + "' class='pager-item " + item.type + " " + (item.disabled ? "disabled" : "") + "'><a href='javascript:void(0)'>" + item.text + "</a></div>";
            },
            _getBtns: function (config) {
                this._pagerItem = [];
                var html = [], pagerOption = config.option.pagerOption, pagerData = config.option.pagerData;
                html.push(this._addFirstBtn(pagerOption, pagerData));
                html.push(this._addPrevBtn(pagerOption, pagerData));
                if (pagerOption.showNumericPagerItems) {
                    if (pagerOption.alwaysShowFirstLastPageNumber && pagerData.startPageIndex > 1) {
                        this._addPagerItem(1, 1, false, "numericPage");
                    }
                    this._addMoreBefore(pagerOption, pagerData);
                    this._addPageNumbers(pagerOption, pagerData);
                    this._addMoreAfter(pagerOption, pagerData);
                    if (pagerOption.alwaysShowFirstLastPageNumber && pagerData.endPageIndex < pagerData.pageCount) {
                        this._addPagerItem(pagerData.pageCount, pagerData.pageCount, false, "numericPage");
                    }
                }

                html.push(this._addNextBtn(pagerOption, pagerData));
                html.push(this._addLastBtn(pagerOption, pagerData));
            },
            _addPageNumbers: function (pagerOption, pagerData) {
                for (var pageIndex = pagerData.startPageIndex; pageIndex <= pagerData.endPageIndex; pageIndex++) {
                    this._addPagerItem(pageIndex, pageIndex, false, (pageIndex === pagerData.pageIndex ? "currentPage" : "numericPage"));
                }
            },
            _addMoreBefore: function (pagerOption, pagerData) {
                if (pagerData.startPageIndex > 1 && pagerOption.showMorePagerItems) {
                    var index = pagerData.startPageIndex - 1;
                    if (index < 1) index = 1;
                    this._addPagerItem(pagerOption.morePageText, index, false, "morePage");
                }
            },
            _addMoreAfter: function (pagerOption, pagerData) {
                if (pagerData.endPageIndex < pagerData.pageCount && pagerOption.showMorePagerItems) {
                    var index = pagerData.startPageIndex + pagerOption.numericPagerItemCount;
                    if (index > pagerData.pageCount) index = pagerData.pageCount;
                    this._addPagerItem(pagerOption.morePageText, index, false, "morePage");
                }
            },
            _addFirstBtn: function (pagerOption, pagerData) {
                if (pagerOption.showFirstLast) {
                    this._addPagerItem(pagerOption.firstPageText, 1, pagerData.pageIndex === 1, "firstPage");
                }
            },
            _addLastBtn: function (pagerOption, pagerData) {
                if (pagerOption.showFirstLast) {
                    this._addPagerItem(pagerOption.lastPageText, pagerData.pageCount, pagerData.pageIndex >= pagerData.pageCount, "lastPage");
                }
            },
            _addPrevBtn: function (pagerOption, pagerData) {
                if (pagerOption.showPrevNext) {
                    this._addPagerItem(pagerOption.prevPageText, pagerData.pageIndex - 1, pagerData.pageIndex === 1, "firstPage");
                }
            },
            _addNextBtn: function (pagerOption, pagerData) {
                if (pagerOption.showPrevNext) {
                    this._addPagerItem(pagerOption.nextPageText, pagerData.pageIndex + 1, pagerData.pageIndex >= pagerData.pageCount, "nextPage");
                }
            }
        }

    };


    var defaultOption = {
        to: "",
        pagerData: {
            pageIndex: 1,
            pageCount: 0,
            dataIndex: 0,
            dataCount: 0,
            pageSize: 10
        },
        goPage: function () { },
        pagerOption: {
            theme: "pager-default",
            showPageText: true,
            alwaysShowFirstLastPageNumber: true,
            showPageWhenNotEnoughOnePage: false,
            showDisabledPagerItems: true,
            showPrevNext: true,
            prevPageText: "上一页",
            nextPageText: "下一页",
            showNumericPagerItems: true,
            numericPagerItemCount: 10,
            showFirstLast: true,
            firstPageText: "首页",
            lastPageText: "尾页",
            showMorePagerItems: true,
            morePageText: "..."
        },
        type: "fullPager"
    };

    return function () {
        var self = {};
        self.option = u.paramTransform(defaultOption, arguments);
        self.reload = function () {
            self.option = u.paramTransform(self.option, arguments);
            self.container.attr("class", pagerOption.pagerClass + " " + (self.option.pagerOption.theme || ""));
            self._init();
        }
        self.goByPage = function (pageIndex) {
            self.option.pagerData.pageIndex = +pageIndex;
            self._init();
        }
        self.goByData = function (dataIndex) {
            self.option.pagerData.dataIndex = +dataIndex;
            self._init();
        }
        self._init = function () {
            var parentContainer;
            if (typeof self.option.to === "string") {
                parentContainer=$(self.option.to);
            }
            else{
                parentContainer = self.option.to;
            }
            parentContainer.append(self.container);
            switch (self.option.type) {
                case "loadMore":
                    pagerOption.fullPager.init(self);
                    break;
                default:
                    pagerOption.fullPager.init(self);
                    break;
            }
        }
        if (self.option.to) {
            self.container = $("<div class='" + pagerOption.pagerClass + " " + (self.option.pagerOption.theme || "") + "'></div>");
            self._init();
            self.container.on({
                click: function () {
                    var pageIndex = +$(this).attr("data-pageindex");
                    if ($(this).hasClass("disabled") === false) {
                        self.option.pagerData.pageIndex = pageIndex;
                        if (self.option.pagerData.dataIndex > 0) {
                            self.option.pagerData.dataIndex = self.option.pagerData.pageSize * (pageIndex - 1) + 1;
                        }
                        self._init();

                        if (self.option.goPage && $.isFunction(self.option.goPage)) {
                            self.option.goPage(pageIndex);
                        }
                    }
                }
            }, ".pager-item");
        }
        return self;
    }
});