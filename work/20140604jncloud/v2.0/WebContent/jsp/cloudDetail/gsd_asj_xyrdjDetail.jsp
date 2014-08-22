<%@page language='java' contentType='text/html;charset=UTF-8'%><%@taglib
	uri='/tags/ga-json' prefix='gaLabel'%><%@page language='java'
	pageEncoding='UTF-8'%><html>
<head>
<%
String pk = (String)request.getParameter("pk");
%>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>

<link type='text/css' rel='stylesheet' href='skins/default/css/skin.css'>
<title>嫌疑人登记明细</title>
<!--[if lte IE 6]>
<script src="skins/js/DD_belatedPNG_0.0.8a.js" type="text/javascript"></script>
    <script type="text/javascript">
        DD_belatedPNG.fix('div, ul,span, img, li, input , a');
    </script>
    <script type="text/javascript">DD_belatedPNG.fix('*');</script>
<![endif]--> 
<script language="javascript" src="skins/js/jquery/jquery.js"></script>
<script type="text/javascript">
function showMoreZpxx2(obj){
	var id = "<%=pk%>";
	var bb = $('#infor_arrow');
	bb.html("");
	var html = '<img src="/img?KEY='+id+'&DATATYPE=XYR2_IMG&s=2&ds=2" width="80" height="100">';
	html += '<img src="/img?KEY='+id+'&DATATYPE=XYR3_IMG&s=2&ds=2" width="80" height="100">';
	html = html + '<img onclick="hiddenMoreZpxx2()" src="images/arrowL.jpg" style="cursor: pointer; width: 15px; higth: 20px; border-width: 1px;"/>';
	
	bb.css("position","absolute");
	bb.css("left",$('#simg').offset().left-120 );
	bb.css("top",$('#simg').offset().top-12 );
	bb.html(html);
	bb.hide();
	bb.css("width","10px");
	bb.show();	
	bb.animate({width:'180px'});
}
function hiddenMoreZpxx2(){
	var bb = $('#infor_arrow');
	bb.animate({width:"0px",opacity:"hide"});
}
</script>
</head>
<body background='skins/default/images/background.jpg'
	style='background-repeat: repeat-x;'>
	<form name='hzczrkForm' method='post' action='czrkDetail.jsp'
		id='hzczrkForm' style='vertical-align: top;'>
		<div>
			<img alt='' src='skins/default/images/page_logo.png'
				style='margin-left: 120px;'>
		</div>
		<div>
			<div style='height: 2'>
				<img alt='' src='skins/default/images/detailpage_top.png'
					style='margin-left: 120px; vertical-align: bottom;'>
			</div>
			<div
				style='width: 942; margin-left: 120px; border-left: 1px solid #ddd; border-right: 1px solid #ddd'>
				<table cellpadding='0' width='100%'
					style='vertical-align: top; background: white;'>
					<tr>
						<td colspan='2'><font size='2' face='黑体'>详细信息</font>
						</td>
					</tr> 
					<tr>
						<td colspan='1'><hr width='121' size='2' color='#1c9ad7'
								align='left'  >
						</td>
						<td colspan='1'><hr width='817' size='2' color='#d2d7db'
								align='right' noshade>
						</td>
					</tr>
					<tr>
						<td colspan='2' align='center'><table cellpadding='0'
								width='95%' style='vertical-align: top; background: white;'>
								<tr>
								<div id="infor_arrow">
									<td >
									<gaLabel:img dataType="XYR1_IMG" name="XH" key="XH" ds='2'></gaLabel:img>
									</td>
	  							</div>
								<td><img id="simg" onclick="showMoreZpxx2(this)" src="images/arrowR.jpg" style="cursor: pointer; width: 15px; higth: 20px; border-width: 1px;"/></td>
								</tr>
								<tr>
									<td class='td1'>姓名:</td>
									<td class='td2' align='Right'><gaLabel:label name="XM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>英文姓:</td>
									<td class='td2' align='Right'><gaLabel:label name="YWX" />
									</td>
								</tr>
								<tr>
									<td class='td1'>英文名:</td>
									<td class='td2' align='Right'><gaLabel:label name="YWM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>别名:</td>
									<td class='td2' align='Right'><gaLabel:label name="BM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>绰号:</td>
									<td class='td2' align='Right'><gaLabel:label name="CH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>出生日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="CSRQ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>出生日期下限:</td>
									<td class='td2' align='Right'><gaLabel:label name="CSRQXX" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>性别:</td>
									<td class='td2' align='Right'><gaLabel:label name="XB" collection="DIC_XB"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>身高:</td>
									<td class='td2' align='Right'><gaLabel:label name="SG" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>脸型:</td>
									<td class='td2' align='Right'><gaLabel:label name="LX" collection="DIC_LX"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>体型:</td>
									<td class='td2' align='Right'><gaLabel:label name="TX" collection="DIC_TX"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>血型:</td>
									<td class='td2' align='Right'><gaLabel:label name="XX" collection="DIC_XX"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>国籍:</td>
									<td class='td2' align='Right'><gaLabel:label name="GJ" collection="DIC_GJDM"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>证件种类:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZJZL" collection="DIC_AJZJZL"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>证件号码:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZJHM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>民族:</td>
									<td class='td2' align='Right'><gaLabel:label name="MZ" collection="DIC_MZ"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>籍贯:</td>
									<td class='td2' align='Right'><gaLabel:label name="JG" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>职业:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZY" collection="DIC_ZY"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>文化程度:</td>
									<td class='td2' align='Right'><gaLabel:label name="WHCD" collection="DIC_WHCD"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>户籍所在地祥址:</td>
									<td class='td2' align='Right'><gaLabel:label name="HJDZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>户籍所在地区划:</td>
									<td class='td2' align='Right'><gaLabel:label name="XZQH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>专长:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZC" collection="DIC_ZC"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>详细地址描述/实际居住地址:</td>
									<td class='td2' align='Right'><gaLabel:label name="XXDZ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>工作单位:</td>
									<td class='td2' align='Right'><gaLabel:label name="GZDW" />
									</td>
								</tr>
								<tr>
									<td class='td1'>口音:</td>
									<td class='td2' align='Right'><gaLabel:label name="KY" collection="DIC_KY"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>联系电话:</td>
									<td class='td2' align='Right'><gaLabel:label name="LXDH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>体貌特征描述:</td>
									<td class='td2' align='Right'><gaLabel:label name="TMTZMS" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>牙齿特征:</td>
									<td class='td2' align='Right'><gaLabel:label name="YCTZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>实际居住地行政区划:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="ZZDXZQH"  collection="DIC_XZQH"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>业务管辖部门:</td>
									<td class='td2' align='Right'><gaLabel:label name="YWGXBM" collection="DIC_YWGXBM"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>指纹采卡编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="XRZWBH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>指纹编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZWBH" />
									</td>
								</tr>
								
							</table>
						</td>
					</tr>
				</table>
				<table cellpadding='0' width='100%'
					style='vertical-align: top; background: white;'>
					<tr>
						<td colspan="2">&nbsp;</td>
					</tr>
					<tr>
						<td colspan='2'><font size='2' face='黑体'>案件信息</font>
						</td>
					</tr> 
					<tr>
						<td colspan='1'><hr width='121' size='2' color='#1c9ad7'
								align='left'  >
						</td>
						<td colspan='1'><hr width='817' size='2' color='#d2d7db'
								align='right' noshade>
						</td>
					</tr>
					<tr>
						<td colspan='2' align='center'><table cellpadding='0'
								width='95%' style='vertical-align: top; background: white;'>
								<tr>
									<td class='td1'>身份:</td>
									<td class='td2' align='Right'><gaLabel:label name="SF" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>是否吸毒:</td>
									<td class='td2' align='Right'><gaLabel:label name="SFXD" collection="DIC_SF"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>落脚点:</td>
									<td class='td2' align='Right'><gaLabel:label name="LJD" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>居民缘由:</td>
									<td class='td2' align='Right'><gaLabel:label name="JMYY" />
									</td>
								</tr>
								<tr>
									<td class='td1'>体貌特征:</td>
									<td class='td2' align='Right'><gaLabel:label name="TMTZ" collection="DIC_TMTZ"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>作案工具:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZAGJ" collection="DIC_SAWP"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>作案手段:</td>
									<td class='td2' align='Right'><gaLabel:label name="SDTD" collection="DIC_ZASD"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>作案时机:</td>
									<td class='td2' align='Right'><gaLabel:label name="XZSJ" collection="DIC_ZASJ"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>选择处所:</td>
									<td class='td2' align='Right'><gaLabel:label name="XZCS" collection="DIC_XZCS"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>选择对象:</td>
									<td class='td2' align='Right'><gaLabel:label name="XZDX" collection="DIC_XZDX"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>涉案总值:</td>
									<td class='td2' align='Right'><gaLabel:label name="SAZZ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>损失金额:</td>
									<td class='td2' align='Right'><gaLabel:label name="SSJE" />
									</td>
								</tr>
								<tr>
									<td class='td1'>侵犯/被侵犯:</td>
									<td class='td2' align='Right'><gaLabel:label name="QFQK" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>伤亡情况:</td>
									<td class='td2' align='Right'><gaLabel:label name="SWQK" />
									</td>
								</tr>
								<tr>
									<td class='td1'>主从犯:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZCF" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>违法记录:</td>
									<td class='td2' align='Right'><gaLabel:label name="WFJL" />
									</td>
								</tr>
								<tr>
									<td class='td1'>人员在案件中的角色:</td>
									<td class='td2' align='Right'><gaLabel:label name="RYJS" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>案别:</td>
									<td class='td2' align='Right'><gaLabel:label name="AB" collection="DIC_AJLB"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>犯案时嫌疑人年龄:</td>
									<td class='td2' align='Right'><gaLabel:label name="XYRNL" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>上网追逃情况:</td>
									<td class='td2' align='Right'><gaLabel:label name="SWZTQK" />
									</td>
								</tr>
								<tr>
									<td class='td1'>措施:</td>
									<td class='td2' align='Right'><gaLabel:label name="CS" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>措施日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="CSZXRQ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>情节轻重:</td>
									<td class='td2' align='Right'><gaLabel:label name="QJQZ" collection="DIC_QJQZ"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>违法行为:</td>
									<td class='td2' align='Right'><gaLabel:label name="FWXW" collection="DIC_WFXZ"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>作案特点:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZATD" collection="DIC_ZATD"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>销赃方式:</td>
									<td class='td2' align='Right'><gaLabel:label name="XZFS" collection="DIC_XZFS"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>侵害人身份:</td>
									<td class='td2' align='Right'><gaLabel:label name="QHRSF" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>被侵害人身份:</td>
									<td class='td2' align='Right'><gaLabel:label name="BQHRSF" />
									</td>
								</tr>
								<tr>
									<td class='td1'>案发情况:</td>
									<td class='td2' align='Right' colspan="4"><gaLabel:label name="WFQK" />
									</td>
								</tr>
								</table>
								</td>
								</tr>
								</table>
				<table cellpadding='0' width='100%'
					style='vertical-align: top; background: white;'>
					<tr>
						<td colspan="2">&nbsp;</td>
					</tr>
					<tr>
						<td colspan='2'><font size='2' face='黑体'>相关信息</font>
						</td>
					</tr> 
					<tr>
						<td colspan='1'><hr width='121' size='2' color='#1c9ad7'
								align='left'  >
						</td>
						<td colspan='1'><hr width='817' size='2' color='#d2d7db'
								align='right' noshade>
						</td>
					</tr>
					<tr>
						<td colspan='2' align='center'><table cellpadding='0'
								width='95%' style='vertical-align: top; background: white;'>
								<tr>
									<td class='td1'>人员类型:</td>
									<td class='td2' align='Right'><gaLabel:label name="RYLX" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>人员状态:</td>
									<td class='td2' align='right'><gaLabel:label name="RYZT"
											collection="DIC_XYRRYZT" />
									</td>
								</tr>
								
								<tr>
									<td class='td1'>录入单位:</td>
									<td class='td2' align='Right'><gaLabel:label name="LRDW" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>录入时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="LRSJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>录入人:</td>
									<td class='td2' align='Right'><gaLabel:label name="LRR" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>停留事由:</td>
									<td class='td2' align='Right'><gaLabel:label name="TLSY" />
									</td>
								</tr>
								<tr>
									<td class='td1'>来华原因:</td>
									<td class='td2' align='Right'><gaLabel:label name="LHYY" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>签证种类:</td>
									<td class='td2' align='Right'><gaLabel:label name="QZZLQZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>签证号码:</td>
									<td class='td2' align='Right'><gaLabel:label name="QZHM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>签证签发地:</td>
									<td class='td2' align='Right'><gaLabel:label name="QZQFD" />
									</td>
								</tr>
								<tr>
									<td class='td1'>联系人姓名:</td>
									<td class='td2' align='Right'><gaLabel:label name="LXRXM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>联系方式:</td>
									<td class='td2' align='Right'><gaLabel:label name="LXFS" />
									</td>
								</tr>
								<tr>
									<td class='td1'>接待单位/人名称:</td>
									<td class='td2' align='Right'><gaLabel:label name="JDRMC" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>是否在押:</td>
									<td class='td2' align='Right'><gaLabel:label name="SFZY" collection="DIC_SF"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>部门编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="BMBM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>创建者:</td>
									<td class='td2' align='Right'><gaLabel:label name="CJZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>创建时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="CJSJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>密级:</td>
									<td class='td2' align='Right'><gaLabel:label name="MJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>措施名称:</td>
									<td class='td2' align='Right'><gaLabel:label name="CSMC" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>措施执行日期:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="CSZXRQI" />
									</td>
								</tr>
								<tr>
									<td class='td1'>入境口岸:</td>
									<td class='td2' align='Right'><gaLabel:label name="RJKA" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>在华地址:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZHDZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>境外地址:</td>
									<td class='td2' align='Right'><gaLabel:label name="JWDZ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>入境时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="RJSJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>何时来本地:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="RESERVATION23" />
									</td>
									<td width='10%'>&nbsp;</td>
 
									<td class='td1'>最终修改人:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZZXGR" />
									</td>
								</tr>
								<tr>
									<td class='td1'>暂住地派出所:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZZDPCS" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>暂住地行政区划:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="ZZDXZQHUA" />
									</td>
								</tr>
								<tr>
									<td class='td1'>DNA编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="DNABH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>部门名称:</td>
									<td class='td2' align='Right'><gaLabel:label name="BMMC" />
									</td>
								</tr>
								<tr>
								<td class='td1'>身高上限:</td>
									<td class='td2' align='Right'><gaLabel:label name="SGSX" />
									</td>
									<td width='10%'>&nbsp;</td>
									</tr>
								</table>
								</td>
								</tr>
								</table>
			</div>
		</div>
		<div>
			<img alt='' src='skins/default/images/detailpage_bot.png'
				style='margin-left: 120px; vertical-align: top;'>
		</div>
	</form>
</body>
</html>
