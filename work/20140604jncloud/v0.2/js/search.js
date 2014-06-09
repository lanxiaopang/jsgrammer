var pageNo = 1;
$(function () {
    /*处理滑块事件*/
    var $current_nav = $("#current_nav"); //current元素（当前所在导航项)
    var current_nav_width = $current_nav.innerWidth();
    var current_nav_left = $current_nav.position().left;
    var $nav_animate_block = $("#nav_animate_block"); //动画滑块
    $nav_animate_block.css({ width: current_nav_width, left: current_nav_left });
    //初始状态下，动画滑块位置在current元素
    // 鼠标进入a元素时触发动画事件
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
        },{duration: 500,
            easing:"easeInOutBack"//抖动效果
        })
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