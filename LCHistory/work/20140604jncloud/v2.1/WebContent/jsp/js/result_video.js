$(function(){
    $('.v_bg').hover(function(){
        $(this).find('.icon').css({'visibility':'visible'});
        if(Sys.ie !='6.0'){
            $(this).find('.mask').css({'display':'block'});
        }
    },
    function(){
        $(this).find('.icon').css('visibility','hidden');
        if(Sys.ie !='6.0'){
            $(this).find('.mask').css({'display':'none'});
        }
    })
})







