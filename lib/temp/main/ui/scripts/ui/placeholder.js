define(["jQuery"], function ($) {
    $.fn.extend({
        "placeholder": function (options) {
            options = $.extend({
                placeholderColor: '#ACA899',
                isUseSpan: false, //是否使用插入span标签模拟placeholder的方式,默认false,默认使用value模拟
                onInput: true  //使用标签模拟(isUseSpan为true)时，是否绑定onInput事件取代focus/blur事件
            }, options);

            $(this).each(function () {
                var _this = this;
                var $this = $(this);
                var supportPlaceholder = 'placeholder' in document.createElement('input');
                if (!supportPlaceholder) {
                    var defaultValue = $this.attr('placeholder');
                    var defaultColor = $this.css('color');
                    if (options.isUseSpan == false) {
                        $this.focus(function () {
                            var pattern = new RegExp("^" + defaultValue + "$|^$");
                            pattern.test($this.val()) && $this.val('').css('color', defaultColor);
                        }).blur(function () {
                            if ($this.val() == defaultValue) {
                                $this.css('color', defaultColor);
                            } else if ($this.val().length == 0) {
                                $this.val(defaultValue).css('color', options.placeholderColor)
                            }
                        }).trigger('blur');
                    } else {
                        var $imitate = $('<span class="wrap-placeholder" style="position:absolute; display:inline-block; overflow:hidden; color:' + options.placeholderColor + '; width:' + $this.outerWidth() + 'px; height:' + $this.outerHeight() + 'px;">' + defaultValue + '</span>');
                        $imitate.css({
                            'margin-left': $this.css('margin-left'),
                            'margin-top': $this.css('margin-top'),
                            'font-size': $this.css('font-size'),
                            'font-family': $this.css('font-family'),
                            'font-weight': $this.css('font-weight'),
                            'padding-left': parseInt($this.css('padding-left')) + 2 + 'px',
                            'line-height': _this.nodeName.toLowerCase() == 'textarea' ? $this.css('line-weight') : $this.outerHeight() + 'px',
                            'padding-top': _this.nodeName.toLowerCase() == 'textarea' ? parseInt($this.css('padding-top')) + 2 : 0
                        });
                        $this.before($imitate.click(function () {
                            $this.trigger('focus');
                        }));

                        $this.val().length != 0 && $imitate.hide();

                        if (options.onInput) {
                            //绑定oninput/onpropertychange事件
                            var inputChangeEvent = typeof (_this.oninput) == 'object' ? 'input' : 'propertychange';
                            $this.bind(inputChangeEvent, function () {
                                $imitate[0].style.display = $this.val().length != 0 ? 'none' : 'inline-block';
                            });
                        } else {
                            $this.focus(function () {
                                $imitate.hide();
                            }).blur(function () {
                                /^$/.test($this.val()) && $imitate.show();
                            });
                        }
                    }
                }
            });
            return this;
        }
    });
})