<%@page language='java' contentType='text/html;charset=UTF-8'%><%@taglib
	uri='/tags/ga-json' prefix='gaLabel'%><%@page language='java'
	pageEncoding='UTF-8'%><html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
 
<link type='text/css' rel='stylesheet' href='skins/default/css/skin.css'>
<title>户表远传表明细</title>
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
									<td class='td1'>给水号:</td>
									<td class='td2' align='Right'><gaLabel:label name="GSH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>编码:</td>
									<td class='td2' align='Right'><gaLabel:label name="BM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>户名:</td>
									<td class='td2' align='Right'><gaLabel:label name="HM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>地址:</td>
									<td class='td2' align='Right'><gaLabel:label name="DZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>身份证号:</td>
									<td class='td2' align='Right'><gaLabel:label name="SFZH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>固定电话:</td>
									<td class='td2' align='Right'><gaLabel:label name="GDDH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>手机号:</td>
									<td class='td2' align='Right'><gaLabel:label name="SJH" />
									</td>
									<td width='10%'>&nbsp;</td>
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
