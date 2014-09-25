<%@page language='java' contentType='text/html;charset=UTF-8'%><%@taglib
	uri='/tags/ga-json' prefix='gaLabel'%><%@page language='java'
	pageEncoding='UTF-8'%><html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>

<link type='text/css' rel='stylesheet' href='skins/default/css/skin.css'>
<title>境内旅客住宿信息明细</title>
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
									<td rowspan="6"><gaLabel:img dataType="LZXX_IMG"
											name="ID" key="ID" ds='1'></gaLabel:img>
									</td>
								</tr>
					<tr>
						<td colspan='2'><font size='2' face='黑体'>住宿人信息</font>
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
									<td class='td1'>旅客代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="ID" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>姓名:</td>
									<td class='td2' align='Right'><gaLabel:label name="NAME" />
									</td>
								</tr>
								<tr>
									<td class='td1'>性别:</td>
									<td class='td2' align='Right'><gaLabel:label name="SEX" collection="DIC_XB"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>民族:</td>
									<td class='td2' align='Right'><gaLabel:label name="NATION" collection="DIC_MZ"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>出生日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="BDATE" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>证件类型:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="ID_NAME"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>证件号码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="ID_CODE" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>地址行政区划:</td>
									<td class='td2' align='Right'><gaLabel:label name="XZQH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>详细地址:</td>
									<td class='td2' align='Right' colspan="4"><gaLabel:label
											name="ADDRESS" />
									</td>
									<td width='10%'>&nbsp;</td>
								</tr>
						</table></td>
					</tr>
				</table>		
						<table cellpadding="0" width="100%"
					style="vertical-align: top; background: white;">
					<tr>
						<td colspan="2">&nbsp;</td>
					</tr>
					<tr>
						<td colspan="2"><font size="2" face="黑体">住宿信息</font></td>
					</tr>
					<tr>
						<td colspan="1">
							<hr width="120" size="2" color="#1c9ad7" align="left"></td>
						<td colspan="1">
							<hr width="818" size="2" color="#d2d7db" align="right" noshade>
						</td>
					</tr>
					<tr>
						<td colspan="2" align="center">
							<table cellpadding="0" width="95%"
								style="vertical-align: top; background: white;">		
								<tr>
									<td class='td1'>房间号码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="NO_ROOM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>入住时间:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="IN_TIME" />
									</td>
								</tr>
								<tr>
									<td class='td1'>退宿时间:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="OUT_TIME" />
									</td>
									<td width='10%'>&nbsp;</td>
									 	<td class='td1'>状态:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZT" collection="DIC_ZSZT"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>信息传递时间:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="TRA_TIME" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>派出所代码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="STA_CODE" />
									</td>
								</tr>
								<tr>
									<td class='td1'>所辖分局代码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="BUR_CODE" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>姓名双拼码:</td>
									<td class='td2' align='Right'><gaLabel:label name="SPM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>旅店名称:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="HOTELNAME" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>旅店编号:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="HOTELID" />
									</td>
									 
								</tr>
								 
								<tr>
									<td class='td1'>住宿天数:</td>
									<td class='td2' align='Right'><gaLabel:label name="DAYS" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>停留事由:</td>
									<td class='td2' align='Right'><gaLabel:label name="TLSY" />
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
