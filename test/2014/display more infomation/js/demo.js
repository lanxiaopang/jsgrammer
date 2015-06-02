$(document).ready(function(){
    var $category = $('ul li:gt(5):not(:last)');
    $category.hide();
    var $toggleBtn = $('#showMore a');
    $toggleBtn.toggle(function(){
        $category.show();
        $(this).find('span').removeClass('hide').addClass('show').text('精简显示品牌');
    },function(){
        $category.hide();
        $(this).find('span').removeClass('show').addClass('hide').text('显示全部品牌');
    });
});