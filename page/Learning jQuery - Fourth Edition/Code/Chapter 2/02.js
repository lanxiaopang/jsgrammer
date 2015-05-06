// This is the custom JavaScript file referenced by index.html. You will notice
// that this file is currently empty. By adding code to this empty file and
// then viewing index.html in a browser, you can experiment with the example
// page or follow along with the examples in the book.
//
// See README.txt for more information.
$(document).ready(function(){
    $("#selected-plays>li").addClass("horizontal");
    $("#selected-plays li:not(.horizontal)").addClass("sub-level");
    //另外一种写法获取父节点的非一级子节点
    // $("#selected-plays li").not("#selected-plays > li").addClass("sub-level");
    $("a[href^='mailto:']").addClass("mailto");
    $("a[href$='pdf']").addClass("pdflink");
    $("a[href^='http:'][href*='henry']").addClass("henrylink");
})