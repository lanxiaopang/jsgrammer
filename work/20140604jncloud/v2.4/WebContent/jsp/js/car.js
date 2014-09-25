

$(function(){
    /*获取焦点*/
    $('#input_box').focus();

    $('#item_basic_table tbody tr:even').addClass('eventr');
    $('#item_basic_table1 tbody tr:odd').addClass('eventr');
    $('#item_point_table tbody tr:even').addClass('eventr');
    $('#item_asj_table tbody tr:odd').addClass('eventr');
    $('#item_live_table tbody tr:odd').addClass('eventr');
    $('#item_car_table tbody tr:odd').addClass('eventr');
    $('#item_card_table tbody tr:odd').addClass('eventr');

    $('.query_log_1').hover(function(){
        $(this).removeClass('green_color7');
    },function(){
        $(this).addClass('green_color7');
    })


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


    /*点击效果*/
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


    $('#sideCatalogBtn').click(function(){
        $('#sideCatalog').toggle();
    });
	if(Sys.ie =='6.0' || Sys.ie =='7.0' || Sys.ie =='8.0'){
	
	}
    else if(Sys.ie =='9.0'){
        $(window).resize(function(){               //改变大小的时候
            if($(window).width()<1024){            //判定宽度
                sc.setAttribute("href","../css/car_1024.css");
            }else if($(window).width()>1024 && $(window).width()<1200){
                sc.setAttribute("href","../css/car_1024.css");
            }else if($(window).width()>=1200 && $(window).width()<1440){
                sc.setAttribute("href","../css/car_1440.css");
            }
        });
    } else{
        $(window).resize(function(){               //改变大小的时候
            if($(window).width()<1024){            //判定宽度
                sc.setAttribute("href","../css/car_1024.css");
            }else if($(window).width()>1024 && $(window).width()<1200){
                sc.setAttribute("href","../css/car_1024.css");
            }else if($(window).width()>=1200 && $(window).width()<1440){
                sc.setAttribute("href","../css/car_1440.css");
            }
        });
    }

})







