/**
 *
 *     本js为车辆档案页case.html配套js
 *     包括公共重置样式和搜索结果页样式两部分，搜索结果页样式又包括头，尾及中间共三部分
 *     author：sun mail:szy1944@hotmail.com
 *     version:1.0
 *     date:20141027
 */
$(function(){
    /*====获取焦点====*/
    $('#input_box').focus();


    /*====头部云搜索下拉选项效果====*/
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
            var a=$('#tria2 a')[0].innerHTML;
            $('#tria2 a')[0].innerHTML=$('#tria1 a')[0].innerHTML;
            $('#tria1 a')[0].innerHTML=a;
        }
    );

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

        });

    var button_b1 = $('#button_b1');
    var $slidelem1 = button_b1.prev();
    $slidelem1.animate({'width':'218px'},1000);
    $slidelem1.find('span').stop(true,true).fadeIn();

    var button_b2 = $('#button_b2');
    var $slidelem2 = button_b2.prev();
    $slidelem2.animate({'width':'286px'},1000);
    $slidelem2.find('span').stop(true,true).fadeIn();

    var button_b3 = $('#button_b3');
    var $slidelem3 = button_b3.prev();
    $slidelem3.animate({'width':'298px'},1000);
    $slidelem3.find('span').stop(true,true).fadeIn();

    var button_b4 = $('#button_b4');
    var $slidelem4 = button_b4.prev();
    $slidelem4.animate({'width':'298px'},1000);
    $slidelem4.find('span').stop(true,true).fadeIn();

    var button_b5 = $('#button_b5');
    var $slidelem5 = button_b5.prev();
    $slidelem5.animate({'width':'363px'},1000);
    $slidelem5.find('span').stop(true,true).fadeIn();

    var button_b6 = $('#button_b6');
    var $slidelem6 = button_b6.prev();
    $slidelem6.animate({'width':'418px'},1000);
    $slidelem6.find('span').stop(true,true).fadeIn();


})
