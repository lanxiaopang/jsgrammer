<%@page language='java' contentType='text/html;charset=UTF-8'%><%@taglib
	uri='/tags/ga-json' prefix='gaLabel'%><%@page language='java'
	pageEncoding='UTF-8'%><html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>

<link type='text/css' rel='stylesheet' href='skins/default/css/skin.css'>
<title>工作对象明细</title>
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
	<form name='gzdxForm' method='post' action='gsd_gzdx_Detail.jsp'
		id='gzdxForm' style='vertical-align: top;'>
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
									<td rowspan="6"><gaLabel:img dataType="HZCZRK_IMG"
											name="GK_ZHAOPIAN" key="GK_ZHAOPIAN" ds=''></gaLabel:img>
									</td>
								</tr>
								<tr>
									<td class='td1'>姓名:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_XM" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>身份证号:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_GMSFHM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>别名:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_XB" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>性别:</td>
									<td class='td2' align='Right'><gaLabel:label name="XB" collection="DIC_XB"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>民族:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_MZ" collection="DIC_MZ"/>
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>出生日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_CSRQ" />
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
									<td class='td1'>姓名拼音:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_XMPY" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>人员状态:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_RYZT" />
									</td>
								</tr>
								<tr>
									<td class='td1'>血型:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_XX" collection="DIC_XX"/>
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>身高:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_SG" />
									</td>
								</tr>
								<tr>
									<td class='td1'>体型:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_TX" collection="DIC_TX"/>
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>脸型:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_LX" collection="DIC_GK_LX"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>鞋号:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_XH" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>足长:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_ZUC" />
									</td>
								</tr>
								<tr>
									<td class='td1'>文化程度:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_WHCD" collection="DIC_WHCD"/>
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>籍贯:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_JG" />
									</td>
								</tr>
								<tr>
									<td class='td1'>籍贯详址:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_JGXZ" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>职业:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_ZY" collection="DIC_ZY_GK"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>详细职业:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_XXZY" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>职业状况:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_ZYZK" collection="DIC_ZY"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>别名绰号:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_BMCH" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>汉语口音:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_HYKY" collection="DIC_GK_HYKY"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>婚姻状况:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_HYZK" collection="DIC_HYZK"/>
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>济南兵役状况:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_BYZK" />
									</td>
								</tr>
								<tr>
									<td class='td1'>经济来源及收入:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_JJSRJLY" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>嗜好:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_SH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>其他住址辖区:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_QTZZXQ" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>其他住址:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_TQZZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>住宅电话:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_ZZDH" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>单位电话:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_DWDH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>BP机号码	:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_BPJHM" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>手机号码:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_SJHM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>专长:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_ZC" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>户籍地行政区划:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_HJDXZQH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>户籍地址辖区:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_HJDZXQ" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>户籍地址:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_HJDZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>实际住址辖区:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_SJZZXQ" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>实际住址:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_SJZZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>简历:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_JL" />
									</td>
									<td width='5%'>&nbsp;</td>
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
									<td class='td1'>选择对象:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_XZDX" collection="DIC_XZDX"/>
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>选择物品:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_XZWP" collection="DIC_XZWP"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>作案手段:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_ZASD" collection="DIC_ZASD"/>
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>作案工具:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_ZAGJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>销赃方式:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_XZFS" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>作案特点:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_ZATD" collection="DIC_ZATD"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>选择时机:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_XZSJ" collection="DIC_ZASJ"/>
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>选择处所:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_XZCS" collection="DIC_XZCS"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>犯罪原因:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_FZYY" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>车辆牌号:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_CLPH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>车辆厂牌型号:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_CLCPXH" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>车辆颜色:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_CLYS" />
									</td>
								</tr>
								<tr>
									<td class='td1'>车辆发动机号:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_CLFDJH" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>车架号码:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_CJHM" />
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
									<td class='td1'>信息采集依据:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_XXCJYJ" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>案件类别:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_AJLB" collection="DIC_AJLB"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>活动地区:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_HDDQ" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>管理类别:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_GLLB" />
									</td>
								</tr>
								<tr>
									<td class='td1'>管理方法:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_GLFF" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>列管来源:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_LGLY" />
									</td>
								</tr>
								<tr>
									<td class='td1'>列管日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_LGRQ" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>列管批准人:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_LGPZR" />
									</td>
								</tr>
								<tr>
									<td class='td1'>一类重口分局批准人:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_YLZKFJPZR" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>监管开始日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_JGKSRQ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>监管结束日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_JGJSRQ" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>撤管理由:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_CGLY" />
									</td>
								</tr>
								<tr>
									<td class='td1'>撤管日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_CGRQ" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>撤管批准人:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_CGPZR" />
									</td>
								</tr>
								<tr>
									<td class='td1'>指纹采集情况:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_ZWCJQK" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>笔迹采集情况:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_BJCJQK" />
									</td>
								</tr>
								<tr>
									<td class='td1'>注销原因:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_ZXYY" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>注销日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_ZXRQ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>注销去向:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_ZXQX" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>填表单位编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_TTBDWBH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>工作对象类别:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_GZDXLB" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>人员类别:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_RYLB" />
									</td>
								</tr>
								<tr>
									<td class='td1'>两劳释放人员标识:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_LLSFYRBS" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>填表日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_TBRQ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>填表人:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_TBR" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>填表单位:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_TBDW" />
									</td>
								</tr>
								<tr>
									<td class='td1'>找回时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_ZHSJ" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>找回登记时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_ZHDJSJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>下落人员登记时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_XLRYDJSJ" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>登记下落时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="GK_DJXLSJ" />
									</td>
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
