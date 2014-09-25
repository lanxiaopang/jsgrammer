<%@page language='java' contentType='text/html;charset=UTF-8'%><%@taglib
	uri='/tags/ga-json' prefix='gaLabel'%><%@page language='java'
	pageEncoding='UTF-8'%><html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
 
<link type='text/css' rel='stylesheet' href='skins/default/css/skin.css'>
<title>出租车信息明细</title>
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
									<td class='td1'>车辆编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="CLBH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>批准编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="PZBH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>车辆文件号:</td>
									<td class='td2' align='Right'><gaLabel:label name="CLWJH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>车牌号码:</td>
									<td class='td2' align='Right'><gaLabel:label name="CPHM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>单位编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="DWBH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>车辆颜色:</td>
									<td class='td2' align='Right'><gaLabel:label name="CLYS" />
									</td>
								</tr>
								<tr>
									<td class='td1'>燃油类型代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="RYLX" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>车辆类型:</td>
									<td class='td2' align='right'><gaLabel:label name="CLLX"
											collection="DIC_CZCLX" />
									</td>
								</tr>
								<tr>
									<td class='td1'>车架号:</td>
									<td class='td2' align='Right'><gaLabel:label name="CJH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>发动机号:</td>
									<td class='td2' align='Right'><gaLabel:label name="FDJH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>装备编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZBBH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>装备类型:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZBLX" />
									</td>
								</tr>
								<tr>
									<td class='td1'>装备工厂:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZBGC" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>每公里收费代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="GLF" />
									</td>
								</tr>
								<tr>
									<td class='td1'>购买时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="GMRQ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>批准日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="PZRQ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>停止使用日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="TYRQ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>个体车主编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="GTCZBH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>身份类型:</td>
									<td class='td2' align='Right'><gaLabel:label name="SFLX" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>停运类型:</td>
									<td class='td2' align='Right'><gaLabel:label name="TYLX" />
									</td>
								</tr>
								<tr>
									<td class='td1'>注销日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZXRQ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>个体车主住址:</td>
									<td class='td2' align='Right'><gaLabel:label name="JTZZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>车主电话:</td>
									<td class='td2' align='Right'><gaLabel:label name="LXDH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>个体车主姓名:</td>
									<td class='td2' align='Right'><gaLabel:label name="CZXM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>车辆营运日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="YYRQ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>公司名称:</td>
									<td class='td2' align='Right'><gaLabel:label name="GSMC" />
									</td>
								</tr>
								<tr>
									<td class='td1'>发卡日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="FKRQ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>补卡次数:</td>
									<td class='td2' align='Right'><gaLabel:label name="BKCS" />
									</td>
								</tr>
								<tr>
									<td class='td1'>补卡日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="BKRQ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>年审日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="NSRQ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>检查标志:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="CHECK_FLAG" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>车辆车牌:</td>
									<td class='td2' align='Right'><gaLabel:label name="CLCP" />
									</td>
								</tr>
								<tr>
									<td class='td1'>停止使用年限:</td>
									<td class='td2' align='Right'><gaLabel:label name="TZSYNX" />
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
