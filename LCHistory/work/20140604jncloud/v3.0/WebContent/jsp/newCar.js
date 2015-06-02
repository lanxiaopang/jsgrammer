/*tab切换*/
jQuery(".slideTxtBox").slide( { effect:'left',autoPlay:false,trigger:'click',delayTime:500,pnLoop:true });

$('#gridtab1 tbody tr:even').addClass('eventr1');
$('#gridtab2 tbody tr:even').addClass('eventr1');
$('.item_case_table1 tbody tr:odd').addClass('eventr1');
$('.item_case_table2 tbody tr:odd').addClass('eventr1');
$('.item_insurance_table tbody tr:odd').addClass('eventr1');
$('.item_check_table tbody tr:odd').addClass('eventr1');

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

    }
);