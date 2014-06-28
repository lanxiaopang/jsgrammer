$(function(){


    /*初始化测试展开*/
    $('#condition_body').show();

    $('#self_def_body').hide();

    /*获取焦点*/
    $('#input_box').focus();

    /*左侧菜单手风琴效果*/
    $("#firstpane p.menu_head").click(function(){
        var idx= $("#firstpane p.menu_head").index(this);
        var last = $("#firstpane p.menu_head").children().length-1;
        if(!$(this).hasClass("current")){
            $(this).addClass("current").next("div.menu_body").slideToggle(300).siblings("div.menu_body").slideUp("slow");
            $(this).siblings().removeClass("current");
        }else{
            $(this).removeClass('current');
            $(this).next("div.menu_body").slideToggle(300).siblings("div.menu_body").slideUp("slow");
            if(idx!=last){
                $(this).addClass('no_border_bot');
            }
        }
    });

    /*点击more效果*/
    /*$('span.tab_more').toggle(*/
    $('#condition_tab_p').toggle(
        function(){
            $('span.tab_more').addClass("tab_less");
            $("#condition_body").slideToggle(300);
        },
        function(){
            $('span.tab_more').removeClass('tab_less');
            $("#condition_body").slideToggle(300);
        });


    var flag=3;//当前位置
    $('.display_mode12').click(function(){
            var idx=$('.display_mode12').index($(this))+1;//321
            var a,b;
            if(flag==idx){
                return;
            }else{

                $('.display_mode12').each(function(index,ele){
                    b=3-index;
                    $(this).find('img').attr('src','img/result/icon'+b+'_2.gif');
                    if($(this).hasClass('white_bg_color')){
                        $(this).removeClass('white_bg_color').addClass('grey_color3');
                    }
                })

                a=4-idx;
                $(this).find('img').first().attr('src','img/result/icon'+a+'_1.gif');
                $(this).removeClass('grey_color3').addClass('white_bg_color');
                flag=idx;
            }

        });
    $('#tria').hover(function(){
        $('#tria1').find('span').removeClass('info_icon_down').addClass('info_icon_up');
        $('#tria2').slideToggle();
    },
    function(){
        $('#tria1').find('span').removeClass('info_icon_up').addClass('info_icon_down');
        $('#tria2').slideToggle();
    });


    $('#tria2').hover(function(){
        $(this).css('background-color','#f7f7f7');
        $('#tria1').css('background-color','#ffffff');
    },function(){
        $(this).css('background-color','#ffffff');
        $('#tria1').css('background-color','#f7f7f7');
    });
    $('#tria2').click(
        function(){
            //$('#tria2').stop().slideUp();
            var a=$('#tria2 a')[0].innerHTML;
            $('#tria2 a')[0].innerHTML=$('#tria1 a')[0].innerHTML;
            $('#tria1 a')[0].innerHTML=a;
        }
    )



})

function showHideTabBirth(){
    $('#self_def_body').toggle();
    if($('.self_def').hasClass('no_border_bot')){
        $('.self_def').removeClass('no_border_bot');
        $('.self_def').css('z-index','999');
    }else{
        $('.self_def').addClass('no_border_bot');
        $('.self_def').css('z-index','1001');
    }
}





