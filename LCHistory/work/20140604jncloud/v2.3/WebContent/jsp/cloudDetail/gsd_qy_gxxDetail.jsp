<%@page language='java' contentType='text/html;charset=UTF-8'%><%@taglib
	uri='/tags/ga-json' prefix='gaLabel'%><%@page language='java'
	pageEncoding='UTF-8'%><html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
 
<link type='text/css' rel='stylesheet' href='skins/default/css/skin.css'>
<title>犬只信息明细</title>
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
									<td rowspan="6"><gaLabel:img dataType="QZXX_IMG"
											name="DJZH" key="DJZH" ds=''></gaLabel:img>
									</td>
								</tr>
								<tr>
									<td class='td1'>犬名:</td>
									<td class='td2' align='Right'><gaLabel:label name="QM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>状态:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZT" />
									</td>
								</tr>
								<tr>
									<td class='td1'>性别:</td>
									<td class='td2' align='Right'><gaLabel:label name="XB" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>肩高:</td>
									<td class='td2' align='Right'><gaLabel:label name="JG" />
									</td>
								</tr>
								<tr>
									<td class='td1'>体长:</td>
									<td class='td2' align='Right'><gaLabel:label name="TC" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>犬种:</td>
									<td class='td2' align='Right'><gaLabel:label name="QZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>毛色:</td>
									<td class='td2' align='Right'><gaLabel:label name="MS" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>芯片号:</td>
									<td class='td2' align='Right'><gaLabel:label name="XPH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>登记证号:</td>
									<td class='td2' align='Right'><gaLabel:label name="DJZH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>办证时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="BZSJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>用犬只所有者的证件号:</td>
									<td class='td2' align='Right'><gaLabel:label name="CZSYZ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>犬只所有者的证件类型:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="CZSYZZJLX" />
									</td>
								</tr>
								<tr>
									<td class='td1'>是否制卡:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>注销原因:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZXYY" />
									</td>
								</tr>
								<tr>
									<td class='td1'>养犬用途:</td>
									<td class='td2' align='Right'><gaLabel:label name="YQYT" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>免疫证号:</td>
									<td class='td2' align='Right'><gaLabel:label name="MYZH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>传输标识:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="MOVESIGN" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>注销时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZXSJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>养犬性质:</td>
									<td class='td2' align='Right'><gaLabel:label name="YQXZ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>变动时间:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="UPDATETIME" />
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
