
//var page 
//var jsonString ;
//var bdfs ;
//var titleArr =[] ;

var fyxsys=10;
var mhxs=4 ;
var xshs=3 ;
var cache=10 ;
var myxs=mhxs*xshs ;
var useTime ;
var totalCount ; 
var reLi ;
var startNum;
var queryStartNum;
var rowNum ; 
var beginNum;
var endNum ; 
var pmwidth = window.screen.width; 
var taskId;
var taskLogId='0';
var menuCode;
var infoFlag;
var taskStatus;
var bdwcFlag;
var createTime;
var exeTime;
var finishTime; 
if(pmwidth<1280){ 
	mhxs=3 ;
	xshs=4 ;
	myxs=mhxs*xshs ;
}
var bdjxzNum=0;
var reSub=0;




function saveTask(){
	bdwcFlag = false;
		$.ajax({
			type:"POST",
			url:"/pbc/bech/saveTask",
			dataType:"html",
			cache:false, 
			data:"jsonStr="+jsonStr+"&taskId="+$taskId+"&menuCode="+menuCode+"&fileSign="+fileSign,
			beforeSend:function(){
				$('#dbjgbtdiv').html('<img align="left" src="../../images/2.0/logdin1.gif" style="width:153px;height:16px" /><i>请稍等，比对条件保存中...</i>');
				$('#jgInfo').html(""); 
				},
			success:function(msg){
				var msgJson = eval("(" + msg + ")");				
				taskId = msgJson.taskId;
				taskLogId = msgJson.taskLogId;
				$("#taskId").val(msgJson.taskId);
				submitTask();
				getTaskStatus1(); 

			},
			error:function(){
				alert("比对条件保存异常!<br>可能有以下原因：<br>1、未查询到符合条件的结果<br>2、数据库异常无法连接");
			},
			complete:function(){
				//alert('complete');
			}
		});
	
	
}



function submitTask(){
	 
		$.ajax({
			type:"POST",
			url:"/pbc/bech/submitTask",
			dataType:"html",
			cache:false,
			data:"taskId="+taskId+"&taskLogId="+taskLogId+"&fileSign="+fileSign+"&reSub="+reSub,
			beforeSend:function(){
				$('#dbjgbtdiv').html('<img align="left" src="../images/logdin1.gif" style="width:153px;height:16px" /><i>比对条件提交中...</i>');
				$('#jgInfo').html(""); 
				},
			success:function(msg){
				var msgJson = eval("(" + msg + ")");				
				taskId = msgJson.taskId;

			},
			error:function(){
				alert("比对提交异常!<br>可能有以下原因：<br>1、未查询到符合条件的结果<br>2、数据库异常无法连接");
			},
			complete:function(){
				//alert('complete');
			}
		});
	
	
}

function getTaskStatus1(){
	if(!bdwcFlag){
		if(bdjxzNum>100){

			reSub=1;
			submitTask();
			bdjxzNum=0;
		} 
		queryTaskStatus();
		if(taskStatus==2){
			bdjxzNum++;
			$('#dbjgbtdiv').html('<img align="left" src="../images/logdin1.gif" style="width:153px;height:16px" /><i>请稍后，当前状态为：数据比对中</i>');
			
		}else if(taskStatus==1){
			$('#dbjgbtdiv').html('<img align="left" src="../images/logdin1.gif" style="width:153px;height:16px" /><i>请稍后，当前状态为：数据比对排队中...</i>');
			
		}else {
			if(taskStatus==3){
				bdwcFlag = true;
			}else{$('#dbjgbtdiv').html('<img align="left" src="../images/logdin1.gif" style="width:153px;height:16px" /><i>请稍后，当前状态为：比对任务条件保存中...</i>');
				bdwcFlag = true;
			}
			
		} 
		setTimeout("getTaskStatus2()",2000);
		
	}else{
		getTaskResult();
	}
}
function getTaskStatus2(){
	if(!bdwcFlag){
		queryTaskStatus();
		if(bdjxzNum>100){
			reSub=1;
			submitTask();
			bdjxzNum=0;
		} 
		if(taskStatus==2){
			bdjxzNum++;
			$('#dbjgbtdiv').html('<img align="left" src="../images/logdin1.gif" style="width:153px;height:16px" /><i>请稍后，当前状态为：数据比对中</i>');
			
		}else if(taskStatus==1){
			$('#dbjgbtdiv').html('<img align="left" src="../images/logdin1.gif" style="width:153px;height:16px" /><i>请稍后，当前状态为：数据比对排队中...</i>');
			
		}else {
			if(taskStatus==3){
				bdwcFlag = true;
			}else{
				$('#dbjgbtdiv').html('<img align="left" src="../images/logdin1.gif" style="width:153px;height:16px" /><i>比对异常！...</i>');
				bdwcFlag = true;
			}
			
		} 
		setTimeout("getTaskStatus1()",2000);
		
	}else{
		getTaskResult();
	}
} 
function queryTaskStatus(){
	 
		$.ajax({
			type:"POST",
			url:"/pbc/bech/queryTaskStatus",
			dataType:"html",
			cache:false,
			async: false,
			data:"taskId="+taskId+"&taskLogId="+taskLogId,
			beforeSend:function(){
				},
			success:function(msg){
				var msgJson = eval("(" + msg + ")");
				taskStatus = msgJson.status;
				taskLogId = msgJson.taskLogId;
				var runNum = msgJson.runNum;
			},
			error:function(){
				alert("获取状态异常!<br>可能有以下原因：<br>1、未查询到符合条件的结果<br>2、数据库异常无法连接");
				taskStatus=4;
			},
			complete:function(){
				//alert('complete');
			}
		});
	
	
}
function getTaskResult(){

	bdjxzNum=0;
	reSub=0;
	//alert("taskStatus="+taskStatus);
	if(taskStatus==4){
		$('#jgInfo').html("无比对结果，请重新比对！");
		return;
	} else{
		$.ajax({
			type:"POST",
			url:"/pbc/bech/getTaskResult",
			dataType:"html",
			cache:false,
			data:"taskId="+taskId+"&taskLogId="+taskLogId+"&infoFlag="+infoFlag,
			beforeSend:function(){
				$('#dbjgbtdiv').html('<img align="left" src="../images/logdin1.gif" style="width:153px;height:16px" /><i>请稍后，当前状态为：比对结果数据获取中...</i>');
				$('#jgInfo').html(""); 
				},
			success:function(msg){
				var msgJson = eval("(" + msg + ")");
				totalCount = msgJson.totalCount;
				//alert("totalCount="+totalCount);
				
				reLi = msgJson.list;
				createTime = msgJson.createTime ;
				exeTime = msgJson.exeTime;
				finishTime = msgJson.finishTime;
				useTime = (msgJson.useTime/1000).toFixed(1);
				if(totalCount>0){
					allSlideType = "0";
					pack();
					showDetailListInfo(taskId); 
					
				}else{
					$('#dbjgbtdiv').html('比对结果：符合条件的信息数为<font color="#FF0000">'+totalCount+'</font>，'+'任务创建时间为：'+createTime+'，执行开始时间为：'+exeTime+'，大约耗时'+useTime+'秒');
				}
			},
			error:function(){
				alert("比对异常!<br>可能有以下原因：<br>1、未查询到符合条件的结果<br>2、数据库异常无法连接");
			},
			complete:function(){
				//alert('complete');
			}
		});
	}
	


}
function outPutDate(){
	var numArrStr='';
	for(var j=0;j<titleArr.length;j++){ 
		var numS = titleArr[j];
		if(j==0){
			numArrStr += numS.split(',')[0];
		}else{
			numArrStr += ','+numS.split(',')[0];
		}		
	}
	
	window.open('/pbc/bech/outPutDate?taskId='+taskId+"&taskLogId="+taskLogId+"&infoFlag="+infoFlag+"&numArrStr="+encodeURIComponent(numArrStr));
	
	 


}


function showDetailListInfo(taskId){

		/*beginNum = startNum-parseInt(page/cache)*rowNum;
		endNum = beginNum+myxs;
		if((startNum+myxs)>totalCount){
			endNum = beginNum+(totalCount-startNum);
		}*/
		beginNum = page*myxs;
		endNum = beginNum+myxs;
		if((beginNum+myxs)>totalCount){
			endNum = totalCount;
		}
		var inHtml = "";
		var jgbt ;
		if(totalCount<1000){
			jgbt ='比对结果：任务创建时间为：'+createTime+'，执行开始时间为：'+exeTime+'，大约耗时'+useTime+'秒，共<font color="#FF0000">'+totalCount+'</font>条信息，以下是<font color="#FF0000" >'+(beginNum*1+1)+'</font>-<font  color="#FF0000">'+endNum+'</font>条。';
			
		}else{
			jgbt ='比对结果：任务创建时间为：'+createTime+'，执行开始时间为：'+exeTime+'，大约耗时'+useTime+'秒，信息条数大于<font color="#FF0000">'+totalCount+'</font>条，以下是<font color="#FF0000" >'+(beginNum*1+1)+'</font>-<font  color="#FF0000">'+endNum+'</font>条。';
		}
		if(1==1){
			jgbt +="&nbsp;&nbsp;&nbsp;&nbsp;<a href='javascript:;' onclick='outPutDate()'><font color='#0000ff'>导出数据</font></a><br>";
		}else{
			jgbt +='<br>';
		}
		
		$('#dbjgbtdiv').html(jgbt); 
		if(infoFlag==2){
			inHtml += "<table>"; 
			for(var i=beginNum;i<endNum;i++){ 

				inHtml += "<tr>"; 
				var n =i+mhxs;
				if(n>endNum)
					n=endNum;
				for(var j=i;j<n;j++){ 
					var item = reLi[j];	
					if(item.SFZH=="无牌"||item.SFZH=="XXXXXXX"){
						inHtml += "<td><table><tr><td width=150><table><tr><td><img src='/pbc/images/resume.jpg' width=16 height=16   style='border-width: 0px;' id='' />&nbsp;&nbsp;&nbsp;"+item.XM+"</td></tr><tr><td><img src='/pbc/images/car.gif' width=16 height=16   style='border-width: 1px;' id='' title='车牌号码' />&nbsp;&nbsp;&nbsp;"+item.SFZH+"</td></tr>";
						var numi = 0;
					for(var key in item){
						if(key=='XM'){
							continue;
						}
						if(key == 'SFZH'){
							continue;
						}
						if(key.indexOf("NUM") >= 0){
							$num = titleArr[numi++];
							$titleName = $num.split(',')[0];
							$titleId = $num.split(',')[1];
							inHtml += "<tr><td>"+$titleName+"数量："+item[key]+"</td></tr>";
						}
					}
					
					inHtml += "</table></td></table></td>"; 
					
					}else{
						inHtml += "<td><table><tr><td width=150><table><tr><td><img src='/pbc/images/resume.jpg' width=16 height=16   style='border-width: 0px;' id='' />&nbsp;&nbsp;&nbsp;<a  title='点击查看车辆档案' id=linktype href='javascript:;' onclick=openCLDN(\'"+item.XM+"\',\'"+item.SFZH+"\')>"+item.XM+"</a></td></tr><tr><td><img src='/pbc/images/car.gif' width=16 height=16   style='border-width: 1px;' id='' title='车牌号码' />&nbsp;&nbsp;&nbsp;<a  title='点击查看车辆档案' id=linktype href='javascript:;' onclick=openCLDN(\'"+item.XM+"\',\'"+item.SFZH+"\')>"+item.SFZH+"</a></td></tr>";
						var numi = 0;
					for(var key in item){
						if(key=='XM'){
							continue;
						}
						if(key == 'SFZH'){
							continue;
						}
						if(key.indexOf("NUM") >= 0){
							$num = titleArr[numi++];
							$titleName = $num.split(',')[0];
							$titleId = $num.split(',')[1];
							inHtml += "<tr><td>"+$titleName+"数量：<a href='###'"+ "onclick=openGcMap(\'"+$titleId+"\',\'"+taskId+"\',\'"+item.XM+"\',\'"+item.SFZH+"\')>"+item[key]+"</a></td></tr>";
						}
					}
					
					inHtml += "</table></td></table></td>"; 
					
					}
					
					
					
					
					
					
					
				}
				inHtml += "</tr><tr height=3><td colspan=2>&nbsp;</td></tr>"; 
				i=n-1;			 
			}
			inHtml += "</table>"; 	
			
		}else{
			inHtml += "<table>"; 
			for(var i=beginNum;i<endNum;i++){ 

				inHtml += "<tr>"; 
				var n =i+mhxs;
				if(n>endNum)
					n=endNum;
				for(var j=i;j<n;j++){ 
					var item = reLi[j];
					var imageUrl = '/pbc/img/peoplePhoto/'+item.SFZH+'?s=2';
					
					inHtml += "<td><table><tr><td width=80 valign='top' ><img src='"+imageUrl+"' width=70 height=80 /></td><td width=150><table><tr><td><img src='/pbc/images/archives2.gif' width=16 height=16   style='border-width: 0px;' id='' />&nbsp;&nbsp;&nbsp;<a  title='点击查看人员档案' id=linktype href='javascript:;' onclick=openRYDN(\'"+item.SFZH+"\')>"+item.XM+"</a></td></tr><tr><td><img src='/pbc/images/archives6.gif' width=16 height=16   style='border-width: 1px;' id='' title='身份证号' />&nbsp;&nbsp;&nbsp;<a  title='点击查看人员档案' id=linktype href='javascript:;' onclick=openRYDN(\'"+item.SFZH+"\')>"+item.SFZH+"</a></td></tr>";
						var numi = 0;
					for(var key in item){
						if(key=='XM'){
							continue;
						}
						if(key == 'SFZH'){
							continue;
						}
						if(key.indexOf("NUM") >= 0){
							$num = titleArr[numi++];
							$titleName = $num.split(',')[0];
							$titleId = $num.split(',')[1];
							inHtml += "<tr><td>"+$titleName+"数量：<a href='###'"+ "onclick=detailInfo(\'"+$titleId+"\',\'"+taskId+"\',\'"+item.SFZH+"\','1','20')>"+item[key]+"</a></td></tr>";
						}
					}
					
					inHtml += "</table></td></table></td>"; 
				}
				inHtml += "</tr><tr height=3><td colspan=2>&nbsp;</td></tr>"; 
				i=n-1;			 
			}
			inHtml += "</table>"; 	
			
		}

		inHtml+='<table width=100%><tr><td align="right" width=100%>';
		inHtml+='<div id="PageInfo"  align="right"  width=100%> </div>';
		inHtml+='</td ></tr></table>';	
		
		$('#jgInfo').html(inHtml); 
		setPageInnInfo();		
}


function nextPage(){
	
	var totalPage = Math.ceil(totalCount/myxs);
	if(totalCount%myxs!=0){
		totalPage = totalPage + 1;
		if(page==(totalPage-2)){
		 	 alert("已翻至最后一页");
		 	 return;
		 }
	}else{
		if(page==(totalPage-1)){
		 	 alert("已翻至最后一页");
		 	 return;
		 }
	}
	
	 page  = page + 1;
	
	 //showInfo();
	 showDetailListInfo(taskId);
	 setPageInnInfo();
}
function lastPage(){
	
	 if(page<1){
	 	 alert("已翻至首页");
	 	 return;
	 }
	 page  = page - 1;
	 //showInfo();
	 showDetailListInfo(taskId);
	 setPageInnInfo();
}
function gotoNumPage(setPage){
	page = setPage*1;
	
	//showInfo();
	showDetailListInfo(taskId);
	setPageInnInfo();
}


function setPageInnInfo(){
	
	var totalPage = Math.ceil(totalCount/myxs);
	var bNum = 0;
	var eNum = 0;
	
	if(page<5||totalPage<fyxsys){
		bNum = 0;
		if(totalPage>fyxsys){
			eNum = fyxsys;
		}else{
			eNum = totalPage;
		}
	}else {
		bNum = page-5;
		var endPage = page + 4;
		
		if(totalPage>endPage){
			eNum = endPage;
		}else{
			eNum = totalPage;
		}
		if(eNum-bNum<fyxsys-1){
			bNum=eNum-fyxsys+1;
		}
	}
	
	var pageCodeIHtml = "";

	pageCodeIHtml += '<table   align="center"><tr height="35px">';
	pageCodeIHtml += "<td ><a class='syy1' onclick='lastPage()'><上一页</a></td>";
	for(var i = bNum;i<eNum;i++){
		if(i==page){
	pageCodeIHtml += "<td ><span class='dy1'>"+(i+1)+"</span></td>";
		}else{
	pageCodeIHtml += "<td ><a class='wdy1' onclick='gotoNumPage("+i+")'>"+(i+1)+" </a></td>";
		}
	}
	pageCodeIHtml += "<td ><a class='syy1' onclick='nextPage()'>下一页></a></td>";
	pageCodeIHtml += "</tr>";
	pageCodeIHtml += "</table>";
	

	$('#PageInfo').html(pageCodeIHtml); 
}


//生成14位时间(数据源类别为1的比对时使用)
function get14time(obj){
	obj = obj.replace(/:/gm,'');
	obj = obj.replace(/-/gm,"");
	obj = obj.replace(/ /gm,"");
	if(obj.length < 14){
		for(var i = 0; i <= (14-obj.length); i++){
			obj+="0";
		}
	}
	return obj;
	
}
//加3位毫秒 (数据源类别为2的比对时使用（卡口过车数据对比）)
function getTime2(obj){
	obj = obj+" 000";
	return obj;
	
}
 
function openRYDN(obj){
	 window.open('/pbc/bech/jqueryRyda?sfzh='+obj);
	 //window.open('http://10.49.10.187/a/people/'+sfzh+'?userf=z');
}

function getHpzlName(para){
	
	var obj;
	if(para==undefined||para=="undefined"||para==null||para=="null"){
		obj = "";
	}else{
		para = "hpzl"+para;
		for (var key in hpzlJson){
			if(para==key){
				obj = hpzlJson[key];
				}
			 
		}
	}
	
	return obj;
}
function openCLDN(hpzl,hphm){ 
	 window.open('http://10.49.10.187/a/vehicle2?userf=z&hpzl='+hpzl+'&hphm='+encodeURIComponent(hphm));
}
function openGcMap(titleId,taskId,hpzl,hphm){
	var kssj;
	var jssj;  
	$.ajax({
		type:"POST",
		url:"/pbc/bech/detailKKInfo",
		dataType:"html",
		cache:false,
		data:"titleId="+titleId+"&taskId="+taskId,
		beforeSend:function(){
			},
		success:function(msg){
			var msgJson = eval("(" + msg + ")");
			kssj = msgJson.kssj;
			jssj = msgJson.jssj;
			//var urls = 'http://10.49.10.187/jsp/carKkInfoMap.jsp?kssj='+kssj+"&jssj="+jssj+"&hpzl="+hpzl+"&hphm="+encodeURIComponent(hphm);
			var urls = 'http://10.49.10.187/jsp/carKkInfoMap.jsp?userf=z&kssj='+kssj+"&jssj="+jssj+"&hpzl="+hpzl+"&hphm="+encodeURIComponent(hphm);
			window.open(urls);
		},
		error:function(){
			alert("查询过车时间异常");
		},
		complete:function(){
			//alert('complete');
		}
	});

}




