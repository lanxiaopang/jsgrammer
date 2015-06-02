<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.inspur.pcs.web.data.GcqUserInfo"%>
<%@page import="com.inspur.pcs.web.util.GcqUserUtil"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="com.inspur.solr.util.SolrQueryUtils"%>
<%@page import="com.inspur.pcs.solridx.domain.QIdxDomain"%>
<%@page import="com.inspur.pcs.solridx.data.DCat"%>
<%@page import="com.inspur.pcs.solridx.data.DCatSub"%> 
<%@page import="com.inspur.pcs.sys.qlog.domain.QueryLogInfoDomain"%>
<!DOCTYPE html>
<%
	String contPath = request.getContextPath();  
	GcqUserInfo gcqUserInfo = (GcqUserInfo)session.getAttribute("gcqUserInfo");
	request.setCharacterEncoding("UTF-8");
    response.setContentType("text/html;charset=utf-8"); 
	String query = request.getParameter("query");
	if(query==null||"".equals(query)){
		query = (String)request.getAttribute("query");
	}
	if(query==null){
		query = "";
	}
	System.out.println("query="+query);
    String dataUrlsHidNameReq = request.getParameter("dataUrlsHidNameReq");
    if(dataUrlsHidNameReq==null){
    	dataUrlsHidNameReq = "";
    }
	String queryStr = query;
	if(queryStr!=null&&!"".equals(queryStr)){
		queryStr = queryStr.toUpperCase();
	}
	String AllDomainRadio = request.getParameter("AllDomainRadio");
	String[] typeQuerySelect = request.getParameterValues("typeQuerySelect");
	StringBuffer querySelectSb = new StringBuffer();
	if(typeQuerySelect!=null){
		for(int i = 0;i<typeQuerySelect.length;i++){
			if(i!=0){
				querySelectSb.append(",");
			}
			querySelectSb.append(typeQuerySelect[i]);
		}
	}
	String typeQuerySelectStr = querySelectSb.toString();
	if("0".equals(AllDomainRadio)){
		if(typeQuerySelectStr==null||"".equals(typeQuerySelectStr)||"null".equals(typeQuerySelectStr)){
			typeQuerySelectStr = request.getParameter("typeQuerySelectStr");
		}
	}
	
	String ifLookKkInfo = "0";
	if(GcqUserUtil.checkStrIsInList("kktx",gcqUserInfo)){
		ifLookKkInfo = "1";
	}
	
	String queryConditionRadio = request.getParameter("queryConditionRadio");
	String[] queryConditionSelect = request.getParameterValues("queryConditionSelect");
	StringBuffer queryConditionSb = new StringBuffer();
	if(queryConditionSelect!=null){
		for(int i = 0;i<queryConditionSelect.length;i++){
			if(i!=0){
				queryConditionSb.append(",");
			}
			queryConditionSb.append(queryConditionSelect[i]);
		}
	}
	String queryConditionStr = queryConditionSb.toString();
	if("0".equals(queryConditionRadio)){
		if(queryConditionStr==null||"".equals(queryConditionStr)||"null".equals(queryConditionStr)){
			queryConditionStr = request.getParameter("queryConditionStr");
		}
	}

	String ipAddr = request.getRemoteAddr();
	System.out.println("queryStr="+queryStr);
	//QueryLogInfoDomain.insertQueryWordLog(gcqUserInfo,"a12345",queryStr,request.getRemoteAddr(),"","","");
	
%>
<html>
<head>
    <meta http-equiv="content-type" content="text/html;charset=utf-8">
    <title>济南警务云搜索</title>
    <link id="style_link" href="<%=contPath%>/css/result.css" rel="stylesheet"/>
     
<script src="<%=request.getContextPath()%>/jsp/js/jquery-1.4.2.min.js"></script>
<script src="<%=request.getContextPath()%>/jsp/js/result.js"></script>
<script src="<%=request.getContextPath()%>/jsp/js/result.info.js"></script>
<script type="text/javascript" src="<%=contPath%>/jsp/js/utils.js"></script>
    
    
   <script>
var query = "<%=queryStr%>";
var contPath = '<%=contPath%>';

var inWhiteList = false;
checkWhiteList(query);
if(inWhiteList){
	window.location.href="noData.html";
}




var ipAddr =  "<%=ipAddr%>";
var beginTime ;
var logId = "";
var updateQueryFlag = false;
saveQueryLog();
var contextPath = "<%=request.getContextPath() %>";
var allDomainRadio = "<%=AllDomainRadio%>";
var typeQuerySelect = "<%=typeQuerySelectStr%>";
var queryConditionRadio = "<%=queryConditionRadio%>";
var queryConditionStr = "<%=queryConditionStr%>";
var dataUrlsHidNameReq = "<%=dataUrlsHidNameReq%>";
var ifLookKkInfo = "<%=ifLookKkInfo%>";
var fqInfoReload = true;
var fqInfoField = "";



var page = 0;
var pageSize = 20;
var totalCount = 0;
var totalPageSize = 0;
var fqFiledName = "";
function searchInfo() {
	
	var query = $("#queryText").val(); 
	$("#aspnetForm").attr("action","search?query="+encodeURIComponent(query));
	$("#aspnetForm").submit();
}

</script>
    
</head>
<body>
<div class="wrapper">


<!--head-->
<div id="wrapper_head"><%
if(gcqUserInfo!=null){
%>
<p>
        <%
		
		if(gcqUserInfo!=null){
		%>
            <%=gcqUserInfo.getUnitName()%> &nbsp;&nbsp;<%=gcqUserInfo.getXm()%> &nbsp;&nbsp;<a id="adv_user" href="<%=contPath%>/help/user.htm" target='_blank'><%=gcqUserInfo.getUserType()%></a>
       <%} %>
    </p>
<%}%>
</div>


<!--middle-->
<div id="wrapper_mid">
<div id="search_bar" class="grey_color1">
    <div class="g_bd1 f-cb">
        <div class="g_sd1">
            <div class="g_sd1c">
                <a href="search.html" target="_blank">
                    <img src="<%=request.getContextPath()%>/images/result/list_logo.gif">
                </a>
            </div>
        </div>
        <div class="g_mn1">
            <div class="g_mn1c">
                <div id="search_right">
                <form name="aspnetForm" method="post" action="result.jsp" id="aspnetForm">
                    <div id="tria">
                        <ul>
                            <li id="tria1" class="grey_color2">
                                <a href="#" class="grey_txt_color2">信息资源</a>
                                <span class="info_icon_down"></span>
                            </li>
                            <li id="tria2" class="grey_color2">
                                <a href="#" class="grey_txt_color2">信息资源2</a>

                            </li>
                        </ul>
                    </div>
                    <label for="input_box"><input id="queryText" type="text" class="con_btn"  value="<%=queryStr %>" name="queryText"/></label>
                    <input type="hidden" id="dataUrlsHidNameReq" name="dataUrlsHidNameReq" value="<%=dataUrlsHidNameReq%>" />
                    <div class="bd_box">
                        <a href="#" onclick="searchInfo();"><img id="slash" src="<%=request.getContextPath()%>/images/search2.gif"/></a>
                    </div>
                    <p id="adv_search">
                    <%
						if("高级用户".equals(gcqUserInfo.getUserType())){
					%>
                    <a href="<%=contPath%>/senior/search" class="blue_link">高级搜索</a>
                    <%} %>
                    </p>
                </form>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="search_result">

<div class="g_bd2 f_cb">
<div class="g_sd2">
    <div class="g_sd2c">
        <div class="four_result_top blue_color1"></div>
        <p class="border_grey grey_color3 four_result_mid no_border_top">
            <span>搜索结果<div style="float:right;position:relative" id="loading"><img src="<%=request.getContextPath()%>/images/loading.gif" style="width:16px;height:16px" /><i>正在搜索</i></div></span>
        </p>
        <div class="border_grey four_result_bot no_border_bot no_border_top">
            <ul>
                <li>
                    <a href="#" class="result_a">
                    <div class="border_grey four_result_li">
                        <img src="<%=request.getContextPath()%>/images/result/renyuan.gif"/>
                        <p><span class="result_type grey_txt_color1">人员</span> <span class="result_num grey_txt_color1">253万+</span></p>
                    </div>
                    </a>
                </li>
                <li>
                    <a href="#" class="result_a">
                    <div class="border_grey four_result_li">
                        <img src="<%=request.getContextPath()%>/images/result/anjian.gif"/>
                        <p><span class="result_type grey_txt_color1">案件</span> <span class="result_num grey_txt_color1">5931</span></p>
                    </div>
                    </a>
                </li>
                <li>
                    <a href="#" class="result_a">
                    <div class="border_grey four_result_li">
                        <img src="<%=request.getContextPath()%>/images/result/cheliang.gif"/>
                        <p><span class="result_type grey_txt_color1">车辆</span> <span class="result_num grey_txt_color1">39万+</span></p>
                        <p><span></span> <span></span></p>
                    </div>
                    </a>
                </li>
                <li>
                    <a href="#" class="result_a">
                    <div class="border_grey four_result_li">
                        <img src="<%=request.getContextPath()%>/images/result/danwei.gif"/>
                        <p><span class="result_type grey_txt_color1">单位</span> <span class="result_num grey_txt_color1">167</span></p>
                    </div>
                    </a>
                </li>
            </ul>
        </div>


        <div id="firstpane" class="menu_list">
        
        
        	<div  style="display:none">
	            <p class="menu_head border_grey no_border_bot" ><span>人员档案</span></p>
	            <div style="display: none;" class="menu_body">
	                <i class="sj_1"></i>
	                <i class="sj_2"></i>
	                <div>
	                <a id='peopleidxLeftMenu'  href="#"  class="border_grey no_border_top">人员档案<font id='peopleidxLeftMenuFont'></font></a>
	            	</div>
	            </div>
            </div>
            
            
            <%
		List parentLi = QIdxDomain.getCatList();
		if(parentLi!=null){
			for(int i=0;i<parentLi.size();i++){
				DCat dcat = (DCat)parentLi.get(i);
				String parentKey = dcat.getCode();
				String parentVal = dcat.getValue();
		%>
			<div  style="display:none">
				<p class="menu_head border_grey no_border_bot"><span><%=parentVal %></span></p>
				 <div style="display: none;" class="menu_body">
	                <i class="sj_1"></i>
	                <i class="sj_2"></i>
	                <div>
				<%
				List subLi = dcat.getCatSubList();
				for(int j=0;j<subLi.size();j++){
					DCatSub dCatSub = (DCatSub)subLi.get(j);
					String subKey = dCatSub.getCode();
					String subVal = dCatSub.getValue();
					if(GcqUserUtil.checkStrIsInList(subKey,gcqUserInfo)){
				%> 
	                    <a id='<%=subKey +"LeftMenu" %>' style="display:none" href="#"  class="border_grey no_border_top"><%=subVal %><font id='<%=subKey +"LeftMenuFont" %>'></font></a>
				<%	
					}
				}
				%>
					</div>
				 </div>
			</div>
		<%		
			}
		} 
		%>
          
        	<div  style="display:none">
	            <p class="menu_head border_grey no_border_bot" ><span>全国请求服务</span></p>
	            <div style="display: none;" class="menu_body">
	                <i class="sj_1"></i>
	                <i class="sj_2"></i>
	                <div>
	                <a id='qqfwCzrkLeftMenu' style="display:none" href="javascript:showQqfwCzrkInfo()"  class="border_grey no_border_top"><font color="#cc0000">常住人口(1)</font></a>
	            	</div>
	            </div>
            </div>
            
		
        </div>
    </div>
</div>
<div class="g_mn2">
<div class="g_mn2c">
<div class="condition_con">
<p class="condition_top blue_color1"></p>
<p id="condition_tab_p" class="border_grey grey_color3 condition_tab no_border_top">
    <span id="location">搜索结果 > <span class="orange_txt_color1"><font id="queryCnNameTitleFont"></font></span></span>
    <span class="tab_toggle_con">
        <span class="tab_toggle1"></span>
    </span>
</p>
<div id="condition_body" class="condition_body_hide border_grey no_border_top">
    <div id="selected_condition">
        
    </div>
	<div id="facetGroupInfo">
		 
	</div>
 
</div>

<div class="result_sum border_grey grey_color3">
    <span id="sum_txt" class="grey_txt_color2">
        约有<font id="queryNumFont"></font>项<font id="queryCnNameFont" color="red"></font>符合搜索“<%=query%>”的查询结果，
			耗时<font id="QTimeFont"></font>毫秒，以下是<font id="startPage"></font>-<font id="endPage"></font>条。
    </span>
    <span id="showTypeSpan">
	    <a href="javascript:showListTypeInfo(2)" id="showmap" >
	        <span id="display_mode3" class="display_mode12 grey_color3">
	            <img src="<%=request.getContextPath()%>/images/result/icon3_2.gif">
	        </span>
	    </a>
	    <span class="separator grey_color4"></span>
	    <a href="javascript:showListTypeInfo(0)">
	        <span id="display_mode2" class="display_mode12 grey_color3">
	            <img src="<%=request.getContextPath()%>/images/result/icon2_2.gif">
	        </span>
	    </a>
	    <span class="separator grey_color4"></span>
	    <a href="javascript:showListTypeInfo(1)" >
	        <span id="display_mode1" class="display_mode12 white_bg_color">
	            <img src="<%=request.getContextPath()%>/images/result/icon1_1.gif">
	        </span>
	    </a>
	    <span class="separator grey_color4"></span>
	    <span id="display_mode" class="grey_txt_color2">
	        显示模式
	    </span>
    </span>
</div>
<div id="result_list">
 

</div>
<div id="result_pagination">
    <div id="pagination_con">
    </div>
</div>
</div>



</div>
</div>
</div>

</div>

</div>


<!--bottom-->
<div id="wrapper_bot_result">
    <p id="bot_p_list">
        <a href="#" class="blue_link">使用说明</a>|<a href="#" class="blue_link">警综平台</a>|<a href="#" class="blue_link">市局首页</a>
    </p>
    <p id="copyright">
        @2013 济南市公安局科技信息通信处技术支持 电话：80858，83349
    </p>
</div>
</div> 
</body>
</html>