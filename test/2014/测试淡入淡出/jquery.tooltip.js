
(function ($) {
    var methods = {
        init: function (options) {
            return this.each(function () {

                var $this = $(this);
                var settings = $this.data('tooltip');
                if (typeof (settings) == 'undefined') {
                    var defaults = {
                        infoCss: 'tooltip_info',
                        alertCss: 'tooltip_alert',
                        disappearTime: 1000
                    }
                    settings = $.extend({}, defaults, options);
                    $this.data('tooltip', settings);
                } else {
                    settings = $.extend({}, settings, options);
                    $this.data('tooltip', settings);
                }
                $tooltip = $("#tooltip");
                $tooltip.hide();
                if ($tooltip.length == 0) {
                    $tooltip = $("<div></div>");
                    $('body').prepend($tooltip);
                    $tooltip.hide();
                }
            })
        },
        info: function (options) {
            return this.each(function () {
                var $this = $(this);
                var setting = $this.data('tooltip');

                clearTimeout($this.data("autoDisappearHandle"));
                $tooltip.html(options);
                $tooltip.removeClass(setting.alertCss).addClass(setting.infoCss);
                $tooltip.fadeIn();
                var hideTooltip = function () {
                    $tooltip.fadeOut();
                }
                $this.data("autoDisappearHandle", setTimeout(hideTooltip, setting.disappearTime));
            })
        },
        alert: function (options) {
            return this.each(function () {
                var $this = $(this);
                var setting = $this.data('tooltip');

                clearTimeout($this.data("autoDisappearHandle"));
                $tooltip.html(options);
                $tooltip.removeClass(setting.infoCss).addClass(setting.alertCss);
                $tooltip.fadeIn();
                var hideTooltip = function () {
                    $tooltip.fadeOut();
                }
                $this.data("autoDisappearHandle", setTimeout(hideTooltip, setting.disappearTime));
            })
        },
        hide: function () {
            return this.each(function () {
                var $this = $(this);
                clearTimeout($this.data("autoDisappearHandle"));
                $tooltip.fadeOut();
            })
        }
    };

    $.fn.tooltip = function () {
        var method = arguments[0];
        if (methods[method]) {
            method = methods[method];
            arguments = Array.prototype.slice.call(arguments, 1);
        } else if (typeof (method) == 'object' || !method) {
            method = methods.init;
        } else {
            $.error('Method ' + method + ' does not exist on jQuery.tooltip');
            return this;
        }

        return method.apply(this, arguments);

    }

})(jQuery);