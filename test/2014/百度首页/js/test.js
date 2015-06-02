/*初始化加载*/
var pageNo = 1;
$(function () {
    $(document)
        .mousewheel(function (event, delta) {
            loghandle(event, delta);
        });

    var loghandle = function (event, delta) {
        var o = '', id = event.currentTarget.id || event.currentTarget.nodeName;

        o = '#' + id + ':';

        if (delta > 0){
            if(pageNo>1){
                pageNo--;
                $('#r_content_'+pageNo)
                    .css({position: 'relative'})
                    .fadeTo('slow', 0.1)
                    .fadeTo('slow', 1.0);
            }
        }
        else if (delta < 0){
            if(pageNo<4){
                pageNo++;
                $('#r_content_'+pageNo)
                    .css({position: 'relative'})
                    .fadeTo('slow', 0.1)
                    .fadeTo('slow', 1.0);
            }
        }

        switchTab('tab'+pageNo,'r_content_'+pageNo);

    };
})

/*tab页切换*/
function switchTab(ProTag, ProBox) {
    for (i = 1; i < 5; i++) {
        /*选中的样式*/
        if ("tab" + i == ProTag) {
            document.getElementById(ProTag).className = "current";
        } else {
            document.getElementById("tab" + i).className = "";
        }

        /*选项页变化*/
        if ("r_content_" + i == ProBox) {
            document.getElementById("r_content_" + i).style.display = "block";
            /*$('#r_content_'+pageNo)
                .css({position: 'relative'})
                .fadeTo('slow', 0.1)
                .fadeTo('slow', 1.0);*/
        } else {
            document.getElementById("r_content_" + i).style.display = "none";
        }
    }
}