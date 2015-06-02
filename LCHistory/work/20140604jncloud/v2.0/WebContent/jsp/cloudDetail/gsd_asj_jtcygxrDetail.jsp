<%@page language='java' contentType='text/html;charset=UTF-8'%><%@taglib
	uri='/tags/ga-json' prefix='gaLabel'%><%@page language='java'
	pageEncoding='UTF-8'%><html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>

<link type='text/css' rel='stylesheet' href='skins/default/css/skin.css'>
<title>家庭主要成员及关系人明细</title>
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
	<form name='asjjtcyForm' method='post' action='gsd_asj_jtcygxrDetail.jsp'
		id='asjjtcyForm' style='vertical-align: top;'>
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
									<td class='td1'>姓名:</td>
									<td class='td2' align='Right'><gaLabel:label name="XM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>性别:</td>
									<td class='td2' align='Right'><gaLabel:label name="XB" collection="DIC_XB"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>民族:</td>
									<td class='td2' align='Right'><gaLabel:label name="MZ" collection="DIC_MZ"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>国籍（地区）:</td>
									<td class='td2' align='Right'><gaLabel:label name="GJ" collection="DIC_GJ"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>工作单位:</td>
									<td class='td2' align='Right'><gaLabel:label name="GZDW" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>联系电话:</td>
									<td class='td2' align='Right'><gaLabel:label name="LXDH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>关系类型:</td>
									<td class='td2' align='Right'><gaLabel:label name="GXLX" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>现住址:</td>
									<td class='td2' align='Right'><gaLabel:label name="XZDZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>创建:</td>
									<td class='td2' align='Right'><gaLabel:label name="CJR" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>创建时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="CJSJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>密级:</td>
									<td class='td2' align='Right'><gaLabel:label name="MJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>电话:</td>
									<td class='td2' align='Right'><gaLabel:label name="DH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>最后修改时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZHXGSJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>最终修改人:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZZXGR" />
									</td>
								</tr>
								<tr>
									<td class='td1'>部门编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="BMBM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>更新时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="GXSJ" />
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
