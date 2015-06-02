function encodeURL(s) {
    var img = document.createElement("img");
    // escapeDBC 对多字节字符编码的函数
    function escapeDBC(s) {
        if (!s) return ""
        if (window.ActiveXObject) {
            // 如果是 ie, 使用 vbscript
            execScript('SetLocale "zh-cn"', 'vbscript');
            return s.replace(/[\d\D]/g, function($0) {
                window.vbsval = "";
                execScript('window.vbsval=Hex(Asc("' + $0 + '"))', "vbscript");
                return "%" + window.vbsval.slice(0,2) + "%" + window.vbsval.slice(-2);
            });
        }
        // 其它浏览器利用浏览器对请求地址自动编码的特性
        img.src = "nothing.action?separator=" + s;
        return img.src.split("?separator=").pop();
    }
    // 把 多字节字符 与 单字节字符 分开，分别使用 escapeDBC 和 encodeURIComponent 进行编码
    return s.replace(/([^\x00-\xff]+)|([\x00-\xff]+)/g, function($0, $1, $2) {
        return escapeDBC($1) + encodeURIComponent($2||'');
    });
}

/**
 * 显示选择地区div
 */
function showChannel(){
    $('#selectChannelDIV').dialog({
        title:"地区限定",
        buttons:[{
            text:'确定',
            iconCls:'icon-ok',
            handler:function(){
                channelSubmit();
            }
        },{
            text:'关闭',
            handler:function(){
                channelCancle();
            }
        }]
    });
}

function channelSubmit(){
    var temp = $("[name=selectchannel]");
    var channel = "";
    var preChannel = $("#channel").val();
    $.each(temp,function(i,n){
        if(n.checked){
            if(channel.length==0){
                channel = n.value;
            }else{
                channel += ","+n.value;
            }
        }
    });
    $("#channel").val(channel);
    $('#selectChannelDIV').dialog('close');
    var filter_keyWord =  $("#q").val();
    if(preChannel != channel){
        channel = encodeURL(channel);
        filter_keyWord = encodeURL(filter_keyWord);
        window.location.href="newsSearch.trs?channel="+channel+"&filter_keyWord="+filter_keyWord+"&queryFrom=newsarea";
    }
}

function channelCancle(){
    var temp = $("[name=selectchannel]");
    var channel = $("#channel").val();
    var channels = channel.split(",");
    var boolCheck = false;
    $.each(temp,function(i,n){
        $.each(channels,function(j,m){
            if(n.value == m){
                n.checked = "checked";
                boolCheck = true;
            }
        });
        if(!boolCheck){
            n.checked="";
        }
        boolCheck = false;
    });
    $('#selectChannelDIV').dialog('close');
}

function areafrom(){
    var channel = $("#channel").val();
    if(channel != ''){
        $("#queryFrom").val("newsarea");
    }
}

/**
 * 分类检索时，增加地区限定的参数
 * @param {Object} b
 */
function categorySearch(b){
    var d = $("#channel").val();
    var a = b.href;
    if(d != ''){
        d = encodeURL(d);
        a = a+"&channel="+d;
    }
    b.href = a;
}

/**
 * 地区限定时，增加分类参数
 * @param {Object} b
 */
function areaSearch(b){
    var d = $("#category").val();
    var a = b.href;
    if(d != ''){
        d = encodeURL(d);
        a = a+"&category="+d;
    }
    b.href = a;
}
