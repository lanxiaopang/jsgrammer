// This is the custom JavaScript file referenced by index.html. You will notice
// that this file is currently empty. By adding code to this empty file and
// then viewing index.html in a browser, you can experiment with the example
// page or follow along with the examples in the book.
//
// See README.txt for more information.
/******************************************************************************
 Our plugin code comes first in this document. Normally, plugins would
 appear in separate files named jquery.plugin-name.js, but for our examples
 it's convenient to place this plugin code in the same JavaScript file as
 the code that calls it.
 ******************************************************************************/


/******************************************************************************
 End plugin code; begin custom script code.
 ******************************************************************************/

$(document).ready(function() {
    $('#topics a').click(function(event) {
        event.preventDefault();
        var topic = $(this).text();

        $('#topics a.selected').removeClass('selected');
        $(this).addClass('selected');

        $('#news tr').show();
        if (topic != 'All') {
            $('#news').find('tr:has(td)').not(function() {
                return $(this).children(':nth-child(4)').text() == topic;
            }).hide();
        }
    });
});
