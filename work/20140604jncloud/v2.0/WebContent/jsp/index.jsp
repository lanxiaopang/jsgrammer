<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.inspur.pcs.web.data.GcqUserInfo"%>
 
<!DOCTYPE html>
<html>
<%
String contPath = request.getContextPath();
GcqUserInfo gcqUserInfo = (GcqUserInfo)session.getAttribute("gcqUserInfo");
String sfzh = gcqUserInfo.getSfzh();
%>
<head>
    <meta http-equiv="content-type" content="text/html;charset=utf-8">
    <title>济南警务云搜索</title>
    <link href="<%=contPath%>/css/search.css" rel="stylesheet" />
    <link href="<%=contPath%>/css/style.css" rel="stylesheet" />
		<script type="text/javascript" src="<%=contPath%>/jsp/js/index.js"></script>
		<script type="text/javascript" src="<%=contPath%>/jsp/js/utils.js"></script>
		<script type="text/javascript" src="<%=contPath%>/jsp/js/jquery-1.4.2.min.js"></script>
		<script type="text/javascript" src="<%=contPath%>/jsp/js/jquery.easing.1.3.js"></script>
		<script type="text/javascript" src="<%=contPath%>/jsp/js/jquery.mousewheel.min.js"></script>
		<script type="text/javascript" src="<%=contPath%>/jsp/js/ImageSwitch.js"></script>
		<script type="text/javascript" src="<%=contPath%>/jsp/js/search.js"></script>

<script type="text/javascript">
var ifShowHis = false;
var sfzh = '<%=sfzh%>';
var contPath = '<%=contPath%>';

function searchInfo(){
	var query = document.getElementsByName('query')[0].value;
	//document.forms[0].action="search?query="+encodeURIComponent(query);
	$("#aspnetForm").attr("action","search?query="+encodeURIComponent(query));
	$("#aspnetForm").submit();
}
function hcSubmit(ev){
	
	if(ev.keyCode==13){
		searchInfo();
	} 
	 
}
var ifShowHis = false;

function seniorSearch(){
	//document.forms[0].action="/senior/search";
	//document.forms.submit();
	$("#aspnetForm").attr("action","/senior/search");
	$("#aspnetForm").submit();
	//window.open("/senior/search");
}


</script>
</head>


<body style="overflow: hidden;">
<div class="wrapper">

    <div id="wrapper_head">
        <p>
        <%
		
		if(gcqUserInfo!=null){
		%>
            <%=gcqUserInfo.getUnitName()%> &nbsp;&nbsp;<%=gcqUserInfo.getXm()%> &nbsp;&nbsp;<a id="adv_user" href="<%=contPath%>/help/user.htm" target='_blank'><%=gcqUserInfo.getUserType()%></a>
       <%} %>
        </p>
    </div>


    <div id="wrapper_mid">

        <div id="search_area">
            <img id="logo" src="<%=contPath%>/images/logo3.gif">
            <div id="nav_wrapper">
                <div id="nav_menu">
                    <a href="#" id="current_nav" class="cur_1"></a>
                    <a href="#" id="current_nav2" class="cur_2"></a>
                    <a href="#" id="current_nav3" class="cur_3"></a>
                    <a href="#" id="current_nav4" class="cur_4"></a>
                    <a href="#" id="current_nav5" class="cur_5"></a>
                </div>
                <div id="nav_animate_block"></div>
                <div id="search_con">
                <form id="aspnetForm" name="aspnetForm" method="post" action="search" onkeyPress="javascript:hcSubmit(event);">
                <input name="query" id="query"  type="text" class="con_btn" />
                <div id="tria"><img src="<%=contPath%>/images/arrow_2.gif" onclick="lookOrHideHis(this)"></div>
                <div class='bd_box'>
                    <div class="in_box">
                        <a class="test" href="#"  onclick="searchInfo()" target="_self"><img id="slash" src="<%=contPath%>/images/search2.gif" /></a>
                    </div>
                </div>
                </form>
            </div>
                <div id="search_status">
                    <span id="sys_status">系统内共有数据<span class="red">1268888886</span>条</span>
                    <%
							if("高级用户".equals(gcqUserInfo.getUserType())){
					%>
					<a href="<%=contPath%>/senior/search" class="blue_link adv_search">高级搜索</a>
					<%}%>
                </div>
            </div>
        </div>

        <div class="tab_con">
            <div class="l_box">
                <a href="#" id="tab1" class="tab current_tab" onclick="switchTab('tab1','r_content_1')">应用导航</a>
                <a href="#" id="tab2" class="tab" onclick="switchTab('tab2','r_content_2')">警务指数</a>
                <a href="#" id="tab3" class="tab" onclick="switchTab('tab3','r_content_3')">我的搜索</a>
            </div>
            <div class="r_box">
                <div id="r_content_1" class="r_content_1">
                    <div id="pic1_1_1" class="pics">
                        <img src="<%=contPath%>/images/pic_1.gif">
                        <p class="app_title">云比对平台</p>
                        <p class="app_describe">基于海量数据进行分布式对比碰撞</p>
                    </div>
                    <div class="block"></div>
                    <div id="pic1_1_2" class="pics">
                        <img src="<%=contPath%>/images/pic_2.gif">
                        <p class="app_title">云数据服务中心</p>
                        <p class="app_describe">基于云数据仓库提供展示和服务</p>
                    </div>
                    <div class="block"></div>
                    <div id="pic1_1_3" class="pics">
                        <img src="<%=contPath%>/images/pic_3.gif">
                        <p class="app_title">云比对平台</p>
                        <p class="app_describe">基于海量数据进行分布式对比碰撞</p>
                    </div>
                    <div class="block"></div>
                    <div id="pic1_1_4" class="pics">
                        <img src="<%=contPath%>/images/pic_4.gif">
                        <p class="app_title">云数据服务中心</p>
                        <p class="app_describe">基于云数据仓库提供展示和服务</p>
                    </div>
                    <div id="pic1_2_1" class="pics">
                        <img src="<%=contPath%>/images/pic_5.gif">
                        <p class="app_title">云比对平台</p>
                        <p class="app_describe">基于海量数据进行分布式对比碰撞</p>
                    </div>
                    <div class="block"></div>
                    <div id="pic1_2_2" class="pics">
                        <img src="<%=contPath%>/images/pic_6.gif">
                        <p class="app_title">云数据服务中心</p>
                        <p class="app_describe">基于云数据仓库提供展示和服务</p>
                    </div>
                    <div class="block"></div>
                    <div id="pic1_2_3" class="pics">
                        <img src="<%=contPath%>/images/pic_7.gif">
                        <p class="app_title">云比对平台</p>
                        <p class="app_describe">基于海量数据进行分布式对比碰撞</p>
                    </div>
                    <div class="block"></div>
                    <div id="pic1_2_4" class="pics">
                        <img src="<%=contPath%>/images/pic_8.gif">
                        <p class="app_title">云数据服务中心</p>
                        <p class="app_describe">基于云数据仓库提供展示和服务</p>
                    </div>
                </div>
                <div id="r_content_2" class="r_content_2" style="display: none">
                    <div id="pic2_1_1" class="pics">
                        <img src="<%=contPath%>/images/pic_1.gif">
                        <p class="app_title">云比对平台</p>
                        <p class="app_describe">基于海量数据进行分布式对比碰撞</p>
                    </div>
                    <div class="block"></div>
                    <div id="pic2_1_2" class="pics">
                        <img src="<%=contPath%>/images/pic_2.gif">
                        <p class="app_title">云数据服务中心</p>
                        <p class="app_describe">基于云数据仓库提供展示和服务</p>
                    </div>
                    <div class="block"></div>
                    <div id="pic2_1_3" class="pics">
                        <img src="<%=contPath%>/images/pic_3.gif">
                        <p class="app_title">云比对平台</p>
                        <p class="app_describe">基于海量数据进行分布式对比碰撞</p>
                    </div>
                    <div class="block"></div>
                    <div id="pic2_1_4" class="pics">
                        <img src="<%=contPath%>/images/pic_4.gif">
                        <p class="app_title">云数据服务中心</p>
                        <p class="app_describe">基于云数据仓库提供展示和服务</p>
                    </div>
                    <div id="pic2_2_1" class="pics">
                        <img src="<%=contPath%>/images/pic_5.gif">
                        <p class="app_title">云比对平台</p>
                        <p class="app_describe">基于海量数据进行分布式对比碰撞</p>
                    </div>
                    <div class="block"></div>
                    <div id="pic2_2_2" class="pics">
                        <img src="<%=contPath%>/images/pic_6.gif">
                        <p class="app_title">云数据服务中心</p>
                        <p class="app_describe">基于云数据仓库提供展示和服务</p>
                    </div>
                    <div class="block"></div>
                    <div id="pic2_2_3" class="pics">
                        <img src="<%=contPath%>/images/pic_7.gif">
                        <p class="app_title">云比对平台</p>
                        <p class="app_describe">基于海量数据进行分布式对比碰撞</p>
                    </div>
                    <div class="block"></div>
                    <div id="pic2_2_4" class="pics">
                        <img src="<%=contPath%>/images/pic_8.gif">
                        <p class="app_title">云数据服务中心</p>
                        <p class="app_describe">基于云数据仓库提供展示和服务</p>
                    </div>
                </div>
                <div id="r_content_3" class="r_content_3" style="display: none">
                    <div id="pic3_1_1" class="pics">
                        <img src="<%=contPath%>/images/pic_1.gif">
                        <p class="app_title">云比对平台</p>
                        <p class="app_describe">基于海量数据进行分布式对比碰撞</p>
                    </div>
                    <div class="block"></div>
                    <div id="pic3_1_2" class="pics">
                        <img src="<%=contPath%>/images/pic_2.gif">
                        <p class="app_title">云数据服务中心</p>
                        <p class="app_describe">基于云数据仓库提供展示和服务</p>
                    </div>
                    <div class="block"></div>
                    <div id="pic3_1_3" class="pics">
                        <img src="<%=contPath%>/images/pic_3.gif">
                        <p class="app_title">云比对平台</p>
                        <p class="app_describe">基于海量数据进行分布式对比碰撞</p>
                    </div>
                    <div class="block"></div>
                    <div id="pic3_1_4" class="pics">
                        <img src="<%=contPath%>/images/pic_4.gif">
                        <p class="app_title">云数据服务中心</p>
                        <p class="app_describe">基于云数据仓库提供展示和服务</p>
                    </div>
                    <div id="pic3_2_1" class="pics">
                        <img src="<%=contPath%>/images/pic_5.gif">
                        <p class="app_title">云比对平台</p>
                        <p class="app_describe">基于海量数据进行分布式对比碰撞</p>
                    </div>
                    <div class="block"></div>
                    <div id="pic3_2_2" class="pics">
                        <img src="<%=contPath%>/images/pic_6.gif">
                        <p class="app_title">云数据服务中心</p>
                        <p class="app_describe">基于云数据仓库提供展示和服务</p>
                    </div>
                    <div class="block"></div>
                    <div id="pic3_2_3" class="pics">
                        <img src="<%=contPath%>/images/pic_7.gif">
                        <p class="app_title">云比对平台</p>
                        <p class="app_describe">基于海量数据进行分布式对比碰撞</p>
                    </div>
                    <div class="block"></div>
                    <div id="pic3_2_4" class="pics">
                        <img src="<%=contPath%>/images/pic_8.gif">
                        <p class="app_title">云数据服务中心</p>
                        <p class="app_describe">基于云数据仓库提供展示和服务</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div id="cloud_bg">
        <img src="<%=contPath%>/images/background.gif">
    </div>

    <div id="wrapper_bot">
        <p id="bot_p_list">
            <a href="#" class="blue_link">使用说明</a>|<a href="#" class="blue_link">警综平台</a>|<a href="http://10.49.10.9/" class="blue_link" target='_blank'>市局首页</a>
        </p>
        <p id="copyright">
            @2013 济南市公安局科技信息通信处技术支持 电话：80858，83349
        </p>
    </div>

</div>
</body>
</html>