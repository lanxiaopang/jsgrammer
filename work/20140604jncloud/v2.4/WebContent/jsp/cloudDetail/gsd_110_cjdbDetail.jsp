<%@page language='java' contentType='text/html;charset=UTF-8'%><%@taglib
	uri='/tags/ga-json' prefix='gaLabel'%><%@page language='java'
	pageEncoding='UTF-8'%><html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>

<link type='text/css' rel='stylesheet' href='skins/default/css/skin.css'>
<title>处警单表明细</title>
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
									<td class='td1'>行政区划:</td>
									<td class='td2' align='Right'><gaLabel:label name="XZQH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>接警单编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="JJDBH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>处警单编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="CJDBH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>处警单位编码:</td>
									<td class='td2' align='Right'><gaLabel:label name="CJDWBM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>处警员编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="CJYBH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>处警员姓名:</td>
									<td class='td2' align='Right'><gaLabel:label name="CJYXM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>处警台编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="CJTBH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>处警台IP:</td>
									<td class='td2' align='Right'><gaLabel:label name="CJTIP" />
									</td>
								</tr>
								<tr>
									<td class='td1'>处警时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="CJSJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>处警录音号:</td>
									<td class='td2' align='Right'><gaLabel:label name="CJLYH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>处警意见:</td>
									<td class='td2' align='Right'><gaLabel:label name="CJYJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>电话处警方式:</td>
									<td class='td2' align='Right'><gaLabel:label name="DHCJFS" />
									</td>
								</tr>
								<tr>
									<td class='td1'>对讲机处警方式:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="DJJCJFS" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>网络处警方式:</td>
									<td class='td2' align='Right'><gaLabel:label name="WLCJFS" />
									</td>
								</tr>
								<tr>
									<td class='td1'>短消息处警方式:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="DXXCJFS" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>处警单位类别:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="CJDWLBDM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>处警单位代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="CJDWDM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>受警单位代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="SJDWDM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>受警单位IP:</td>
									<td class='td2' align='Right'><gaLabel:label name="SJDWIP" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>受警员编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="SJYBH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>受警员姓名:</td>
									<td class='td2' align='Right'><gaLabel:label name="SJYXM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>处警结束时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="CJJSSJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>派单到达时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="PDDDSJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>派单结束时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="PDJSSJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>处警单状态:</td>
									<td class='td2' align='Right'><gaLabel:label name="CJDZT" />
									</td>
									 
									<td width='10%'>&nbsp;</td>
									<td class='td1'>数据更新时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="SJGXSJ" />
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
