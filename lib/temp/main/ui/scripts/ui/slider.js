define(["jquery", "formCtrls", "jqueryui"], function ($, ctrls) {
    var sliderOption = {
        className: ""
    };
    var defaultOption = {

    };
    ctrls.add({
        tagName: "input",
        name: "slider",
        init: function (elem) {
            this._initHtml();
            this.target.slider();
        },
        setOption: function (elem, option) {
            this.target.slider("option", option || {});
        },
        _initHtml: function () {
            this.target = $("<div></div>");
            this.elem.after(this.target);

            for (var i = 0 ; i < this.elem[0].attributes.length; i++) {
                var item = this.elem[0].attributes[i];
                if (item.name.toLowerCase() === "class") this.target.addClass(item.value);
                else this.target.attr(item.name, item.value);
            }

            this.elem.remove();
        },
        getValue: function (elem) {
            return this.target.slider("value");
        },
        setValue: function (elem, value) {
           this.target.slider('option', 'value', value);
        }
    });
});