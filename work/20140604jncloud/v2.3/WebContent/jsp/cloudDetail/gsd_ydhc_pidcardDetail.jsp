﻿<%@page language='java' contentType='text/html;charset=UTF-8'%><%@taglib
	uri='/tags/ga-json' prefix='gaLabel'%><%@page language='java'
	pageEncoding='UTF-8'%><html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
 
<link type='text/css' rel='stylesheet' href='skins/default/css/skin.css'>
<title>核查二代身份证详细信息明细</title>
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
									<td class='td1'>XM:</td>
									<td class='td2' align='Right'><gaLabel:label name="XM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>XB:</td>
									<td class='td2' align='Right'><gaLabel:label name="XB" />
									</td>
								</tr>
								<tr>
									<td class='td1'>MZ:</td>
									<td class='td2' align='Right'><gaLabel:label name="MZ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>CSRQ:</td>
									<td class='td2' align='Right'><gaLabel:label name="CSRQ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>SFZH:</td>
									<td class='td2' align='Right'><gaLabel:label name="SFZH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>ZZ:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>ZP:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZP" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>QFJG:</td>
									<td class='td2' align='Right'><gaLabel:label name="QFJG" />
									</td>
								</tr>
								<tr>
									<td class='td1'>YXQX:</td>
									<td class='td2' align='Right'><gaLabel:label name="YXQX" />
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
									<td class='td1'>SJ:</td>
									<td class='td2' align='Right'><gaLabel:label name="SJ" />
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
