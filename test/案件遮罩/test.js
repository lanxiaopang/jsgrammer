$(function(){
    /*var $firstHorn = $(".first-horn"), *//* 场景一左边喇叭 *//*
        $firstTxt = $(".first-txt"), *//* 场景一文字div *//*
        firstTxtWidth = $firstTxt.width(); *//* 文字div的宽度 *//*
    *//* 场景一 *//*
    $firstHorn.animate({left: 0},1000);
    $firstTxt.animate({left: "435px"},function(){
        $firstTxt.fadeIn(1000);
        showTxt($firstTxt.find("div:eq(0)")); *//* 显示第一行文字 *//*
        setTimeout(function(){showTxt($firstTxt.find("div:eq(1)"));},3000); *//* 显示第二行文字 *//*
        //setTimeout(scene2,7000); *//* 进入场景二 *//*
    });*/
    $(".content1").animate({left: '150px'},1000);
    setTimeout(function(){$(".content2").animate({left: '585px'},1000);;},1000);
    setTimeout(function(){$(".content3").animate({left: '35px'},1000);;},2000);
    setTimeout(function(){$(".content4").animate({left: '660px'},1000);;},3000);
    setTimeout(function(){$(".content5").animate({left: '35px'},1000);;},4000);
    setTimeout(function(){$(".content6").animate({left: '595px'},1000);;},5000);
})