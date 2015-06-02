$(function(){

/*列车鼠标悬浮效果========================================*/
$('.g_train_num span').click(function(){
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
            $('.carriage_pic li').eq(train_num-1).click();
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
    var tip_content_p='<div class="g_seat_detail1"><div class="g_seat_det_top">' +
        '<div class="g_seat_det_tx"><img src="../../../images/personDoc/train/touxiang.jpg">' +
        '</div><div class="g_seat_det_inf"><p class="g_seat_det_inf_name">孙玉香</p>' +
        '<p class="g_seat_det_inf_id">3701011984032211326</p><p class="g_seat_det_inf_se">' +
        '<span class="train_s1"></span><span class="train_word_s1">济南遥墙</span></p>' +
        '<p class="g_seat_det_inf_se"><span class="train_e1"></span>' +
        '<span class="train_word_s1">乌鲁木齐地窝堡</span></p><p class="g_seat_det_inf_seat">' +
        '<span class="train_seat1"></span><span class="train_word_s1">Y舱</span></p>' +
        '</div></div></div>';



    $('.seat_one').poshytip({
        className: 'tip-yellowsimple',
        /*offsetX: -25,*/
        alignTo: 'target',
        alignX: 'center',
        offsetY: 5,
        content: tip_content_p
        });
    $("div[class^='g_tab1_l']").hover(function(){
        $(this).css('background-color','#d3f5ff');
    },function(){
        $(this).css('background-color','');
    });

    jQuery(".slideTxtBox").slide( { effect:'left',autoPlay:false,trigger:'click',delayTime:500,pnLoop:true });

    $(".item_add").find("div:first-child").toggle(
        function(){
            if($(this).hasClass("arrow_1")){
                $(this).removeClass("arrow_1").addClass('arrow_2');
                $(this).parent().next().slideToggle();

            }
        },
        function(){
            if($(this).hasClass("arrow_2")){
                $(this).removeClass("arrow_2").addClass('arrow_1');
                $(this).parent().next().slideToggle();
            }

        }
    );

    var curtab1 = curtab2 = curtab3 = curtab4 = 2;//当前tab页数
    var temp1 = temp2 ='';
    $('.display_mode12').click(function(){
        if($(this).attr('id')=='tabimg_1_1'){
            if(curtab1==2){
                return;
            }else if(curtab1==1){
                $(this).removeClass('grey_color3').addClass('white_bg_color');
                temp1 = $(this).find('img:first').attr('src').replace('2_2','2_1');
                $(this).find('img:first').attr('src',temp1);
                $('#tabimg_1_2').removeClass('white_bg_color').addClass('grey_color3');
                temp2 = $('#tabimg_1_2').find('img').attr('src').replace('3_1','3_2');
                $('#tabimg_1_2').find('img:first').attr('src',temp2);
                $('#tab1_2').css({'display':'none','border-width':'0px'});
                $('#tab1_1').css({'display':'block','border-width':'1px'});
                $('#g_tab12_bot').css('display','none');
                $('#g_tab11_bot').css('display','block');
                curtab1=2;
            }
        }else if($(this).attr('id')=='tabimg_1_2'){
            if(curtab1==2){
                $(this).removeClass('grey_color3').addClass('white_bg_color');
                temp1 = $(this).find('img:first').attr('src').replace('3_2','3_1');
                $(this).find('img:first').attr('src',temp1);
                $('#tabimg_1_1').removeClass('white_bg_color').addClass('grey_color3');
                temp2 = $('#tabimg_1_1').find('img:first').attr('src').replace('2_1','2_2');
                $('#tabimg_1_1').find('img:first').attr('src',temp2);
                $('#tab1_2').css({'display':'block','border-width':'0px'});
                $('#tab1_1').css({'display':'none','border-width':'1px'});
                $('#g_tab11_bot').css('display','none');
                $('#g_tab12_bot').css('display','block');
                curtab1=1;
            }else if(curtab1==1){
                return;
            }
        }else if($(this).attr('id')=='tabimg_2_1'){
            if(curtab2==2){
                return;
            }else if(curtab2==1){
                $(this).removeClass('grey_color3').addClass('white_bg_color');
                temp1 = $(this).find('img:first').attr('src').replace('2_2','2_1');
                $(this).find('img:first').attr('src',temp1);
                $('#tabimg_2_2').removeClass('white_bg_color').addClass('grey_color3');
                temp2 = $('#tabimg_2_2').find('img').attr('src').replace('3_1','3_2');
                $('#tabimg_2_2').find('img:first').attr('src',temp2);
                $('#tab2_2').css({'display':'none','border-width':'0px'});
                $('#tab2_1').css({'display':'block','border-width':'1px'});
                $('#g_tab22_bot').css('display','none');
                $('#g_tab21_bot').css('display','block');
                curtab2=2;
            }
        }else if($(this).attr('id')=='tabimg_2_2'){
            if(curtab2==2){
                $(this).removeClass('grey_color3').addClass('white_bg_color');
                temp1 = $(this).find('img:first').attr('src').replace('3_2','3_1');
                $(this).find('img:first').attr('src',temp1);
                $('#tabimg_2_1').removeClass('white_bg_color').addClass('grey_color3');
                temp2 = $('#tabimg_2_1').find('img:first').attr('src').replace('2_1','2_2');
                $('#tabimg_2_1').find('img:first').attr('src',temp2);
                $('#tab2_2').css({'display':'block','border-width':'0px'});
                $('#tab2_1').css({'display':'none','border-width':'1px'});
                $('#g_tab21_bot').css('display','none');
                $('#g_tab22_bot').css('display','block');
                curtab2=1;
            }else if(curtab2==1){
                return;
            }
        }

        else if($(this).attr('id')=='tabimg_3_1'){
            if(curtab3==2){
                return;
            }else if(curtab3==1){
                $(this).removeClass('grey_color3').addClass('white_bg_color');
                temp1 = $(this).find('img:first').attr('src').replace('2_2','2_1');
                $(this).find('img:first').attr('src',temp1);
                $('#tabimg_3_2').removeClass('white_bg_color').addClass('grey_color3');
                temp2 = $('#tabimg_3_2').find('img').attr('src').replace('3_1','3_2');
                $('#tabimg_3_2').find('img:first').attr('src',temp2);
                $('#tab3_2').css({'display':'none','border-width':'0px'});
                $('#tab3_1').css({'display':'block','border-width':'1px'});
                $('#g_tab32_bot').css('display','none');
                $('#g_tab31_bot').css('display','block');
                curtab3=2;
            }
        }else if($(this).attr('id')=='tabimg_3_2'){
            if(curtab3==2){
                $(this).removeClass('grey_color3').addClass('white_bg_color');
                temp1 = $(this).find('img:first').attr('src').replace('3_2','3_1');
                $(this).find('img:first').attr('src',temp1);
                $('#tabimg_3_1').removeClass('white_bg_color').addClass('grey_color3');
                temp2 = $('#tabimg_3_1').find('img:first').attr('src').replace('2_1','2_2');
                $('#tabimg_3_1').find('img:first').attr('src',temp2);
                $('#tab3_2').css({'display':'block','border-width':'0px'});
                $('#tab3_1').css({'display':'none','border-width':'1px'});
                $('#g_tab31_bot').css('display','none');
                $('#g_tab32_bot').css('display','block');
                curtab3=1;
            }else if(curtab3==1){
                return;
            }
        }
        else if($(this).attr('id')=='tabimg_4_1'){
            if(curtab4==2){
                return;
            }else if(curtab4==1){
                $(this).removeClass('grey_color3').addClass('white_bg_color');
                temp1 = $(this).find('img:first').attr('src').replace('2_2','2_1');
                $(this).find('img:first').attr('src',temp1);
                $('#tabimg_4_2').removeClass('white_bg_color').addClass('grey_color3');
                temp2 = $('#tabimg_4_2').find('img').attr('src').replace('3_1','3_2');
                $('#tabimg_4_2').find('img:first').attr('src',temp2);
                $('#tab4_2').css({'display':'none','border-width':'0px'});
                $('#tab4_1').css({'display':'block','border-width':'1px'});
                $('#g_tab42_bot').css('display','none');
                $('#g_tab41_bot').css('display','block');
                curtab4=2;
            }
        }else if($(this).attr('id')=='tabimg_4_2'){
            if(curtab4==2){
                $(this).removeClass('grey_color3').addClass('white_bg_color');
                temp1 = $(this).find('img:first').attr('src').replace('3_2','3_1');
                $(this).find('img:first').attr('src',temp1);
                $('#tabimg_4_1').removeClass('white_bg_color').addClass('grey_color3');
                temp2 = $('#tabimg_3_1').find('img:first').attr('src').replace('2_1','2_2');
                $('#tabimg_4_1').find('img:first').attr('src',temp2);
                $('#tab4_2').css({'display':'block','border-width':'0px'});
                $('#tab4_1').css({'display':'none','border-width':'1px'});
                $('#g_tab41_bot').css('display','none');
                $('#g_tab42_bot').css('display','block');
                curtab4=1;
            }else if(curtab4==1){
                return;
            }
        }

    });

})