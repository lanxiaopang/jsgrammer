/**
 *
 *     本js为车辆档案页car.html配套js
 *     包括公共重置样式和搜索结果页样式两部分，搜索结果页样式又包括头，尾及中间共三部分
 *     author：sun mail:szy1944@hotmail.com
 *     version:1.0
 *     date:20140929
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


    /*窗口resize的时候根据不同分辨率加载不同样式*/
   /* $(window).resize(function(){               //改变大小的时候
        if($(window).width()<1024){            //判定宽度
            sc.setAttribute("href","../css/car_1024.css");
        }else if($(window).width()>1024 && $(window).width()<1200){
            sc.setAttribute("href","../css/car_1024.css");
        }else if($(window).width()>=1200 && $(window).width()<1440){
            sc.setAttribute("href","../css/car_1440.css");
        }
    });*/
})
