$(function(){

    /*获取焦点*/
    $('#input_box').focus();

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
})

function changeShowOrder(type,num){
    if(type=="order"){
        switch(num){
            case 2:
                var str2 = "<a href=\"#\" id=\"order_time\" onclick=\"return false;\"><img src=\"img\/doc\/sj.gif\" style=\"margin-top: 9px;\"><\/a>";
                document.getElementById('order_time').outerHTML=str2;
                var str = "<a href=\"#\" id=\"order_relate\" onclick=\"javascript:changeShowOrder('order',1);return false;\">相关度<\/a>";
                document.getElementById('order_relate').outerHTML=str;
                break;
            case 1:
                var str2 = "<a href=\"#\" id=\"order_time\" onclick=\"javascript:changeShowOrder('order',2);return false;\">时间<\/a>";
                document.getElementById('order_time').outerHTML=str2;
                var str = "<a href=\"#\" id=\"order_relate\" onclick=\"return false;\"><img src=\"img\/doc\/xgd.gif\" style=\"margin-top: 9px;\"><\/a>";
                document.getElementById('order_relate').outerHTML=str;
                break;
        }
    }else if(type=="search"){
        switch(num){
            case 2:
                var str2 = "<a href=\"#\" id=\"search_title\" onclick=\"return false;\"><img src=\"img\/doc\/bt.gif\" style=\"margin-top: 9px;\"><\/a>";
                document.getElementById('search_title').outerHTML=str2;
                var str = "<a href=\"#\" id=\"search_article\" onclick=\"javascript:changeShowOrder('search',1);return false;\">全文<\/a>";
                document.getElementById('search_article').outerHTML=str;
                break;
            case 1:
                var str2 = "<a href=\"#\" id=\"search_title\" onclick=\"javascript:changeShowOrder('search',2);return false;\">标题<\/a>";
                document.getElementById('search_title').outerHTML=str2;
                var str = "<a href=\"#\" id=\"search_article\" onclick=\"return false;\"><img src=\"img\/doc\/qw.gif\" style=\"margin-top: 9px;\"><\/a>";
                document.getElementById('search_article').outerHTML=str;
                break;
        }
    }
}





