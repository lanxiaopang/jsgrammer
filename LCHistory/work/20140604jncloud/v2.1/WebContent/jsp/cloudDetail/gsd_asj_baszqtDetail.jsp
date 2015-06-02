<%@page language='java' contentType='text/html;charset=UTF-8'%><%@taglib
	uri='/tags/ga-json' prefix='gaLabel'%><%@page language='java'
	pageEncoding='UTF-8'%><html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>

<link type='text/css' rel='stylesheet' href='skins/default/css/skin.css'>
<title>报案/受害/当事/其人明细</title>
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
								align='left' >
						</td> 
						<td colspan='1'><hr width='817' size='2' color='#d2d7db'
								align='right' noshade>
						</td>
					</tr>
					<tr>
						<td colspan='2' align='center'><table cellpadding='0'
								width='95%' style='vertical-align: top; background: white;'>
								<tr>
									<td class='td1'>姓名:</td>
									<td class='td2' align='Right'><gaLabel:label name="XM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>曾用名:</td>
									<td class='td2' align='Right'><gaLabel:label name="CYM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>出生日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="CSRQ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>性别:</td>
									<td class='td2' align='Right'><gaLabel:label name="XB" collection="DIC_XB"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>国籍（地区）:</td>
									<td class='td2' align='Right'><gaLabel:label name="GJ" collection="DIC_GJ"/>
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
									<td class='td1'>籍贯:</td>
									<td class='td2' align='Right'><gaLabel:label name="JG" />
									</td>
								</tr>
								<tr>
									<td class='td1'>民族:</td>
									<td class='td2' align='Right'><gaLabel:label name="MZ" collection="DIC_MZ"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>别名:</td>
									<td class='td2' align='Right'><gaLabel:label name="BM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>证件种类:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZJZL" collection="DIC_AJZJZL"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>证件号码:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZJHM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>实际居住地行政区划:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="ZZDXZQH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>居住地现址区划:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="JZDXZQH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>婚姻状况:</td>
									<td class='td2' align='Right'><gaLabel:label name="HYZK" collection="DIC_HYZK"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>身份:</td>
									<td class='td2' align='Right'><gaLabel:label name="SF" />
									</td>
								</tr>
								<tr>
									<td class='td1'>嫌疑人职业:</td>
									<td class='td2' align='Right'><gaLabel:label name="XYRZY" collection="DIC_ZY"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>报案人单位行政区划:</td>
									<td class='td2' align='Right'><gaLabel:label name="BRDWQH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>绰号:</td>
									<td class='td2' align='Right'><gaLabel:label name="CH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>其他证件类型:</td>
									<td class='td2' align='Right'><gaLabel:label name="QTZJLX" />
									</td>
								</tr>
								<tr>
									<td class='td1'>其它证件号码:</td>
									<td class='td2' align='Right'><gaLabel:label name="QTZJHM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>户籍所在地:</td>
									<td class='td2' align='Right'><gaLabel:label name="HJDZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>户籍所在地区划:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="HJSZDQH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>联系电话:</td>
									<td class='td2' align='Right'><gaLabel:label name="LXDH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>工作单位:</td>
									<td class='td2' align='Right'><gaLabel:label name="GZDW" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>文化程度:</td>
									<td class='td2' align='Right'><gaLabel:label name="WHCD" collection="DIC_WHCD"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>居留缘由:</td>
									<td class='td2' align='Right'><gaLabel:label name="JZYY" />
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
									<td class='td1'>落脚点:</td>
									<td class='td2' align='Right'><gaLabel:label name="LJD" />
									</td>
								</tr>
								<tr>
									<td class='td1'>签证(注)种类:</td>
									<td class='td2' align='Right'><gaLabel:label name="QZZL" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>签证(注)号码:</td>
									<td class='td2' align='Right'><gaLabel:label name="QZHM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>签证(注)签发地:</td>
									<td class='td2' align='Right'><gaLabel:label name="QZQFD" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>详细地址描述/实际居住地:</td>
									<td class='td2' align='Right'><gaLabel:label name="XXDZMS" />
									</td>
								</tr>
								<tr>
									<td class='td1'>联系人姓名:</td>
									<td class='td2' align='Right'><gaLabel:label name="LXRXM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>联系人电话:</td>
									<td class='td2' align='Right'><gaLabel:label name="LXRDH" />
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
									<td class='td1'>受害形式:</td>
									<td class='td2' align='Right'><gaLabel:label name="SHXS" collection="DIC_SHXS"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>人身伤害程度:</td>
									<td class='td2' align='Right'><gaLabel:label name="RSSHCD" />
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
									<td class='td1'>挽回损失金额:</td>
									<td class='td2' align='Right'><gaLabel:label name="WHSSJE" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>侵犯/被侵犯:</td>
									<td class='td2' align='Right'><gaLabel:label name="QFQK" />
									</td>
								</tr>
								<tr>
									<td class='td1'>伤亡情况:</td>
									<td class='td2' align='Right'><gaLabel:label name="SWQK" />
									</td>
									<td width='10%'>&nbsp;</td>
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
						<td colspan='2'><font size='2' face='黑体'>其他信息</font>
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
									<td class='td1'>人员类型:</td>
									<td class='td2' align='Right'><gaLabel:label name="RYLX" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>人员状态:</td>
									<td class='td2' align='Right'><gaLabel:label name="RYZT" />
									</td>
								</tr>
								<tr>
									<td class='td1'>人员来源:</td>
									<td class='td2' align='Right'><gaLabel:label name="RYLY" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>特殊身份:</td>
									<td class='td2' align='Right'><gaLabel:label name="TSSF" />
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
									<td class='td1'>部门编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="BMBH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>创建者:</td>
									<td class='td2' align='Right'><gaLabel:label name="CJZ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>创建时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="CJSJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>密级:</td>
									<td class='td2' align='Right'><gaLabel:label name="MJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>解救类型:</td>
									<td class='td2' align='Right'><gaLabel:label name="JJLX" />
									</td>
								</tr>
								<tr>
									<td class='td1'>最终修改人:</td>
									<td class='td2' align='Right'><gaLabel:label name="XGR" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>部门名称:</td>
									<td class='td2' align='Right'><gaLabel:label name="BMMC" />
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
