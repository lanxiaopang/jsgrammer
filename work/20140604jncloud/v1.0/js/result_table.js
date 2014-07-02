/*浏览器及版本判断*/
var Sys = {};
var ua = navigator.userAgent.toLowerCase();
var s;
(s = ua.match(/msie ([\d.]+)/)) ? Sys.ie = s[1] :
(s = ua.match(/firefox\/([\d.]+)/)) ? Sys.firefox = s[1] :
(s = ua.match(/chrome\/([\d.]+)/)) ? Sys.chrome = s[1] :
(s = ua.match(/opera.([\d.]+)/)) ? Sys.opera = s[1] :
(s = ua.match(/version\/([\d.]+).*safari/)) ? Sys.safari = s[1] : 0;

$(function(){


    /*初始化测试展开*/
    //$('#condition_body').show();

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

    /*点击效果*/
    $('#condition_tab_p').toggle(
        function(){
            $('span.tab_toggle1').addClass("tab_toggle2");
			if(Sys.ie =='6.0'){
				$("#condition_body").css('display','block');
				$('.g-mn5').css('display','inline-block');
			}else{
				$("#condition_body").slideToggle();
			}

            
			
        },
        function(){
            $('span.tab_toggle1').removeClass('tab_toggle2');
			if(Sys.ie =='6.0'){
				$("#condition_body").css('display','none');
				$('.g-mn5').css('display','inline-block');
			}else{
				$("#condition_body").slideToggle();
			}
			
			
            
			
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
            var a=$('#tria2 a')[0].innerHTML;
            $('#tria2 a')[0].innerHTML=$('#tria1 a')[0].innerHTML;
            $('#tria1 a')[0].innerHTML=a;
        }
    );
	/*更多*/
    $('#img_more').toggle(
        function(){
            $(this).attr('src','img/result/shouqi.gif');
            $('.g-mn5').css('height','auto');
            $('.g-mn5').css('overflow','auto');
        },
        function(){
            $(this).attr('src','img/result/more.gif')
            $('.g-mn5').css('height','36px');
            $('.g-mn5').css('overflow','hidden');

        });

    /*图标悬停效果*/
    $('.result_a').hover(
        function(){
            var foo = $(this).find('img').attr('src');
            foo=foo.replace(".gif","_2.gif");
            $(this).find('img').attr('src',foo);
            $(this).find('span').addClass('orange_txt_color1');
        },
        function(){
            var foo = $(this).find('img').attr('src');
            foo=foo.replace("_2.gif",".gif");
            $(this).find('img').attr('src',foo);
            $(this).find('span').removeClass('orange_txt_color1');
        }
    );

    /*table隔行变色*/
    $('tr:even').addClass('eventr');
    /*table悬浮变色*/
    $('tbody tr').hover(function(){
        $(this).addClass('hovertr');
    },function(){
        $(this).removeClass('hovertr');
    })
})

function showHideTabBirth(){
    $('#self_def_body').toggle();
    if($('.self_def').attr('src').indexOf('_2.gif')<0){
        $('.self_def').attr('src','img/result/zidingyi_2.gif');
        $('.self_def').css('z-index','1001');
    }else{
        $('.self_def').attr('src','img/result/zidingyi.gif');
        $('.self_def').css('z-index','999');
    }
}





