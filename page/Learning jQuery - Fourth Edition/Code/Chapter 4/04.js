// This is the custom JavaScript file referenced by index.html. You will notice
// that this file is currently empty. By adding code to this empty file and
// then viewing index.html in a browser, you can experiment with the example
// page or follow along with the examples in the book.
//
// See README.txt for more information.
$(document).ready(function() {
    var $speech = $('div.speech');
    var defaultSize = $speech.css('fontSize');
    $('#switcher button').click(function() {
        var num = parseFloat($speech.css('fontSize'));
        switch (this.id) {
            case 'switcher-large':
                num *= 1.4;
                break;
            case 'switcher-small':
                num /= 1.4;
                break;
            default:
                num = parseFloat(defaultSize);
        }
        $speech.animate({fontSize: num + 'px'}, 'slow');
    });

    var $firstPara = $('p').eq(1);
    $firstPara.hide();
    $('a.more').click(function(event) {
        event.preventDefault();
        $firstPara.animate({
            opacity: 'toggle',
            height: 'toggle'
        }, 'slow');
        var $link = $(this);
        if ($link.text() == 'read more') {
            $link.text('read less');
        } else {
            $link.text('read more');
        }
    });

    $('div.label').click(function() {
        var paraWidth = $('div.speech p').outerWidth();
        var $switcher = $(this).parent();
        var switcherWidth = $switcher.outerWidth();
        $switcher
            .css({position: 'relative'})
            .fadeTo('fast', 0.5)
            .animate({
                left: paraWidth - switcherWidth
            }, {
                duration: 'slow',
                queue: false
            })
            .fadeTo('slow', 1.0)
            .slideUp('slow')
            .queue(function(next) {
                $switcher.css({backgroundColor: '#f00'});
                next();
            })
            .slideDown('slow');
    });


    $('p').eq(2)
        .css('border', '1px solid #333')
        .click(function() {
            var $clickedItem = $(this);
            $clickedItem.next().slideDown('slow', function() {
                $clickedItem.slideUp('slow');
            });
        });
    $('p').eq(3).css('backgroundColor', '#ccc').hide();
});
