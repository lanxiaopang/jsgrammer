var pageNo = 1;

$(function () {
    //if(window.screen.height>768){
        $("#background").fullBg();
//    }else{
//        $("#background").hide();
//    }
    /*获取焦点*/
    $('#input_box').focus();
    $('#current_nav').addClass('current_nav');
    /*处理滑块事件*/
    var $current_nav = $("#current_nav"); //current元素（当前所在导航项)
    var current_nav_width = $current_nav.innerWidth();
    var current_nav_left = $current_nav.position().left;
    var $nav_animate_block = $("#nav_animate_block"); //动画滑块
    $nav_animate_block.css({ width: current_nav_width, left: current_nav_left });
    //初始状态下，动画滑块位置在current元素
    // 鼠标进入a元素时触发动画事件
    var oldIdx=0;//初始化滑块位置索引
    var aaa = oldIdx;
    $("#nav_menu a").hover(function () {
        var index = $(this).index();
        var $a_cur = $("#nav_menu").find("a").eq(index);//鼠标移动到的a元素
        //利用触发的a元素索引获取其left位置和它的宽度
        var width = $a_cur.innerWidth();
        var left = $a_cur.position().left;

        //设置动画滑块位置
        $nav_animate_block.stop().animate({
            width: width,
            left: left
        },{duration: 200,
            easing:"easeInOutBack"//抖动效果
        })

        /*$nav_animate_block.animate({
            backgroundColor: "#FF9501"
        },100 );*/
        if(oldIdx!="0"){
            $("#current_nav"+(oldIdx+1)).removeClass('current_nav'+(oldIdx+1));
        }else{
            if(index!=oldIdx){
                $("#current_nav").removeClass('current_nav');
                if(index=="4"){
                    $(this).addClass("current_nav5")
                }else if(index=="3"){
                    $(this).addClass("current_nav4")
                }else if(index=="2"){
                    $(this).addClass("current_nav3")
                }else if(index=="1"){
                    $(this).addClass("current_nav2")
                }
            }

        }
        oldIdx=index;
    },function(){
        var index = $(this).index();
        if(index==4){
            $(this).addClass("current_nav5");
        }else if(index==3){
            $(this).addClass("current_nav4");
        }else if(index==2){
            $(this).addClass("current_nav3");
        }else if(index==1){
            $(this).addClass("current_nav2");
        }else if(index==0){
            $(this).addClass("current_nav");
        }
    });


    /*处理鼠标滚轮事件*/
    $('.tab_con')
        .mousewheel(function (event, delta) {
            loghandle(event, delta);
            return false;
        });
    var loghandle = function (event, delta) {
        if (delta > 0){
            if(pageNo>1){
                pageNo--;
                $('#r_content_'+pageNo)
                    .css({position: 'relative'})
                    .fadeTo('slow', 0.1)
                    .fadeTo('slow', 1.0);
            }
        }
        else if (delta < 0){
            if(pageNo<3){
                pageNo++;
                $('#r_content_'+pageNo)
                    .css({position: 'relative'})
                    .fadeTo('slow', 0.1)
                    .fadeTo('slow', 1.0);
            }
        }

        switchTab('tab'+pageNo,'r_content_'+pageNo);
    };



//    $('.test').on('mouseenter mouseleave',function(event) {
//        var scrollType = event.type == 'mouseenter'?'ScrollIn':'ScrollOut';
//        $("#slash").stop().ImageSwitch({
//            Type:scrollType,
//            NewImage:"img/search3.gif",
//            Speed:200
//        });
//    });

    /*直接切换效果*/
    /*$('.test').hover(function(){
        $(".test").find("img").eq(0).attr('src','img/search3.gif');
    },function(){
            $(".test").find("img").eq(0).attr('src','img/search2.gif');
        }
    )*/


    /*搜索按钮翻转效果*/
    /*$('.test').hover(function(){
            $("#slash").ImageSwitch({
                Type:'ScrollIn',
                NewImage:"img/search3.gif"
            });
            return;
        },function(){
        $("#slash").ImageSwitch({
            Type:'ScrollOut',
            NewImage:"img/search2.gif"
        });
        return
    })*/






    var tflag = true;
    $('.test').mouseenter(function(){
        if(tflag==true){
            $("#slash").ImageSwitch({
                Type:'ScrollIn',
                NewImage:"img/search3.gif",
                Speed:200
            });
        }
        tflag = false;
    }).mouseleave(function(){
        $("#slash").ImageSwitch({
            Type:'ScrollOut',
            NewImage:"img/search2.gif",
            Speed:400
        });
        tflag = true;
    })


});



/*tab页切换*/
function switchTab(ProTag, ProBox) {
    for (i = 1; i < 4; i++) {
        /*选中的样式*/
        if ("tab" + i == ProTag) {
            document.getElementById(ProTag).className = "tab current_tab";
        } else {
            document.getElementById("tab" + i).className = "tab";
        }

        /*选项页变化*/
        if ("r_content_" + i == ProBox) {
            document.getElementById("r_content_" + i).style.display = "block";

        } else {
            document.getElementById("r_content_" + i).style.display = "none";
        }
    }
}

var ifShowHis = false;
function showOrHide(obj){
    if(ifShowHis){
        //closeHisSearch();
        ifShowHis=false;
        $(obj).attr("src","img/arrow_2.gif")
    }else{
        //showHisSearch();
        ifShowHis=true;
        $(obj).attr("src","img/arrow_3.gif")
    }
}
