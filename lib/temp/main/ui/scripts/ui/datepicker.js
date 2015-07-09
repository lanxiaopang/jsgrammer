define(["jquery", "formCtrls", "jqueryui"], function ($, ctrls) {
    ctrls.add({
        tagName: "input",
        name: "datepicker",
        init: function (elem, option) {
            elem.datepicker();
        },
        setValue: function (elem, value) {
            value = (value || "").toString();
            if (value.length === 8) {
                elem.val(value.substring(0, 4) + "-" + value.substring(4, 6) + "-" + value.substring(6, 8));
            }
            else {
                elem.val("");
            }
        },
        getValue: function (elem) {
            return (elem.val() || "").replace(/-/g, "");
        },
        setOption: function (elem, option) {
            elem.datepicker("option", option || {});
        }
    });
});