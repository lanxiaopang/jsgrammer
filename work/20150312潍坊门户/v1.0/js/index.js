/**
 * Created by Sun on 15-3-19.
 */
$(document).ready(function(){
    jQuery(".slideBox").slide({mainCell:".bd ul",autoPlay:true});
//导航智能浮动
    var search=$(".banner");
    var nav=$(".bannerbg");
    var topMain=$(".login_bar").height()+$(".banner").height();
    $(window).scroll(function(){
        if ($(window).scrollTop()>(topMain)){
            $("#header").hide();
            $("body").css("padding-top",topMain);
            search.hide();
            nav.show();
        }else{
            $("#header").show();
            search.show();
            nav.hide();
            $("body").css("padding-top","0");
        }
    });
//tab切换
    $(".switchabel_nav li").click(function(){
            if($(this).index()<=2){
                $(".switchabel_nav li").slice(0,3).removeClass('switch_on');
                $(this).addClass('switch_on');
            }
        }
    );
//关闭二维码
    $(".qr_close").click(function(){
        $(".qr").hide();
    });
});
