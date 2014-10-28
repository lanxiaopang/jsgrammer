$(function(){
    var $this 		= $('.button_b');
    var $slidelem;
    $slidelem = $this.prev();
    $slidelem.animate({'width':'225px'},1000);
    $slidelem.find('span').stop(true,true).fadeIn();


    /*var aaa = $('#button_b1');
    var bbb=aaa.prev();
    aaa.animate({width: '225px'},1000);
    bbb.find('span').stop(true,true).fadeIn();*/

    /*for(var i =1;i<=6;i++){
     alert(i+"iin");

     setTimeout(function(){
     var $this = $('#button_b'+i);
     var $slidelem=$this.prev();
     $this.animate({'width': '225px'},1000);
     $slidelem.find('span').stop(true,true).fadeIn();
     },i*1000);
     }*/
    /*$(".content1").animate({left: '150px'},1000);
     setTimeout(function(){$(".content2").animate({left: '585px'},1000);;},1000);
     setTimeout(function(){$(".content3").animate({left: '35px'},1000);;},2000);
     setTimeout(function(){$(".content4").animate({left: '660px'},1000);;},3000);
     setTimeout(function(){$(".content5").animate({left: '35px'},1000);;},4000);
     setTimeout(function(){$(".content6").animate({left: '595px'},1000);;},5000);
     */
     /*var $this 		= $('#button_b1');
     var $slidelem;
     for(var i = 0;i<$this.size();i++){
         $slidelem = $this.prev();
         $slidelem.animate({'width':'225px'},300);
         $slidelem.find('span').stop(true,true).fadeIn();
     }*/

});