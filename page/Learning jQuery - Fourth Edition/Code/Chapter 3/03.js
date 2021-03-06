// This is the custom JavaScript file referenced by index.html. You will notice
// that this file is currently empty. By adding code to this empty file and
// then viewing index.html in a browser, you can experiment with the example
// page or follow along with the examples in the book.
//
// See README.txt for more information.

$(document).ready(function() {
    $('#switcher').hover(function() {
        $(this).addClass('hover');
    }, function() {
        $(this).removeClass('hover');
    });
});

$(document).ready(function() {
    $('#switcher').on('click.collapse', function(event) {
        if (!$(event.target).is('button')) {
            $('#switcher button').toggleClass('hidden');
        }
    });

    $('#switcher-narrow, #switcher-large').click(function() {
        $('#switcher').off('click.collapse');
    });
});

$(document).ready(function() {
    $('#switcher-default').addClass('selected');

    $('#switcher').click(function(event) {
        if ($(event.target).is('button')) {
            var bodyClass = event.target.id.split('-')[1];

            $('body').removeClass().addClass(bodyClass);

            $('#switcher button').removeClass('selected');
            $(event.target).addClass('selected');
        }
    });
});

