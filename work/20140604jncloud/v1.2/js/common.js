
//验证输入关键词是否为空
function validateQ() {

    var q = $("#q").val();
    q = q.replace(/^ +/, '');
    q = q.replace(/ +$/, '');
    if (q == '') {


        location.href = 'imageSearch.html';

        return false;
    }
    else {
        return true;
    }
}

function advsearchChoose() {

//添加图片高级检索页面
    location.href = 'imageAdvsearch.html';

}

function channelChoose() {


//添加图片高级检索页面
    location.href = 'imageAdvsearch.html';

}
function encodeURL(s) {
    var img = document.createElement("img");
    // escapeDBC 对多字节字符编码的函数
    function escapeDBC(s) {
        if (!s) return ""
        if (window.ActiveXObject) {
            // 如果是 ie, 使用 vbscript
            execScript('SetLocale "zh-cn"', 'vbscript');
            return s.replace(/[\d\D]/g, function ($0) {
                window.vbsval = "";
                execScript('window.vbsval=Hex(Asc("' + $0 + '"))', "vbscript");
                return "%" + window.vbsval.slice(0, 2) + "%" + window.vbsval.slice(-2);
            });
        }
        // 其它浏览器利用浏览器对请求地址自动编码的特性
        img.src = "nothing.action?separator=" + s;
        return img.src.split("?separator=").pop();
    }

    // 把 多字节字符 与 单字节字符 分开，分别使用 escapeDBC 和 encodeURIComponent 进行编码
    return s.replace(/([^\x00-\xff]+)|([\x00-\xff]+)/g, function ($0, $1, $2) {
        return escapeDBC($1) + encodeURIComponent($2 || '');
    });
}

function setHeadUrl(b) {
    var d = $("#q").val();
    var c = $("input[name='model']").val();
    var a = b.href;
    if (a.indexOf(c, 0) > 0 || d == '') {
        if (a.indexOf("keySearch.trs", 0) > 0) {
            a = a.replace(new RegExp("keySearch\.trs.*"), "");
        } else {
            a = a.replace(new RegExp("\.trs.*"), "\.html");
        }
    } else {
        d = encodeURL(d);
        a = a.replace(new RegExp("(filter_keyWord=)[^&]*"),
            "filter_keyWord=" + d);
    }
    b.href = a;
}
function setMapUrl(b) {
    var d = $("#q").val();
    var a = b.href;
    if (d != '') {
        a = a.replace(new RegExp("\.html.*"),
            "\.trs?keyWord=" + d);
    } else {
    }
    b.href = a;
}
function setTable(num) {

    var table = $("#table");

    table.val(num);
    var q = $("#q");

    if (null != q.val() && "" != q.val()) {

        $("#searchForm").submit();
    }
    else {
        $("input[name=model]").val("dicSearch");
        $("input[name=trs_dispatch]").val(7);
        $("#pageroffset").val(0);
        // alert($("input[name=trs_dispatch]").val());
        $("#searchForm").submit();

    }
}

function jumpToQa() {
    var keyword = "郭声琨";
    keyword = encodeURIComponent(keyword);
    window.location.href = "http://wenda.ssyq.zx.ga/ekp/new/km/discuss/search.jsp?SiteId=8&SearchWord=" + keyword;
}
/*跳转问答*/
function paramsWord() {
    var keyword = "郭声琨";
    keyword = encodeURIComponent(keyword);
    window.location.href = "http://wenda.ssyq.zx.ga/ekp/new/km/discuss/search.jsp?SiteId=8&SearchWord=" + keyword;
}
function pg(_offset){
    document.forms[0].pageroffset.value=_offset;
    document.forms[0].trslc.disabled=false;
    document.forms[0].keepBox.value='true';
    document.forms[0].queryFrom.value='page';
    document.forms[0].submit();
}

function jumpToPage(itemCount){
    var obj=document.getElementById('jumpToPage');
    if(obj===null){
        return;
    }
    if(obj.value==""||obj.value<1){
        alert("对不起，系统不接收空页码或页码值小于1！");
        return;
    }
    var _offset=obj.value;

    if(_offset>itemCount){
        alert("您输入的页码超出最大范围，系统将显示末尾页!");
        pg(--itemCount*10);
        return;
    }
    pg(--_offset*10);
}
function sort(sort_value){
    document.forms[0].sort.value=sort_value;
    document.forms[0].second.value='true';
    document.forms[0].keepBox.value='true';
    document.forms[0].submit();
}

function ora_pg(_offset){
    document.forms[0].pageroffset.value=_offset;
    //document.forms[0].trslc.disabled=false;
    document.forms[0].submit();
}
function detail(_id,_oracle,_dbtype){
    //alert("检索记录的id"+_id+"检索的数据库"+_oracle+"数据库的dbtype"+_dbtype);
    document.DetailForm.oracle.value=_oracle;
    document.DetailForm.id.value=_id;
    document.DetailForm.dbtype.value=_dbtype
    document.DetailForm.submit();
}

function openwin(url) {
    window.open (url, 'popwin', 'scrollbars=yes,resizable=yes,toolsbar=yes,width=650,height=200,top=50,left=50')
}
function goSearch(temp){

    //setSelectDate();
    return true;
}
function setKeySearch(searchword,form){
    document.doSearch.filter_keyWord.value=searchword;
    document.doSearch.submit();
}
function newsCategorySearch(searchword){
    document.doSearch.category.value=searchword;
    document.doSearch.filter_keyWord.value="";
    document.doSearch.submit();
}



function submit1(sAreasId,sAreasName)
{
    var objId   = window.opener.document.getElementById(sAreasId);
    var objName = window.opener.document.getElementById(sAreasName);
    var objTreeIds=window.opener.document.getElementById("tree_ids");
    //if ( objId!=null && objName!=null )
    {
        objId.value   = getCodes();
        objName.value = getNames();
        objTreeIds.value = getTreeIds();
        //alert(objTreeIds.value)
        //alert(objName.value)
        window.close();
    }
}
function getCodes(){
    var codes = "";
    var values = "";
    //alert(document.TransientForm.elements.length);
    for (i = 0; i < document.TransientForm.elements.length-1; i++){
        if ((document.TransientForm.elements[i].name == 'category') && document.TransientForm.elements[i].checked){
            values = document.TransientForm.elements[i].value;
            values = values.substring(0,values.indexOf(';'));
            if (codes==""){
                codes = values;
            }else{
                codes = codes + ";"+ values;
            }
        }
    }
    return codes;
}
function getNames(){
    var names = "";
    var values = "";
    for (i = 0; i < document.TransientForm.elements.length-1; i++){
        if ((document.TransientForm.elements[i].name == 'category') && document.TransientForm.elements[i].checked){
            values = document.TransientForm.elements[i].value;
            //values = values.substring(values.indexOf(';')+1,values.length);
            values = values.substring(values.indexOf(';')+1,values.lastIndexOf(";"));
            if (names==""){
                names = values;
            }else{
                names = names + ";"+ values;
            }
        }
    }
    return names;
}
function getTreeIds(){
    var names = "";
    var values = "";
    for (i = 0; i < document.TransientForm.elements.length-1; i++){
        if ((document.TransientForm.elements[i].name == 'category') && document.TransientForm.elements[i].checked){
            values = document.TransientForm.elements[i].value;
            values = values.substring(values.lastIndexOf(';')+1,values.length);
            if (names==""){
                names = values;
            }else{
                names = names + ";"+ values;
            }
        }
    }
    return names;
}

//??????
function showTime()
{
    var tNow = new Date();
    var nValue;
    var sValue;

    nValue = tNow.getHours();
    sValue = (nValue<10?"0"+nValue:nValue);

    nValue = tNow.getMinutes();
    sValue += ":"+(nValue<10?"0"+nValue:nValue);

    nValue = tNow.getSeconds();
    sValue += ":"+(nValue<10?"0"+nValue:nValue);

    id_spanTime.innerText = sValue;
}
function getCookieVal(offset)
{
    var endStr=document.cookie.indexOf(";",offset);
    if(endStr==-1)
        endStr=document.cookie.length;
    return unescape(document.cookie.substring(offset,endStr));
}
function getCookie(name)
{
    var arg=name+"=";
    var alen=arg.length;
    var clen=document.cookie.length;
    var i=0;
    while(i<clen)
    {
        var j=i+alen;
        if(document.cookie.substring(i,j)==arg)
            return getCookieVal(j);
        i=document.cookie.indexOf(" ",i)+1;
        if(i==0) break;
    }
    return null;
}
function TRS_disp_hidden(obj)
{
    var targetText = document.getElementById("searchDiv");
    var targetDiv = document.getElementById("hot_word");
    var targetSimple=document.getElementById("simple_hot_word");

    if("object"==typeof(targetText))
    {
        if(targetDiv.style.display!='block')
        {
            targetDiv.style.display='block';
            targetSimple.style.display='none';
            targetText.innerText="恢复";
            document.cookie="search=1;expires=exp.getTime()+(3600*60*60*1000);";
        }
        else
        {
            targetDiv.style.display='none';
            targetSimple.style.display='block';
            targetText.innerText="更多";
            document.cookie="search=0;expires=exp.getTime()+(3600*60*60*1000);";
        }
    }

}

function submitViaEnter(evt) {
    evt = (evt) ? evt : event;
    var target = (evt.target) ? evt.target : evt.srcElement;
    var form = target.form;
    var charCode = (evt.charCode) ? evt.charCode :
        ((evt.which) ? evt.which : evt.keyCode);
    if (charCode == 13 || charCode == 3) {
        //if (validateForm(form)) 
        {
            var qElement = document.getElementById("q");
            var q = "";
            if(qElement){
                q = qElement.value;
            }
            if(q!=''){
                form.submit( );
            }
            return false;
        }
    }
    return true;
}
function testURL(url){
    if(url==null||url==""){
        alert('链接地址为空');
        return;
    }
    if(url.indexOf('http://')!=0)
        url='http://'+url;

    window.open(url,'','location=No,scrollbars=Yes,resizable=Yes,width=700,height=700');
}

function visit(model,urlid){
    alert('model='+model+'&urlid='+urlid);
}

function sorttype(sort_value){
    document.forms[0].pageroffset.value='0';
    document.forms[0].sorttype.value=sort_value;
    document.forms[0].second.value='false';
    document.forms[0].keepBox.value='true';
    document.forms[0].submit();
}

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
