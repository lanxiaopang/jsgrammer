// This is the custom JavaScript file referenced by index.html. You will notice
// that this file is currently empty. By adding code to this empty file and
// then viewing index.html in a browser, you can experiment with the example
// page or follow along with the examples in the book.
//
// See README.txt for more information.
$(document).ready(function(){
    /*$("#selected-plays>li").addClass("horizontal");
    $("#selected-plays li:not(.horizontal)").addClass("sub-level");
    //另外一种写法获取父节点的非一级子节点
    // $("#selected-plays li").not("#selected-plays > li").addClass("sub-level");
    $("a[href^='mailto:']").addClass("mailto");
    $("a[href$='pdf']").addClass("pdflink");
    $("a[href^='http:'][href*='henry']").addClass("henrylink");
    $("div:nth-child(1)").css("background-color","red");
    //取得的是第一个div的所有子div可以看下页面效果
    //$("tr:even").addClass("alt");
    $("tr:nth-child(odd)").addClass("alt");
    $('td:contains(Henry)') // Find every cell containing "Henry"
        .parent() // Select its parent
        .find('td:eq(1)') // Find the 2nd descendant cell
        .addClass('highlight') // Add the "highlight" class
        .end() // Return to the parent of the cell containing "Henry"
        .find('td:eq(2)') // Find the 3rd descendant cell
        .addClass('highlight'); // Add the "highlight" class*/


    $('#selected-plays > li').addClass('horizontal');
    console.log($('#selected-plays > li'));
    $('#selected-plays li:not(.horizontal)').addClass("sub-level");
})