define(["jquery", "formCtrls", "jqueryui"], function ($, ctrls) {
    var selectOption = {
        className: "dropdown",
        selectListClassName: "dropdown-menu",
    };

    $("body").on({
        click: function () {
            var menu = $(this).next();
            menu.show().position({
                of: this,
                at: "left bottom",
                my: "left top"
            });
        }
    }, "span." + selectOption.className);

    $("body").on({
        click: function () {
            var selectItem = $(this);
            var ul = selectItem.closest("ul");
            var select = ul.prev();

            var text = selectItem.html();
            var value = selectItem.attr("data-value");

            select.attr("data-value", value);
            select.html(text + "<i></i>");

            ul.hide();
        }
    }, "ul." + selectOption.selectListClassName + " li");

    $(document).on({
        click: function (e) {
            if ($(e.target).closest("." + selectOption.className).length) return;
            $("ul." + selectOption.selectListClassName).hide();
        }
    });
    ctrls.add({
        name: "select",
        tagName: "select",
        init: function (elem) {
            var html = [
               '<span class="' + selectOption.className + '">',
               '<i></i>',
               '</span>'
            ];
            html.push("<ul class='" + selectOption.selectListClassName + "'>");
            elem.find("option").each(function () {
                html.push("<li data-value='" + $(this).attr("value") + "'>" + $(this).text() + "</li>");
            });
            html.push("</ul>");
            html = $(html.join(''));
            var selected = elem.children("option:selected");
            html.find("i").before(selected.text());
            html.attr("data-value", selected.attr("value"));

            elem.after(html);

            var selectCtrl= html.filter("span."+selectOption.className);
            for (var i = 0 ; i < elem[0].attributes.length; i++) {
                var item = elem[0].attributes[i];
                if (item.name.toLowerCase() === "class") selectCtrl.addClass(item.value);
                else  selectCtrl.attr(item.name, item.value);
            }
            elem.remove();
            this.target = html;
        },
        getValue: function () {
            return this.target.attr("data-value");
        },
        setValue: function (elem, value) {
            var selectItem = this.target.filter("ul." + selectOption.selectListClassName + " ").find("li[data-value='" + value + "']");
            if (selectItem.length) {
                this.target.filter("span." + selectOption.className).attr("data-value", value).html(selectItem.text() + "<i></i>");
            }
        }
    });
});