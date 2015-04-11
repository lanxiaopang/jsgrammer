/**
 * Created by Sun on 15-3-19.
 */
$(document).ready(function(){
    $("#J_SearchTab").hover(function(){
        $(".search_bd").css({
            "height":"auto",
            "overflow":"visible"
        });
        $(".search-triggers").css({
            "height":"auto",
            "overflow":"visible"
        });
    },function(){
        $(".search_bd").css({
            "height":"40px",
            "overflow":"hidden"
        });
        $(".search-triggers").css({
            "height":"32px",
            "overflow":"hidden"
        });
    });
    $(".J_SearchTab").click(function(){
        switch($(this).index())
        {
            case 0:
                break;
            case 1:
                $(this).insertBefore($("#J_SearchTab ul li:first"));
                $(this).siblings().removeClass("selected");
                $(this).addClass("selected");
                break;
            case 2:
                $(this).insertBefore($("#J_SearchTab ul li:first"));
                $(this).siblings().removeClass("selected");
                $(this).addClass("selected");
                break;
            default:
                break;
        }
    });
    $("#more").click(function(){
        if($(".hiddenTxt").is(":hidden")){
            $(".g_r1c12m .hiddenTxt").slideDown();
            $("#more").text("隐藏");
        }else{
            $(".g_r1c12m .hiddenTxt").slideUp();
            $("#more").text("更多");
        }
    })
});

