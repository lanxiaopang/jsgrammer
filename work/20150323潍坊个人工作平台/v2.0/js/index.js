/**
 * Created by Sun on 15-3-24.
 */
$(document).ready(function () {
    var DATA = {
        'appL': {
            'avatar': '个人信息',
            'comment': '应用管理',
            'doing': '系统入口'
        },
        'appM': {
            'blog': '我的待办',
            'profile': '业务概况',
            'spaceinfo': '业务专栏'
        },
        'appR': {
            'gallery': '我的云数据',
            'visitors': '我的云服务',
            'thread': '我的云主机'
        }
    }
    Jh.fn.init(DATA);
    Jh.Portal.init(DATA);
    $(".custom").powerFloat({
        target: $(".main_wrap"),
        offsets:{x:0, y:0}
    });
    $(".skin").powerFloat({
        target: $(".skin_wrap"),
        offsets:{x:0, y:0}
    });
    $(".layout").powerFloat({
        target: $(".layout_wrap"),
        offsets:{x:0, y:0}
    });
    $(".skin_div a").click(function(){
        $(".skin_div a").removeClass("skin_active");
        $("this").addClass("skin_active");
        var theme = $(this).attr("rel");
        $(".itemHeader").addClass(theme);
        $(".nav_bar").addClass(theme);
    });
});