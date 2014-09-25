<%@page language='java' contentType='text/html;charset=UTF-8'%><%@taglib
	uri='/tags/ga-json' prefix='gaLabel'%><%@page language='java'
	pageEncoding='UTF-8'%><html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
 
<link type='text/css' rel='stylesheet' href='skins/default/css/skin.css'>
<title>道路路口路段表明细</title>
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
									<td class='td1'>管理部门:</td>
									<td class='td2' align='Right'><gaLabel:label name="GLBM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>道路代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="DLDM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>路口路段代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="LDDM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>路口路段名称:</td>
									<td class='td2' align='Right'><gaLabel:label name="LDMC" />
									</td>
								</tr>
								<tr>
									<td class='td1'>道路线型:</td>
									<td class='td2' align='Right'><gaLabel:label name="DLXX" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>路口路段类型:</td>
									<td class='td2' align='Right'><gaLabel:label name="LKLDLX" />
									</td>
								</tr>
								<tr>
									<td class='td1'>道路物理隔离:</td>
									<td class='td2' align='Right'><gaLabel:label name="DLWLGL" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>路面结构:</td>
									<td class='td2' align='Right'><gaLabel:label name="LMJG" />
									</td>
								</tr>
								<tr>
									<td class='td1'>防护设施类型:</td>
									<td class='td2' align='Right'><gaLabel:label name="FHSSLX" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>采集人:</td>
									<td class='td2' align='Right'><gaLabel:label name="CJR" />
									</td>
								</tr>
								<tr>
									<td class='td1'>创建时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="CJSJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>更新时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="GXSJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>起始米数:</td>
									<td class='td2' align='Right'><gaLabel:label name="QSMS" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>结束米数:</td>
									<td class='td2' align='Right'><gaLabel:label name="JSMS" />
									</td>
								</tr>
								<tr>
									<td class='td1'>行政区划:</td>
									<td class='td2' align='Right'><gaLabel:label name="XZQH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>所属管理部门:</td>
									<td class='td2' align='Right'><gaLabel:label name="SSGLBM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>相关道路代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="XGDLDM" />
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
