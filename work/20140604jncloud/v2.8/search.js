$(function(){

    $('.ks-select').hover(function(){
        $('.ks-select-pop').show();
    },function(){
        $('.ks-select-pop').hide();
    })

    $('.ks-select-pop a').click(function(){
            $.each($(".ks-select-pop a"), function(i,val){
               if($(this).hasClass('current')){
                   $(this).removeClass('current');
                   return;
               }
            });
            $(this).addClass('current');
            $('.ks-select .item em').html($(this).html());
            $('.ks-select-pop').hide();
    })
})