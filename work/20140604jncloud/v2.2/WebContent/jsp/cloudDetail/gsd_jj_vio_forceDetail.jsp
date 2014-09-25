<%@page language='java' contentType='text/html;charset=UTF-8'%><%@taglib
	uri='/tags/ga-json' prefix='gaLabel'%><%@page language='java'
	pageEncoding='UTF-8'%><html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>

<link type='text/css' rel='stylesheet' href='skins/default/css/skin.css'>
<title>强制措施表明细</title>
<!--[if lte IE 6]>
<script src="skins/js/DD_belatedPNG_0.0.8a.js" type="text/javascript"></script>
    <script type="text/javascript">
        DD_belatedPNG.fix('div, ul,span, img, li, input , a');
    </script>
    <script type="text/javascript">DD_belatedPNG.fix('*');</script>
<![endif]-->
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
									<td class='td1'>凭证编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="PZBH" />
									</td>
									<td width='10%'>&nbsp;</td>
								</tr>
								<tr>
									<!--td class='td1'>文书编号校验位:</td>
									<td class='td2' align='Right'><gaLabel:label name="WSJYW" />
									</td-->
									<td class='td1'>接受机关:</td>
									<td class='td2' align='Right'><gaLabel:label name="JSJG" />
									<td width='10%'>&nbsp;</td>
									<td class='td1'>文书类别:</td>
									<td class='td2' align='Right'><gaLabel:label name="WSLB" />
									</td>
								</tr>
								<tr>
									<td class='td1'>人员分类:</td>
									<td class='td2' align='Right'><gaLabel:label name="RYFL" collection="DIC_RYFL"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>驾驶证号:</td>
									<td class='td2' align='Right'><gaLabel:label name="JSZH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>档案编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="DABH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>发证机关:</td>
									<td class='td2' align='Right'><gaLabel:label name="FZJG" />
									</td>
								</tr>
								<tr>
									<td class='td1'>准驾车型:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZJCX" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>当事人:</td>
									<td class='td2' align='Right'><gaLabel:label name="DSR" />
									</td>
								</tr>
								<tr>
									<td class='td1'>年龄:</td>
									<td class='td2' align='Right'><gaLabel:label name="NL" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>性别:</td>
									<td class='td2' align='Right'><gaLabel:label name="XB" collection="DIC_XB"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>住所行政区划:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZSXZQH" collection="DIC_XZQH"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>住所详细地址:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZSXXDZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>电话:</td>
									<td class='td2' align='Right'><gaLabel:label name="DH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>联系方式:</td>
									<td class='td2' align='Right'><gaLabel:label name="LXFS" />
									</td>
								</tr>
								<tr>
									<td class='td1'>车辆分类:</td>
									<td class='td2' align='Right'><gaLabel:label name="CLFL" collection="DIC_CLFL"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>号牌种类:</td>
									<td class='td2' align='Right'><gaLabel:label name="HPZL" collection="DIC_HPZL"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>号牌号码:</td>
									<td class='td2' align='Right'><gaLabel:label name="HPHM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>机动车所有人:</td>
									<td class='td2' align='Right'><gaLabel:label name="JDCSYR" />
									</td>
								</tr>
								<tr>
									<td class='td1'>发动机号:</td>
									<td class='td2' align='Right'><gaLabel:label name="FDJH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>车辆识别代号:</td>
									<td class='td2' align='Right'><gaLabel:label name="CLSBDH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>使用性质:</td>
									<td class='td2' align='Right'><gaLabel:label name="SYXZ" collection="DIC_SYXZ"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>交通方式:</td>
									<td class='td2' align='Right'><gaLabel:label name="JTFS" collection="DIC_JTFS"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>违法时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="WFSJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>行政区划:</td>
									<td class='td2' align='Right'><gaLabel:label name="XZQH" collection="DIC_XZQH"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>道路类型:</td>
									<td class='td2' align='Right'><gaLabel:label name="DLLX" collection="DIC_DLLX1"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>公路行政等级:</td>
									<td class='td2' align='Right'><gaLabel:label name="GLXZDJ" collection="DIC_GLXZDJ"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>违法地点:</td>
									<td class='td2' align='Right'><gaLabel:label name="WFDD" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>路口路段代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="LDDM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>地点米数:</td>
									<td class='td2' align='Right'><gaLabel:label name="DDMS" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>地点绝对位置:</td>
									<td class='td2' align='Right'><gaLabel:label name="DDJDWZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>违法地址:</td>
									<td class='td2' align='Right'><gaLabel:label name="WFDZ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>违法行为1:</td>
									<td class='td2' align='Right'><gaLabel:label name="WFXW1" collection="DIC_WFXW"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>实测值:</td>
									<td class='td2' align='Right'><gaLabel:label name="SCZ1" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>标准值:</td>
									<td class='td2' align='Right'><gaLabel:label name="BZZ1" />
									</td>
								</tr>
								<tr>
									<td class='td1'>违法行为2:</td>
									<td class='td2' align='Right'><gaLabel:label name="WFXW2" collection="DIC_WFXW"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>实测值1:</td>
									<td class='td2' align='Right'><gaLabel:label name="SCZ2" />
									</td>
								</tr>
								<tr>
									<td class='td1'>标准值1:</td>
									<td class='td2' align='Right'><gaLabel:label name="BZZ2" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>违法行为3:</td>
									<td class='td2' align='Right'><gaLabel:label name="WFXW3" collection="DIC_WFXW"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>实测值2:</td>
									<td class='td2' align='Right'><gaLabel:label name="SCZ3" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>标准值2:</td>
									<td class='td2' align='Right'><gaLabel:label name="BZZ3" />
									</td>
								</tr>
								<tr>
									<td class='td1'>违法行为4:</td>
									<td class='td2' align='Right'><gaLabel:label name="WFXW4" collection="DIC_WFXW"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>实测值3:</td>
									<td class='td2' align='Right'><gaLabel:label name="SCZ4" />
									</td>
								</tr>
								<tr>
									<td class='td1'>标准值3:</td>
									<td class='td2' align='Right'><gaLabel:label name="BZZ4" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>违法行为5:</td>
									<td class='td2' align='Right'><gaLabel:label name="WFXW5" collection="DIC_WFXW"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>实测值4:</td>
									<td class='td2' align='Right'><gaLabel:label name="SCZ5" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>标准值4:</td>
									<td class='td2' align='Right'><gaLabel:label name="BZZ5" />
									</td>
								</tr>
								<tr>
									<td class='td1'>执勤民警:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZQMJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>发现机关:</td>
									<td class='td2' align='Right'><gaLabel:label name="FXJG" />
									</td>
								</tr>
								<tr>
									<td class='td1'>发现机关名称:</td>
									<td class='td2' align='Right'><gaLabel:label name="FXJGMC" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>强制措施类型:</td>
									<td class='td2' align='Right'><gaLabel:label name="QZCSLX" />
									</td>
								</tr>
								<tr>
									<td class='td1'>其他强制措施类型描述:</td>
									<td class='td2' align='Right'><gaLabel:label name="QTQZCS" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>接受处理时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="JSCJSJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>裁决标记:</td>
									<td class='td2' align='Right'><gaLabel:label name="CJBJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>裁决时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="CJSJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>处理机关:</td>
									<td class='td2' align='Right'><gaLabel:label name="CLJG" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>处理机关名称:</td>
									<td class='td2' align='Right'><gaLabel:label name="CLJGMC" />
									</td>
								</tr>
								<tr>
									<td class='td1'>处罚决定书号:</td>
									<td class='td2' align='Right'><gaLabel:label name="JDSBH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>复核标记:</td>
									<td class='td2' align='Right'><gaLabel:label name="FHBJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>复核人:</td>
									<td class='td2' align='Right'><gaLabel:label name="FHR" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>复核时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="FHSJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>拒收拒签标记:</td>
									<td class='td2' align='Right'><gaLabel:label name="JSJQBJ" collection="DIC_JSJQBJ"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>记录类型:</td>
									<td class='td2' align='Right'><gaLabel:label name="JLLX" collection="DIC_JLLX"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>录入人:</td>
									<td class='td2' align='Right'><gaLabel:label name="LRR" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>录入时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="LRSJ" />
									</td>
								</tr>
								<!--tr>
									<td class='td1'>民警意见:</td>
									<td class='td2' align='Right'><gaLabel:label name="MJYJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>流程状态:</td>
									<td class='td2' align='Right'><gaLabel:label name="LCZT" />
									</td>
								</tr-->
								<tr>
									<!--td class='td1'>案情移交标记:</td>
									<td class='td2' align='Right'><gaLabel:label name="AQYJBJ" />
									</td-->
									<td class='td1'>民警意见:</td>
									<td class='td2' align='Right'><gaLabel:label name="MJYJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>事故等级:</td>
									<td class='td2' align='Right'><gaLabel:label name="SGDJ" collection="DIC_SGLX"/>
									</td>
								</tr>
								<!--tr>
									<td class='td1'>处理对象标记:</td>
									<td class='td2' align='Right'><gaLabel:label name="CLDXBJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>机动车处理对象标记:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="JDCCLDXBJ" />
									</td>
								</tr-->
								<!-- tr>
									<td class='td1'>转递记录标记:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZDJLBJ" />
									</td>
									<td class='td1'>机动车处理对象标记:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="JDCCLDXBJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>信息来源:</td>
									<td class='td2' align='Right'><gaLabel:label name="XXLY" />
									</td>
								</tr-->
								<!--tr>
									<td class='td1'>写入模式:</td>
									<td class='td2' align='Right'><gaLabel:label name="XRMS" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>导库标记:</td>
									<td class='td2' align='Right'><gaLabel:label name="DKBJ" />
									</td>
								</tr-->
								<!--tr>
									<td class='td1'>转递标记:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZDBJ" />
									</td>
									<td class='td1'>导库标记:</td>
									<td class='td2' align='Right'><gaLabel:label name="DKBJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>接受机关:</td>
									<td class='td2' align='Right'><gaLabel:label name="JSJG" />
									</td>
								</tr-->
								<tr>
									<td class='td1'>发送机关:</td>
									<td class='td2' align='Right'><gaLabel:label name="FSJG" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>更新时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="GXSJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>当事人异议:</td>
									<td class='td2' align='Right'><gaLabel:label name="DSRYY" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>备注:</td>
									<td class='td2' align='Right'><gaLabel:label name="BZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>老凭证编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="OPZBH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>经度:</td>
									<td class='td2' align='Right'><gaLabel:label name="JD" />
									</td>
								</tr>
								<tr>
									<td class='td1'>纬度:</td>
									<td class='td2' align='Right'><gaLabel:label name="WD" />
									</td>
									<td width='10%'>&nbsp;</td>
									 <td class='td1'>证件名称:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZJMC" />
									</td>
								</tr>
								<tr>
									
									
									<td class='td1'>初次领证日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="CCLZRQ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>核查标志:</td>
									<td class='td2' align='Right'><gaLabel:label name="HCBJ" />
									</td>
								</tr>
								
								<tr>
									<td class='td1'>车身颜色:</td>
									<td class='td2' align='Right'><gaLabel:label name="YLZZ3" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>旧发现机关代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="YLZZ1" />
									</td>
								</tr>
									 
								<!--tr>
									<td class='td1'>存放支队工作库接受时间:</td>
									<td class='td2' align='Right' colspan="4"><gaLabel:label name="YLZZ6" />
									</td>
									 
								</tr-->
								 
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
