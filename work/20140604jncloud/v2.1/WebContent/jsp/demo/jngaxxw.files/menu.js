



var h;
var w;
var l;
var t;
var topMar = -1;
var leftMar = -3;
var space = 2;
var isvisible;

var global = window.document
global.fo_currentMenu = null
global.fo_shadows = new Array

function HideMenu() {
    var mX;
    var mY;
    var vDiv;
    var mDiv;
    if (isvisible == true) {
        vDiv = document.all("menuDiv");
        mX = window.event.clientX + document.body.scrollLeft;
        mY = window.event.clientY + document.body.scrollTop;
        if ((mX < parseInt(vDiv.style.left)) || (mX > parseInt(vDiv.style.left) + vDiv.offsetWidth) || (mY < parseInt(vDiv.style.top) - h) || (mY > parseInt(vDiv.style.top) + vDiv.offsetHeight)) {
            vDiv.style.visibility = "hidden";
            isvisible = false;
        }
    }
}

function ShowMenu(vMnuCode, tWidth) {
    vSrc = window.event.srcElement;
    vMnuCode = "<table id='submenu' cellspacing=0 cellpadding=0 style='width:" + tWidth + "' class=a2 onmouseout='HideMenu()'><tr height=23><td nowrap align=left class=a1>" + vMnuCode + "</td></tr></table>";
    //alert(tWidth);
    h = vSrc.offsetHeight;
    w = vSrc.offsetWidth;
    l = vSrc.offsetLeft + leftMar + 4 ;
    t = vSrc.offsetTop + topMar + h + space - 2;
    vParent = vSrc.offsetParent;
    while (vParent.tagName.toUpperCase() != "BODY") {
        l += vParent.offsetLeft;
        t += vParent.offsetTop;
        vParent = vParent.offsetParent;
    }

    menuDiv.innerHTML = vMnuCode;
    menuDiv.style.top = t;
    menuDiv.style.left = l;
    menuDiv.style.visibility = "visible";
    isvisible = true;

}




function ShowMenu1(vMnuCode, tWidth) {
    vSrc = window.event.srcElement;
    vMnuCode = "<table id='submenu1' cellspacing=0 cellpadding=0 style='width:" + tWidth + "' class=a2 onmouseout='HideMenu()'><tr height=23><td nowrap align=left class=a1>" + vMnuCode + "</td></tr></table>";
    //alert(tWidth);
    h = vSrc.offsetHeight;
    w = vSrc.offsetWidth;
    l = vSrc.offsetLeft + leftMar + 4;
    t = vSrc.offsetTop + topMar + h + space - 2-7;
    vParent = vSrc.offsetParent;
    while (vParent.tagName.toUpperCase() != "BODY") {
        l += vParent.offsetLeft;
        t += vParent.offsetTop;
        vParent = vParent.offsetParent;
    }

    menuDiv.innerHTML = vMnuCode;
    menuDiv.style.top = t;
    menuDiv.style.left = l;
    menuDiv.style.visibility = "visible";
    isvisible = true;

}




function ShowMenu2(vMnuCode, tWidth) {
    vSrc = window.event.srcElement;
    vMnuCode = "<table id='submenu' cellspacing=0 cellpadding=0 style='width:" + tWidth + "' class=a2 onmouseout='HideMenu()'><tr height=23><td nowrap align=left class=a1>" + vMnuCode + "</td></tr></table>";
    //alert(tWidth);
    h = vSrc.offsetHeight;
    w = vSrc.offsetWidth
    l = vSrc.offsetLeft + leftMar + 4-600;
    t = vSrc.offsetTop + topMar + h + space - 2 - 7;
    vParent = vSrc.offsetParent;
    while (vParent.tagName.toUpperCase() != "BODY") {
        l += vParent.offsetLeft;
        t += vParent.offsetTop;
        vParent = vParent.offsetParent;
    }

    menuDiv.innerHTML = vMnuCode;
    menuDiv.style.top = t;
    menuDiv.style.left = l;
    menuDiv.style.visibility = "visible";
    isvisible = true;

}




function ShowMenu3(vMnuCode, tWidth) {
    vSrc = window.event.srcElement;
    vMnuCode = "<table id='submenu' cellspacing=0 cellpadding=0 style='width:" + tWidth + "' class=a2 onmouseout='HideMenu()'><tr height=23><td nowrap align=left class=a1>" + vMnuCode + "</td></tr></table>";
    //alert(tWidth);
    h = vSrc.offsetHeight;
    w = vSrc.offsetWidth;
    l = vSrc.offsetLeft + leftMar + 4;
    t = vSrc.offsetTop + topMar + h + space - 2-7;
    vParent = vSrc.offsetParent;
    while (vParent.tagName.toUpperCase() != "BODY") {
        l += vParent.offsetLeft;
        t += vParent.offsetTop;
        vParent = vParent.offsetParent;
    }

    menuDiv.innerHTML = vMnuCode;
    menuDiv.style.top = t;
    menuDiv.style.left = l;
    menuDiv.style.visibility = "visible";
    isvisible = true;

}




var quanguo = '<table cellspacing="1" cellpadding="0" bgcolor="#e8e6e1" border="0">';

quanguo += '<tr><td height="30" bgcolor="#ffffff"><a class=menu href="http://www.ga" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;公安部&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td><td bgcolor="#ffffff" height="30"><a class=menu href="http://www.bj" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;北京&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td></tr>';
quanguo += '<tr><td height="30" bgcolor="#ffffff"><a class=menu href="http://www.tj" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;天津&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td><td bgcolor="#ffffff" height="30"><a class=menu href="http://www.eb/index.htm" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;河北&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td></tr>';
quanguo += '<tr><td  height="30" bgcolor="#ffffff"><a class=menu href="http://www.sx" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;山西&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td><td bgcolor="#ffffff" height="30"><a class=menu href="http://www.nm" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;内蒙古&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td></tr>';
quanguo += '<tr><td height="30" bgcolor="#ffffff"><a class=menu href="http://www.ln" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;辽宁&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td><td bgcolor="#ffffff" height="30"> <a class=menu href="http://www.jl" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;吉林&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td></tr>';
quanguo += '<tr><td height="30" bgcolor="#ffffff"><a class=menu href="http://www.hl" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;黑龙江&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td><td bgcolor="#ffffff" height="30"><a class=menu href="http://www.sh" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;上海&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a> </td></tr>';
quanguo += '<tr><td height="30" bgcolor="#ffffff"><a class=menu href="http://www.ah" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;安徽&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td><td bgcolor="#ffffff" height="30"><a class=menu href="http://www.zj" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;浙江&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td></tr>';
quanguo += '<tr><td height="30" bgcolor="#ffffff"><a class=menu href="http://www.jx:2222" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;江西&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td><td bgcolor="#ffffff" height="30"><a class=menu href="http://www.fj" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;福建&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td></tr>';
quanguo += '<tr><td height="30" bgcolor="#ffffff"><a class=menu href="http://www.en" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;河南&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td><td bgcolor="#ffffff" height="30"> <a class=menu href="http://www.sd" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;山东&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td></tr>';
quanguo += '<tr><td height="30" bgcolor="#ffffff"><a class=menu href="http://www.hn" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;湖南&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td><td bgcolor="#ffffff" height="30">   <a class=menu href="http://www.hb" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;湖北&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td></tr>';
quanguo += '<tr><td height="30" bgcolor="#ffffff"><a class=menu href="http://www.gx" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;广西&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td><td bgcolor="#ffffff" height="30"><a class=menu href="http://www.gd" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;广东&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td></tr>';
quanguo += '<tr><td height="30" bgcolor="#ffffff"><a class=menu href="http://www.zx.cq" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;重庆&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td><td bgcolor="#ffffff" height="30"> <a class=menu href="http://www.an" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;海南&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td></tr>';
quanguo += '<tr><td height="30" bgcolor="#ffffff"><a class=menu href="http://www.gz" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;贵州&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td><td bgcolor="#ffffff" height="30"> <a class=menu href="http://www.sc" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;四川&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td></tr>';
quanguo += '<tr><td height="30" bgcolor="#ffffff"><a class=menu href="http://www.xz" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;西藏&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td><td bgcolor="#ffffff" height="30"><a class=menu href="http://www.yn" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;云南&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td></tr>';
quanguo += '<tr><td height="30" bgcolor="#ffffff"><a class=menu href="http://www.gs" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;甘肃&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a> </td><td bgcolor="#ffffff" height="30"><a class=menu href="http://www.sn" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;陕西&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td></tr>';
quanguo += '<tr><td height="30" bgcolor="#ffffff"><a class=menu href="http://www.nx" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;宁夏&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td><td bgcolor="#ffffff" height="30"><a class=menu href="http://www.qh" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;青海&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td></tr>';
quanguo += '<tr><td height="30" bgcolor="#ffffff"><a class=menu href="http://www.js" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;江苏&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td><td bgcolor="#ffffff" height="30"><a class=menu href="http://www.xj" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;新疆&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td></tr>';
quanguo += '<tr><td height="30" bgcolor="#ffffff"><a class=menu href="http://www.bt" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;建设兵团</a></td><td bgcolor="#ffffff"><a class=menu href="#"></a></td></tr>';
quanguo += '</table>';


var quansheng = '<table cellspacing="1" cellpadding="0" bgcolor="#e8e6e1" border="0">';

quansheng += '<tr><td height="30" bgcolor="#ffffff"><a class=menu href="http://www.sd" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;省公安厅&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td><td bgcolor="#ffffff" height="30"><a class=menu href="http://10.49.129.9/" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;青岛市局&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td></tr>';
quansheng += '<tr><td height="30" bgcolor="#ffffff"><a class=menu href="http://www.yts.sd" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;烟台市局&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td><td bgcolor="#ffffff" height="30"><a class=menu href="http://www.zbs.sd" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;淄博市局&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td></tr>';
quansheng += '<tr><td height="30" bgcolor="#ffffff"> <a class=menu href="http://www.wfs.sd" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;潍坊市局&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td><td bgcolor="#ffffff" height="30"><a class=menu href="http://www.bzs.sd" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;滨州市局&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td></tr>';
quansheng += '<tr><td height="30" bgcolor="#ffffff"><a class=menu href="http://www.dys.sd" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;东营市局&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td><td bgcolor="#ffffff" height="30"><a class=menu href="http://www.whs.sd" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;威海市局&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td></tr>';
quansheng += '<tr><td height="30" bgcolor="#ffffff"> <a class=menu href="http://10.53.1.9/" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;泰安市局&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td><td bgcolor="#ffffff" height="30"><a class=menu href="http://10.51.6.214/" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;济宁市局&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td></tr>';
quansheng += '<tr><td height="30" bgcolor="#ffffff"><a class=menu href="http://www.hzs.sd" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;菏泽市局&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td><td bgcolor="#ffffff" height="30"><a class=menu href="http://10.55.122.227/index.html" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;聊城市局&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td></tr>';
quansheng += '<tr><td height="30" bgcolor="#ffffff"><a class=menu href="http://10.54.49.9/" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;德州市局&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td><td bgcolor="#ffffff" height="30"><a class=menu href="http://www.zzs.sd" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;枣庄市局&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td></tr>';
quansheng += '<tr><td height="30" bgcolor="#ffffff"><a class=menu href="http://www.lys.sd" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;临沂市局&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td><td bgcolor="#ffffff" height="30"><a class=menu href="http://www.lws.sd" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;莱芜市局&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td></tr>';
quansheng += '<tr><td height="30" bgcolor="#ffffff"><a class=menu href="http://www.rzs.sd" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;日照市局&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td><td bgcolor="#ffffff" height="30"><a class=menu href="http://10.55.218.20" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;滨海公安局&nbsp;&nbsp;&nbsp;&nbsp;</a></td></tr>';
quansheng += '<tr><td height="30" bgcolor="#ffffff"><a class=menu href="http://10.48.160.9" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;银山公安局&nbsp;&nbsp;&nbsp;&nbsp;</a></td><td bgcolor="#ffffff" height="30"><a class=menu href="http://10.48.176.9" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;齐都公安局&nbsp;&nbsp;&nbsp;&nbsp;</a></td></tr>';
quansheng += '<tr><td height="30" bgcolor="#ffffff"><a class=menu href="http://10.3.160.9/" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;济南铁路公安局</a></td><td bgcolor="#ffffff"><a class=menu href="#"></a></td></tr>';

quansheng += '</table>';



var juzhi = '<table cellspacing="1" cellpadding="0" bgcolor="#e8e6e1" border="0">';
juzhi += '<tr><td height="30" bgcolor="#ffffff"><a class=menu href="http://10.49.7.70" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;指挥部&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td><td bgcolor="#ffffff" height="30"> <a class=menu href="http://10.49.9.213:8088/" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;政治部&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td></tr>';

juzhi += '<tr><td height="30" bgcolor="#ffffff"><a class=menu href="http://10.49.9.216/"  target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;干部人事处&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td><td bgcolor="#ffffff" height="30"><a class=menu href="http://10.49.9.194"  target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;教育训练处&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td></tr>';

juzhi += '<tr><td height="30" bgcolor="#ffffff"><a class=menu href="http://10.49.9.213:8093/"  target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;组织处&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td><td bgcolor="#ffffff" height="30"><a class=menu href="http://10.49.9.213:8081/"  target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;离退休干部工作处&nbsp;&nbsp;&nbsp;&nbsp;</a></td></tr>';

juzhi += '<tr><td height="30" bgcolor="#ffffff"><a class=menu href="http://10.49.9.217/gaj_jw/main/index.jsp"  target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;纪委&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a> </td><td bgcolor="#ffffff" height="30"><a class=menu href="http://10.49.77.4/"  target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;审计处&nbsp;&nbsp;&nbsp;&nbsp;</a></td></tr>';

juzhi += '<tr><td height="30" bgcolor="#ffffff"><a class=menu href="http://10.49.9.212"  target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;警务督察支队&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td><td bgcolor="#ffffff" height="30"><a class=menu href="http://10.49.6.48:9003/"  target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;宣传处&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td></tr>';

juzhi += '<tr><td height="30" bgcolor="#ffffff"><a class=menu href="http://10.49.7.191/"  target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;装备财务处&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td><td bgcolor="#ffffff" height="30"> <a class=menu href="http://10.49.9.215/site/"  target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;法制支队&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td></tr>';

juzhi += '<tr><td height="30" bgcolor="#ffffff"><a class=menu href="http://10.49.7.39/"  target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;信访处&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td><td bgcolor="#ffffff" height="30"><a class=menu href="http://10.49.6.51/"  target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;科技信息化处&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td></tr>';

juzhi += '<tr><td height="30" bgcolor="#ffffff"><a class=menu href="http://10.49.8.66/"  target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;户政处&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td><td bgcolor="#ffffff" height="30"> <a class=menu href="http://10.49.72.9/"  target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;出入境管理局&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td></tr>';

juzhi += '<tr><td height="30" bgcolor="#ffffff"><a class=menu href="http://10.49.7.59/"  target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;网络警察支队&nbsp;&nbsp;</a></td><td bgcolor="#ffffff" height="30"> <a class=menu href="http://10.49.6.50/"  target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;警卫处&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td></tr>';
juzhi += '<tr><td height="30" bgcolor="#ffffff"><a class=menu href="http://10.49.9.213:8083"  target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;工会&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td><td bgcolor="#ffffff" height="30"> <a class=menu href="http://10.49.9.213:8091"  target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;妇委会&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td></tr>';
juzhi += '<tr><td height="30" bgcolor="#ffffff"><a class=menu href="http://10.49.9.213:8095/"  target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;团委&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td><td bgcolor="#ffffff" height="30"><a class=menu href="http:///"  target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;国内安全保卫支队</a></td></tr>';
juzhi += '<tr><td height="30" bgcolor="#ffffff"><a class=menu href="http:///"  target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;反邪教侦察支队&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td><td bgcolor="#ffffff" height="30"> <a class=menu href="http://10.49.71.8:8080/"  target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;经济犯罪侦查支队&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td></tr>';
juzhi += '<tr><td height="30" bgcolor="#ffffff"><a class=menu href="http://10.49.6.43/"  target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;治安警察支队&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td><td bgcolor="#ffffff" height="30"><a class=menu href="http://10.49.7.190/"  target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;经文保支队&nbsp;&nbsp;</a></td></tr>';
juzhi += '<tr><td height="30" bgcolor="#ffffff"><a class=menu href="http://10.49.6.176:8090"  target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;食药环侦支队&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td><td bgcolor="#ffffff" height="30"><a class=menu href="http://10.49.6.111/"  target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;保安管理支队&nbsp;&nbsp;&nbsp;&nbsp;</a></td></tr>';
juzhi += '<tr><td height="30" bgcolor="#ffffff"><a class=menu href="http://10.49.6.39/"  target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;刑事警察支队&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td><td bgcolor="#ffffff" height="30"><a class=menu href="http://10.49.19.192:99/"  target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;反恐怖支队&nbsp;&nbsp;</a></td></tr>';

juzhi += '<tr><td height="30" bgcolor="#ffffff"><a class=menu href="http://10.49.36.253/"  target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;禁毒支队&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td><td bgcolor="#ffffff" height="30"><a class=menu href="http://10.49.62.11/"  target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;监所管理支队&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td></tr>';
juzhi += '<tr><td height="30" bgcolor="#ffffff"><a class=menu href="http://10.231.10.9/"  target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;交通警察支队&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td><td bgcolor="#ffffff" height="30"><a class=menu href="http://10.49.40.9"  target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;特警支队&nbsp;&nbsp;&nbsp;&nbsp;</a></td></tr>';
juzhi += '<tr><td height="30" bgcolor="#ffffff"><a class=menu href="http://10.49.56.186:82/"  target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;直属支队&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td><td bgcolor="#ffffff" height="30"><a class=menu href="http://10.49.36.140/"  target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;巡警支队&nbsp;&nbsp;&nbsp;&nbsp;</a></td></tr>';
juzhi += '<tr><td height="30" bgcolor="#ffffff"><a class=menu href="http://10.49.19.214/"  target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;铁建支队&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td><td bgcolor="#ffffff" height="30"><a class=menu href="http://10.231.17.9/"  target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;车辆管理所 &nbsp;&nbsp;&nbsp;&nbsp;</a></td></tr>';
juzhi += '<tr><td height="30" bgcolor="#ffffff"><a class=menu href="http://10.49.64.96/"  target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;公交分局&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td><td bgcolor="#ffffff" height="30"><a class=menu href="http://10.49.58.9:90/jn119/index.php"  target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;消防分局&nbsp;&nbsp;&nbsp;&nbsp;</a></td></tr>';
juzhi += '<tr><td height="30" bgcolor="#ffffff"><a class=menu href="http://10.49.9.9/"  target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;情报信息支队&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td><td height="30" bgcolor="#ffffff"><a class=menu href="http://10.49.63.2/web"  target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;警察培训学院&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td></tr>';

juzhi += '<tr><td bgcolor="#ffffff" height="30"><a class=menu href="http://10.231.21.17:8015/index/index.aspx/"  target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;高速交警支队&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td></tr>';





var gefenshi = '<table cellspacing="1" cellpadding="0" bgcolor="#e8e6e1" border="0">';

gefenshi += '<tr><td height="30" bgcolor="#ffffff"><a class=menu href="http://10.49.20.100/" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;历下分局&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td></tr><tr><td bgcolor="#ffffff" height="30"> <a class=menu href="http://10.49.33.15/" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;市中分局&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td></tr>';
gefenshi += '<tr><td height="30" bgcolor="#ffffff"><a class=menu href="http://10.49.43.8/" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;槐荫分局&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td></tr><tr><td bgcolor="#ffffff" height="30"><a class=menu href="http://10.49.80.199/" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;天桥分局&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td></tr>';
gefenshi += '<tr><td height="30" bgcolor="#ffffff"><a class=menu href="http://10.49.94.213/" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;历城分局&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td></tr><tr><td bgcolor="#ffffff" height="30"> <a class=menu href="http://10.49.108.191/" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;长清分局 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td></tr>';
gefenshi += '<tr><td height="30" bgcolor="#ffffff"><a class=menu href="http://10.49.102.26/" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;章丘市局&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td></tr><tr><td bgcolor="#ffffff" height="30"> <a class=menu href="http://10.49.105.10/" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;平阴县局&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td></tr>';
gefenshi+='<tr><td bgcolor="#ffffff" height="30"> <a class=menu href="http://10.49.96.66/" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;济阳县局&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td></tr>';
gefenshi += '<tr><td bgcolor="#ffffff" height="30"> <a class=menu href="http://10.49.100.1/" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;商河县局&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td></tr>';
gefenshi += '<tr><td height="30" bgcolor="#ffffff"><a class=menu href="http://10.49.59.5/" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;高新分局&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td></tr><tr><td bgcolor="#ffffff" height="30"> <a class=menu href="http://10.49.85.8/" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;鲍山分局&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td></tr>';




var xiala = '<table cellspacing="1" cellpadding="0" bgcolor="#e8e6e1" border="0">';
xiala += '<tr ><td bgcolor="#1879D6" height="30" width="100" align="center" class=navx><a  href ="http://www.xtc.qds.sd/page/default.asp?pageid=75" target="_blank"; ><b>信息服务</b></a></td><td bgcolor="#1879D6" height="30" width="100" align="center" class=navx><a  href ="http://www.qds.sd:1006/virus/1229/trend.htm" target="_blank"; ><b>病毒防护安装</b></a></td><td bgcolor="#1879D6" height="30" width="100" align="center"  class=navx><a  href ="http://yjly.qds.sd/zhuce.htm" target="_blank";><b>一机两用</b></a></td>'
xiala += '<td bgcolor="#1879D6" height="30" width="100" align="center" class=navx ><a href ="http://yjly.qds.sd/patchweb/MainIndex.asp" target="_blank";><b>补丁更新</b></a></td><td bgcolor="#1879D6" height="30" width="100" align="center" class=navx><a  href ="http://www.xt.qds.sd/Television/ListTelevision.asp" target="_blank"; ><b>电视电话会议</b></a></td><td bgcolor="#1879D6" height="30" width="100" align="center" class=navx><a  href ="http://www.qds.sd:1000/pki/pki.htm" target="_blank"; ><b>PKI/PMI系统</b></a></td>';
xiala += '</tr></table>';


var fuwu = '<table cellspacing="1" cellpadding="0" bgcolor="#e8e6e1" border="0">';
fuwu += '<tr><td bgcolor="#1879D6" height="30" width="100" align="center" class=navx><a  href ="http://ssyq.zx.ga/keysearch.trs" target="_blank" ><b>搜索引擎</b></a></td><td bgcolor="#1879D6" height="30" width="100" align="center" class=navx > <a href ="http://mail.qds.sd/exchweb/bin/auth/owalogon.asp?url=http://mail.qds.sd/exchange&reason=0" target="_blank";  ><b>电子邮局</b></a></td><td bgcolor="#1879D6" height="30" width="100" align="center" class=navx><a  href ="http://www.qds.sd:1000/service/tel/tel.htm" target="_blank"; ><b>常用电话</b></a></td><td bgcolor="#1879D6" height="30" width="100" align="center" class=navx ><a  href ="http://10.231.24.3/map/" target="_blank";><b>电子地图</b></a></td>'
fuwu += '<td bgcolor="#1879D6" height="30" width="100" align="center" class=navx ><a href ="http://10.67.1.199/jiwei/zipadd/" target="_blank"; ><b>邮政编码</b></a></td>';
fuwu += '<td bgcolor="#1879D6" height="30" width="100" align="center"  class=navx ><a href ="http://10.49.144.89/hzxx/xzqh/searchxzqh.asp" target="_blank"; ><b>全国行政区划</b></a></td><td bgcolor="#1879D6" height="30" width="100" align="center" class=navx ><a href ="http://www.qds.sd:1000/service/wnl/wnl.htm" target="_blank"; ><b>万年历</b></a></td>';
fuwu += '<td bgcolor="#1879D6" height="30" width="100" align="center"  class=navx ><a  href ="http://www.qds.sd:1000/service/cindex.htm" target="_blank";><b>旅游景点</b></a></td>';

fuwu += '</tr></table>';


var jiankang = '<table cellspacing="1" cellpadding="0" bgcolor="#e8e6e1" border="0">';
//jiankang += '<tr ><td bgcolor="#1879D6" height="30" width="100" align="center" class=navx><a  href ="http://www.xtc.qds.sd/page/default.asp?pageid=75" target="_blank"; ><b>信息服务</b></a></td><td bgcolor="#1879D6" height="30" width="100" align="center" class=navx><a  href ="http://www.qds.sd:1006/virus/1229/trend.htm" target="_blank"; ><b>病毒防护安装</b></a></td><td bgcolor="#1879D6" height="30" width="100" align="center"  class=navx><a  href ="http://yjly.qds.sd/zhuce.htm" target="_blank";><b>一机两用</b></a></td>'
jiankang += '<td bgcolor="#1879D6" height="30" width="100" align="center" class=navx ><a href ="http://www.mjjk.qds.sd" target="_blank";><b>民警健康网</b></a></td><td bgcolor="#1879D6" height="30" width="100" align="center" class=navx><a  href ="http://www.qds.sd/xljk/index.asp" target="_blank"; ><b>心理驿站</b></a></td>';
jiankang += '</tr></table>';








































