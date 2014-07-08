$(function(){
    $("div[id^='_gzjl']").mouseenter(function(){
        var foo = $(this).find('a').css('background-image');
        var boo = foo.replace('_2','_1');
        $(this).find('a').css('background-image',boo);
        var bar = $(this).siblings("div[id^='_gzjl']");
        for(var i=0; i< bar.length;i++){
            var oldbar = $("#"+bar[i].id).find("a").css('background-image');
            var newbar = oldbar.replace('_1','_2');
            $("#"+bar[i].id).find("a").css('background-image',newbar);
        }
    });
    $("div[id^='_gzzs']").mouseenter(function(){
        var foo = $(this).find('a').css('background-image');
        var boo = foo.replace('_2','_1');
        $(this).find('a').css('background-image',boo);
        var bar = $(this).siblings("div[id^='_gzzs']");
        for(var i=0; i< bar.length;i++){
            var oldbar = $("#"+bar[i].id).find("a").css('background-image');
            var newbar = oldbar.replace('_1','_2');
            $("#"+bar[i].id).find("a").css('background-image',newbar);
        }
    });
    $("div[id^='_jctj']").mouseenter(function(){
        var foo = $(this).find('a').css('background-image');
        var boo = foo.replace('_2','_1');
        $(this).find('a').css('background-image',boo);
        var bar = $(this).siblings("div[id^='_jctj']");
        for(var i=0; i< bar.length;i++){
            var oldbar = $("#"+bar[i].id).find("a").css('background-image');
            var newbar = oldbar.replace('_1','_2');
            $("#"+bar[i].id).find("a").css('background-image',newbar);
        }
    });

})

function Show_Tabs(tab_Name,YKTabid_num, aaa) {
    for (var i = 0; i < 4; i++) {
        document.getElementById(tab_Name+"_" + YKTabid_num + i).style.display = "none";
    }
    document.getElementById(tab_Name+"_" + YKTabid_num + aaa).style.display = "block";
}
function Show_Tab(tab_Name,YKTabid_num, aaa) {
    for (var i = 1; i < 2; i++) {
        document.getElementById(tab_Name+"_" + YKTabid_num + i).style.display = "none";
    }
    document.getElementById(tab_Name+"_" + YKTabid_num + aaa).style.display = "block";
}