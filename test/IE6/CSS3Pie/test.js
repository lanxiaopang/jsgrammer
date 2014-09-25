/*浏览器及版本判断*/
var Sys = {};
var ua = navigator.userAgent.toLowerCase();
var s;
(s = ua.match(/msie ([\d.]+)/)) ? Sys.ie = s[1] :
    (s = ua.match(/firefox\/([\d.]+)/)) ? Sys.firefox = s[1] :
        (s = ua.match(/chrome\/([\d.]+)/)) ? Sys.chrome = s[1] :
            (s = ua.match(/opera.([\d.]+)/)) ? Sys.opera = s[1] :
                (s = ua.match(/version\/([\d.]+).*safari/)) ? Sys.safari = s[1] : 0;


if(Sys.ie =='6.0'){
    document.write("<script type=\"text/javascript\" src=\"PIE_IE678.js\"><\/script>");
} else if(Sys.ie =='7.0'){
    document.write("<script type=\"text/javascript\" src=\"PIE_IE678.js\"><\/script>");
} else if(Sys.ie =='8.0'){
    document.write("<script type=\"text/javascript\" src=\"PIE_IE678.js\"><\/script>");
} else if(Sys.ie =='9.0'){
    document.write("<script type=\"text/javascript\" src=\"PIE_IE9.js\"><\/script>");
} else{

}