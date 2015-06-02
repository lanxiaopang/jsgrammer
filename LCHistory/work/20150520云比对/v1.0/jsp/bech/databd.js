/**
 * 
 */
var modCount = 1;
var page;  
var jsonString ;
var bdfs ;
var titleArr ;
var jsonStr ;
var fileSign="" ;
var isQuery ;

var file_beginNum;
var file_endNum ; 
var file_page=0; 
var file_myxs=5;
var file_fyxsys=4;
var file_totalCount ;  
var fileLi ;
var reJson=0 ;
var pMenuCode ;
var  jgreLi;
$(document).ready(function(){
		$("#loading").hide();

		pMenuCode = $("#pMenuCode").val();
		//alert(reJson);
		if(reJson!=0){
			//alert("1aaaa="+reJson);
			$.each(reJson,function(idx,item){
				for(var key in item){
					if(key=='infList'){
						var infList = item[key];
						var modId ="";
						var selectId = "";
						var dialogId = "";
						var sourceId = "";
						var sourceDsc = "";
						var conditionId = "";
						var comType = "";
						var colName = "";
						var colValue = "";
						var colValueDsc = "";
						var dicInfo = "";
						var colNameDsc = "";
						$.each(infList,function(idxI,itemI){
							for(var key in itemI){
								if(key=='modId'){
									modId = itemI[key];
									selectId = modId.replace("MOD-","")+'-SELECT';
									//alert("2aaaa="+selectId);
								}if(key=='sourceId'){
									sourceId = itemI[key];
									dialogId = "DIALOG-"+sourceId;
								}if(key=='sourceDsc'){
									sourceDsc = itemI[key];
								}
								
							}
							

							//生成模块
							if((pMenuCode=="cysjbd"&&idxI>1)||(pMenuCode!="cysjbd")){
								var hText =	sourceDsc;
				    			hTitle = 1;	
				    			$("#module").find("h4").each(function(){
				    				if($(this).text().indexOf(hText) >= 0){
				    					hTitle++;
				    				}
				    			});
				    			modCount=modId.substr(modId.length-1);
				    			var div = '<div id="MOD-'+sourceId+"-"+modCount+'" class="dgcl" style="border: 1px solid #cddce4;margin-right: 10px">'+
				    			'<div class="mod_title" style="background-color: #1380cb ;padding: 5px;">'+
				    			'<img src="../../images/2.0/but_del.jpg" title="删除模块" style="float: right;cursor:pointer" onclick="deleteMod(\'MOD-'+sourceId+"-"+modCount+'\')"/>'
				    			+'<img src="../../images/2.0/but_up.jpg" title="展开/收起" id="IMG-'+sourceId+"-"+modCount+'" style="float: right;cursor:pointer" onclick="openCondition(\'MOD-'+sourceId+"-"+modCount+'\')"/>'
				    			+'<img src="../../images/2.0/but_add.jpg" title="增加条件组" style="float: right;cursor:pointer" onclick="addCondition(\''+sourceId+"-"+modCount+'-SELECT\',\'DIALOG-'+sourceId+'\',\'MOD-'+sourceId+"-"+modCount+'\')"/>'
				    			+'<div style="color:#ffffff"><h4>'+hText+hTitle+'</h4></div>'
				    			+'</div>'+
				    			'<div id="'+sourceId+"-"+modCount+'-SELECT" style="padding: 0px 0px 0px 0px;"></div>'+
				    			 
				    			'</div>';	
				    			$("#module").append(div);
							}
							
							for(var key in itemI){
							
								if(key=='taskColMap'){
									
									var taskColMap = itemI[key];								
									$.each(taskColMap,function(idxT,itemT){
										var taskColArr = itemT; 
										//生成条件组 
										$.each(taskColArr,function(idxCA,itemCA){
											var taskCol = itemCA;
											conditionId = taskCol.conditionId;
										});
										
							    		var conds = conditionId;
										var zuCount = conds.substr(conds.length-1);
							    		var str = '<div id='+conds+' style="clear:both">'
							    		+'<div class="conditionCss" >'
										+'<img alt="" src="../../pbc/images/tit_icon.gif"/>&nbsp;&nbsp;<span>条件组'+zuCount+'</span></div>';
										
										$.each(taskColArr,function(idxCA,itemCA){
											//生成字段列
											var taskCol = itemCA;
											conditionId = taskCol.conditionId;
											comType = taskCol.comType;
											colName = taskCol.colName;
											colNameDsc = taskCol.colNameDsc;
											colValue = taskCol.colValue;
											colValueDsc = taskCol.colValue;
											dicInfo = taskCol.dicInfo;
											
											if(comType=='0'){
												str += '<div style="padding:5px">'+colNameDsc+'：<input name="'+colName+'|'+comType+'|'+dicInfo+'" type="text" value="'+getTimeHtml(colValue,0)+'" class="Wdate inputSize" onClick="WdatePicker({dateFmt:&quot;yyyy-MM-dd HH:mm&quot;})"/>';
												str += '至'+'<input name="endDate|0|0" type="text" value="'+getTimeHtml(colValue,1)+'" class="Wdate inputSize" onClick="WdatePicker({dateFmt:&quot;yyyy-MM-dd HH:mm&quot;})"/></div>';
											}
											else if(comType=='1'){
												str += '<div style="padding:5px">'+colNameDsc+'：<select name="'+colName+'|'+comType+'|'+dicInfo+'">';
												$.ajax({
													type:"POST",
													url:"/pbc/bech/getDicInfo",
													dataType:"html",
													cache:false,
													async: false,
												    data:"dicInfo="+dicInfo,
												    beforeSend:function(){
												    	
												    },
												    success:function(msg){
												    	var jsonArry = eval("("+msg+")");
														if(jsonArry.length > 0){
															$.each(jsonArry,function(idx,item){
																//alert(item["CODE"]);
																str+='<option value='+item["CODE"];
																if(colValue==item["CODE"])
																	str+=' selected="selected" ';
																str+='>'+item["CONTENT"]+'</option>';
															});
														}
												    },
												    error:function(){
												    	return "数据查询异常!";
												    },
												    complete:function(){
												    	
												    }
												});//alert();
												str += '</select></div>';
											}else if(comType == '2'){
												str += '<div style="padding:5px">'+colNameDsc+'：<input  name="'+colName+'|'+comType+'|'+dicInfo+'" type="text" value="'+colValue+'" style="width:70%;" /></div>';
											}else if(comType == '3'){
												str += '<div style="padding:5px">'+colNameDsc+
												'：<input readonly="readonly" name="'+colName+'|text|'+dicInfo+'" type="text" style="width:70%;"  value="'+colValueDsc+'" />'+
												'<input type="hidden" name="'+colName+'|'+comType+'|'+dicInfo+'"   value="'+colValue+'"  id="'+colName+modCount+zuCount+'"/>'+
												'&nbsp;<img style="text-align: center;vertical-align: middle;" src="../../pbc/images/drop-add.gif" onclick="getTree(\''+colName+modCount+zuCount+'\')"/></div>';
											}

											//生成字段列
											
										});

							    		str += '<div style="float:right;margin-right:0px;">'
							    			+'<img src="../../images/2.0/del.gif" onMouseOver="this.src=\'../../images/2.0/del_2.gif\'" onMouseOut="this.src=\'../../images/2.0/del.gif\'" style="float: right;" onclick="selectDel(\''+conds+'\',\''+modId+'\')"/></div>'
										+'</div>';

										//alert("3aaaa="+selectId);	
										//alert("4aaaa="+$(str));	
							    		$("#"+selectId).append($(str));
										//生成条件组
										
									});
								}
							}
							

							//生成模块
							
						});
						
						 
					}
				}
			});
			
			

			titleArr = new Array();
			$("#module").find("h4").each(function(){
				$obj = $(this).parent().parent().parent();
				titleArr.push($(this).text()+","+$obj.attr("id"));
				
			});
			//alert(titleArr.length);
			
			page=0;
			taskId = $("#taskId").val();
			//alert("taskId="+taskId+"|   taskLogId="+taskLogId);
			//taskLogId = "0";
			getTaskStatus1(); 
		}			
		 
		
		
		
		
		//增加模块
		$("#btnAddDS").click(function(){
			$("input[name='module']").each(function(){
				$(this).attr("checked",false);
			});
			$("#moduleList").dialog({
				resizable: false,
				width:600,
			    //height:240,
			    modal: true,
			    buttons:{
			    	"确定":function(){
			    		modCount++;
			    		var hTitle = 0;
			    		var module = $("#module");
			    		$("input[name='module']:checked").each(function(){
			    			var hText = $(this).val();
			    			hTitle = 1;
			    			$("#module").find("h4").each(function(){
			    				//$text = $(this).text().substr(0,$(this).text().length-1);
			    				if($(this).text().indexOf(hText) >= 0){
			    					hTitle++;
			    				}
			    			});
			    			var div = '<div id="MOD-'+$(this).attr("id")+"-"+modCount+'" class="dgcl" style="border: 1px solid #cddce4;margin-right: 10px">'+
			    			'<div class="mod_title" style="background-color: #1380cb ;padding: 5px;">'+
			    			'<img src="../../images/2.0/but_del.jpg" title="删除模块" style="float: right;cursor:pointer" onclick="deleteMod(\'MOD-'+$(this).attr("id")+"-"+modCount+'\')"/>'
			    			+'<img src="../../images/2.0/but_up.jpg" title="展开/收起" id="IMG-'+$(this).attr("id")+"-"+modCount+'" style="float: right;cursor:pointer" onclick="openCondition(\'MOD-'+$(this).attr("id")+"-"+modCount+'\')"/>'
			    			+'<img src="../../images/2.0/but_add.jpg" title="增加条件组" style="float: right;cursor:pointer" onclick="addCondition(\''+$(this).attr("id")+"-"+modCount+'-SELECT\',\'DIALOG-'+$(this).attr("id")+'\',\'MOD-'+$(this).attr("id")+"-"+modCount+'\')"/>'
			    			+'<div style="color:#ffffff"><h4>'+hText+hTitle+'</h4></div>'
			    			+'</div>'+
			    			'<div id="'+$(this).attr("id")+"-"+modCount+'-SELECT" style="padding: 0px 0px 0px 0px;"></div>'+
			    			//'<div style="margin-top:5px;">'+
			    			//'<input onclick="addCondition(\''+$(this).attr("id")+"-"+modCount+'-SELECT\',\'DIALOG-'+$(this).attr("id")+'\',\'MOD-'+$(this).attr("id")+"-"+modCount+'\')" type="button" value="增加条件" />'+
			    			//'</div>
			    			'</div>';	
			    			module.append(div);
			    		});
			    		$( this ).dialog( "close" );
			    	},
			    	"取消":function(){
			    		$( this ).dialog( "close" );
			    	}
			    }
			});
		});
		
	});
	//保存
	function save(obj){
		if(obj==null)
			obj = 0;
		infoFlag = obj;//infoFlag：0或空为普通比对，1为上传比对，2为车辆信息比对
		if(infoFlag==2){
			mhxs=6 ;
			xshs=4 ;
			if(pmwidth<1280){ 
				mhxs=5 ;
				xshs=4 ; 
			}
			myxs=mhxs*xshs ;
		}else{
			mhxs=4 ;
			xshs=3 ;
			if(pmwidth<1280){ 
				mhxs=3 ;
				xshs=4 ; 
			}
			myxs=mhxs*xshs ;
		}
		page = 0;
		isQuery = cache*myxs; 
		
		jsonStr = "[";
		var modCount = 0;
		var emptyCount = 0; //页面选择条件为空的个数
		$moduleChildren = $("#module").children('div');
		$moduleChildren.each(function(){
			$mod_id = $(this).attr("id");
			$modSelect = $("#"+$mod_id.substring(4)+"-SELECT");
			if($modSelect.html() != ''){
				modCount++;
				$modSelectChildren = $modSelect.children('div');
				$modSelectChildren.each(function(){
					jsonStr += "{"+'"modId":'+'"'+$mod_id+'",';
					$modSelectChildren_id = $(this).attr("id");
					jsonStr += '"conditionId":'+'"'+$modSelectChildren_id+'"';
					if($modSelectChildren.length > 0){
						$("input",$(this)).each(function(){
							$name =  $(this).attr("name");
							$value = $(this).attr("value");
							$nameArr = $name.split("|");
							if($.trim($value) == ""){
								emptyCount++;
								$(this).addClass('emptyWarning');
							}else{
								$(this).removeClass('emptyWarning');
								if($nameArr[1] == '0'){
										$value = $value.replace(/:/gm,'');
										$value = $value.replace(/-/gm,"");
										$value = $value.replace(/ /gm,"");
										if($value.length < 14){
											for(var i = 0; i <= (14-$value.length); i++){
												$value+="0";
											}
										}
										if($nameArr[0] != 'endDate'){
											jsonStr += ',"'+$nameArr[0]+"|"+$nameArr[1]+'":'+'"'+$value+',';
										}else{
											jsonStr += $value+'"';
										}
								}else if($nameArr[1] == '2'){
										jsonStr += ',"'+$nameArr[0]+"|"+$nameArr[1]+'":'+'"'+$value+'"';
								}else if($nameArr[1] == '3'){
										jsonStr += ',"'+$nameArr[0]+"|"+$nameArr[1]+'":'+'"'+$value+'"';
								}
						    }
						});
						$(this).find("select").each(function(){
							$selectArr = $(this).attr("name").split("|");
							jsonStr += ',"'+$selectArr[0]+"|"+$selectArr[1]+'":'+'"'+$(this).val()+'"';
						});
					}
					jsonStr += "},";
				});
			}
		});
		if(jsonStr != "["){
			jsonStr = jsonStr.substr(0,(jsonStr.length-1));
		}
		jsonStr += "]";
		if(modCount == 0){
			alert("请选择比对条件");
			$('#dbjgbtdiv').html('');
			return false;
		}else if(modCount == 1&&infoFlag!=1){

			alert("请选择比对条件");
			$('#dbjgbtdiv').html('');
			return false;
			
		}
		if(emptyCount > 0){
			return;
		}else{
			//alert(jsonStr);return;
		}
		//alert(jsonStr);return;
		titleArr = new Array();
		$("#module").find("h4").each(function(){
			$obj = $(this).parent().parent().parent();
			titleArr.push($(this).text()+","+$obj.attr("id"));
			
		});
		$taskId = $("#taskId").val();
		menuCode = $("#menuCode").val();
		saveTask(); 
	}
	//删除模块
	function deleteMod(id){
		$("#"+id).remove();
	}
	var zdry_count = 0;
	var ldzs_count = 0;
	var swjl_count = 0;
	//增加比对条件 
	function addCondition(selectId,dialogId,modId){
		var parentId = $("#"+selectId).parent().attr("id");
		$("#"+dialogId).dialog({
			resizable: false,
		    width:250,
		    //height:240,
		    modal: true,
		    buttons:{
		    	"确定":function(){
		    		var modIdex = modId.substr(modId.length-1);
		    		var zuCount = $("#"+selectId).children('div').length;
		    		var zuIdex = 0;
		    		if(zuCount > 0){
		    			var zuId = $("#"+selectId).children('div:last').attr("id");
		    			zuIdex = zuId.substr(zuId.length-1);
		    			zuIdex++;
		    			zuCount++;
		    		}else{
		    			zuIdex = 1;
		    			zuCount = 1;
		    		}
		    		var conds = "CONDITION-"+modId+"-"+zuIdex;
		    		var str = '<div id='+conds+' style="clear:both">'
		    		+'<div class="conditionCss" >'
					+'<img alt="" src="../../images/2.0/tit_icon.gif"/>&nbsp;&nbsp;<span>条件组'+zuCount+'</span></div>';
		    		$("#"+dialogId).find("input").each(function(){
		    			if($(this).attr("checked")){
							var inputArr = $(this).val().split("|");
							/*if(inputArr[1]=='0'){
								str += '<div style="padding:5px">'+inputArr[0]+'：<input name="'+$(this).attr("name")+'|'+inputArr[1]+'|'+inputArr[2]+'" type="text" value="" class="Wdate inputSize" onClick="WdatePicker({dateFmt:&quot;yyyy-MM-dd HH:mm&quot;})"/>';
								str += '至'+'<input name="endDate|0|0" type="text" value="" class="Wdate inputSize" onClick="WdatePicker({dateFmt:&quot;yyyy-MM-dd HH:mm&quot;})"/></div>';
							}*/
						
							if(inputArr[1]=='0'){
								str += '<div style="padding:5px">'+inputArr[0]+'：<input name="'+$(this).attr("name")+'|'+inputArr[1]+'|'+inputArr[2]+'" type="text" value="'+getSystemTime(-1)+'" class="Wdate inputSize" onClick="WdatePicker({dateFmt:&quot;yyyy-MM-dd HH:mm&quot;})"/>';
								str += '至'+'<input name="endDate|0|0" type="text" value="'+getSystemTime(0)+'" class="Wdate inputSize" onClick="WdatePicker({dateFmt:&quot;yyyy-MM-dd HH:mm&quot;})"/></div>';
							}
							else if(inputArr[1]=='1'){
								str += '<div style="padding:5px">'+inputArr[0]+'：<select name="'+$(this).attr("name")+'|'+inputArr[1]+'|'+inputArr[2]+'">';
								$.ajax({
									type:"POST",
									url:"/pbc/bech/getDicInfo",
									dataType:"html",
									cache:false,
									async: false,
								    data:"dicInfo="+inputArr[2],
								    beforeSend:function(){
								    	
								    },
								    success:function(msg){
								    	var jsonArry = eval("("+msg+")");
										if(jsonArry.length > 0){
											$.each(jsonArry,function(idx,item){
												str+='<option value='+item["CODE"]+'>'+item["CONTENT"]+'</option>';
											});
										}
								    },
								    error:function(){
								    	return "数据查询异常!";
								    },
								    complete:function(){
								    	
								    }
								});//alert();
								str += '</select></div>';
							}else if(inputArr[1] == '2'){
								str += '<div style="padding:5px">'+inputArr[0]+'：<input  name="'+$(this).attr("name")+'|'+inputArr[1]+'|'+inputArr[2]+'" type="text" style="width:70%;" /></div>';
							}else if(inputArr[1] == '3'){
								str += '<div style="padding:5px">'+inputArr[0]+
								'：<input readonly="readonly" name="'+$(this).attr("name")+'|text|'+inputArr[2]+'" type="text" style="width:70%;" />'+
								'<input type="hidden" name="'+$(this).attr("name")+'|'+inputArr[1]+'|'+inputArr[2]+'"  id="'+$(this).attr("name")+modIdex+zuIdex+'"/>'+
								'&nbsp;<img style="text-align: center;vertical-align: middle;" src="../../pbc/images/drop-add.gif" onclick="getTree(\''+$(this).attr("name")+modIdex+zuIdex+'\')"/></div>';
							}
		    			}
		    		});
		    		str += '<div style="float:right;margin-right:0px;">'
		    			+'<img src="../../images/2.0/del.gif" onMouseOver="this.src=\'../../images/2.0/del_2.gif\'" onMouseOut="this.src=\'../../images/2.0/del.gif\'" style="float: right;" onclick="selectDel(\''+conds+'\',\''+modId+'\')"/></div>'
					+'</div>';
					
		    		$("#"+selectId).append($(str));
		    		
		    		$(this).dialog("close");
		    	},
		    	"取消":function(){
		    		$(this).dialog("close");
		    	}
		    }
		 });
	}
	/* //所属辖区树
	function getTree(obj){
		var $obj = $(obj);
		var $prev_1 = $obj.prev();
	    var treeType = ($prev_1.attr("name")).split("|")[0];
		//alert("treeType="+treeType);
		var $prev_2 = $prev_1.prev();
		var str_1 = "";
		var str_2 = ""; 
		$revalue=window.showModalDialog("/pbc/bech/getTree?infoflag="+infoFlag+"&treeType="+treeType+"&checkIds="+$prev_1.val(),"","dialogHeight:550px;dialogWidth:500px;resizable:no;scroll:yes;");
		if($revalue){
			var nodeArr = $revalue;
			for(var i = 0; i < nodeArr.length; i++){
				   var arr = nodeArr[i].split(",");
				   //alert(arr[0]+"---"+arr[1]);
				   str_1+=arr[1]+",";
				   str_2+=arr[0]+",";
			   }
			str_1 = str_1.substring(0, str_1.length-1);
			str_2 = str_2.substring(0, str_2.length-1);
			$prev_1.val(str_2);
			$prev_2.val(str_1);
		}
	}*/
	
	function getTree(idstr){

		var id =idstr;
		var treeType =idstr.substr(0,idstr.length-2);
	    $prev_1=$("#"+id).prev();
		//alert("11111="+$prev_1); 
		$("#treeValue").val(id);
		$("#infoflag").val(infoFlag);
		$("#checkIds").val($("#"+id).val());
		$("#treeType").val(treeType);
		//alert("treeType="+treeType);
		var iTop = ($(document).height()-500)/2;
		var iLeft = ($(document).width()-550)/2;
		//alert(iTop);
		window.open('/pbc/jsp/bech/loading.jsp', 'newWindow', 'scrollbars=yes,width=500,height=550,top='+iTop+',left='+iLeft+'');
		$("#treeForm").submit();
	}
	
	
	//获取字典表信息
	function getDicInfo(dicInfo){
		$.ajax({
			type:"POST",
			url:"/pbc/bech/getDicInfo",
			dataType:"html",
			cache:false,
		    data:"dicInfo="+dicInfo,
		    beforeSend:function(){
		    	
		    },
		    success:function(msg){
		    	return msg;
		    },
		    error:function(){
		    	return "数据查询异常!";
		    },
		    complete:function(){
		    	
		    }
		});
	}
	//删除条件组
	function selectDel(selectId,modId){//alert(selectId+'---'+modId);
		//获得当前模块下要删除的组	
		$delZu = $("#"+modId).find("#"+selectId);
	    //alert($delZu.html());
		$current  = $delZu.find(".conditionCss").find("span").text();
		$crrentNumer = $current.substr($current.length-1);
		$delZu.nextAll().each(function(){
			$(this).find(".conditionCss").find("span").text("条件组"+$crrentNumer);
			$crrentNumer++;
		});
		$delZu.remove();
	}
	
	function openCondition(modId){
		//$line = $("#"+modId).find(".mod_title");//conditionCss
		//$line = $("#"+modId).find(".conditionCss");
		$("#"+modId).find(".conditionCss").each(function(){
			$(this).nextAll().each(function(){
				$(this).slideToggle("slow",function(){
					if($(this).is(':hidden')){
						$("#IMG-"+modId.substring(4)).attr("src","../../images/2.0/but_expand.jpg");
					}else{
						$("#IMG-"+modId.substring(4)).attr("src", "../../images/2.0/but_up.jpg");
					}
				});
			});
		});
		/*$line.nextAll().each(function(){
			$(this).slideToggle("slow",function(){
				if($(this).is(':hidden')){
					$("#IMG-"+modId.substring(4)).attr("src","../../pbc/images/but_expand.jpg");
				}else{
					$("#IMG-"+modId.substring(4)).attr("src", "../../pbc/images/but_up.jpg");
				}
			});
		});*/
	}
	var allSlideType = "0";
	function pack(){
		if(allSlideType == "0"){
			$("#module").find(".conditionCss").each(function(){
				$(this).nextAll().each(function(){
					$(this).slideToggle("slow",function(){
						$(this).slideUp("slow");
					});
				});
			});
			/*$("#module").find(".mod_title").each(function(){
				$(this).nextAll().each(function(){
					$(this).slideUp("slow");
				});
				
			});*/
			allSlideType="1";
			$("#sqTjButton").attr("src","../../images/2.0/expand.gif");
		}else{
			$("#module").find(".conditionCss").each(function(){
				$(this).nextAll().each(function(){
					$(this).slideToggle("slow",function(){
						$(this).slideDown("slow");
					});
				});
			});
			/*$("#module").find(".mod_title").each(function(){
				$(this).nextAll().each(function(){
					$(this).slideDown("slow");
				});
				
			});*/
			allSlideType="0";
			$("#sqTjButton").attr("src","../../images/2.0/pack_up.gif");
		}
	}
	function packZK(){
		$("#module").find(".mod_title").each(function(){
			$(this).nextAll().each(function(){
				$(this).slideDown("slow");
				/*if(allSlideType == "0"){
					$(this).slideUp("slow");
				}else if(allSlideType == "1"){
					$(this).slideDown("slow");
				}*/
			});
			
		});
		allSlideType="0";
		$("#sqTjButton").attr("src","../../images/2.0/pack_up.gif");
	}
	function xsTj(){
		$("#queryTJMX").hide();
		$("#queryBT").fadeIn();
		$("#queryTJ").fadeIn();
		
	}
	function sqTj(){
		$("#queryBT").hide();
		$("#queryTJ").hide();
		$("#queryTJMX").fadeIn();
		
	}
	
	function sqSc(filename){
		$("#queryBT").fadeIn(); 
		$("#queryUpload").hide();
		$("#scTS").html("<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;文件：“"+filename+"”上传完成；请增加比对模块和选择比对条件进行比对分析！<a href='javascript:;' onclick='xsSc()'><font color='#0000ff'>重新上传</font></a>");
		 
		
	}
	function xsSc(){
		 $("#queryUpload").fadeIn();
		 $("#queryBT").hide(); 
		 $("#scTS").html("");
			
	}



	function uploadWj(){  
		var fileName = getFileName($("#upfileid").attr("value"));
		if(fileName.length>0){
			$('#dbjgbtdiv').html('<img align="left" src="../../images/2.0/logdin1.gif" style="width:153px;height:16px" /><i>请稍等，文件上传中...</i>');
			$('#jgInfo').html("");
			
			$("#queryBT").hide(); 
	            var options = {               
	            	url:"/UploadFile",//服务器用
	            	//url:"http://localhost/pis/UploadFile",//本地调试程序用
	            	type:"POST",
	               dataType:"html",  
	               success:showResponse
	            };
		        $("#ajaxForm").ajaxSubmit(options);	
	            
	            //showResponse2();//本地调试程序用
		}else{
			alert("请选择文件！");
		}
		
	}

	function getFileName(path){
		var pos1=path.lastIndexOf('/');
		var pos2=path.lastIndexOf('\\');
		var pos =Math.max(pos1,pos2);
		if(pos<0)
			return path;
		else
			return path.substring(pos+1);
	}
	function showResponse(responseText,statusText){
		fileSign = $("<div>"+responseText+"</div>").text();//服务器用 
		var fileName = getFileName($("#upfileid").attr("value"));
		$('#dbjgbtdiv').html('');
		$('#jgInfo').html('');
		 sqSc(fileName);
		 packZK();
		 saveUploadFile(fileSign,fileName);
		 
	}
	function showResponse2(){ 
		fileSign = '1401263457048';//本地调试程序用
		var fileName = getFileName($("#upfileid").attr("value"));
		$('#dbjgbtdiv').html('');
		$('#jgInfo').html('');
		 sqSc(fileName);
		 packZK();
		 saveUploadFile(fileSign,fileName);
		 
	}


	//展示详细信息
	function detailInfo(modId,taskId,sfzh,index,pagesize){
		window.open("/pbc/bech/detailInfo/"+modId+"/"+taskId+"/"+sfzh+"/"+index+"/"+pagesize);
		
	}
	
	function showUploadHistory(){
		
		file_beginNum = file_page*file_myxs;
		if(file_beginNum>=file_totalCount){
			file_page=file_page-1;
			file_beginNum = file_page*file_myxs;
		}
		file_endNum = file_beginNum+file_myxs;
		if((file_beginNum+file_myxs)>file_totalCount){
			file_endNum = file_totalCount;
		}
		 
		
		var inHtml = "&nbsp;&nbsp;历史上传文件总数为"+file_totalCount+"条，以下为"+(file_beginNum*1+1)+"-"+file_endNum+"条";  
		inHtml += '<table width=100%  border=0 style="background-color: #d7e4ea">';
		inHtml += '<tr><td width="5%" align="center" style="background-color: #edf6fa">序号</td><td width="50%" align="center" style="background-color: #edf6fa">历史上传文件名称</td><td width="20%"  align="center" style="background-color: #edf6fa">上传时间</td><td width="25%"  align="center" style="background-color: #edf6fa">操作</td></tr>';
		for(var i=file_beginNum;i<file_endNum;i++){
			var objInfo = fileLi[i];
			inHtml += '<tr>'+'<td style="background-color: #ffffff" align="center" >'+(i+1)+'</td>'+'<td style="background-color: #ffffff">&nbsp;&nbsp;'+objInfo.FILE_NAME+'</td><td style="background-color: #ffffff" align="center" >'+objInfo.UPLOAD_TIME+'</td><td align="center" style="background-color: #ffffff">'+'<a href="javascript:;" onclick="bdfx(\''+objInfo.FILE_SIGN+'\',\''+objInfo.FILE_NAME+'\')"><font color="#0000ff">比对分析</font></a>'+'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'+'<a href="javascript:;" onclick="uploadDel(\''+objInfo.ID+'\')"><font color="#0000ff">删除</font></a>'+'</td></tr>';
		}
		inHtml += '</table>'; 
		inHtml += '<div id="FilePageInfo"></div> ';
		$('#schistory').html(inHtml);
		file_setPageInnInfo();
		
	}

	function bdfx(obj1,obj2){
		fileSign = obj1;
		$("#queryBT").fadeIn(); 
		$("#queryUpload").hide();
		$("#scTS").html("<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;选择的历史文件名称为：“"+obj2+"”；请增加比对模块和选择比对条件进行比对分析！<a href='javascript:;' onclick='xsSc()'><font color='#0000ff'>重新选择</font></a>");

		$('#dbjgbtdiv').html('');
		$('#jgInfo').html('');
		 packZK(); 
		
	}
	function uploadDel(obj){ 
		
		if(confirm("删除后不能恢复，确认删除？")){
			
			$.ajax({
				type:"POST",
				url:"/pbc/bech/delUploadFile",
				dataType:"html",
				cache:false,
				data:"id="+obj,
				beforeSend:function(){
					$('#dbjgbtdiv').html('<img src="../../images/2.0/logdin1.gif" style="width:153px;height:16px" /><i>文件删除中...</i>');
						 
					},
				success:function(msg){
					$('#dbjgbtdiv').html(''); 
					var msgJson = eval("(" + msg + ")");
					var listSize = msgJson.listSize;
					if(listSize>0){
						fileLi = msgJson.list;
						file_totalCount = fileLi.length;
						if(file_totalCount>0){
							showUploadHistory();
						}			 					
					}else{
						$('#schistory').html('');
					}				
				},
				error:function(){
					alert("删除上传文件异常");
				},
				complete:function(){
					//alert('complete');
				}
			});
		}
		
		
		
	}
	
	function saveUploadFile(fileSign,fileName){
		 
		$.ajax({
			type:"POST",
			url:"/pbc/bech/saveUploadFile",
			dataType:"html",
			cache:false,
			data:"fileSign="+fileSign+"&fileName="+fileName,
			beforeSend:function(){
				 
				},
			success:function(msg){
				var msgJson = eval("(" + msg + ")");
				fileLi = msgJson.list;
				file_totalCount = fileLi.length;
				if(file_totalCount>0){
					showUploadHistory();
				}				
			},
			error:function(){
				alert("保存上传文件异常");
			},
			complete:function(){
				//alert('complete');
			}
		});
	
	
}
	
	function imageChangeOver(obj){
		var img = obj.src;
		if(img.indexOf("pack_up")>0){
			obj.src="../../images/2.0/pack_up_2.gif";
		}else{
			obj.src="../../images/2.0/expand_2.gif";
		}		 
		
	}
	function imageChangeOut(obj){
		var img = obj.src;
		if(img.indexOf("pack_up")>0){
			obj.src="../../images/2.0/pack_up.gif";
		}else{
			obj.src="../../images/2.0/expand.gif";
		}		 
		
	}

	

	function file_nextPage(){
		
		var file_totalPage = Math.ceil(file_totalCount/file_myxs);
		if(file_totalCount%file_myxs!=0){
			file_totalPage = file_totalPage + 1;
			if(file_page==(file_totalPage-2)){
			 	 alert("已翻至最后一页");
			 	 return;
			 }
		}else{
			if(file_page==(file_totalPage-1)){
			 	 alert("已翻至最后一页");
			 	 return;
			 }
		}
		
		file_page  = file_page + 1;
		
		 //showInfo();
		 //showDetailListInfo(taskId);
		showUploadHistory();
	}
	function file_lastPage(){
		
		 if(file_page<1){
		 	 alert("已翻至首页");
		 	 return;
		 }
		 file_page  = file_page - 1;
		 //showInfo();
		 //showDetailListInfo(taskId);
		 showUploadHistory();
	}
	function file_gotoNumPage(setPage){
		file_page = setPage*1;
		
		//showInfo();
		//showDetailListInfo(taskId);
		showUploadHistory();
	}


	function file_setPageInnInfo(){
		
		var file_totalPage = Math.ceil(file_totalCount/file_myxs);
	 

		var bNum = 0;
		var eNum = 0;
		
		if(file_page==0||file_page==1){
			bNum = 0;
			if(file_totalPage>file_fyxsys){
				eNum = file_fyxsys;
			}else{
				eNum = file_totalPage;
			}
		}else {
			bNum = file_page-2;
			var endPage = file_page + 2;
			
			if(file_totalPage>endPage){
				eNum = endPage;
			}else{
				eNum = file_totalPage;
			}
		}
		
		var pageCodeIHtml = "";

		pageCodeIHtml += '<table   align="right"><tr height="35px">';
		pageCodeIHtml += "<td ><a class='syy1' onclick='file_lastPage()'><上一页</a></td>";
		for(var i = bNum;i<eNum;i++){
			if(i==file_page){
		pageCodeIHtml += "<td ><span class='dy1'>"+(i+1)+"</span></td>";
			}else{
		pageCodeIHtml += "<td ><a class='wdy1' onclick='file_gotoNumPage("+i+")'>"+(i+1)+" </a></td>";
			}
		}
		pageCodeIHtml += "<td ><a class='syy1' onclick='file_nextPage()'>下一页></a></td>";
		pageCodeIHtml += "</tr>";
		pageCodeIHtml += "</table>";
		

		$('#FilePageInfo').html(pageCodeIHtml); 
	}

	function checkSelect(obj){
		var i = $("#"+obj).attr("checked");
		if(i=="checked"){
			$("#"+obj).removeAttr("checked"); 
		}else{
			$("#"+obj).attr("checked","checked"); 
		}
		 
		
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
	//格式成页面需要的时间串
	function getTimeHtml(obj,num){	
		var objArr = obj.split(",");
		var newObj = objArr[num];
		var reObj = newObj.substring(0, 4)+"-"+newObj.substring(4, 6)+"-"+newObj.substring(6, 8)+" "+newObj.substring(8, 10)+":"+newObj.substring(10, 12);
 
		return reObj;
		
	}

	//得到当前时间
	function getSystemTime(obj){
		if(obj==null||obj=="undefined")
			obj=0;
		var now = new Date();
		var year = now.getFullYear();
		var month = now.getMonth()+1;
		var day = now.getDate();
		day = day+obj;
		var clock = year+"-";
		if(month<10)
			clock+="0";
		clock+=month+"-";
		if(day<10)
			clock+="0";
		clock+=day+" 00:00"; 
		return clock;
		
	}
	