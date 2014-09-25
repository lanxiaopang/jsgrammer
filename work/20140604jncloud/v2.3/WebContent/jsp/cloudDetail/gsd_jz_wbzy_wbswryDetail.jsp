<%@page language='java' contentType='text/html;charset=UTF-8'%><%@taglib
	uri='/tags/ga-json' prefix='gaLabel'%><%@page language='java'
	pageEncoding='UTF-8'%><html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>

<link type='text/css' rel='stylesheet' href='skins/default/css/skin.css'>
<title>全省上网人员信息表明细</title>
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
									<td class='td1'>营业场所代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="YYCSDM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>营业场所名称:</td>
									<td class='td2' align='Right'><gaLabel:label name="YYCSMC" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>地址区划:</td>
									<td class='td2' align='Right'><gaLabel:label name="DZQH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>地址:</td>
									<td class='td2' align='Right'><gaLabel:label name="DZ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>上网人员姓名:</td>
									<td class='td2' align='Right'><gaLabel:label name="SWRYXM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>证件类型:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZJLX" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>证件号码:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZJHM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>发证机关名称:</td>
									<td class='td2' align='Right'><gaLabel:label name="FZJGMC" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>国籍:</td>
									<td class='td2' align='Right'><gaLabel:label name="GJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>上网开始时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="SWKSSJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>上网终端号:</td>
									<td class='td2' align='Right'><gaLabel:label name="SWZDH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>下网时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="XWSJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>入库时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="D_RKSJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>文件创建时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="WJCJSJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>文件名称:</td>
									<td class='td2' align='Right'><gaLabel:label name="WJMC" />
									</td>
								</tr>
								<tr>
									<td class='td1'>入资源库时间:</td>
									<td class='td2' align='Right' colspan="8"><gaLabel:label name="Z_RKSJ" />
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
