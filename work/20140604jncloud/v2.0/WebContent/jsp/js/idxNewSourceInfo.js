$(function(){
    /*table隔行变色*/
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
})






