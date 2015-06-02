function getShowInfoNew(dataUrls,pk,docs,i){
	var innerStr = "";	
	if(dataUrls=="peopleidx"){
		var showCym = n2bAddRep(docs[i].cym,"");
		innerStr = innerStr + '<p class=g1><a id=linktype href="/a/people/'+n2bAddRep(docs[i].id,"")+'"  target="_blank">'+ n2bAddRep(docs[i].xm,"")+'('+n2bAddRep(docs[i].id,"")+')的人员档案信息'+'</a>';
		
			
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr>';
	  	innerStr = innerStr + '<td><img src="/img/peoplePhoto/'+n2bAddRep(docs[i].id,"")+'?s=2" /></td>';
	  	innerStr = innerStr + '<td class=j><span style="font-size: 10pt;">'+ getAddHtmInfo('姓名',n2bAddRep(docs[i].xm,""));
	  	if(showCym!=undefined&&showCym!="undefined"&&showCym!=null&&showCym!="null"&&showCym!=""){
	  		innerStr = innerStr + getAddHtmInfo('曾用名',n2bAddRep(showCym,""));
	
	  	}
	  	innerStr = innerStr + getAddHtmInfo('性别',n2bAddRep(docs[i].xb,""))  + getAddHtmInfo('身份证号',n2bAddRep(docs[i].id,""))  + getAddHtmInfo('民族',n2bAddRep(docs[i].mz,""))  + getAddHtmInfo('职业',n2bAddRep(docs[i].zy,"")) + getAddHtmInfo('联系电话',n2bAddRep(docs[i].dh,""))  + getAddHtmInfo('户籍地址',n2bAddRep(docs[i].dz,"")) + getAddHtmInfo('工作单位',n2bAddRep(docs[i].gzdw,"")) ;
//	  	+'...<br><span style="color: #008000">'+'所属派出所：'+ n2b(docs[i].pcs,"") +'  所属辖区：'+ n2b(docs[i].xq,"");
	  	innerStr = innerStr +'</td></tr></table>';
	}
	if(dataUrls=="wygsxx"){

		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\") >'+ n2b(docs[i].MC,"")+'的信息'+'</a>';
  
  		
  		innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
  		+'物业公司名称：'+ n2b(docs[i].MC,"")  + '  负责人姓名：' + n2b(docs[i].FZRXM,"")  +'  负责人身份证号：'+ n2b(docs[i].FZRSFZH,"") +'  办公电话：'+ n2b(docs[i].BGDH,"") +'  办公位置：'+ n2b(docs[i].BGWZ,"")+' 法人代表：'+ n2b(docs[i].FRDB,"")+' 法人代表身份证号：'+ n2b(docs[i].FRDBSFZH,"")
	  	+'...</span></td></tr></table>';
	
	}
	if(dataUrls=="wycyry"){
		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\") >从业人员'+ n2b(docs[i].XM,"")+'信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
  	
  		innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
  		+'姓名：'+ n2b(docs[i].XM,"")    +'  性别：'+ n2b(docs[i].XB,"") +'  出生日期：'+ n2b(docs[i].CSRQ,"") +'  民族：'+ n2b(docs[i].MZ,"")+' "文化程度"：'+ n2b(docs[i].WHCD,"")+' 籍贯：'+ n2b(docs[i].JG,"")+' 工作部门：'+ n2b(docs[i].GZBM,"")+' 职务：'+ n2b(docs[i].ZW,"")+' 详细住址：'+ n2b(docs[i].XXZZ,"")+' 联系电话：'+ n2b(docs[i].LXDH,"")
	  	+'...</span></td></tr></table>';
  	}
  	if(dataUrls=="lyxzlfkxx"){
		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\") >'+ n2b(docs[i].NAME,"")+'的写字楼访客信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
  	
  		innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
  		+'姓名：'+ n2b(docs[i].NAME,"")  +'  身份证号：' + n2b(docs[i].PERSONALCARD,"")   +'  性别：'+ n2b(docs[i].SEX,"") +'  出生日期：'+ n2b(docs[i].BRITHDAY,"") +'  民族：'+ n2b(docs[i].MZ,"")+' 地址'+ n2b(docs[i].ADDRESS,"")+' 访问时间：'+ n2b(docs[i].ADDDATE,"")+' 写字楼名称：'+ n2b(docs[i].xzlmc,"")+' 写字楼地址：'+ n2b(docs[i].XZLDZ,"")
	  	+'...</span></td></tr></table>';
  	}
  	if(dataUrls=="lyfscyry"){
		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\") >公司从业人员'+ n2b(docs[i].XM,"")+'的信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
  	
  		innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
  		+'姓名：'+ n2b(docs[i].XM,"")  +'  身份证号：' + n2b(docs[i].SFZH,"")   +' 常住户口所在地：'+ n2b(docs[i].CZHKSZD,"")+' 实际居住地：'+ n2b(docs[i].SJJZD,"")+' 联系电话：'+ n2b(docs[i].LXDH,"")+' 访问公司名称：'+ n2b(docs[i].GSMC,"")
	  	+'...</span></td></tr></table>';
  	}
  	if(dataUrls=="wyxqxx"){
		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\") >'+ n2b(docs[i].XQMC,"")+'的信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
  	
  		innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
  		+'小区名称：'+ n2b(docs[i].XQMC,"")    +'  小区地址：'+ n2b(docs[i].XQDZ,"") +'  车辆存放情况：'+ n2b(docs[i].CLCFQK,"") +'  开发商名称：'+ n2b(docs[i].KFSMC,"")
	  	+'...</span></td></tr></table>';
  	}
  	if(dataUrls=="wyyzxx"){
		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\") >  业主'+ n2b(docs[i].XM,"")+'('+n2b(docs[i].SFZH,"")+')的信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
  	
  		innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
  		+'姓名：'+ n2b(docs[i].XM,"")    +'  身份证号：'+ n2b(docs[i].SFZH,"") +'  民族：'+ n2b(docs[i].MZ,"") +'  文化程度：'+ n2b(docs[i].WHCD,"")+'  手机：'+ n2b(docs[i].SJ,"")+'  电话：'+ n2b(docs[i].DH,"")+'  户籍地详址：'+ n2b(docs[i].HJDXZ,"")+'  小区名称：'+ n2b(docs[i].XQMC,"")+'  小区地址：'+ n2b(docs[i].XQDZ,"")+'  户型：'+ n2b(docs[i].HX,"")+'  建筑面积：'+ n2b(docs[i].JZMJ,"")+'  使用面积：'+ n2b(docs[i].SYMJ,"")
	  	+'...</span></td></tr></table>';
  	}
  	
	
	if(dataUrls=="hcpxx"){
		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\") >'+ n2b(docs[i].XM,"")+'('+n2b(docs[i].KH,"")+')的火车订票信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
  		var fcsj = n2b(docs[i].FCSJ,"");
  		var newFcsj = fcsj;
  		if(fcsj.length==4){
  			newFcsj = fcsj.substr(0,2)+":"+fcsj.substr(2,4);
  		}
  		innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
  		+'姓名：'+ n2b(docs[i].XM,"")  + '  证件号码：' + n2b(docs[i].KH,"")  +'  车票号：'+ n2b(docs[i].CPH,"") +'  车次：'+ n2b(docs[i].CC,"") +'  车次日期：'+ n2b(docs[i].CCRQ,"")+' 发车时间：'+ newFcsj+' 出发站：'+ n2b(docs[i].CCZ,"")+' 到达站：'+ n2b(docs[i].DDZ,"")+' 车厢号：'+ n2b(docs[i].CXH,"")+' 座位号：'+ n2b(docs[i].ZWH,"")
	  	+'...</span></td></tr></table>';
  	}
	
	if(dataUrls=="mhfjxx"){
		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\") >'+ n2b(docs[i].ZWM,"")+'('+n2b(docs[i].ZJHM,"")+')的民航订票信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
  		var fcsj = n2b(docs[i].CFRQ,"");
  		var newFcsj = fcsj;
  		if(fcsj.length==4){
  			newFcsj = fcsj.substr(0,2)+":"+fcsj.substr(2,4);
  		}
  		innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
  		+'姓名：'+ n2b(docs[i].ZWM,"")  + '  证件号码：' + n2b(docs[i].ZJHM,"")  +'  航班号：'+ n2b(docs[i].HBH,"") +'  出发日期：'+ n2b(docs[i].CFRQ,"") +'  车次日期：'+ n2b(docs[i].CFRQ,"")+' 登记机场：'+ n2b(docs[i].DJJC,"")+' 到达机场：'+ n2b(docs[i].DDJC,"")
	  	+'...</span></td></tr></table>';
  	}
	
	if(dataUrls=="yyjzxx"){
		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\") >'+ n2b(docs[i].ZWM,"")+'('+n2b(docs[i].SFZH,"")+')的医院就诊信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
  		
  		innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
  		+'姓名：'+ n2b(docs[i].ZWM,"")  + '  证件号码：' + n2b(docs[i].SFZH,"")  +'  就诊时间：'+ n2b(docs[i].JZSJ,"") +'  联系电话：'+ n2b(docs[i].LXDH,"") +'  家庭住址：'+ n2b(docs[i].JTZZ,"")+' 就诊单位：'+ n2b(docs[i].DWMC,"")
	  	+'...</span></td></tr></table>';
  	}
	
	if(dataUrls=="asjaj"){
	  	innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\")>'+ n2b(docs[i].AJMC,"无标题")+'</a>';
	  	innerStr = innerStr  + "&nbsp;&nbsp;" + '<a href="/a/case/'+changeNoLightFormat(docs[i].AJBH)+'"  target="_blank">查看案件档案</a>';	
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;color: #1C001C">'
	  	+n2b(docs[i].ZYAQ,"")+'...<br><span style="color: #008000"><span style="color: #008000">案件状态：'+n2b(docs[i].AJSTATE,"")+"&nbsp;&nbsp;&nbsp;&nbsp;"+n2b(docs[i].FADD,"")+ '-------' + n2b(docs[i].SLJJSJ,"")+'</span></td></tr></table>';
  	}
	if(dataUrls=="asjjq"){
	  	innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\") >'+ n2b(docs[i].AJMC,"无标题")+'</a>';
	  	innerStr = innerStr  + "&nbsp;&nbsp;" + '<a href="/a/case/'+changeNoLightFormat(docs[i].AJBH)+'"  target="_blank">查看案件档案</a>';
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
	  	+n2b(docs[i].ZYAQ,"")+'...<br>'+n2b(docs[i].FADD,"")+ '-------' + n2b(docs[i].SLJJSJ,"")+'</span></td></tr></table>';
  	}
	
	if(dataUrls=="asjxyr"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\") >嫌疑人'+ n2b(docs[i].XM,"")+'('+n2b(docs[i].ZJHM,"")+')的涉案情况'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr>';
	  	var id = n2b(docs[i].ODC_ZJ,"");
	  	innerStr = innerStr + '<td><img src="/img?KEY='+id+'&DATATYPE=XYR1_IMG&s=2&ds=2" style="width: 60px; higth: 80px; border-width: 1px;"></td>';
	  	innerStr = innerStr + '<div id="infor_arrow">';
	  	innerStr = innerStr + '<td><img id="'+id+'" onclick="showMoreZpxx1(this)" src="images/arrowR.jpg" style="cursor: pointer; width: 15px; higth: 20px; border-width: 1px;"/></td>';
	  	innerStr = innerStr + '</div>';
	  	innerStr = innerStr + '<td class=j><span style="font-size: 10pt;">'
	  	+n2b(docs[i].WFQK,"")+'...<br><span style="color: #008000">修改日期-------' + n2b(docs[i].ODC_GXSJ,"")+'</span></span></td></tr></table>';
  	}
	if(dataUrls=="asjbarxx"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\") >报案/受害/当事/其人'+ n2b(docs[i].XM,"")+'的信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
  		innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
  		+'姓名：'+ n2b(docs[i].XM,"") + '  性别：'  + n2b(docs[i].XB,"") + '  民族：' + n2b(docs[i].MZ,"") + '  出生日期：' + n2b(docs[i].CSRQ,"") + '  联系方式：' + n2b(docs[i].LXDH,"") +'  地址：'+ n2b(docs[i].HJDZ,"") 
	  	+'...</span></td></tr></table>';
  	}
	if(dataUrls=="asjjtcygxr"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\") >家庭主要成员及关系人'+ n2b(docs[i].XM,"")+'('+n2b(docs[i].zjhm,"")+')的信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
  		innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
  		+'姓名：'+ n2b(docs[i].xm,"") + '  性别：' + n2b(docs[i].xb,"") + '  身份证号：' + n2b(docs[i].zjhm,"") + '  民族：' + n2b(docs[i].mz,"") + '  出生日期：' + n2b(docs[i].csrq,"") + '  联系方式：' + n2b(docs[i].lxfs,"") +'  地址：'+ n2b(docs[i].dz,"") 
	  	+'...</span></td></tr></table>';
  	}
	if(dataUrls=="hzczrk"){
		var showCym = n2b(docs[i].CYM,"0");
		var zpid = n2b(docs[i].SDZP,"");
		var imageUrl;
		if(zpid==""||zpid==undefined||zpid=="undefined"||zpid==null||zpid=="null"){
			imageUrl = "images/default_2.jpg ";
      	}else{
      		imageUrl = '/img?KEY='+zpid+'&DATATYPE=HZCZRK_IMG&s=0';
      	}
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\")>'+ n2b(docs[i].XM,"")+'('+n2b(docs[i].GMSFHM,"")+')的常住人口信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
  		
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr>';
	  	innerStr = innerStr + '<td><img src="'+imageUrl+'" style="width: 60px; higth: 80px; border-width: 1px;"></td>';
	  	innerStr = innerStr + '<td class=j><span style="font-size: 10pt;">'+'姓名：'+ n2b(docs[i].XM,"");
	  	if(showCym!="0"&&showCym.length>0){
	  		innerStr = innerStr + '  曾用名：' + showCym;

	  	}
	  	innerStr = innerStr +'  性别：' + n2b(docs[i].XB,"") + '  身份证号：' + n2b(docs[i].GMSFHM,"") + '  民族：' + n2b(docs[i].MZ,"") + '  职业：' + n2b(docs[i].ZY,"") +'  户籍地址：'+ n2b(docs[i].ZZ,"") +'  服务处所：'+ n2b(docs[i].FWCS,"")  +'  人员状态：'+ n2b(docs[i].ZXBZ,"")
	  	+'...<br><span style="color: #008000">'+'所属派出所：'+ n2b(docs[i].PCS,"") +'  所属辖区：'+ n2b(docs[i].BZXQ,"");
	  	innerStr = innerStr +'</td></tr></table>';
	  
	}
	
	if(dataUrls=="hzzzrk"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\") >'+ n2b(docs[i].ZK_XM,"")+'('+n2b(docs[i].ZK_GMSFHM,"")+')的暂住人口信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr>';
	  	innerStr = innerStr + '<td><img src="/img?KEY='+n2b(docs[i].zpid,"")+'&DATATYPE=HZCZRK_IMG&s=0" style="width: 60px; higth: 80px; border-width: 1px;"></td>';
	  	innerStr = innerStr + '<td class=j><span style="font-size: 10pt;">'
	  	+'姓名：'+ n2b(docs[i].ZK_XM,"")+'  性别：' + n2b(docs[i].ZK_XB,"") + '  身份证号：' + n2b(docs[i].ZK_GMSFHM,"") +'  户籍地址：'+ n2b(docs[i].ZK_HJDXZ,"") + '  服务处所：' + n2b(docs[i].ZK_FWCS,"") + '  暂住地址：'+ n2b(docs[i].ZK_ZZDZXQ,"")
	  	+'...<br><span style="color: #008000">修改日期-------'+n2b(docs[i].updatesj,"")+'</span></td></tr></table>';
  	}
	if(dataUrls=="shczc"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\") >出租车驾驶员'+ n2b(docs[i].SJXM,"")+'('+n2b(docs[i].SFZH,"")+')的信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
	  	+'姓名：'+ n2b(docs[i].SJXM,"") + '  身份证号：' + n2b(docs[i].SFZH,"") + '  地址：'+ n2b(docs[i].ZZ,"") +'  出租车牌号：'+ n2b(docs[i].CLHM,"")  +'  所属公司：'+ n2b(docs[i].QYMC,"")
	  	+'...</span></td></tr></table>';
  	}
	if(dataUrls=="sszzrkxx"){
  		innerStr = innerStr + '<p class=g1><a class=l href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\") >'+ n2b(docs[i].XM,"")+'('+n2b(docs[i].SFZH,"")+')的流动人口信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr>';
	  	innerStr = innerStr + '<td><img src="/img?KEY='+changeNoLightFormat(n2b(docs[i].SFZH,""))+'&DATATYPE=LDRK_IMG&s=0" style="width: 60px; higth: 80px; border-width: 1px;"></td>';
	  	innerStr = innerStr + '<td class=j><span style="font-size: 13px;">'
	  	+'姓名：'+ n2b(docs[i].XM,"")+'  性别：' + n2b(docs[i].XB,"") + '  身份证号：' + n2b(docs[i].SFZH,"")  + '  民族：' + n2b(docs[i].MZ,"") +'  户籍地址：'+ n2b(docs[i].CZHKSZDZZ,"") + '  工作单位：' + n2b(docs[i].GZDW,"") + '  暂住地址：'+ n2b(docs[i].XJZDZZ,"")
	  	+'...<br><span style="color: #008000">修改日期-------'+n2b(docs[i].updatesj,"")+'</span></td></tr></table>';
  	}	
	if(dataUrls=="shghrq"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\") >'+ n2b(docs[i].XM,"")+'('+n2b(docs[i].GMSFHM,"")+')的港华燃气用户信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
	  	+'姓名：'+ n2b(docs[i].XM,"") + '  身份证号：' + n2b(docs[i].GMSFHM,"") + '  联系方式：' + n2b(docs[i].LXDH,"") +'  地址：'+ n2b(docs[i].YHDZ,"") 
	  	+'...</span></td></tr></table>';
  	}

	if(dataUrls=="shybryxx"){

  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\") >'+ n2b(docs[i].XM,"")+'('+n2b(docs[i].SFZH,"")+')的医保信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);

	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
	  	+'姓名：'+ n2b(docs[i].XM,"") +'  性别：'+ n2b(docs[i].XB,"") +'  出生日期：'+ n2b(docs[i].CSRQ,"") + '  身份证号：' + n2b(docs[i].SFZH,"") +'  参保日期：'+ n2b(docs[i].CBRQ,"") +'  人员类别：'+ n2b(docs[i].RYLB,"") + '  联系方式：' + n2b(docs[i].LXDH,"") +'  家庭住址'+ n2b(docs[i].JTZZ,"") +'  亲属姓名'+ n2b(docs[i].QSXM,"") +'  亲属关系'+ n2b(docs[i].QSGX,"") + '  亲属联系方式：' + n2b(docs[i].QSLXDH,"") 
	  	+'...</span></td></tr></table>';

  	}
	if(dataUrls=="110fkd"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\") >'+ n2b(docs[i].FKRXM,"")+'的处警反馈情况'+'</a>';
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'+n2b(docs[i].CJQK,"")
	  	+'...</span></td></tr></table>';
  	}
	if(dataUrls=="110jjd"){
	  	innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\") >'+ n2b(docs[i].BJRXM,"")+n2b(docs[i].zjhm,"")+'的报警信息'+'</a>';
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
	  	+n2b(docs[i].BJNR,"")+'...<br><span style="color: #008000">案发地址：'+n2b(docs[i].AFDD,"")+ '-------联系电话：' + n2b(docs[i].LXDH,"")
	  	+'</span></td></tr></table>';
  	}
	if(dataUrls=="110cjd"){
	  	innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\") >'+ n2b(docs[i].CJYXM,"")+'的处警信息'+'</a>';
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
	  	+'处警员姓名：'+ n2b(docs[i].CJYXM,"")+'  处警员编号：' + n2b(docs[i].CJYBH,"") + '  处警台IP：' + n2b(docs[i].CJTIP,"") 
	  	+'...<br><span style="color: #008000">处警时间-------'+n2b(docs[i].CJSJ,"")+'</span></td></tr></table>';
  	}
	if(dataUrls=="ryjsy"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\") >驾驶员'+ n2b(docs[i].XM,"")+'('+n2b(docs[i].SFZMHM,"")+')的信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
	  	+'姓名：'+ n2b(docs[i].XM,"")+'  性别：' + n2b(docs[i].XB,"") + '  身份证号：' + n2b(docs[i].SFZMHM,"") +'  户籍地址：'+ n2b(docs[i].DJZSXXDZ,"") + '  联系方式：' + n2b(docs[i].SJHM,"")
	  	+'...</span></td></tr></table>';
  	}
	if(dataUrls=="ryszrk"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\") >全国失踪人口'+ n2b(docs[i].SZR_XM,"")+'('+n2b(docs[i].SZR_ZJHM,"")+')的信息'+'</a>';
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'+n2b(docs[i].BGR_JYQK,"")
	  	+'...</span></td></tr></table>';
  	}
	if(dataUrls=="clwfjl"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\") >车牌编号为'+ n2b(docs[i].HPHM,"")+'的违法记录信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
  		if(docs[i].HPZL=="小型汽车"){
  			innerStr = innerStr + addLookKkCarInfo(docs[i]);
  			
  		}
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
	  	+'车牌编号：'+ n2b(docs[i].HPHM,"") + '  驾驶员：' + n2b(docs[i].DSR,"") +'  驾驶证号：' + n2b(docs[i].JSZH,"") + '  住址：'+ n2b(docs[i].ZSXXDZ,"") +'  联系电话：'+ n2b(docs[i].DH,"")  +'  违法地点：'+ n2b(docs[i].WFDZ,"")
	  	+'...</span></td></tr></table>';
  	}
	if(dataUrls=="shgjlnr"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\") >'+ n2b(docs[i].XM,"")+'('+n2b(docs[i].ZJH,"")+')的公交卡老免信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
	  	+'姓名：'+ n2b(docs[i].XM,"") + '  证件号：' + n2b(docs[i].ZJH,"") + '  卡号：' + n2b(docs[i].KH,"")
	  	+'...</span></td></tr></table>';
  	}
	if(dataUrls=="shgjqt"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\") >'+ n2b(docs[i].XM,"")+'('+n2b(docs[i].ZJH,"")+')的公交其它卡信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
	  	+'姓名：'+ n2b(docs[i].XM,"") + '  证件号：' + n2b(docs[i].ZJH,"") + '  卡号：' + n2b(docs[i].KH,"")
	  	+'...</span></td></tr></table>';
  	}
	if(dataUrls=="lyldzs"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\") >'+ n2b(docs[i].NAME,"")+'('+n2b(docs[i].ID_CODE,"")+')的旅馆住宿信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr>';
	  	innerStr = innerStr + '<td><img src="/img?KEY='+changeNoLightFormat(n2b(docs[i].ID,""))+'&DATATYPE=LZXX_IMG&s=0&ds=1" style="width: 60px; higth: 80px; border-width: 1px;"></td>';
	  	innerStr = innerStr + '<td class=j><span style="font-size: 10pt;">'
	  	+'姓名：'+ n2b(docs[i].NAME,"") + '  证件号：' + n2b(docs[i].ID_CODE,"") +'  性别：'+ n2b(docs[i].XB,"") + '  家庭住址：' + n2b(docs[i].ADDRESS,"") + '  所住宾馆：' + n2b(docs[i].HOTELNAME,"")
	  	+'...<br><span style="color: #008000">入住时间-------' + checkDate(docs[i].OUT_TIME)+'--'+checkDate(docs[i].OUT_TIME)+'</span></td></tr></table>';
  	}
	if(dataUrls=="shzxdxs"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\") >'+ n2b(docs[i].XM,"")+'('+n2b(docs[i].SFZHM,"")+')的在校大学生基本信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
	  	+'姓名：'+ n2b(docs[i].XM,"")+'  性别：' + n2b(docs[i].XB,"") + '  身份证号：' + n2b(docs[i].SFZHM,"") + '  出生日期：' + n2b(docs[i].CSRQ,"") + '  民族：' + n2b(docs[i].MZ,"") + '  政治面貌：' + n2b(docs[i].ZZMM,"") + '  入学时间：' + n2b(docs[i].RXSJ,"") + '  就读专业：' + n2b(docs[i].ZHUANYE,"") + '  联系方式：' + n2b(docs[i].LXFS,"") +'  就读学校：'+ n2b(docs[i].YXMC,"") + '  户口所在地：' + n2b(docs[i].CZHKSZDXZ,"")
	  	+'...</span></td></tr></table>';
  	}
	if(dataUrls=="shlsxx"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\") >'+ n2b(docs[i].XM,"")+'('+n2b(docs[i].SFZH,"")+')的律师信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
	  	+'姓名：'+ n2b(docs[i].XM,"")+'  性别：' + n2b(docs[i].XB,"") + '  证件号码：' + n2b(docs[i].SFZH,"") + '  律师事务所：' + n2b(docs[i].LSSWS,"")  + '  联系方式：' + n2b(docs[i].LXFS,"") 
	  	+'...</span></td></tr></table>';
  	}
	if(dataUrls=="shylryxx"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\") >'+ n2b(docs[i].XM,"")+'('+n2b(docs[i].SFZH,"")+')的居民养老人员信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
	  	+'姓名：'+ n2b(docs[i].XM,"")+'  性别：' + n2b(docs[i].XB,"") + '  身份证号：' + n2b(docs[i].SFZH,"") + '  家庭住址：' + n2b(docs[i].JTZZ,"")  + '  户籍地址：' + n2b(docs[i].HKSZD,"") 
	  	+'...</span></td></tr></table>';
  	}
	if(dataUrls=="shzgsbxx"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\") >'+ n2b(docs[i].XM,"")+'('+n2b(docs[i].SFZH,"")+')的职工人员社保信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
	  	+'姓名：'+ n2b(docs[i].XM,"")+'  性别：' + n2b(docs[i].XB,"") + '  身份证号：' + n2b(docs[i].SFZH,"") + '  出生日期：' + n2b(docs[i].CSRQ,"")  + '  缴纳单位：' + n2b(docs[i].DWMC,"") 
	  	+'...</span></td></tr></table>';
  	}
	if(dataUrls=="shtxdhxx"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\") >'+ n2b(docs[i].XM,"")+'('+n2b(docs[i].SFZH,"")+')的通信电话信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
	  	+'姓名：'+ n2b(docs[i].XM,"") + '  证件号码：' + n2b(docs[i].SFZH,"") + '  安装号码：' + n2b(docs[i].HM,"")  + '  联系电话：' + n2b(docs[i].LXDH,"")
	  	+'...</span></td></tr></table>';
  	}
	if(dataUrls=="jjqzcs"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\")>'+ n2b(docs[i].DSR,"")+'('+n2b(docs[i].JSZH,"")+')的强制措施信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
  		
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
	  	+'驾驶员：'+ n2b(docs[i].DSR,"") + '  证件号码：' + n2b(docs[i].JSZH,"") + '  家庭地址：' + n2b(docs[i].ZSXXDZ,"")  + '  车牌号码：' + n2b(docs[i].HPHM,"") + '  电话：' + n2b(docs[i].DH,"")+ '  违法地点：' + n2b(docs[i].WFDD,"")
	  	+'...</span></td></tr></table>';
  	}
	if(dataUrls=="jjfxcwb"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\")>'+ n2b(docs[i].JDCSYR,"")+'('+n2b(docs[i].zjhm,"")+')的非现场文本记录'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
  		if(docs[i].HPZL=="小型汽车"){
  			innerStr = innerStr + addLookKkCarInfo(docs[i]);
  			
  		}
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
	  	+'驾驶员：'+ n2b(docs[i].JDCSYR,"") + '  证件号码：' + n2b(docs[i].zjhm,"") + '  家庭地址：' + n2b(docs[i].ZSXXDZ,"")  + '  车牌号码：' + n2b(docs[i].HPHM,"") + '  电话：' + n2b(docs[i].lxfs,"")+ '  违法地点：' + n2b(docs[i].WFDZ,"")
	  	+'...</span></td></tr></table>';
  	}
	if(dataUrls=="jjjdcxx"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\")>车牌号为：'+ n2b(docs[i].HPHM,"")+'的机动车信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
  		if(docs[i].hpzl=="小型汽车"){
  			
  			innerStr = innerStr + addLookKkCarInfo(docs[i]);
  			
  		}
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
	  	+'车牌号：'+ n2b(docs[i].HPHM,"")  +' 车牌种类：'+ n2b(docs[i].HPZL,"") + '  生产厂商：' + n2b(docs[i].ZZCMC,"")  + '  所属人姓名：' + n2b(docs[i].SYR,"") + '  证件号码：' + n2b(docs[i].SFZMHM,"") + '  家庭地址：' + n2b(docs[i].ZZXXDZ,"")  
	  	+'...</span></td></tr></table>';
  	}
	if(dataUrls=="lvlgxx"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\")>旅馆：'+ n2b(docs[i].CALLED,"")+'的信息'+'</a>';
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
	  	+'旅馆名称：'+ n2b(docs[i].CALLED,"") + '  地址：' + n2b(docs[i].ADDRESS,"")  + '  负责人：' + n2b(docs[i].MANAGER,"") + '  电话：' + n2b(docs[i].TEL,"")   
	  	+'...</span></td></tr></table>';
  	}
	if(dataUrls=="yzyzdw"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\")>'+ n2b(docs[i].SEALNAME,"")+'的印章信息'+'</a>';
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
	  	+'单位名称：'+ n2b(docs[i].SEALNAME,"") + '  申请人：' + n2b(docs[i].APPLY_PERSON,"")     
	  	+'...</span></td></tr></table>';
  	}
	if(dataUrls=="yzsyrxx"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\")>'+ n2b(docs[i].CRP_NAME,"")+'的印章使用人信息'+'</a>';
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
	  	+'  申请人：' + n2b(docs[i].CRP_NAME,"") +'单位名称：'+ n2b(docs[i].ORG_NAME,"") +  '地址：'+ n2b(docs[i].ADDRESS,"") +  '电话：'+ n2b(docs[i].TELEPHONE,"") 
	  	+'...</span></td></tr></table>';
  	}
	if(dataUrls=="ksszsry"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\")>看守所人员'+ n2b(docs[i].XM,"")+'的信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr>';
	  	innerStr = innerStr + '<td><img src="/img?KEY='+n2b(docs[i].LFFH,"")+'&DATATYPE=KSS_IMG&s=0" style="width: 60px; higth: 80px; border-width: 1px;"></td>';
	  	innerStr = innerStr + '<td class=j><span style="font-size: 10pt;">'
	  	+'  姓名：' + n2b(docs[i].XM,"") +'  性别：'+ n2b(docs[i].XB,"") +  '证件号码：'+ n2b(docs[i].ZJH,"") +  '  民族：'+ n2b(docs[i].MZ,"") +  '  文化程度：'+ n2b(docs[i].WHCD,"") +  '  工作单位：'+ n2b(docs[i].GZDW,"") +  '  家庭住址：'+ n2b(docs[i].ZZ,"") +  '  犯罪简介：'+ n2b(docs[i].FZJJ,"")
	  	+'...</span></td></tr></table>';
  	}
	if(dataUrls=="kssjlsxx"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\")>拘留所人员'+ n2b(docs[i].XM,"")+'的信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr>';
	  	innerStr = innerStr + '<td><img src="/img?KEY='+n2b(docs[i].LFFH,"")+'&DATATYPE=JLS_IMG&s=0" style="width: 60px; higth: 80px; border-width: 1px;"></td>';
	  	innerStr = innerStr + '<td class=j><span style="font-size: 10pt;">'
	  	+'  姓名：' + n2b(docs[i].XM,"") +'  性别：'+ n2b(docs[i].XB,"") +  '  证件号码：'+ n2b(docs[i].ZJH,"") +  '  民族：'+ n2b(docs[i].MZ,"") +  '  文化程度：'+ n2b(docs[i].WHCD,"") +  '  工作单位：'+ n2b(docs[i].GZDW,"") +  '  家庭住址：'+ n2b(docs[i].XZDXZ,"") +  '  犯罪简介：'+ n2b(docs[i].JYAQ,"")
	  	+'...</span></td></tr></table>';
  	}
	if(dataUrls=="qyqzxx"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\")>养犬用户'+ n2b(docs[i].XM,"")+'('+n2b(docs[i].ZJHM,"")+')的信息'+'</a>';
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr>';
	  	innerStr = innerStr + '<td><img src="/img?KEY='+n2b(docs[i].DJZH,"")+'&DATATYPE=QZXX_IMG&s=0" style="width: 60px; higth: 80px; border-width: 1px;"></td>';
	  	innerStr = innerStr + '<td class=j><span style="font-size: 10pt;">'
	  	+'  姓名：' + n2b(docs[i].XM,"")  +  '  证件号码：'+ n2b(docs[i].ZJHM,"")  +  '  家庭地址：'+ n2b(docs[i].DZ,"") +  '  联系电话：'+ n2b(docs[i].LXDH,"") +  '  犬名：'+ n2b(docs[i].QM,"") +  '  犬信息描述：'+ n2b(docs[i].MS,"")
	  	+'...</span></td></tr></table>';
  	}
	if(dataUrls=="asjwpxx"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\")>案事件物品'+ n2b(docs[i].WPMC,"")+'的信息'+'</a>';
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
	  	+'  物品名称：' + n2b(docs[i].WPMC,"") +'特征描述：'+ n2b(docs[i].TZMS,"") 
	  	+'...</span></td></tr></table>';
  	}
	if(dataUrls=="jzqgbdqcl"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\")>全国被盗抢'+ n2b(docs[i].HPHM,"")+'的车信息'+'</a>';
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
	  	+'  车牌号：' + n2b(docs[i].HPHM,"") +'车辆类型：'+ n2b(docs[i].CLLX_ZW,"")  +'使用人：'+ n2b(docs[i].SYR,"") +'案件性质：'+ n2b(docs[i].AJXZ_ZW,"")  +'备注：'+ n2b(docs[i].BZ,"")
	  	+'...</span></td></tr></table>';
  	}
	if(dataUrls=="jzqsswryxx"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\")>'+ n2b(docs[i].SWRYXM,"")+'的上网信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
	  	+' 姓名：' + n2b(docs[i].SWRYXM,"") +'证件号码：'+ n2b(docs[i].ZJHM,"")  +'网吧名称：'+ n2b(docs[i].YYCSMC,"") +'地址：'+ n2b(docs[i].DZ,"") 
	  	+'...<br><span style="color: #008000">上网时间-------' + n2b(docs[i].SWKSSJ,"")+'---'+n2b(docs[i].XWSJ,"")+'</span></td></tr></table>';
  	}
	if(dataUrls=="jzswcsxx"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\")>上网场所'+ n2b(docs[i].YYCSMC,"")+'的信息'+'</a>';
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
	  	+'  名称：' + n2b(docs[i].YYCSMC,"") +'地址：'+ n2b(docs[i].DZ,"")  
	  	+'...</span></td></tr></table>';
  	}
	if(dataUrls=="jzswffz"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\")>'+ n2b(docs[i].XM,"")+'的违法犯罪信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
	  	+'  姓名：' + n2b(docs[i].XM,"") +'  别名：'+ n2b(docs[i].BM,"")  +'  性别：'+ n2b(docs[i].XB_ZW,"") +'  证件号码：'+ n2b(docs[i].ZJHM,"") +'  民族：'+ n2b(docs[i].MZ_ZW,"")  +'  文化程度：'+ n2b(docs[i].WHCD_ZW,"") +'  政治面貌：'+ n2b(docs[i].ZZMM_ZW,"") +'  户籍地址：'+ n2b(docs[i].HJDXZ,"")
	  	+'...</span></td></tr></table>';
  	}
	if(dataUrls=="jzqgwmst"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\")>无名尸体'+ n2b(docs[i].FXRXM,"")+'的信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
	  	+'  发现人姓名：' + n2b(docs[i].FXRXM,"") +  +'性别：'+ n2b(docs[i].FXRXB_ZW,"") +'发现人证件号码：'+ n2b(docs[i].ZJHM,"")  +'发现人电话：'+ n2b(docs[i].FXR_YDDH,"") +'发现地点：'+ n2b(docs[i].FXDD,"") +'简要概括：'+ n2b(docs[i].JYQK,"")
	  	+'...</span></td></tr></table>';
  	}

	if(dataUrls=="jzzdryxx"){
		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\")>重点人员'+ n2b(docs[i].XM,"")+'('+n2b(docs[i].SFZH,"")+')的信息'+'</a>';
		innerStr = innerStr + addLookPeopleIdx(docs[i]);
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 13px;">'
	  	+' 姓名：' + n2b(docs[i].XM,"")  +'  性别：'+ n2b(docs[i].XB,"") +'  身份证号：'+ n2b(docs[i].SFZH,"")  +'  民族：'+ n2b(docs[i].MZ,"")+  '  户籍地详址：'+ n2b(docs[i].HJDXZ,"")
	  	+'...</span></td></tr></table>';
	}
	if(dataUrls=="hzgzdx"){
		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\")>工作对象'+ n2b(docs[i].GK_XM,"")+'('+n2b(docs[i].GK_GMSFHM,"")+')的基本信息'+'</a>';
		innerStr = innerStr + addLookPeopleIdx(docs[i]);
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr>';
	  	innerStr = innerStr + '<td><img src="/img?KEY='+n2b(docs[i].GK_ZHAOPIAN,"")+'&DATATYPE=HZCZRK_IMG&s=0" style="width: 60px; higth: 80px; border-width: 1px;"></td>';
	  	innerStr = innerStr + '<td class=j><span style="font-size: 13px;">'
	  	+' 姓名：' + n2b(docs[i].GK_XM,"") +'  性别：'+ n2b(docs[i].GK_XB,"") +'  身份证号：'+ n2b(docs[i].GK_GMSFHM,"")  +'  职业：'+ n2b(docs[i].GK_ZY,"")+  '  户籍地详址：'+ n2b(docs[i].GK_HJDZ,"")
	  	+'...</span></td></tr></table>';
	}
	if(dataUrls=="gsgcxx"){
	  	innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\")>车牌号为'+ n2b(docs[i].CKCP,"")+'的高速过车信息'+'</a>';
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
	  	+' 入口站名称：' + n2b(docs[i].RKZMC,"") +'  出口站名称：'+ n2b(docs[i].CKZMC,"") +'  入口车牌：'+ n2b(docs[i].RKCP,"")  +'  入口车型：'+ n2b(docs[i].RKCX,"")+  '  出口车牌：'+ n2b(docs[i].CKCP,"")+  '  出口车型：'+ n2b(docs[i].CKCX,"")
	  	+'...</span></td></tr></table>';
	}
	if(dataUrls=="zdscryskxx"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\") >'+ n2b(docs[i].XM,"")+'('+n2b(docs[i].SFZHM,"")+')的刷卡信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
	  	+'姓名：'+ n2b(docs[i].XM,"") + '  身份证号：' + n2b(docs[i].SFZHM,"") + '  医院名称：' + n2b(docs[i].YYMC,"") +'  卡号：'+ n2b(docs[i].KH,"") 
	  	+'...</span></td></tr></table>';
  	}
	if(dataUrls=="zdscryzyxx"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\") >'+ n2b(docs[i].XM,"")+'('+n2b(docs[i].SFZHM,"")+')的住院信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
	  	+'姓名：'+ n2b(docs[i].XM,"") + '  身份证号：' + n2b(docs[i].SFZHM,"") + '  医院名称：' + n2b(docs[i].YYMC,"") +'  卡号：'+ n2b(docs[i].KH,"") 
	  	+'...</span></td></tr></table>';
  	}
	return innerStr;
}
function getShowInfo(dataUrls,pk,docs,i){
	var innerStr = "";	
	
	if(dataUrls=="peopleidx"){
		var showCym = n2bAddRep(docs[i].cym,"");
		innerStr = innerStr + '<p class=g1><a id=linktype href="/a/people/'+n2bAddRep(docs[i].id,"")+'"  target="_blank">'+ n2bAddRep(docs[i].xm,"")+'('+n2bAddRep(docs[i].id,"")+')的人员档案信息'+'</a>';
		
			
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr>';
	  	innerStr = innerStr + '<td><img src="/img/peoplePhoto/'+n2bAddRep(docs[i].id,"")+'?s=2" /></td>';
	  	innerStr = innerStr + '<td class=j><span style="font-size: 10pt;">'+ getAddHtmInfo('姓名',n2bAddRep(docs[i].xm,""));
	  	if(showCym!=undefined&&showCym!="undefined"&&showCym!=null&&showCym!="null"&&showCym!=""){
	  		innerStr = innerStr + getAddHtmInfo('曾用名',n2bAddRep(showCym,""));
	
	  	}
	  	innerStr = innerStr + getAddHtmInfo('性别',n2bAddRep(docs[i].xb,""))  + getAddHtmInfo('身份证号',n2bAddRep(docs[i].id,""))  + getAddHtmInfo('民族',n2bAddRep(docs[i].mz,""))  + getAddHtmInfo('职业',n2bAddRep(docs[i].zy,"")) + getAddHtmInfo('联系电话',n2bAddRep(docs[i].dh,""))  + getAddHtmInfo('户籍地址',n2bAddRep(docs[i].dz,"")) + getAddHtmInfo('工作单位',n2bAddRep(docs[i].gzdw,"")) ;
//	  	+'...<br><span style="color: #008000">'+'所属派出所：'+ n2b(docs[i].pcs,"") +'  所属辖区：'+ n2b(docs[i].xq,"");
	  	innerStr = innerStr +'</td></tr></table>';
	}
	
	
	if(dataUrls=="asjaj"){
	  	innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\")>'+ n2b(docs[i].mc,"无标题")+'</a>';
	  	innerStr = innerStr  + "&nbsp;&nbsp;" + '<a href="/a/case/'+changeNoLightFormat(docs[i].bh)+'"  target="_blank">查看案件档案</a>';	
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;color: #1C001C">'
	  	+n2b(docs[i].jygk,"")+'...<br><span style="color: #008000"><span style="color: #008000">案件状态：'+n2b(docs[i].zt,"")+"&nbsp;&nbsp;&nbsp;&nbsp;"+n2b(docs[i].dd,"")+ '-------' + n2b(docs[i].updatesj,"")+'</span></span></td></tr></table>';
  	}
	if(dataUrls=="asjjq"){
	  	innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\") >'+ n2b(docs[i].mc,"无标题")+'</a>';
	  	innerStr = innerStr  + "&nbsp;&nbsp;" + '<a href="/a/case/'+changeNoLightFormat(docs[i].bh)+'"  target="_blank">查看案件档案</a>';
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
	  	+n2b(docs[i].jygk,"")+'...<br>'+n2b(docs[i].dd,"")+ '-------' + n2b(docs[i].updatesj,"")+'</span></span></td></tr></table>';
  	}
	
	if(dataUrls=="asjxyr"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\") >嫌疑人'+ n2b(docs[i].XM,"")+'('+n2b(docs[i].ZJHM,"")+')的涉案情况'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr>';
	  	var id = n2b(docs[i].ODC_ZJ,"");
	  	innerStr = innerStr + '<td><img src="/img?KEY='+id+'&DATATYPE=XYR1_IMG&s=2&ds=2" style="width: 60px; higth: 80px; border-width: 1px;"></td>';
	  	innerStr = innerStr + '<div id="infor_arrow">';
	  	innerStr = innerStr + '<td><img id="'+id+'" onclick="showMoreZpxx1(this)" src="images/arrowR.jpg" style="cursor: pointer; width: 15px; higth: 20px; border-width: 1px;"/></td>';
	  	innerStr = innerStr + '</div>';
	  	innerStr = innerStr + '<td class=j><span style="font-size: 10pt;">'
	  	+n2b(docs[i].WFQK,"")+'...<br><span style="color: #008000">修改日期-------' + n2b(docs[i].ODC_GXSJ,"")+'</span></span></td></tr></table>';
  	}
	if(dataUrls=="asjbarxx"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\") >报案/受害/当事/其人'+ n2b(docs[i].XM,"")+'的信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
  		innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
  		+'姓名：'+ n2b(docs[i].XM,"") + '  性别：'  + n2b(docs[i].ZJHM,"") + '  民族：' + n2b(docs[i].MZ,"") + '  出生日期：' + n2b(docs[i].CSRQ,"") + '  联系方式：' + n2b(docs[i].LXDH,"") +'  地址：'+ n2b(docs[i].HJDZ,"") 
	  	+'...</span></td></tr></table>';
  	}
	if(dataUrls=="asjjtcygxr"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\") >家庭主要成员及关系人'+ n2b(docs[i].xm,"")+'('+n2b(docs[i].zjhm,"")+')的信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
  		innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
  		+'姓名：'+ n2b(docs[i].xm,"") + '  性别：' + n2b(docs[i].xb,"") + '  身份证号：' + n2b(docs[i].zjhm,"") + '  民族：' + n2b(docs[i].mz,"") + '  出生日期：' + n2b(docs[i].csrq,"") + '  联系方式：' + n2b(docs[i].lxfs,"") +'  地址：'+ n2b(docs[i].ZZ,"") 
	  	+'...</span></td></tr></table>';
  	}
	if(dataUrls=="hzczrk"){
		var showCym = docs[i].CYM;
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\")>'+ n2b(docs[i].XM,"")+'('+n2b(docs[i].GMSFHM,"")+')的常住人口信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
  		
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr>';
	  	innerStr = innerStr + '<td><img src="/img?KEY='+n2b(docs[i].SDZP,"")+'&DATATYPE=HZCZRK_IMG&s=0" style="width: 60px; higth: 80px; border-width: 1px;"></td>';
	  	innerStr = innerStr + '<td class=j><span style="font-size: 10pt;">'+'姓名：'+ n2b(docs[i].XM,"");
	  	if(showCym!=undefined&&showCym!="undefined"&&showCym!=null&&showCym!="null"){
	  		innerStr = innerStr + '  曾用名：' + showCym;

	  	}
	  	innerStr = innerStr +'  性别：' + n2b(docs[i].XB,"") + '  身份证号：' + n2b(docs[i].GMSFHM,"") + '  民族：' + n2b(docs[i].MZ,"") + '  职业：' + n2b(docs[i].ZY,"") +'  户籍地址：'+ n2b(docs[i].ZZ,"") +'  服务处所：'+ n2b(docs[i].FWCS,"")  +'  人员状态：'+ n2b(docs[i].ZXBZ,"")
	  	+'...<br><span style="color: #008000">'+'所属派出所：'+ n2b(docs[i].PCSDM,"") +'  所属辖区：'+ n2b(docs[i].BZXQDM,"");
	  	innerStr = innerStr +'</td></tr></table>';
	  
	}
	if(dataUrls=="hzzzrk"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\") >'+ n2b(docs[i].xm,"")+'('+n2b(docs[i].zjhm,"")+')的暂住人口信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr>';
	  	innerStr = innerStr + '<td><img src="/img?KEY='+n2b(docs[i].zpid,"")+'&DATATYPE=HZCZRK_IMG&s=0" style="width: 60px; higth: 80px; border-width: 1px;"></td>';
	  	innerStr = innerStr + '<td class=j><span style="font-size: 10pt;">'
	  	+'姓名：'+ n2b(docs[i].xm,"")+'  性别：' + n2b(docs[i].xb,"") + '  身份证号：' + n2b(docs[i].zjhm,"") +'  户籍地址：'+ n2b(docs[i].dz,"") + '  服务处所：' + n2b(docs[i].dwmc,"") + '  暂住地址：'+ n2b(docs[i].zzdz,"")
	  	+'...<br><span style="color: #008000">修改日期-------'+n2b(docs[i].updatesj,"")+'</span></span></td></tr></table>';
  	}
	if(dataUrls=="shczc"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\") >出租车驾驶员'+ n2b(docs[i].xm,"")+'('+n2b(docs[i].zjhm,"")+')的信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
	  	+'姓名：'+ n2b(docs[i].xm,"") + '  身份证号：' + n2b(docs[i].zjhm,"") + '  地址：'+ n2b(docs[i].dz,"") +'  出租车牌号：'+ n2b(docs[i].carbh,"")  +'  所属公司：'+ n2b(docs[i].dwmc,"")
	  	+'...</span></td></tr></table>';
  	}
	if(dataUrls=="sszzrkxx"){
  		innerStr = innerStr + '<p class=g1><a class=l href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\") >'+ n2b(docs[i].xm,"")+'('+n2b(docs[i].zjhm,"")+')的流动人口信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr>';
	  	innerStr = innerStr + '<td><img src="/img?KEY='+changeNoLightFormat(n2b(docs[i].zjhm,""))+'&DATATYPE=LDRK_IMG&s=0" style="width: 60px; higth: 80px; border-width: 1px;"></td>';
	  	innerStr = innerStr + '<td class=j><span style="font-size: 13px;">'
	  	+'姓名：'+ n2b(docs[i].xm,"")+'  性别：' + n2b(docs[i].xb,"") + '  身份证号：' + n2b(docs[i].zjhm,"")  + '  民族：' + n2b(docs[i].mz,"") +'  户籍地址：'+ n2b(docs[i].dz,"") + '  工作单位：' + n2b(docs[i].dwmc,"") + '  暂住地址：'+ n2b(docs[i].zzdz,"")
	  	+'...<br><span style="color: #008000">修改日期-------'+n2b(docs[i].updatesj,"")+'</span></span></td></tr></table>';
  	}	
	if(dataUrls=="shghrq"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\") >'+ n2b(docs[i].xm,"")+'('+n2b(docs[i].zjhm,"")+')的港华燃气用户信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
	  	+'姓名：'+ n2b(docs[i].xm,"") + '  身份证号：' + n2b(docs[i].zjhm,"") + '  联系方式：' + n2b(docs[i].lxfs,"") +'  地址：'+ n2b(docs[i].dz,"") 
	  	+'...</span></td></tr></table>';
  	}

	if(dataUrls=="shybryxx"){

  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\") >'+ n2b(docs[i].xm,"")+'('+n2b(docs[i].zjhm,"")+')的医保信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);

	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
	  	+'姓名：'+ n2b(docs[i].xm,"") +'  性别：'+ n2b(docs[i].xb,"") +'  出生日期：'+ n2b(docs[i].csrq,"") + '  身份证号：' + n2b(docs[i].zjhm,"") +'  参保日期：'+ n2b(docs[i].cbrq,"") +'  人员类别：'+ n2b(docs[i].rylb,"") + '  联系方式：' + n2b(docs[i].lxfs,"") +'  家庭住址'+ n2b(docs[i].dz,"") +'  亲属姓名'+ n2b(docs[i].qsxm,"") +'  亲属关系'+ n2b(docs[i].qsgx,"") + '  亲属联系方式：' + n2b(docs[i].qslxfs,"") 
	  	+'...</span></td></tr></table>';

  	}
	if(dataUrls=="110fkd"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\") >'+ n2b(docs[i].xm,"")+'的处警反馈情况'+'</a>';
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'+n2b(docs[i].jygk,"")
	  	+'...</span></td></tr></table>';
  	}
	if(dataUrls=="110jjd"){
	  	innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\") >'+ n2b(docs[i].xm,"")+n2b(docs[i].zjhm,"")+'的报警信息'+'</a>';
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
	  	+n2b(docs[i].jygk,"")+'...<br><span style="color: #008000">案发地址：'+n2b(docs[i].dz,"")+ '-------联系电话：' + n2b(docs[i].lxfs,"")
	  	+'</span></span></td></tr></table>';
  	}
	if(dataUrls=="110cjd"){
	  	innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\") >'+ n2b(docs[i].xm,"")+'的处警信息'+'</a>';
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
	  	+'处警员姓名：'+ n2b(docs[i].xm,"")+'  处警员编号：' + n2b(docs[i].cjybh,"") + '  处警台IP：' + n2b(docs[i].tip,"") 
	  	+'...<br><span style="color: #008000">处警时间-------'+n2b(docs[i].cjsj,"")+'</span></span></td></tr></table>';
  	}
	if(dataUrls=="ryjsy"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\") >驾驶员'+ n2b(docs[i].xm,"")+'('+n2b(docs[i].zjhm,"")+')的信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
	  	+'姓名：'+ n2b(docs[i].xm,"")+'  性别：' + n2b(docs[i].xb,"") + '  身份证号：' + n2b(docs[i].zjhm,"") +'  户籍地址：'+ n2b(docs[i].dz,"") + '  联系方式：' + n2b(docs[i].lxfs,"")
	  	+'...</span></td></tr></table>';
  	}
	if(dataUrls=="ryszrk"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\") >全国失踪人口'+ n2b(docs[i].xm,"")+'('+n2b(docs[i].zjhm,"")+')的信息'+'</a>';
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'+n2b(docs[i].jygk,"")
	  	+'...</span></td></tr></table>';
  	}
	if(dataUrls=="clwfjl"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\") >车牌编号为'+ n2b(docs[i].carbh,"")+'的违法记录信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
  		if(docs[i].hpzl=="小型汽车"){
  			innerStr = innerStr + addLookKkCarInfo(docs[i]);
  			
  		}
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
	  	+'车牌编号：'+ n2b(docs[i].carbh,"") + '  驾驶员：' + n2b(docs[i].xm,"") +'  驾驶证号：' + n2b(docs[i].zjhm,"") + '  住址：'+ n2b(docs[i].dz,"") +'  联系电话：'+ n2b(docs[i].lxfs,"")  +'  违法地点：'+ n2b(docs[i].dd,"")
	  	+'...</span></td></tr></table>';
  	}
	if(dataUrls=="shgjlnr"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\") >'+ n2b(docs[i].xm,"")+'('+n2b(docs[i].zjhm,"")+')的公交卡老免信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
	  	+'姓名：'+ n2b(docs[i].xm,"") + '  证件号：' + n2b(docs[i].zjhm,"") + '  卡号：' + n2b(docs[i].bh,"")
	  	+'...</span></td></tr></table>';
  	}
	if(dataUrls=="shgjqt"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\") >'+ n2b(docs[i].xm,"")+'('+n2b(docs[i].zjhm,"")+')的公交其它卡信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
	  	+'姓名：'+ n2b(docs[i].xm,"") + '  证件号：' + n2b(docs[i].zjhm,"") + '  卡号：' + n2b(docs[i].bh,"")
	  	+'...</span></td></tr></table>';
  	}
	if(dataUrls=="lyldzs"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\") >'+ n2b(docs[i].xm,"")+'('+n2b(docs[i].zjhm,"")+')的旅馆住宿信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr>';
	  	innerStr = innerStr + '<td><img src="/img?KEY='+changeNoLightFormat(n2b(docs[i].bh,""))+'&DATATYPE=LZXX_IMG&s=0&ds=1" style="width: 60px; higth: 80px; border-width: 1px;"></td>';
	  	innerStr = innerStr + '<td class=j><span style="font-size: 10pt;">'
	  	+'姓名：'+ n2b(docs[i].xm,"") + '  证件号：' + n2b(docs[i].zjhm,"") +'  性别：'+ n2b(docs[i].xb,"") + '  家庭住址：' + n2b(docs[i].dz,"") + '  所住宾馆：' + n2b(docs[i].dwmc,"")
	  	+'...<br><span style="color: #008000">入住时间-------' + checkDate(docs[i].kssj)+'--'+checkDate(docs[i].jssj)+'</span></span></td></tr></table>';
  	}
	if(dataUrls=="shzxdxs"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\") >'+ n2b(docs[i].xm,"")+'('+n2b(docs[i].zjhm,"")+')的在校大学生基本信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
	  	+'姓名：'+ n2b(docs[i].xm,"")+'  性别：' + n2b(docs[i].xb,"") + '  身份证号：' + n2b(docs[i].zjhm,"") + '  出生日期：' + n2b(docs[i].csrq,"") + '  民族：' + n2b(docs[i].mz,"") + '  政治面貌：' + n2b(docs[i].zzmm,"") + '  入学时间：' + n2b(docs[i].rxsj,"") + '  就读专业：' + n2b(docs[i].zy,"") + '  联系方式：' + n2b(docs[i].lxfs,"") +'  就读学校：'+ n2b(docs[i].dwmc,"") + '  户口所在地：' + n2b(docs[i].dz,"")
	  	+'...</span></td></tr></table>';
  	}
	if(dataUrls=="shlsxx"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\") >'+ n2b(docs[i].xm,"")+'('+n2b(docs[i].zjhm,"")+')的律师信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
	  	+'姓名：'+ n2b(docs[i].xm,"")+'  性别：' + n2b(docs[i].xb,"") + '  证件号码：' + n2b(docs[i].zjhm,"") + '  律师事务所：' + n2b(docs[i].dwmc,"")  + '  联系方式：' + n2b(docs[i].lxfs,"") 
	  	+'...</span></td></tr></table>';
  	}
	if(dataUrls=="shylryxx"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\") >'+ n2b(docs[i].xm,"")+'('+n2b(docs[i].zjhm,"")+')的居民养老人员信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
	  	+'姓名：'+ n2b(docs[i].xm,"")+'  性别：' + n2b(docs[i].xb,"") + '  身份证号：' + n2b(docs[i].zjhm,"") + '  家庭住址：' + n2b(docs[i].dz,"")  + '  户籍地址：' + n2b(docs[i].hjdz,"") 
	  	+'...</span></td></tr></table>';
  	}
	if(dataUrls=="shzgsbxx"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\") >'+ n2b(docs[i].xm,"")+'('+n2b(docs[i].zjhm,"")+')的职工人员社保信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
	  	+'姓名：'+ n2b(docs[i].xm,"")+'  性别：' + n2b(docs[i].xb,"") + '  身份证号：' + n2b(docs[i].zjhm,"") + '  出生日期：' + n2b(docs[i].csrq,"")  + '  缴纳单位：' + n2b(docs[i].dwmc,"") 
	  	+'...</span></td></tr></table>';
  	}
	if(dataUrls=="shtxdhxx"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\") >'+ n2b(docs[i].xm,"")+'('+n2b(docs[i].zjhm,"")+')的通信电话信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
	  	+'姓名：'+ n2b(docs[i].xm,"") + '  证件号码：' + n2b(docs[i].zjhm,"") + '  安装号码：' + n2b(docs[i].bh,"")  + '  联系电话：' + n2b(docs[i].lxfs,"")
	  	+'...</span></td></tr></table>';
  	}
	if(dataUrls=="jjqzcs"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\")>'+ n2b(docs[i].xm,"")+'('+n2b(docs[i].zjhm,"")+')的强制措施信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
  		
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
	  	+'驾驶员：'+ n2b(docs[i].xm,"") + '  证件号码：' + n2b(docs[i].zjhm,"") + '  家庭地址：' + n2b(docs[i].dz,"")  + '  车牌号码：' + n2b(docs[i].carbh,"") + '  电话：' + n2b(docs[i].lxfs,"")+ '  违法地点：' + n2b(docs[i].dd,"")
	  	+'...</span></td></tr></table>';
  	}
	if(dataUrls=="jjfxcwb"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\")>'+ n2b(docs[i].xm,"")+'('+n2b(docs[i].zjhm,"")+')的非现场文本记录'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
  		if(docs[i].hpzl=="小型汽车"){
  			innerStr = innerStr + addLookKkCarInfo(docs[i]);
  			
  		}
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
	  	+'驾驶员：'+ n2b(docs[i].xm,"") + '  证件号码：' + n2b(docs[i].zjhm,"") + '  家庭地址：' + n2b(docs[i].dz,"")  + '  车牌号码：' + n2b(docs[i].carbh,"") + '  电话：' + n2b(docs[i].lxfs,"")+ '  违法地点：' + n2b(docs[i].dd,"")
	  	+'...</span></td></tr></table>';
  	}
	if(dataUrls=="jjjdcxx"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\")>车牌号为：'+ n2b(docs[i].carbh,"")+'的机动车信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
  		if(docs[i].hpzl=="小型汽车"){
  			
  			innerStr = innerStr + addLookKkCarInfo(docs[i]);
  			
  		}
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
	  	+'车牌号：'+ n2b(docs[i].carbh,"")  +' 车牌种类：'+ n2b(docs[i].hpzl,"") + '  生产厂商：' + n2b(docs[i].dwmc,"")  + '  所属人姓名：' + n2b(docs[i].xm,"") + '  证件号码：' + n2b(docs[i].zjhm,"") + '  家庭地址：' + n2b(docs[i].dz,"")  
	  	+'...</span></td></tr></table>';
  	}
	if(dataUrls=="lvlgxx"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\")>旅馆：'+ n2b(docs[i].dwmc,"")+'的信息'+'</a>';
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
	  	+'旅馆名称：'+ n2b(docs[i].dwmc,"") + '  地址：' + n2b(docs[i].dz,"")  + '  负责人：' + n2b(docs[i].xm,"") + '  电话：' + n2b(docs[i].lxfs,"")   
	  	+'...</span></td></tr></table>';
  	}
	if(dataUrls=="yzyzdw"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\")>'+ n2b(docs[i].dwmc,"")+'的印章信息'+'</a>';
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
	  	+'单位名称：'+ n2b(docs[i].dwmc,"") + '  申请人：' + n2b(docs[i].xm,"")     
	  	+'...</span></td></tr></table>';
  	}
	if(dataUrls=="yzsyrxx"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\")>'+ n2b(docs[i].xm,"")+'的印章使用人信息'+'</a>';
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
	  	+'  申请人：' + n2b(docs[i].xm,"") +'单位名称：'+ n2b(docs[i].dwmc,"") +  '地址：'+ n2b(docs[i].dz,"") +  '电话：'+ n2b(docs[i].lxfs,"") 
	  	+'...</span></td></tr></table>';
  	}
	if(dataUrls=="ksszsry"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\")>看守所人员'+ n2b(docs[i].xm,"")+'的信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr>';
	  	innerStr = innerStr + '<td><img src="/img?KEY='+n2b(docs[i].bh,"")+'&DATATYPE=KSS_IMG&s=0" style="width: 60px; higth: 80px; border-width: 1px;"></td>';
	  	innerStr = innerStr + '<td class=j><span style="font-size: 10pt;">'
	  	+'  姓名：' + n2b(docs[i].xm,"") +'  性别：'+ n2b(docs[i].xb,"") +  '证件号码：'+ n2b(docs[i].zjhm,"") +  '  民族：'+ n2b(docs[i].mz,"") +  '  文化程度：'+ n2b(docs[i].whcd,"") +  '  工作单位：'+ n2b(docs[i].dwmc,"") +  '  家庭住址：'+ n2b(docs[i].dz,"") +  '  犯罪简介：'+ n2b(docs[i].jygk,"")
	  	+'...</span></td></tr></table>';
  	}
	if(dataUrls=="kssjlsxx"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\")>拘留所人员'+ n2b(docs[i].xm,"")+'的信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr>';
	  	innerStr = innerStr + '<td><img src="/img?KEY='+n2b(docs[i].bh,"")+'&DATATYPE=JLS_IMG&s=0" style="width: 60px; higth: 80px; border-width: 1px;"></td>';
	  	innerStr = innerStr + '<td class=j><span style="font-size: 10pt;">'
	  	+'  姓名：' + n2b(docs[i].xm,"") +'  性别：'+ n2b(docs[i].xb,"") +  '  证件号码：'+ n2b(docs[i].zjhm,"") +  '  民族：'+ n2b(docs[i].mz,"") +  '  文化程度：'+ n2b(docs[i].whcd,"") +  '  工作单位：'+ n2b(docs[i].dwmc,"") +  '  家庭住址：'+ n2b(docs[i].dz,"") +  '  犯罪简介：'+ n2b(docs[i].jygk,"")
	  	+'...</span></td></tr></table>';
  	}
	if(dataUrls=="qyqzxx"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\")>养犬用户'+ n2b(docs[i].xm,"")+'('+n2b(docs[i].zjhm,"")+')的信息'+'</a>';
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr>';
	  	innerStr = innerStr + '<td><img src="/img?KEY='+n2b(docs[i].bh,"")+'&DATATYPE=QZXX_IMG&s=0" style="width: 60px; higth: 80px; border-width: 1px;"></td>';
	  	innerStr = innerStr + '<td class=j><span style="font-size: 10pt;">'
	  	+'  姓名：' + n2b(docs[i].xm,"")  +  '  证件号码：'+ n2b(docs[i].zjhm,"")  +  '  家庭地址：'+ n2b(docs[i].dz,"") +  '  联系电话：'+ n2b(docs[i].lxfs,"") +  '  犬名：'+ n2b(docs[i].qm,"") +  '  犬信息描述：'+ n2b(docs[i].ms,"")
	  	+'...</span></td></tr></table>';
  	}
	if(dataUrls=="asjwpxx"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\")>案事件物品'+ n2b(docs[i].xm,"")+'的信息'+'</a>';
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
	  	+'  物品名称：' + n2b(docs[i].xm,"") +'特征描述：'+ n2b(docs[i].qkms,"") 
	  	+'...</span></td></tr></table>';
  	}
	if(dataUrls=="jzqgbdqcl"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\")>全国被盗抢'+ n2b(docs[i].carbh,"")+'的车信息'+'</a>';
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
	  	+'  车牌号：' + n2b(docs[i].carbh,"") +'车辆类型：'+ n2b(docs[i].lx,"")  +'使用人：'+ n2b(docs[i].xm,"") +'案件性质：'+ n2b(docs[i].xz,"")  +'备注：'+ n2b(docs[i].bz,"")
	  	+'...</span></td></tr></table>';
  	}
	if(dataUrls=="jzqsswryxx"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\")>'+ n2b(docs[i].xm,"")+'的上网信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
	  	+' 姓名：' + n2b(docs[i].xm,"") +'证件号码：'+ n2b(docs[i].zjhm,"")  +'网吧名称：'+ n2b(docs[i].dwmc,"") +'地址：'+ n2b(docs[i].dz,"") 
	  	+'...<br><span style="color: #008000">上网时间-------' + n2b(docs[i].kssj,"")+'---'+n2b(docs[i].jssj,"")+'</span></span></td></tr></table>';
  	}
	if(dataUrls=="jzswcsxx"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\")>上网场所'+ n2b(docs[i].dwmc,"")+'的信息'+'</a>';
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
	  	+'  名称：' + n2b(docs[i].dwmc,"") +'地址：'+ n2b(docs[i].dz,"")  
	  	+'...</span></td></tr></table>';
  	}
	if(dataUrls=="jzswffz"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\")>'+ n2b(docs[i].xm,"")+'的违法犯罪信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
	  	+'  姓名：' + n2b(docs[i].xm,"") +'  别名：'+ n2b(docs[i].bm,"")  +'  性别：'+ n2b(docs[i].xb,"") +'  证件号码：'+ n2b(docs[i].zjhm,"") +'  民族：'+ n2b(docs[i].mz,"")  +'  文化程度：'+ n2b(docs[i].whcd,"") +'  政治面貌：'+ n2b(docs[i].zzmm,"") +'  户籍地址：'+ n2b(docs[i].dz,"")
	  	+'...</span></td></tr></table>';
  	}
	if(dataUrls=="jzqgwmst"){
  		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\")>无名尸体'+ n2b(docs[i].xm,"")+'的信息'+'</a>';
  		innerStr = innerStr + addLookPeopleIdx(docs[i]);
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 10pt;">'
	  	+'  发现人姓名：' + n2b(docs[i].xm,"") +  +'性别：'+ n2b(docs[i].xb,"") +'发现人证件号码：'+ n2b(docs[i].zjhm,"")  +'发现人电话：'+ n2b(docs[i].lxfs,"") +'发现地点：'+ n2b(docs[i].dd,"") +'简要概括：'+ n2b(docs[i].jygk,"")
	  	+'...</span></td></tr></table>';
  	}

	if(dataUrls=="jzzdryxx"){
		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\")>重点人员'+ n2b(docs[i].xm,"")+'('+n2b(docs[i].zjhm,"")+')的信息'+'</a>';
		innerStr = innerStr + addLookPeopleIdx(docs[i]);
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr><td class=j><span style="font-size: 13px;">'
	  	+' 姓名：' + n2b(docs[i].xm,"")  +'  性别：'+ n2b(docs[i].xb,"") +'  身份证号：'+ n2b(docs[i].zjhm,"")  +'  民族：'+ n2b(docs[i].mz,"")+  '  户籍地详址：'+ n2b(docs[i].dz,"")
	  	+'...</span></td></tr></table>';
	}
	if(dataUrls=="hzgzdx"){
		innerStr = innerStr + '<p class=g1><a id=linktype href="javascript:;" onclick=openDetail(\"'+dataUrls+'\",\"'+pk+'\")>工作对象'+ n2b(docs[i].xm,"")+'('+n2b(docs[i].zjhm,"")+')的基本信息'+'</a>';
		innerStr = innerStr + addLookPeopleIdx(docs[i]);
	  	innerStr = innerStr + '<table cellpadding=0 cellspacing=0 border=0><tr>';
	  	innerStr = innerStr + '<td><img src="/img?KEY='+n2b(docs[i].zpid,"")+'&DATATYPE=HZCZRK_IMG&s=0" style="width: 60px; higth: 80px; border-width: 1px;"></td>';
	  	innerStr = innerStr + '<td class=j><span style="font-size: 13px;">'
	  	+' 姓名：' + n2b(docs[i].xm,"") +'  性别：'+ n2b(docs[i].xb,"") +'  身份证号：'+ n2b(docs[i].zjhm,"")  +'  职业：'+ n2b(docs[i].zy,"")+  '  户籍地详址：'+ n2b(docs[i].dz,"")
	  	+'...</span></td></tr></table>';
	}
	return innerStr;
}
function addLookPeopleIdx(doc){
	var zjhm = doc.zjhm;
	var str = "";
  	if(zjhm!=undefined&&zjhm!=null&&zjhm!=""){
  		str = str + "&nbsp;&nbsp;" + '<a href="/a/people/'+changeNoLightFormat(zjhm)+'"  target="_blank">查看人员档案</a>';	
  	}
  	return str;
}
function addLookKkCarInfo(doc){
	var carbh = doc.carbh;
	var str = "";
  	if(carbh!=undefined&&carbh!=null&&carbh!=""){
  		str = str + "&nbsp;&nbsp;" + '<a href="/a/vehicle2?hpzl=02&hphm='+encodeURIComponent(changeNoLightFormat(carbh))+'"  target="_blank">车辆信息</a>';	
  	}
  	return str;
}

function checkDate(str){
	var returnStr = "";
	if(str!=undefined&&str!="undefined"&&str!=null&&str!="null"){
		if(str.length==12){
			returnStr = str.substring(0,8) + " " + str.substring(8,10) + ":" + str.substring(10,12);
		}else{
			if(str.length()==14){
				returnStr = str.substring(0,8) + " " + str.substring(8,10) + ":" + str.substring(10,12) + ":"  + str.substring(12,14);
			}else{
				returnStr = str;
			}
		}
	}
	return returnStr;
}
function showMoreZpxx1(obj){
	var id = obj.id;
	var bb = $('#infor_arrow');
	bb.html("");
	var html = '<td><img src="/img?KEY='+id+'&DATATYPE=XYR2_IMG&s=2&ds=2" style="width: 60px; higth: 80px; border-width: 1px;"></td>';
	html += '<td><img src="/img?KEY='+id+'&DATATYPE=XYR3_IMG&s=2&ds=2" style="width: 60px; higth: 80px; border-width: 1px;"></td>';
	html = html + '<td><div class="infor_arrowR"><img onclick="hiddenMoreZpxx1()" src="images/arrowL.jpg" style="cursor: pointer; width: 15px; higth: 20px; border-width: 1px;"/></div></td>';
	bb.css("position","absolute");
	bb.css("left",$('#'+id).offset().left );
	bb.css("top",$('#'+id).offset().top );
	bb.html(html);
	bb.hide();
	bb.css("width","10px");
	bb.show();	
	bb.animate({width:'180px'});
}
function hiddenMoreZpxx1(){
	var bb = $('#infor_arrow');
	bb.animate({width:"0px",opacity:"hide"});
}
function n2bAddRep(para,nullInfo){
	if(para==undefined||para=="undefined"||para==null||para=="null"){
		return nullInfo;
	}else{
		return para.replace("[","").replace("]","");
	}
}
function getAddHtmInfo(chineseName,str){
	var innStr = "";
	if(str!=""){
		innStr = '&nbsp;&nbsp;' + chineseName + '：' + str;
	}
	return innStr;
}