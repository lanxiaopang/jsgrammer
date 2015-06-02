/*浏览器及版本判断*/
var Sys = {};
var ua = navigator.userAgent.toLowerCase();
var s;
var queryDetailNum = 0;
var listShowSign = "1";
var dataUrlsflag;
var queryQgSign = true;
var fqInfoArray = new Array();
(s = ua.match(/msie ([\d.]+)/)) ? Sys.ie = s[1] :
(s = ua.match(/firefox\/([\d.]+)/)) ? Sys.firefox = s[1] :
(s = ua.match(/chrome\/([\d.]+)/)) ? Sys.chrome = s[1] :
(s = ua.match(/opera.([\d.]+)/)) ? Sys.opera = s[1] :
(s = ua.match(/version\/([\d.]+).*safari/)) ? Sys.safari = s[1] : 0;

$(function(){


    /*初始化测试展开*/
    //$('#condition_body').show();

    $('#self_def_body').hide();

    /*获取焦点*/
    $('#input_box').focus();
    $('#q').focus();

    /*左侧菜单手风琴效果*/
    $("#firstpane p.menu_head").click(function(){
        var idx= $("#firstpane p.menu_head").index(this);
        var last = $("#firstpane p.menu_head").children().length-1;
        if(!$(this).hasClass("current")){
            $(this).addClass("current").next("div.menu_body").slideToggle(300).siblings("div.menu_body").slideUp("slow");
            $(this).siblings().removeClass("current");
        }else{
            $(this).removeClass('current');
            $(this).next("div.menu_body").slideToggle(300).siblings("div.menu_body").slideUp("slow");
            if(idx!=last){
                $(this).addClass('no_border_bot');
            }
        }
    });

    /*点击效果*/
    $('#condition_tab_p').toggle(
        function(){
            $('span.tab_toggle1').addClass("tab_toggle2");
			if(Sys.ie =='6.0'){
				$("#condition_body").css('display','block');
				$('.g-mn5').css('display','inline-block');
			}else{
				$("#condition_body").slideToggle();
			}

            
			
        },
        function(){
            $('span.tab_toggle1').removeClass('tab_toggle2');
			if(Sys.ie =='6.0'){
				$("#condition_body").css('display','none');
				$('.g-mn5').css('display','inline-block');
			}else{
				$("#condition_body").slideToggle();
			}
			
			
            
			
        });






    var flag=3;//当前位置
    $('.display_mode12').click(function(){
        var idx=$('.display_mode12').index($(this))+1;//321
        var a,b;
        if(flag==idx){
            return;
        }else{

            $('.display_mode12').each(function(index,ele){
                b=3-index;
                $(this).find('img').attr('src',contPath+'/images/result/icon'+b+'_2.gif');
                if($(this).hasClass('white_bg_color')){
                    $(this).removeClass('white_bg_color').addClass('grey_color3');
                }
            })

            a=4-idx;
            $(this).find('img').first().attr('src',contPath+'/images/result/icon'+a+'_1.gif');
            $(this).removeClass('grey_color3').addClass('white_bg_color');
            flag=idx;
        }

    });
	
	
    $('#tria').hover(function(){
            $('#tria1').find('span').removeClass('info_icon_down').addClass('info_icon_up');
            $('#tria2').slideToggle();
        },
        function(){
            $('#tria1').find('span').removeClass('info_icon_up').addClass('info_icon_down');
            $('#tria2').slideToggle();
        });


    $('#tria2').hover(function(){
        $(this).css('background-color','#f7f7f7');
        $('#tria1').css('background-color','#ffffff');
    },function(){
        $(this).css('background-color','#ffffff');
        $('#tria1').css('background-color','#f7f7f7');
    });
	
    $('#tria2').click(
        function(){
            var a=$('#tria2 a')[0].innerHTML;
            $('#tria2 a')[0].innerHTML=$('#tria1 a')[0].innerHTML;
            $('#tria1 a')[0].innerHTML=a;
        }
    );
	/*更多*/
    $('#img_more').toggle(
        function(){
            $(this).attr('src',contPath+'/images/result/shouqi.gif');
            $('.g-mn5').css('height','auto');
            $('.g-mn5').css('overflow','auto');
        },
        function(){
            $(this).attr('src',contPath+'/images/result/more.gif');
            $('.g-mn5').css('height','36px');
            $('.g-mn5').css('overflow','hidden');

        });

    /*图标悬停效果*/
    $('.result_a').hover(
        function(){
            var foo = $(this).find('img').attr('src');
            foo=foo.replace(".gif","_2.gif");
            $(this).find('img').attr('src',foo);
            $(this).find('span').addClass('orange_txt_color1');
        },
        function(){
            var foo = $(this).find('img').attr('src');
            foo=foo.replace("_2.gif",".gif");
            $(this).find('img').attr('src',foo);
            $(this).find('span').removeClass('orange_txt_color1');
        }
    )
    
    fqInfoReload = true;
	//initNewMenu();
    
    
    
    
})


/*
// 根据查询结果显示菜单项目
function initNewMenuInfo(dataId,queryInfoName,num){
	var $obj = $("#"+dataId + "LeftMenu");
	alert("dataId==="+dataId+"<><><>num==="+num);
	var domObj = document.getElementById(dataId + "LeftMenu");
	var upobj1 = domObj.parentElement;
	var upobj = upobj1.parentElement;
	domObj.style.display = "none";
	upobj.parentElement.style.display = "none";
	if(num*1>0){
		queryQgSign = false;
		domObj.innerHTML = "<font color=#cc0000>"+queryInfoName+"("+num+")</font>";
		$obj.attr("href","javascript:showQLinkDetailInfo("+"\""+dataId+"\""+","+"\""+queryInfoName+"\""+")");

		if((dataUrlsHidNameReq=="")||(dataId==dataUrlsHidNameReq)){
			showDetailSign = false;
			
			if(dataId=="hzczrk"){
				dataUrlsHidName = dataId;
				dataUrlsCnName = queryInfoName;
				$('#dataUrlsHidNameReq').val(dataId);
				showQueryDetailInfo(dataId,queryInfoName);
			}
		} 
		domObj.style.display = "";
		upobj.parentElement.style.display = "";
	}else{
		//obj.innerHTML = "<a href='javascript:showQLinkDetailInfo("+"\""+dataId+"\""+","+"\""+queryInfoName+"\""+")'><font color=#0000cc>"+queryInfoName+"("+num+")</font></a>";

		queryQgQqfwCzrkInfo();
	}
}

function queryQgQqfwCzrkInfo(){
	if(queryQgSign){
		if(queryDetailNum>39){
			$("#loading").fadeOut();
			if(query.length==18){
				//$("#qqfwLoading").fadeIn();
				var qqfqData = jqAjax({
					url : contPath+"/qqfw/qqfwDownCzrk/"+query
				});
				
				if(qqfqData.success==true){
					qqfwCzrkData = qqfqData.info;
					var obj = $("#qqfwCzrkLeftMenu");
					obj.show();
					obj.parent().show();
					//showQqfwCzrkInfo();
				}
				//$("#qqfwLoading").fadeOut();
			}
		}
		
	}
}
function ajaxSyncQueryIdxNum(){

	var ajaxDataUrls = "queryStr=" + encodeURIComponent(query);
	var commdUrls = contPath+"/q/getIdxQueryNum";
	jqAjaxSync({
		url : commdUrls,
		data: ajaxDataUrls,
		success : function(data) {
			if(data.success) {

				var num = data.queryCount;
				//alert("人员档案===="+num);
				initNewMenuInfo("peopleidx","人员档案",num);
			}
		}
	});
}

function initNewMenu(){
	//alert(111);return;
	var pauseData = jqAjax({
		url : contPath+"/q/getAllDataUrlsConf"
	});
	
	
	ajaxSyncQueryIdxNum();
	var list = pauseData.list;
	//alert("/q/getAllDataUrlsConf  list.length==="+list.length);
	for(var i=0;i<list.length;i++){
		var code = list[i].code;
		var value = list[i].value;
		
	   
		var obj = document.getElementById(code + "LeftMenu");
		if(obj!=undefined){
			if(allDomainRadio=="1"){
				ajaxSyncQueryInfo(code,value);
			}else{
				checkIsQueryInfo(code,value);
			}
		}
	}
}
//执行数据数据查询获取结果数量，用于初始化菜单
function ajaxSyncQueryInfo(dataUrls,queryInfoName){
	if(allDomainRadio=="1"){
		typeQuerySelect = "";
	}
	if(queryConditionRadio=="1"){
		queryConditionStr = "";
	}
 
	//alert("dataUrls1===="+dataUrls);
	var ajaxDataUrls = "queryStr=" + encodeURIComponent(query) + "&dataUrls=" + dataUrls + "&queryCondition=" + queryConditionStr;
	var commdUrls = contPath+"/q/getSolrQueryNum";
	jqAjaxSync({
		url : commdUrls,
		data: ajaxDataUrls,
		success : function(data) {
			if(data.success) {
				var num = data.queryCount;
				//alert("dataUrls2===="+num);
				queryDetailNum++;
				initNewMenuInfo(dataUrls,queryInfoName,num);
			}else{
				queryDetailNum++;
				//alert("dataUrls3====");
			}
			if(queryDetailNum>29){
				$("#loading").fadeOut();
				if(updateQueryFlag){
					updateQueryFlag = false;
					updateQueryLog();
					//getNowTime("over");
				}
				
				
			}
		}
	});
}

function checkIsQueryInfo(dataUrls,queryInfoName){
	if(checkIsQuerySelect(dataUrls)){
		ajaxSyncQueryInfo(dataUrls,queryInfoName);
	}
}
function checkIsQuerySelect(checkStr){
	if(typeQuerySelect==undefined||typeQuerySelect==""||typeQuerySelect=="null"){
		return true;
	}
	var typeQuerySelectArray = typeQuerySelect.split(",");
	for(var i=0;i<typeQuerySelectArray.length;i++){
		if(checkStr==typeQuerySelectArray[i]){
			return true;
		}
	}
	return false;
}
function showHideTabBirth(){
    $('#self_def_body').toggle();
    if($('.self_def').attr('src').indexOf('_2.gif')<0){
        $('.self_def').attr('src',contPath+'/images/result/zidingyi_2.gif');
        $('.self_def').css('z-index','1001');
    }else{
        $('.self_def').attr('src',contPath+'/images/result/zidingyi.gif');
        $('.self_def').css('z-index','999');
    }
}



function checkWhiteList(obj){
	
	if(obj.length!=15&&obj.length!=18){
		inWhiteList = false;
	}else{
		$.ajax({
			type:"POST",
			url:contPath+"/q/checkWhiteList",
			dataType:"html",
			cache:false, 
			async:false, 
			data:"queryStr="+obj,
			beforeSend:function(){
				},
			success:function(msg){
				var msgJson = eval("(" + msg + ")");				
				inWhiteList = msgJson.inWhiteList;  
				

			},
			error:function(){
			},
			complete:function(){
			}
		});
	}
	
}
function saveQueryLog() {  

	
	var ajaxDataUrls = "ipAddr="+ipAddr+"&query="+encodeURIComponent(query); 
	var commdUrls = contPath+"/q/saveQueryLog";	 
	
	var pauseData = jqAjax({
		url : commdUrls,
		data: ajaxDataUrls
	}); 
	logId = pauseData.reId; 
	updateQueryFlag = true;
	beginTime = pauseData.beginTime; 
	//alert(1+"logId<><><><>"+logId);
}

function getFqInfoStrByArray(){
	var str = "";
	if(fqInfoArray.length>0){
		for(var i=0;i<fqInfoArray.length;i++){
			if(i!=0){
				str = str + ",";
			}
			var subFqArray = fqInfoArray[i];
			var subFqNameArray = subFqArray[1].split("@,@");
			var setSt = subFqArray[1];
			if(subFqNameArray!=undefined&&subFqNameArray.length>0){
				setSt = subFqNameArray[0];
			}
			str = str + subFqArray[0] + "@" +  encodeURIComponent(setSt);
		}
	}
	return str;
}



function showListTypeInfo(parVla){
	listShowSign = parVla; 
	page = 0;
	setSelectCondition();
	fqInfoReload =true;
	if(parVla==2){
		//显示地图
		//var urls = '/searchInfoMap.jsp?dataUrlsflag='+dataUrlsflag;
		var urls = contPath+'/jsp/search/result_map.jsp';
			window.open(urls);
			return;
		
	}
		
	showQueryDetailInfo(dataUrlsHidName,dataUrlsCnName);
}
function showQLinkDetailInfo(dataUrls,dataCnName){
	page = 0;
	fqInfoReload = true;
	fqInfoArray = new Array();
	dataUrlsHidName = dataUrls;
	dataUrlsCnName = dataCnName;
	$('#dataUrlsHidNameReq').val(dataUrls);
	setSelectCondition();
	if(dataUrls=="hzczrk"){
		$("#showmap").fadeIn();
	}else{
		$("#showmap").fadeOut();
		
	}
	showQueryDetailInfo(dataUrls,dataCnName);
}
function setSelectCondition(){
	var innerHtml = "";
	
	if(fqInfoArray.length>0){
		innerHtml = innerHtml + '<span id="has_choose" class="selected_title">您已经选择：</span>';
		innerHtml = innerHtml + ' <span class="selected_txt">';
		for(var i=0;i<fqInfoArray.length;i++){
			var subFqArray = fqInfoArray[i];
			var divSelectId = subFqArray[0] + "FqSelectId";
			if(i!=0){
				innerHtml = innerHtml + "&nbsp;&nbsp;";
			}
			
			
			var subFqNameArray = subFqArray[1].split("@,@");
			var showFqStr = subFqNameArray[0];
			
			if(subFqNameArray[1]!=undefined&&subFqNameArray[1]!=null){
				showFqStr = subFqNameArray[1];
			}

			innerHtml = innerHtml + '<span class="select_tag orange_border_color1">';
			innerHtml = innerHtml + subFqArray[2] +'<span class="orange_txt_color1">'+ showFqStr+'</span>';
			innerHtml = innerHtml + '<a href="javascript:delSelConditionShowInfo(\''+subFqArray[0]+'\') "><img src="'+contPath+'/images/result/tag_close.jpg"></a>';
			innerHtml = innerHtml + ' </span>'; 
		}
		 
		innerHtml = innerHtml + '</span>';
	} 
	document.getElementById("selected_condition").innerHTML = innerHtml;
	
}


//显示明细信息
function showQueryDetailInfo(dataUrls,dataCnName){
	if(fqInfoArray.length==0){
		$("#selected_condition").hide();
	}else{
		$("#selected_condition").show();
	}
	
	if(allDomainRadio=="1"){
		typeQuerySelect = "";
	}
	if(queryConditionRadio=="1"){
		queryConditionStr = "";
	}
	$("#loading").fadeIn();
	var ajaxDataUrls = "queryStr=" + encodeURIComponent(query) + "&dataUrls=" + dataUrls + "&startNum=" + page*pageSize + "&rows=" + pageSize + "&queryCondition=" + queryConditionStr;
	if(fqInfoArray.length>0){
		var fqStr = getFqInfoStrByArray();
		p_fqStr = fqStr;
		ajaxDataUrls = ajaxDataUrls + "&fqInfoStr=" + fqStr;
	}
	var commdUrls = contPath+"/q/getSolrQueryInfo/"+dataUrls;
	if(dataUrls=="peopleidx"){
		$("#showTypeSpan").hide();
		commdUrls = contPath+"/q/getPeopleIdx";
	}else{
		$("#showTypeSpan").show();
	}
	var pauseData = jqAjax({
		url : commdUrls,
		data: ajaxDataUrls
	});
	var queryNum = (pauseData.numFound)*1;
	totalCount = queryNum;

	//alert("aaa2=="+fqInfoReload);
	//fqInfoReload = false;//分组页面不合适暂时不展现
	if(fqInfoReload){
		var facetInfo = pauseData.facetInfo;
		var facetInnerHtml = "";
		if(facetInfo.length>0){
			for(var i=0;i<facetInfo.length;i++){
				if(getIfCsnShow(dataUrls,facetInfo[i].name)){
					var selectQueryCon = getArrayListByField(facetInfo[i].name);
					var facetQueryInfo = facetInfo[i].result;
					
						if(selectQueryCon==""){	
							
								var facetQueryArray = facetQueryInfo.split("@,@");
								if(checkIsHaveFqInfo(facetQueryArray)){
								
								tableSowSign = true;
								for(var j=0;j<facetQueryArray.length;j++){
									var facetSubQueryArray = facetQueryArray[j].split("@|@");
									if(facetSubQueryArray[1]!="0"&&facetSubQueryArray[1]!=undefined){
										
										if(dataUrls=="peopleidx"){
											
											if(tableSowSign){
												facetInnerHtml = facetInnerHtml + '<div class="g-bd5 f-cb border_top_dot"><div class="g-sd51"><p>' + facetInfo[i].cnName + '：' + '</p></div>';
												facetInnerHtml = facetInnerHtml + '<div class="g-mn5">';
												facetInnerHtml = facetInnerHtml + '<div class="g-mn5c">';
												facetInnerHtml = facetInnerHtml + '<p>';
											}else{
												facetInnerHtml = facetInnerHtml + "&nbsp;&nbsp;&nbsp;&nbsp;";
											}
											tableSowSign = false;
											var showFacetName = facetSubQueryArray[0];
											var facetParaName = facetSubQueryArray[0];
									
											if(facetSubQueryArray[2]!=undefined&&facetSubQueryArray[2]!=null&&facetSubQueryArray[2]!="null"){
												showFacetName = facetSubQueryArray[2];
												facetParaName = facetParaName + "@,@" + facetSubQueryArray[2];
											}
											facetInnerHtml = facetInnerHtml + "<span><a style='cursor: pointer;' onclick='javascript:showFqDetailInfo("+"\""+facetInfo[i].name+"\""+","+"\""+facetParaName+"\"" +","+"\""+facetInfo[i].cnName+"\""+")'>" + showFacetName + "(" + facetSubQueryArray[1] + ")</a></span>";
										}else{
											if(tableSowSign){
												facetInnerHtml = facetInnerHtml + '<div class="g-bd5 f-cb border_top_dot"><div class="g-sd51"><p>' + facetInfo[i].cnName + '：' + '</p></div>';
												facetInnerHtml = facetInnerHtml + '<div class="g-mn5">';
												facetInnerHtml = facetInnerHtml + '<div class="g-mn5c">';
												facetInnerHtml = facetInnerHtml + '<p>';
											}else{
												facetInnerHtml = facetInnerHtml + "&nbsp;&nbsp;&nbsp;&nbsp;";
											}
											tableSowSign = false;
											facetInnerHtml = facetInnerHtml + "<span><a style='cursor: pointer;' onclick='javascript:showFqDetailInfo("+"\""+facetInfo[i].name+"\""+","+"\""+facetSubQueryArray[0]+"\"" +","+"\""+facetInfo[i].cnName+"\""+")'>" + facetSubQueryArray[0] + "(" + facetSubQueryArray[1] + ")</a></span>";
											                                  
										}
									}
								}

											facetInnerHtml += '</p>';
										facetInnerHtml += '</div>';
									facetInnerHtml += '</div></div>';
									//facetInnerHtml += '<div class="g-sd52">';
									//facetInnerHtml += '<p><img id="img_more" src="'+contPath+'/images/result/more.gif"/></p>';
									//facetInnerHtml += '</div>';
								facetInnerHtml += '</div>';
								
								
								
							}
			
						}
					
				}	
			}
		}
		document.getElementById("facetGroupInfo").innerHTML = facetInnerHtml;
	}

	document.getElementById("queryNumFont").innerHTML = totalCount;
	document.getElementById("queryCnNameTitleFont").innerHTML = dataCnName;
	document.getElementById("queryCnNameFont").innerHTML = dataCnName;
	totalPageSize = Math.ceil(totalCount/pageSize);
	var qTime = pauseData.Qtime;
	document.getElementById("QTimeFont").innerHTML = qTime;
	document.getElementById("startPage").innerHTML = page*pageSize + 1;
	document.getElementById("endPage").innerHTML = (page+1)*pageSize>totalCount?totalCount:(page+1)*pageSize;
	//document.getElementById("currentPageNum").innerHTML = page + 1;
	setPageCodeInfo((page + 1)*1,totalPageSize);
	var docs = pauseData.queryResults;
	var innerStr = "";
	if(listShowSign=="0"){
		$("#mymap").fadeOut();
		$("#result_list").fadeIn();
		var showList = getListConfStr(dataUrls);
		if(showList.length>0){
			innerStr += '<p class="condition_top blue_color1"></p>';
			innerStr += '<table class="table1">'; 
			innerStr += '<thead class="grey_color3 border_left_grey border_right_grey" >'; 
			innerStr += '<tr>'; 
			for(var d=0;d<showList.length;d++){
				innerStr = innerStr + "<th align='center' " + "width=" + showList[d].showLength +" >" + showList[d].cnName +"</th>";
			}
			innerStr += '</tr></thead>'; 
			
			innerStr += '<tbody>'; 
			
			for(var i=0;i<docs.length;i++){
				var pk = getDocsId(docs[i],dataUrls);
				innerStr = innerStr + "<tr>";
				var queryObject = docs[i];
				for(var d=0;d<showList.length;d++){
					var showInfoCode = showList[d].code;
					innerStr = innerStr + "<td>"; 
					if(d==0){
						innerStr = innerStr + '<a href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\")>'+ n2b(queryObject[showInfoCode],"")+'</a>';
					}else{
						innerStr = innerStr + n2b(queryObject[showInfoCode],"");
					}
						
					innerStr = innerStr + "</td>";
				}
				innerStr = innerStr + "</tr>";
			}
			innerStr = innerStr + "</tbody></table>";
		}
	}else{
		$("#mymap").fadeOut();
		$("#result_list").fadeIn();
		for(var i=0;i<docs.length;i++){
			var pk = getDocsId(docs[i],dataUrls);
			innerStr = innerStr + getShowInfoNew(dataUrls,pk,docs,i);
		}
	}
	//alert(innerStr);
	var showInfoDiv = document.getElementById("result_list");
	showInfoDiv.innerHTML = innerStr;
	docsflag = docs; 
	dataUrlsflag = dataUrls; 
	
	var domObj = document.getElementById(dataUrls + "LeftMenu");
	var upobj1 = domObj.parentElement;
	upobj1.parentElement.style.display = "block";
	
 
	$("#loading").fadeOut();
}
//获取ID
function getDocsId(docsObj,dataUrls){
	if(dataUrls==""){
		return "";
	}	
	return docsObj.ODC_ZJ;
}//获取列表配置信息
function getListConfStr(dataUrls){
	var pauseData = jqAjax({
		url : contPath+"/q/getListConf/"+dataUrls
	});
	return pauseData.showList;
}
function getIfCsnShow(dataUrls,facetName){
	if(facetName!="CSN"){
		return true;
	}
	for(var i=0;i<fqInfoArray.length;i++){
		var subFqArray = fqInfoArray[i];
		if(subFqArray[0]=="CSND"){
			return true;
		}
	}
	return false;
}
function getArrayListByField(fqField){
	if(fqInfoArray.length>0){
		for(var i=0;i<fqInfoArray.length;i++){
			var fqSubArray = fqInfoArray[i];
			if(fqSubArray[0]==fqField){
				return fqSubArray[1];
			}
		}
	}
	return "";
}
function checkIsHaveFqInfo(facetQueryArray){
	for(var j=0;j<facetQueryArray.length;j++){
		var facetSubQueryArray = facetQueryArray[j].split("@|@");
		if(facetSubQueryArray[1]!="0"){
			return true;
		}
	}
	return false;
}
function updateQueryLog() {  
	var ajaxDataUrls = "id="+logId+"&beginTime="+beginTime; 
	var commdUrls = contPath+"/q/updateQueryLog";	 
	var pauseData = jqAjax({
		url : commdUrls,
		data: ajaxDataUrls
	}); 


}

//设置分页信息
function setPageCodeInfo(currentPage,totalPage){
	var beginNum = 0;
	var endNum = 0;
	var sfxsLastPage = true;
	
	if(currentPage<5){
		beginNum = 0;
		if(totalPage>5){
			endNum = 5;
			sfxsLastPage = true;
		}else{
			endNum = totalPage;
			sfxsLastPage = false;
		}
	}else{
		beginNum = currentPage-3;
		var endPage = currentPage + 2;
		if(totalPage>endPage){
			endNum = currentPage + 2;
			sfxsLastPage = true;
		}else{
			endNum = totalPage;
			sfxsLastPage = false;
		}
	}
	var pageCodeIHtml = "";
	pageCodeIHtml += '<a onclick="javascript:lastPage()"><div class="page_next border_grey">上一页></div></a>';
	for(var i = beginNum;i<endNum;i++){
		if((i+1)==currentPage){
			pageCodeIHtml = pageCodeIHtml + '<a><div class="page_num border_grey current_page">' + (i+1) + "</div></a>";
		}else{
			pageCodeIHtml = pageCodeIHtml + "<a onclick='javascript:gotoNumPage("+ i+ ")'><div class='page_num border_grey'>"  + (i+1) + "</div></a>";
		}
	}
	if(sfxsLastPage){
		
		pageCodeIHtml += '<div class="page_num">...</div>';
		pageCodeIHtml = pageCodeIHtml + "<a onclick='javascript:gotoNumPage("+ (totalPage-1)+ ")'><div class='page_num border_grey'>"  + (totalPage) + "</div></a>";
		
		
        
	}
	
	pageCodeIHtml += '<a onclick="javascript:nextPage()"><div class="page_next border_grey">下一页></div></a>';
	//pageCodeIHtml += '<div class="page_sum">共'+totalPage+'页</div>';
	pageCodeIHtml += '<div class="page_general">第</div>';
	pageCodeIHtml += '<div class="page_general"><input type="text" id="page_input" class="border_grey"/></div>';
	pageCodeIHtml += '<div class="page_general">页</div>';
	pageCodeIHtml += '<div class="page_general"><img src="'+contPath+'/images/result/tiaozhuan.gif" onclick="javascript:tiaozhuanPage()"></div>';
    
	document.getElementById("pagination_con").innerHTML = pageCodeIHtml;
}

function n2b(para,nullInfo){
	if(para==undefined||para=="undefined"||para==null||para=="null"){
		return nullInfo;
	}else{
		return para;
	}
}
function changeNoLightFormat(obj){
	while(obj.indexOf("<font color='#cc0000'>")>-1){
		obj = obj.replace("<font color='#cc0000'>","");
	}
	while(obj.indexOf("</font>")>-1){
		obj = obj.replace("</font>","");
	}
	return obj;
}

function showFqDetailInfo(fqField,fqValue,fqCnName){
	var fqStr = fqValue;
	var fqValArr = fqValue.split("@,@");
	if(fqValArr!=undefined&&fqValArr.length>0){
		fqStr = fqValArr[0];
	}
	
	setArrayListByFieldInfo(fqField,fqValue,fqCnName);
	page = 0;
	setSelectCondition();
	fqInfoReload =true;
	showQueryDetailInfo(dataUrlsHidName,dataUrlsCnName);
}

function setArrayListByFieldInfo(fqField,fqValue,fqCnName){
	var getField = getArrayListByField(fqField);
	if(getField==""){
		var subFiArray = new Array();
		subFiArray[0] = fqField;
		subFiArray[1] = fqValue;
		subFiArray[2] = fqCnName;
		var fieldLength = fqInfoArray.length;
		fqInfoArray[fieldLength] = subFiArray;
	}else{
		for(var i=0;i<fqInfoArray.length;i++){
			var fqSubArray = fqInfoArray[i];
			if(fqSubArray[0]==fqField){
				fqInfoArray[i][1]= fqValue;
			}
		}
	}
}
function delSelConditionShowInfo(fqField){
	removeArrayInfo(fqField);
	setSelectCondition();
	fqInfoReload =true;
	showQueryDetailInfo(dataUrlsHidName,dataUrlsCnName);
}
function removeArrayInfo(fqField){
	var newArray = new Array();
	var cont = 0;
	for(var i=0;i<fqInfoArray.length;i++){
		var fqSubArray = fqInfoArray[i];
		if(fqSubArray[0]!=fqField){
			newArray[cont] = fqSubArray;
			cont++;
		}
	}
	fqInfoArray = newArray;
}
function firstPage(){
	page = 0;
	fqInfoReload = false;
	showQueryDetailInfo(dataUrlsHidName,dataUrlsCnName);
}

function gotoNumPage(setPage){
	page = setPage*1;
	fqInfoReload = false;
	window.scroll(0, 0);
	showQueryDetailInfo(dataUrlsHidName,dataUrlsCnName);
}
function tiaozhuanPage(){
	page = $("#page_input").val();
	page = page*1-1;
	fqInfoReload = false;
	window.scroll(0, 0);
	showQueryDetailInfo(dataUrlsHidName,dataUrlsCnName);
}
function nextPage(){
	if(page==(totalPageSize-1)){
	 	 alert("已翻至最后一页");
	 	 return;
	 }
	 page  = page + 1;
	 fqInfoReload = false;
	 window.scroll(0, 0);
	 showQueryDetailInfo(dataUrlsHidName,dataUrlsCnName);
}
function lastPage(){
	 if(page<1){
	 	 alert("已翻至首页");
	 	 return;
	 }
	 page  = page - 1;
	 fqInfoReload = false;
	 window.scroll(0, 0);
	 showQueryDetailInfo(dataUrlsHidName,dataUrlsCnName);
}*/
