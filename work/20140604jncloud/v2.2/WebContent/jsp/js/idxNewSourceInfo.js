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
    $("#sideToolbar-item--1").click(function(){
        $.scrollTo('.item_basic_top',500);
    });
    $("#sideToolbar-item--2").click(function(){
        $.scrollTo('.item_contact_top',800);
    });
    $("#sideToolbar-item--3").click(function(){
        $.scrollTo('.item_add_top',1000);
    });
    $("#sideToolbar-item--4").click(function(){
        $.scrollTo('.item_point_top',1200);
    });
    $("#sideToolbar-item--5").click(function(){
        $.scrollTo('.item_asj_top',1500);
    });
    $("#sideToolbar-item--5_1").click(function(){
        $.scrollTo('#item_car_table',1500);
    });
    $("#sideToolbar-item--5_4").click(function(){
        $.scrollTo('#item_card_table',1500);
    });
    $("#sideToolbar-item--6").click(function(){
        $.scrollTo('.item_qs_top',1500);
    });
    $("#sideToolbar-item--6_1").click(function(){
        $.scrollTo('#item_together_table',1500);
    });
    $("#sideToolbar-item--6_2").click(function(){
        $.scrollTo('#item_together_table2',1500);
    });
    $("#sideToolbar-item--7").click(function(){
        $.scrollTo('.item_sh_top',1500);
    });
    $("#sideToolbar-item--8").click(function(){
        $.scrollTo('.item_hd_top',1500);
    });

    $('#sideCatalogBtn').click(function(){
        $('#sideCatalog').toggle();
    });

    var elFix = document.getElementById('sideToolbar');
    elFix.style.display="none";

    $('#sideToolbar').hover(function(){
        $("#sideCatalog-updown").css("visibility","visible");
    },function(){
        $("#sideCatalog-updown").css("visibility","hidden");
    });
})



function htmlScroll()
{
    var top = document.body.scrollTop ||  document.documentElement.scrollTop;
    if(elFix.data_top < top)
    {
        if(top>700){
            elFix.style.display="";
            elFix.style.position = 'fixed';
            elFix.style.top = 300;
            elFix.style.left = 200;
        }
        else
        {
            elFix.style.display="none";
            elFix.style.position = 'static';
        }

    }
    else
    {
        elFix.style.display="none";
        elFix.style.position = 'static';
    }
}

function htmlPosition(obj)
{
    var o = obj;
    var t = o.offsetTop;
    var l = o.offsetLeft;
    while(o = o.offsetParent)
    {
        t += o.offsetTop;
        l += o.offsetLeft;
    }
    obj.data_top = t;
    obj.data_left = l;
}

var oldHtmlWidth = document.documentElement.offsetWidth;
window.onresize = function(){
    var newHtmlWidth = document.documentElement.offsetWidth;
    if(oldHtmlWidth == newHtmlWidth)
    {
        return;
    }
    oldHtmlWidth = newHtmlWidth;
    elFix.style.position = 'static';
    htmlPosition(elFix);
    htmlScroll();
}
window.onscroll = htmlScroll;

var elFix = document.getElementById('sideToolbar');

htmlPosition(elFix);





