<%@page language='java' contentType='text/html;charset=UTF-8'%><%@taglib
	uri='/tags/ga-json' prefix='gaLabel'%><%@page language='java'
	pageEncoding='UTF-8'%><html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>

<link type='text/css' rel='stylesheet' href='skins/default/css/skin.css'>
<title>前科人员明细</title>
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
	<form name='qkryForm' method='post' action='gsd_asj_qkryDetail.jsp'
		id='qkryForm' style='vertical-align: top;'>
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
				style='width: 944; margin-left: 120px; border-left: 1px solid #ddd; border-right: 1px solid #ddd'>
				<table cellpadding='0' width='100%'
					style='vertical-align: top; background: white;'>
					<tr>
						<td colspan='2'><font size='2' face='黑体'>个人信息</font>
						</td>
					</tr>
					<tr>
						<td colspan='1'><hr width='120' size='2' color='#1c9ad7'
								align='left' noshade>
						</td>
						<td colspan='1'><hr width='822' size='2' color='#d2d7db'
								align='right' noshade>
						</td>
					</tr>
					<tr>
						<td colspan='2' align='center'>
						<table cellpadding='0' width='95%' style='vertical-align: top; background: white;'>
								<tr>
									<td class='td1'>姓名:</td>
									<td class='td2' align='Right'><gaLabel:label name="XM" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>证件号码:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZJHM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>性别:</td>
									<td class='td2' align='Right'><gaLabel:label name="XB" collection="DIC_XB"/>
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>姓名拼音:</td>
									<td class='td2' align='Right'><gaLabel:label name="XMPY" />
									</td>
								</tr>
								<tr>
									<td class='td1'>曾用名:</td>
									<td class='td2' align='Right'><gaLabel:label name="CYM" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>绰号:</td>
									<td class='td2' align='Right'><gaLabel:label name="CH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>民族:</td>
									<td class='td2' align='Right'><gaLabel:label name="MZ" collection="DIC_MZ"/>
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>出生日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="CSRQ" />
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
						<td colspan='2'><font size='2' face='黑体'>个人详细信息</font>
						</td>
					</tr>
					<tr>
						<td colspan='1'><hr width='120' size='2' color='#1c9ad7'
								align='left' noshade>
						</td>
						<td colspan='1'><hr width='822' size='2' color='#d2d7db'
								align='right' noshade>
						</td>
					</tr>
					<tr>
						<td colspan='2' align='center'>
						<table cellpadding='0' width='95%' style='vertical-align: top; background: white;'>
								<tr>
									<td class='td1'>文化程度:</td>
									<td class='td2' align='Right'><gaLabel:label name="WHCD" collection="DIC_WHCD"/>
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>政治面貌:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZZMM" collection="DIC_ZZMMAO"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>职业:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZY" collection="DIC_ZY"/>
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>联系电话:</td>
									<td class='td2' align='Right'><gaLabel:label name="LXDH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>身高:</td>
									<td class='td2' align='Right'><gaLabel:label name="SG" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>脸型:</td>
									<td class='td2' align='Right'><gaLabel:label name="LX" collection="DIC_LX"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>体型:</td>
									<td class='td2' align='Right'><gaLabel:label name="TX" collection="DIC_TX"/>
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>血型:</td>
									<td class='td2' align='Right'><gaLabel:label name="XX" collection="DIC_XX"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>口音:</td>
									<td class='td2' align='Right'><gaLabel:label name="KY" collection="DIC_KY"/>
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>体貌特征:</td>
									<td class='td2' align='Right'><gaLabel:label name="TMTZ" collection="DIC_TMTZ"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>户籍所在地区划:</td>
									<td class='td2' align='Right'><gaLabel:label name="XZQH" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>户籍所在地祥址:</td>
									<td class='td2' align='Right'><gaLabel:label name="HJDZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>实际居住地行政区划:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZZDXZQH" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>实际居住地址:</td>
									<td class='td2' align='Right'><gaLabel:label name="XXDZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>工作单位:</td>
									<td class='td2' align='Right'><gaLabel:label name="GZDW" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>单位地址:</td>
									<td class='td2' align='Right'><gaLabel:label name="DWDZ" />
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
						<td colspan='1'><hr width='120' size='2' color='#1c9ad7'
								align='left' noshade>
						</td>
						<td colspan='1'><hr width='822' size='2' color='#d2d7db'
								align='right' noshade>
						</td>
					</tr>
					<tr>
						<td colspan='2' align='center'>
						<table cellpadding='0' width='95%' style='vertical-align: top; background: white;'>
								<tr>
									<td class='td1'>案件编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="AJBH" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>案别:</td>
									<td class='td2' align='Right'><gaLabel:label name="AB" />
									</td>
								</tr>
								<tr>
									<td class='td1'>主办单位:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZBDW" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>违法记录:</td>
									<td class='td2' align='Right'><gaLabel:label name="WFJL" />
									</td>
								</tr>
								<tr>
									<td class='td1'>专长:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZC" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>是否吸毒:</td>
									<td class='td2' align='Right'><gaLabel:label name="SFXD" collection="DIC_SF"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>受理时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="SL_LRSJ" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>指纹编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZWBH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>DNA编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="DNABH" />
									</td>
									<td width='5%'>&nbsp;</td>
								</tr>
								<tr>
									<td class='td1'>简要案情:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZYAQ" />
									</td>
									<td width='5%'>&nbsp;</td>
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
