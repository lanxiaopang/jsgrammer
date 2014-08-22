<%@page language='java' contentType='text/html;charset=UTF-8'%><%@taglib
	uri='/tags/ga-json' prefix='gaLabel'%><%@page language='java'
	pageEncoding='UTF-8'%><html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
 
<link type='text/css' rel='stylesheet' href='skins/default/css/skin.css'>
<title>重点人员信息明细</title>
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
				style='width: 944; margin-left: 120px; border-left: 1px solid #ddd; border-right: 1px solid #ddd'>
				<table cellpadding='0' width='100%'
					style='vertical-align: top; background: white;'>
					<tr>
						<td colspan='2'><font size='2' face='黑体'>详细信息</font>
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
						<td colspan='2' align='center'><table cellpadding='0'
								width='95%' style='vertical-align: top; background: white;'>
								<tr>
									<td class='td1'>系统编号:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SYSTEMID" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>重点人员编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZDRYBH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>姓名:</td>
									<td class='td2' align='Right'><gaLabel:label name="XM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>姓名拼音:</td>
									<td class='td2' align='Right'><gaLabel:label name="XMPY" />
									</td>
								</tr>
								<tr>
									<td class='td1'>外文姓名:</td>
									<td class='td2' align='Right'><gaLabel:label name="WWXM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>性别:</td>
									<td class='td2' align='Right'><gaLabel:label name="XB" collection="DIC_XB"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>出生日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="CSRQ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>国籍:</td>
									<td class='td2' align='Right'><gaLabel:label name="GJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>身份证号:</td>
									<td class='td2' align='Right'><gaLabel:label name="SFZH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>其它证件号码:</td>
									<td class='td2' align='Right'><gaLabel:label name="QTZJHM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>民族:</td>
									<td class='td2' align='Right'><gaLabel:label name="MZ" collection="DIC_MZ"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>籍贯:</td>
									<td class='td2' align='Right'><gaLabel:label name="JG" />
									</td>
								</tr>
								<tr>
									<td class='td1'>户籍地区划:</td>
									<td class='td2' align='Right'><gaLabel:label name="HJDQH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>户籍地祥址:</td>
									<td class='td2' align='Right'><gaLabel:label name="HJDXZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>户籍地派出所:</td>
									<td class='td2' align='Right'><gaLabel:label name="HJDPCS" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>户籍地派出所代码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="HJDPCSDM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>现住地区划:</td>
									<td class='td2' align='Right'><gaLabel:label name="XZDQH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>现住地祥址:</td>
									<td class='td2' align='Right'><gaLabel:label name="XZDXZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>现住地派出所:</td>
									<td class='td2' align='Right'><gaLabel:label name="XZDPCS" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>现住地派出所代码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="XZDPCSDM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>管辖单位:</td>
									<td class='td2' align='Right'><gaLabel:label name="GXDW" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>管辖单位机构代码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="GXDWJGDM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>立案单位:</td>
									<td class='td2' align='Right'><gaLabel:label name="LADW" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>立案单位代码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="LADWJGDM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>重点人员类别标记:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="ZDRYLBBJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>重点人员细类:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZDRYXL" />
									</td>
								</tr>
								<tr>
									<td class='td1'>审核单位:</td>
									<td class='td2' align='Right'><gaLabel:label name="SHDW" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>审批人:</td>
									<td class='td2' align='Right'><gaLabel:label name="SPR" />
									</td>
								</tr>
								<tr>
									<td class='td1'>审批单位:</td>
									<td class='td2' align='Right'><gaLabel:label name="SPDW" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>审核人:</td>
									<td class='td2' align='Right'><gaLabel:label name="SHR" />
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
