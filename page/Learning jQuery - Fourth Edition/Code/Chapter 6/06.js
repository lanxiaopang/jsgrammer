// This is the custom JavaScript file referenced by index.html. You will notice
// that this file is currently empty. By adding code to this empty file and
// then viewing index.html in a browser, you can experiment with the example
// page or follow along with the examples in the book.
//
// See README.txt for more information.
$(document).ready(function() {
    $('#letter-a a').click(function(event) {
        event.preventDefault();
        $('#dictionary').load('a.html',function(){
            $(this).fadeIn("slow");
        });
    });

    $("#letter-b a").click(function(event){
        event.preventDefault();
        $.getJSON("b.json",function(data){
            var html =[];
            $.each(data,function(entryIndex,entry){
                html.push('<div class="entry">');
                html.push('<div class="term">'+entry.term+'</div>');
                html.push('<div class="part">'+entry.part+'</div>');
                html.push('<div class="definition">'+entry.definition);
                if(entry.quote){
                    html.push('<div class="quote">');
                    $.each(entry.quote,function(lineIndex, line){
                        html.push('<div class="quote-line">' + line + '</div>');
                    });
                    if(entry.author){
                        html.push('<div class="quote-author">'+entry.author+'</div>');
                    }
                    html.push('</div>');
                }

                html.push('</div>');
                html.push('</div>');
            });
            $("#dictionary").html(html.join(""));
        });
    });

    $("#letter-c a").click(function(event){
        event.preventDefault();
        $.getScript("c.js");
    });

    $('#letter-e a').click(function(event) {
        event.preventDefault();
        var requestData = {term: $(this).text()};
        $.get('z.php', requestData, function(data) {
            $('#dictionary').html(data);
        }).fail(function(jqXHR) {
            $('#dictionary')
                .html('An error occurred: ' + jqXHR.status)
                .append(jqXHR.responseText);
        });
    });

    $('#letter-f form').submit(function(event) {
        event.preventDefault();
        var formValues = $(this).serialize();
        $.get('f.php', formValues, function(data) {
            $('#dictionary').html(data);
        });
    });

    var $loading = $('<div id="loading">loading.....</div>').insertBefore("#dictionary");

    $(document).ajaxStart(function(){
        $loading.show();
    }).ajaxStop(function(){
        $loading.hide();
    });

    $.getScript("https://60.208.131.91:5802/pbank/app/page/index.js",function(){
        console.info("script has been loaded!");
    })
    /*$('#letter-b a').click(function(event) {
        event.preventDefault();
        $.getJSON('b.json', function(data) {
            var html = '';
            $.each(data, function(entryIndex, entry) {
                html += '<div class="entry">';
                html += '<h3 class="term">' + entry.term + '</h3>';
                html += '<div class="part">' + entry.part + '</div>';
                html += '<div class="definition">';
                html += entry.definition;
                if (entry.quote) {
                    html += '<div class="quote">';
                    $.each(entry.quote, function(lineIndex, line) {
                        html += '<div class="quote-line">' + line + '</div>';
                    });
                    if (entry.author) {
                        html += '<div class="quote-author">' + entry.author + '</div>';
                    }
                    html += '</div>';
                }
                html += '</div>';
                html += '</div>';
            });
            $('#dictionary').html(html);
        });
    });

    $('#letter-c a').click(function(event) {
        event.preventDefault();
        $.getScript('c.js');
    });

    $('#letter-d a').click(function(event) {
        event.preventDefault();
        $.get('d.xml', function(data) {
            $('#dictionary').empty();
            $(data).find('entry').each(function() {
                var $entry = $(this);
                var html = '<div class="entry">';
                html += '<h3 class="term">' + $entry.attr('term');
                html += '</h3>';
                html += '<div class="part">' + $entry.attr('part');
                html += '</div>';
                html += '<div class="definition">';
                html += $entry.find('definition').text();
                var $quote = $entry.find('quote');
                if ($quote.length) {
                    html += '<div class="quote">';
                    $quote.find('line').each(function() {
                        html += '<div class="quote-line">';
                        html += $(this).text() + '</div>';
                    });
                    if ($quote.attr('author')) {
                        html += '<div class="quote-author">';
                        html += $quote.attr('author') + '</div>';
                    }
                    html += '</div>';
                }
                html += '</div>';
                html += '</div>';
                $('#dictionary').append($(html));
            });
        });
    });



    $('#letter-f form').submit(function(event) {
        event.preventDefault();
        var formValues = $(this).serialize();
        $.get('f.php', formValues, function(data) {
            $('#dictionary').html(data);
        });
    });

    var $loading = $('<div id="loading">Loading...</div>')
        .insertBefore('#dictionary');

    $(document).ajaxStart(function() {
        $loading.show();
    }).ajaxStop(function() {
        $loading.hide();
    });*/
});

