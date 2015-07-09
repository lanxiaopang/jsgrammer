$(function () {
    var html = [];
    html.push("<a href='javascript:void(0)' class='demoNavMin'></a>")
    html.push("<ul class='demoNav'>");
    $("h2").each(function () {
        var leve2id = guid();
        $(this).before("<a name='" + leve2id + "'></a>");
        html.push("<li  style='padding-left:10px'><a a href='#" + leve2id + "'>" + $(this).html() + "</a></li>");


        $(this).nextUntil("h2").filter("h3").each(function () {
            var leve3id = guid();
            $(this).before("<a name='" + leve3id + "'></a>");
            html.push("<li style='padding-left:25px'><a a href='#" + leve3id + "'>" + $(this).html() + "</a></li>");
            $(this).nextUntil("h3").filter("h4").each(function () {

                var leve4id = guid();
                $(this).before("<a name='" + leve4id + "'></a>");
                html.push("<li style='padding-left:45px'><a a href='#" + leve4id + "'>" + $(this).html() + "</a></li>");
            });
        });
    });



    html.push("</ul>");

    $("body").append(html.join(''));


    $(".demoNavMin").click(function () {
        $(".demoNav").show();
    });
    $(".demoNav").mouseleave(function () {
        $(this).hide();
    });


    $("iframe").each(function () {
        var html = [
            '<div class="iframeOption">',
            '<a href="javascript:void(0)" class="refreshIframe">刷新</a>',
            '<a href="' + $(this).attr("src") + '" target="_blank">新窗口打开</a>',
            '</div>'
        ];

        $(this).before(html.join(''));
    });

    $("body").on({
        click: function () {
            var iframe = $(this).parent().next();
            iframe[0].contentWindow.location.reload();
        }
    }, ".refreshIframe");
});
var navguidradom = 1;
var guid = function () {
    return "h" + new Date().getTime() + (navguidradom++);
}




