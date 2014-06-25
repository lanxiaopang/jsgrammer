$(function(){

    /*获取焦点*/
    $('#input_box').focus();

    /*手风琴效果*/
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
})

















/*$(function(){
        *//*根据不同分辨率加载样式文件*//*
        if($(document).width()>=1024){//宽屏版本
            document.getElementById('style_link').disabled=true;
            document.getElementById('style_link_ft').disabled=false;
        }else{//窄屏版本
            document.getElementById('style_link_ft').disabled=true;
            document.getElementById('style_link').disabled=false;
        }

    }
)*/
/*屏幕分辨率变化时根据不同分辨率做不同处理*/
/*
$(window).resize(function(){
    //更换样式文件
   */
/* var link_flag = true;
    if($(document).width()>=1024){//宽屏版本
        $('#style_link').remove();
        if(link_flag){
            $('<link id="style_link_ft" href="css/result_ft.css" rel="stylesheet" />').insertAfter('title');
            link_flag=false;
        }
        }else{//窄屏版本
        $('#style_link_ft').remove();
        if(link_flag){
            $('<link id="style_link_ft" href="css/result.css" rel="stylesheet" />').insertAfter('title');
            link_flag=false;
        }
    }*//*

   */
/* var a=document.getElementsByTagName('link');
    if($(document).width()>=1024){//宽屏版本

        a.disabled = true;

    }else{

    }

    function setActiveStyleSheet(title) {
        var i, a, main;
        if (title) {
            for (i = 0; (a = document.getElementsByTagName('link')[i]); i++) {
                if (a.getAttribute('rel').indexOf('style') != -1
                    && a.getAttribute('title')) {
                    a.disabled = true;
                    if (a.getAttribute('title') == title) a.disabled = false;
                }
            }
        }
    }

    function getActiveStyleSheet() {
        var i, a;
        for (i = 0; (a = document.getElementsByTagName('link')[i]); i++) {
            if (a.getAttribute('rel').indexOf('style') != -1
                && a.getAttribute('title')
                && !a.disabled)
                return a.getAttribute('title');
        }
        return null;
    }*//*

    if($(document).width()>=1024){//宽屏版本
        document.getElementById('style_link').disabled=true;
        document.getElementById('style_link_ft').disabled=false;
    }else{//窄屏版本
        alert(document.getElementById('style_link_ft').disabled);
        document.getElementById('style_link_ft').disabled=true;
        document.getElementById('style_link').disabled=false;
    }

})*/
