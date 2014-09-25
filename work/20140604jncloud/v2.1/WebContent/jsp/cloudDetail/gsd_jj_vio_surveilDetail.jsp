<%@page language='java' contentType='text/html;charset=UTF-8'%><%@taglib
	uri='/tags/ga-json' prefix='gaLabel'%><%@page language='java'
	pageEncoding='UTF-8'%><html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>

<link type='text/css' rel='stylesheet' href='skins/default/css/skin.css'>
<title>非现场文本记录表明细</title>
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
						<td colspan='1'><hr width='818' size='2' color='#d2d7db'
								align='right'  >
						</td>
					</tr>
					<tr>
						<td colspan='2' align='center'><table cellpadding='0'
								width='95%' style='vertical-align: top; background: white;'>
								<tr>
									<td class='td1'>违法采集机关:</td>
									<td class='td2' align='Right'><gaLabel:label name="CJJG" />
									</td>
									<td width='10%'>&nbsp;</td>
								</tr>
								<tr>
									<td class='td1'>采集机关名称:</td>
									<td class='td2' align='Right'><gaLabel:label name="CJJGMC" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>车辆分类:</td>
									<td class='td2' align='Right'><gaLabel:label name="CLFL" />
									</td>
								</tr>
								<tr>
									<td class='td1'>号牌种类:</td>
									<td class='td2' align='Right'><gaLabel:label name="HPZL" collection="DIC_HPZL"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>号牌号码:</td>
									<td class='td2' align='Right'><gaLabel:label name="HPHM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>机动车所有人:</td>
									<td class='td2' align='Right'><gaLabel:label name="JDCSYR" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>机动车使用性质:</td>
									<td class='td2' align='Right'><gaLabel:label name="SYXZ" />
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
									<td class='td1'>车身颜色:</td>
									<td class='td2' align='Right'><gaLabel:label name="CSYS" collection="DIC_CSYS"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>车辆品牌:</td>
									<td class='td2' align='Right'><gaLabel:label name="CLPP" />
									</td>
								</tr>
								<tr>
									<td class='td1'>交通方式:</td>
									<td class='td2' align='Right'><gaLabel:label name="JTFS" collection="DIC_JTFS"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>发证机关:</td>
									<td class='td2' align='Right'><gaLabel:label name="FZJG" />
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
									<td class='td1'>通知书号:</td>
									<td class='td2' align='Right'><gaLabel:label name="TZSH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>通知标记:</td>
									<td class='td2' align='Right'><gaLabel:label name="TZBJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>通知日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="TZRQ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>采集方式:</td>
									<td class='td2' align='Right'><gaLabel:label name="CJFS" />
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
									<td class='td2' align='Right'><gaLabel:label name="GLXZDJ" />
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
									<td class='td1'>违法行为:</td>
									<td class='td2' align='Right'><gaLabel:label name="WFXW" />
									</td>
								</tr>
								<tr>
									<td class='td1'>罚款金额:</td>
									<td class='td2' align='Right'><gaLabel:label name="FKJE" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>实测值:</td>
									<td class='td2' align='Right'><gaLabel:label name="SCZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>标准值:</td>
									<td class='td2' align='Right'><gaLabel:label name="BZZ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>执勤民警:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZQMJ" />
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
									<td class='td1'>处理时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="CLSJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>处理标记:</td>
									<td class='td2' align='Right'><gaLabel:label name="CLBJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>交款方式:</td>
									<td class='td2' align='Right'><gaLabel:label name="JKFS" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>交款标记:</td>
									<td class='td2' align='Right'><gaLabel:label name="JKBJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>缴款日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="JKRQ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>强制措施凭证编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="PZBH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>强制措施处理标记:</td>
									<td class='td2' align='Right'><gaLabel:label name="QZCLBJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>违法编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="WFBH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>决定书号:</td>
									<td class='td2' align='Right'><gaLabel:label name="JDSBH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>决定书号校验位:</td>
									<td class='td2' align='Right'><gaLabel:label name="WSJYW" />
									</td>
								</tr>
								<tr>
									<td class='td1'>决定书类别:</td>
									<td class='td2' align='Right'><gaLabel:label name="JDSLB" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>当事人:</td>
									<td class='td2' align='Right'><gaLabel:label name="DSR" />
									</td>
								</tr>
								<tr>
									<td class='td1'>经办人:</td>
									<td class='td2' align='Right'><gaLabel:label name="JBR" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>录入人:</td>
									<td class='td2' align='Right'><gaLabel:label name="LRR" />
									</td>
								</tr>
								<tr>
									<td class='td1'>录入时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="LRSJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>记录类型:</td>
									<td class='td2' align='Right'><gaLabel:label name="JLLX" />
									</td>
								</tr>
								<!-- tr>
									<td class='td1'>处理对象标记:</td>
									<td class='td2' align='Right'><gaLabel:label name="CLDXBJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>转递记录标记:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZDJLBJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>异地处理标记:</td>
									<td class='td2' align='Right'><gaLabel:label name="YDCLBJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>写入模式:</td>
									<td class='td2' align='Right'><gaLabel:label name="XRMS" />
									</td>
								</tr>
								<tr>
									<td class='td1'>视频地址:</td>
									<td class='td2' align='Right'><gaLabel:label name="SPDZ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>设备编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="SBBH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>转递标记:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZDBJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>导库标记:</td>
									<td class='td2' align='Right'><gaLabel:label name="DKBJ" />
									</td>
								</tr-->
								<tr>
									<td class='td1'>接受机关:</td>
									<td class='td2' align='Right'><gaLabel:label name="JSJG" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>发送机关:</td>
									<td class='td2' align='Right'><gaLabel:label name="FSJG" />
									</td>
								</tr>
								<tr>
									<td class='td1'>更新时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="GXSJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>备注:</td>
									<td class='td2' align='Right'><gaLabel:label name="BZ" />
									</td>
								</tr>
							 
								<!-- tr>
									<td class='td1'>存放支队工作库接受时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="YLZZ6" />
									</td>
									<td width='10%'>&nbsp;</td>
									 <td class='td1'>用于存放告知标记信息:</td>
									<td class='td2' align='Right'><gaLabel:label name="YLZZ8" />
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
