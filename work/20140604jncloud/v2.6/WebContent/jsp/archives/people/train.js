$(function(){
    /*滑动效果==============================================*/
    jQuery(".picScroll-left").slide( { titCell:".hd ul",mainCell:".bd ul",autoPage:true,effect:'left',autoPlay:false,scroll:1,vis:1,easing:'easeInBack',delayTime:500,pnLoop:false,trigger:'mouseover',mouseOverStop:true });

/*列车鼠标悬浮效果========================================*/
$('.g_train_num span').hover(function(){
    $(".g_train_num span").each(function(){
        if($(this).hasClass('num_on')){
            $(this).removeClass('num_on');
            $(this).addClass('train_num1');
            return;
        }
});
var train_num = $(this).attr("id").replace('t','');
var train_sum = $('.g_train_num').find("span").length;//总数
if(train_num==1){
    $('.prev').removeClass('prev1');
    }
if(train_num>1 && train_num<train_sum){
    $('.prev').addClass('prev1');
    $('.next').addClass('next1');
    }
if(train_num==train_sum){//最后一个换样式
    $('.next').removeClass('next1');
    }
$(this).removeClass('train_num1');
        $(this).addClass('num_on');
        $('.carriage_pic li').eq(train_num-1).mouseover();
    },function(){

    });

/*下一个按钮=================================================*/
    $('.next').click(function(){
        var train_num;
        var train_sum = $('.g_train_num').find("span").length;//总数
        $('.g_train_num span').each(function(){
            if($(this).hasClass('num_on')){
                $(this).removeClass('num_on').addClass('train_num1');
                train_num = $(this).attr("id").replace('t','');
            }
        })
        if(train_num<train_sum){
            $('.g_train_num').find("span").eq(train_num).removeClass('train_num1').addClass('num_on');
            $('.prev').addClass('prev1');
            if(train_num==train_sum-1){
                $('.next').removeClass('next1');
            }
        }else if(train_num==train_sum){
            $('.g_train_num').find("span").eq(train_num-1).removeClass('train_num1').addClass('num_on');

        }
    });

/*上一个按钮====================================================*/
    $('.prev').click(function(){
        var train_num;
        $('.g_train_num span').each(function(){
            if($(this).hasClass('num_on')){
                $(this).removeClass('num_on').addClass('train_num1');
                train_num = $(this).attr("id").replace('t','');
            }
        })
        if(train_num>1){
            $('.g_train_num').find("span").eq(train_num-2).removeClass('train_num1').addClass('num_on');
            $('.next').addClass('next1');
            if(train_num==2){
                $('.prev').removeClass('prev1');
            }
        }else if(train_num==1){
            $('.g_train_num').find("span").eq(0).removeClass('train_num1').addClass('num_on');

        }
    })

/*提示==================================================*/
    var tip_content1='<div class="g_seat_detail1"><div class="g_seat_det_top"><div class="g_seat_det_tx">'+
    '<img src="../../../images/personDoc/train/touxiang.jpg"></div><div class="g_seat_det_inf"><p class="g_seat_det_inf_name">孙玉香</p>'+
        '<p class="g_seat_det_inf_id">3701011984032211326</p><p class="g_seat_det_inf_se"><span class="train_s1">'+
            '</span><span class="train_word_s1">南京</span><span class="train_e1"></span>'+
            '<span class="train_word_e1">呼和浩特</span></p><p class="g_seat_det_inf_seat"><span class="train_seat1">'+
            '</span><span class="train_word_s1">07车 23号</span></p></div></div></div>';

    var tip_contentn='<div class="g_seat_detail"><div class="g_seat_det_top"><div class="g_seat_det_tx">'+
        '<img src="../../../images/personDoc/train/touxiang.jpg"></div><div class="g_seat_det_inf">'+
            '<p class="g_seat_det_inf_name">孙玉香</p><p class="g_seat_det_inf_id">3701011984032211326</p>'+
            '<p class="g_seat_det_inf_se"><span class="train_s1"></span><span class="train_word_s1">南京</span>'+
                '<span class="train_e1"></span><span class="train_word_e1">呼和浩特</span></p><p class="g_seat_det_inf_seat">'+
                '<span class="train_seat1"></span><span class="train_word_s1">07车 23号</span></p></div></div>'+
        '<div class="g_seat_det_bot"><span class="u_seat_det_bot_page"><a href="#">上一页</a><a href="#">1</a>'+
            '<a href="#" class="page_on">2</a><a href="#">3</a><a href="#">下一页</a></span></div></div>';
        $('.seat_one').poshytip({
            className: 'tip-yellowsimple',
            /*offsetX: -25,*/
            alignTo: 'target',
            alignX: 'center',
            offsetY: 5,
            content: tip_content1
            });
        $('.seat_three,.seat_five,.seat_four,.seat_two').poshytip({
            className: 'tip-yellowsimple',
            alignTo: 'target',
            alignX: 'center',
            offsetY: 5,
            content: tip_contentn
            });
        $('.seat_stand').poshytip({
            className: 'tip-yellowsimple',
            alignTo: 'target',
            alignX: 'left',
            alignY: 'center',
            offsetX: 15,
            content: tip_contentn
            })

        })