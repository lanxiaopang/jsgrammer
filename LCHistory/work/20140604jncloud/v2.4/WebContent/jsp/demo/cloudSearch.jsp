<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.inspur.pcs.web.data.GcqUserInfo"%>
 
<!DOCTYPE html>
<html>
<%
String contPath = request.getContextPath(); 
%>
<head>
    <meta http-equiv="content-type" content="text/html;charset=utf-8"> 
    <link href="<%=contPath%>/css/search.css" rel="stylesheet" />
    <link href="<%=contPath%>/css/style.css" rel="stylesheet" />
		<script type="text/javascript" src="<%=contPath%>/jsp/js/index.js"></script>
		<script type="text/javascript" src="<%=contPath%>/jsp/js/utils.js"></script>
		<script type="text/javascript" src="<%=contPath%>/jsp/js/jquery-1.4.2.min.js"></script>
		<script type="text/javascript" src="<%=contPath%>/jsp/js/jquery.easing.1.3.js"></script>
		<script type="text/javascript" src="<%=contPath%>/jsp/js/jquery.mousewheel.min.js"></script> 
		<script type="text/javascript" src="<%=contPath%>/jsp/js/ImageSwitch.js"></script>

<script type="text/javascript"> 
var contPath = '<%=contPath%>';
function searchInfo(){
	var query = document.getElementsByName('query')[0].value;
	window.open("/pcsII/search?query="+encodeURIComponent(query));
}
</script>
</head>

 
  <div id="search_con">
                <input name="query" id="query"  type="text" class="con_btn" />
                <div class='bd_box'>
                    <div class="in_box">
                        <a class="test" href="#"  onclick="searchInfo()" target="_self"><img id="slash" src="<%=contPath%>/images/search2.gif" /></a>
                    </div>
                </div>
                </form>
            </div> 

<script type="text/javascript">

var tflag = true;
$('.test').mouseenter(function(){
    if(tflag==true){
        $("#slash").ImageSwitch({
            Type:'ScrollIn',
            NewImage:contPath+"/images/search3.gif",
            Speed:200
        });
    }
    tflag = false;
}).mouseleave(function(){
    $("#slash").ImageSwitch({
        Type:'ScrollOut',
        NewImage:contPath+"/images/search2.gif",
        Speed:400
    });
    tflag = true;
})
</script>
</html>