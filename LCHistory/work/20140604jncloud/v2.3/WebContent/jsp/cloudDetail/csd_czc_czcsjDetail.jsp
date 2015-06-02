<%@page language='java' contentType='text/html;charset=UTF-8'%><%@taglib
	uri='/tags/ga-json' prefix='gaLabel'%><%@page language='java'
	pageEncoding='UTF-8'%><html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
 
<link type='text/css' rel='stylesheet' href='skins/default/css/skin.css'>
<title>出租车-出租车司机信息明细</title>
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
									<td class='td1'>司机编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="SJBH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>服务证号:</td>
									<td class='td2' align='Right'><gaLabel:label name="FWZH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>身份证号码:</td>
									<td class='td2' align='Right'><gaLabel:label name="SFZH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>用途:</td>
									<td class='td2' align='Right'>出租车
									</td>
								</tr>
								<tr>
									<td class='td1'>用途起始时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="QSSJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>服务证核发日期:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="FWZHFRQ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>企业编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="QYBH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>车辆号码:</td>
									<td class='td2' align='Right'><gaLabel:label name="CLHM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>服务证状态编号:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="FFZZTBM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>出生日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="CSRQ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>性别:</td>
									<td class='td2' align='Right'><gaLabel:label name="XB" collection="DIC_XB"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>许可证核发日期:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="XKZHFRQ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>司机姓名:</td>
									<td class='td2' align='Right'><gaLabel:label name="SJXM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>住址:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>电话号码:</td>
									<td class='td2' align='Right'><gaLabel:label name="DHHM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>许可证类型:</td>
									<td class='td2' align='right'><gaLabel:label name="XKZLX"
											collection="DIC_CZCXKZLX" />
									</td>
								</tr>
								<tr>
									<td class='td1'>填写日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="TXRQ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>检查日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="JCRQ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>检查人:</td>
									<td class='td2' align='Right'><gaLabel:label name="JCR" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>工作日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="GZRQ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>车辆文件号:</td>
									<td class='td2' align='Right'><gaLabel:label name="CLWJH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>企业名称:</td>
									<td class='td2' align='Right'><gaLabel:label name="QYMC" />
									</td>
								</tr>
								<tr>
									<td class='td1'>学习出口编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="XXCKBH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>驾驶许可证编号:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="JSXKZBH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>状态编号:</td>
									<td class='td2' align='right'><gaLabel:label name="ZT"
											collection="DIC_CZCZT
" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>司机维修日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="WXRQ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>许可日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="XKRQ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>学习日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="XXRQ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>联系电话:</td>
									<td class='td2' align='Right'><gaLabel:label name="LXDH" />
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
