define(["jquery", "utils", "pager"], function ($, u, pager) {
    var tableOption = {
        tableClass: "table",
        init: function (config) {
            var column = config.option.columns;
            config.option.tableOption.pageSize = config.option.tableOption.pageSize || 1;
            if (column && column.length) {
                var table = ["<table>"];
                table.push(this.loadColumns(config));
                table.push("<tbody></tbody>");
                table.push("</table>");
                config.content.html(table.join(''));

                this.loadData(config);
                this.initPager(config);
            }
        },
        initPager: function (config) {
            if (config.option.tableOption.showPager) {
                var _pager = config.pager;

                if (_pager === undefined) {
                    config.container.append("<div class='table-pager'></div>");

                    _pager = new pager({
                        to: config.container.find(".table-pager"),
                        pagerOption: config.option.pagerOption,
                        pagerData: {
                            dataIndex: config.option.datas.dataIndex,
                            dataCount: config.option.datas.dataCount,
                            pageSize: config.option.tableOption.pageSize
                        },
                        goPage: function (pageIndex) {
                            config.goPage(pageIndex);
                        }
                    })
                }
                else {
                    _pager.reload({
                        pagerData: {
                            dataIndex: config.option.datas.dataIndex,
                            dataCount: config.option.datas.dataCount,
                            pageSize: config.option.tableOption.pageSize
                        }
                    });
                }

                config.pager = _pager;
            }
        },
        loadData: function (config) {
            var rows = "";
            var datas = this._transformDatas(config);
            config.clearData();
            if (datas.rowData && datas.rowData.length) {
                if (datas.dataIndex < 1 || datas.dataCount < 1) {
                    datas.dataIndex = 1;
                    datas.dataCount = datas.rowData.length;
                }

                rows = this._loadRows(config);
                config.content.find("tbody").html(rows);
            }
        },
        loadColumns: function (config) {
            var tableContent = config.content,
                columns = config.option.columns,
                option = config.option.tableOption,
                thead = ["<thead><tr>"];

            for (var i in columns) {
                var column = this._transformColumn(columns[i]);
                thead.push(u.format("<td data-table-name='{0}' class='{1}' data-table-sort='{2}' style='width:{3}' data-table-type='{4}'>{5}<span class='sort'></span></td>",
                    column.name || column.text || "",
                    column.className || "",
                    column.sort ? "true" : "false",
                    column.width === "*" ? "auto" : ($.isNumeric(column.width) ? column.width + "px" : column.width),
                    column.type || "html",
                    column.text || ""));
            }

            thead.push("</tr></thead>");
            return thead.join('');
        },
        _loadRows: function (config) {
            var datas = config.option.datas, columns = config.option.columns, option = config.option.tableOption;
            var startIndex = 1, endIndex = datas.rowData.length;
            if (datas.rowData.length === datas.dataCount && datas.rowData.length > config.option.tableOption.pageSize) {
                //datas为全部数据，需要重新确定起始索引
                startIndex = datas.dataIndex - 1;
                endIndex = startIndex + config.option.tableOption.pageSize;
            }
            var rows = [];
            for (; startIndex < endIndex; startIndex++) {
                var row = datas.rowData[startIndex];
                rows.push("<tr>");
                for (var i in columns) {
                    var column = this._transformColumn(columns[i]);

                    var extendFactory = tableOption.extend[column.type];
                    if (extendFactory === undefined) extendFactory = tableOption.extend.html;

                    rows.push(u.format("<td data-table-name='{0}' class='{1}' data-table-type='{2}' style='{3}'>{4}</td>",
                        column.name || "",
                        column.className || "",
                        column.type || "html",
                        startIndex % 2 === 0 ? (option.evenColor ? "background:" + option.evenColor : "") : (option.oddColor ? "background:" + option.oddColor : ""),
                        extendFactory(row[i])));

                }
                rows.push("</tr>");
            }

            return rows.join('');
        },
        _transformDatas: function (config) {
            var datas = config.option.datas;

            if (datas && typeof datas === "object") {
                if (datas.length !== undefined) {
                    datas = {
                        dataIndex: 0,
                        dataCount: 0,
                        rowData: datas
                    };
                }
                else {
                    datas = $.extend(true, {}, defaultDatas, datas);
                }
            }
            else {
                datas = defaultDatas;

            }
            config.option.datas = datas;
            return datas;

        },
        _transformColumn: function () {
            return u.paramTransform(defaultColumn, arguments);
        }
    };
    var defaultDatas = {
        dataIndex: 0,
        dataCount: 0,
        rowData: []
    };
    var defaultColumn = {
        text: "",
        name: "",
        width: "auto",
        sort: false,
        className: "",
        type: "html"
    };
    var defaultOption = {
        to: "",
        columns: [],
        datas: undefined,
        tableOption: {
            className: "",
            showPager: true,
            pageSize: 10,
            evenColor: "#f9f9f9",
            oddColor: "",
            onChangePage: function (pageIndex, table) { },
            onSort: function (columnName, isDesc, table) { }
        },
        pagerOption: {}
    };
    tableOption.extend = {
        html: function (value) {
            return value;
        }
    };
    return function () {
        var self = {};
        self.option = u.paramTransform(defaultOption, arguments);

        self.loadColumns = function (columns) {
            self.option.columns = columns;
            self.clearData();
            tableOption.init(self);
        }
        self.clearContent = function () {
            self.container.empty();
        }

        self.clearData = function () {
            self.content.find("tbody").empty();
        }

        self.loadData = function (datas) {
            self.option.datas = datas;
            tableOption.loadData(self);
            tableOption.initPager(self);
        }
        self.goPage = function (pageIndex) {
            var option = self.option.tableOption;
            if (option.onChangePage && $.isFunction(option.onChangePage)) {
                if (option.onChangePage(pageIndex, self) === false) return;

            }
            var datas = self.option.datas;
            if (datas.rowData.length === datas.dataCount && datas.rowData.length > self.option.tableOption.pageSize) {
                self.loadData({
                    dataIndex: self.pager.option.pagerData.dataIndex,
                    dataCount: self.pager.option.pagerData.dataCount,
                    rowData: self.option.datas.rowData
                });
            }
        }
        self._init = function () {
            self.container = $("<div class='" + tableOption.tableClass + " " + self.option.tableOption.className + "'></div>");
            self.content = $("<div class='table-content'></div>");
            self.container.append(self.content);
            var parentContainer;
            if (typeof self.option.to === "string") {
                parentContainer = $(self.option.to);
            }
            else {
                parentContainer = self.option.to;
            }
            parentContainer.append(self.container);

            self.content.on({
                click: function () {
                    var td = $(this), name = td.attr("data-table-name"), isDesc = true, onSort = self.option.tableOption.onSort;
                    if (td.hasClass("desc")) {
                        isDesc = false;
                    }
                    self.content.find("thead td").removeClass("desc ").removeClass("ease");
                    if (isDesc) {
                        td.addClass("desc");
                    }
                    else {
                        td.addClass("ease");
                    }

                    if (onSort && $.isFunction(onSort)) {
                        onSort(name, isDesc, self);
                    }
                }
            }, "thead td[data-table-sort='true']");

            tableOption.init(self);
        }

        if (self.option.to) {
            self._init();
        }
        return self;
    }
});