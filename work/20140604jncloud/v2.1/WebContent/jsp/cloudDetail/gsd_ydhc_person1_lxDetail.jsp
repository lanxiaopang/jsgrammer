<%@page language='java' contentType='text/html;charset=UTF-8'%><%@taglib
	uri='/tags/ga-json' prefix='gaLabel'%><%@page language='java'
	pageEncoding='UTF-8'%><html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
 
<link type='text/css' rel='stylesheet' href='skins/default/css/skin.css'>
<title>核查一代身份证号码记录信息 离线方式明细</title>
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
									<td class='td1'>ID:</td>
									<td class='td2' align='Right'><gaLabel:label name="ID" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>CJSJ:</td>
									<td class='td2' align='Right'><gaLabel:label name="CJSJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>CHKNAME:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="CHKNAME" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>MJSFZH:</td>
									<td class='td2' align='Right'><gaLabel:label name="MJSFZH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>SFBZ:</td>
									<td class='td2' align='Right'><gaLabel:label name="SFBZ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>BZLX:</td>
									<td class='td2' align='Right'><gaLabel:label name="BZLX" />
									</td>
								</tr>
								<tr>
									<td class='td1'>GPS:</td>
									<td class='td2' align='Right'><gaLabel:label name="GPS" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>ODC_CQSJ:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="ODC_CQSJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>ODC_GXSJ:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="ODC_GXSJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>MJDW:</td>
									<td class='td2' align='Right'><gaLabel:label name="MJDW" />
									</td>
								</tr>
								<tr>
									<td class='td1'>MJBM:</td>
									<td class='td2' align='Right'><gaLabel:label name="MJBM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>MJXM:</td>
									<td class='td2' align='Right'><gaLabel:label name="MJXM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>TB_SJ:</td>
									<td class='td2' align='Right'><gaLabel:label name="TB_SJ" />
									</td>
									<td width='10%'>&nbsp;</td>
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
