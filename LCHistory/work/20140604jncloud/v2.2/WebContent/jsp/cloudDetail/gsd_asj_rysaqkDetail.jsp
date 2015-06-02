<%@page language='java' contentType='text/html;charset=UTF-8'%><%@taglib
	uri='/tags/ga-json' prefix='gaLabel'%><%@page language='java'
	pageEncoding='UTF-8'%><html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
 
<link type='text/css' rel='stylesheet' href='skins/default/css/skin.css'>
<title>人员涉案情况明细</title>
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
									<td class='td1'>案件编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="AJBH" />
									</td>
									<td width='10%'>&nbsp;</td>
								</tr>
								<tr>
									<td class='td1'>人员编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="RYBH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>作案工具:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZAGJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>作案手段特点:</td>
									<td class='td2' align='Right'><gaLabel:label name="SDTD" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>作案时机:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZASJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>选择处所:</td>
									<td class='td2' align='Right'><gaLabel:label name="XZCS" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>选择对象:</td>
									<td class='td2' align='Right'><gaLabel:label name="XZDX" />
									</td>
								</tr>
								<tr>
									<td class='td1'>人员类型:</td>
									<td class='td2' align='Right'><gaLabel:label name="RYLX" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>人员状态:</td>
									<td class='td2' align='Right'><gaLabel:label name="RYZT" />
									</td>
								</tr>
								<tr>
									<td class='td1'>人员受害形式:</td>
									<td class='td2' align='Right'><gaLabel:label name="RYSHXS" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>人身伤害程度:</td>
									<td class='td2' align='Right'><gaLabel:label name="RSSHCD" />
									</td>
								</tr>
								<tr>
									<td class='td1'>涉案总值:</td>
									<td class='td2' align='Right'><gaLabel:label name="SAZZ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>损失金额:</td>
									<td class='td2' align='Right'><gaLabel:label name="SSJE" />
									</td>
								</tr>
								<tr>
									<td class='td1'>挽回损失金额:</td>
									<td class='td2' align='Right'><gaLabel:label name="WHSSJE" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>侵犯/被侵犯情况:</td>
									<td class='td2' align='Right'><gaLabel:label name="QFQK" />
									</td>
								</tr>
								<tr>
									<td class='td1'>人员伤亡情况:</td>
									<td class='td2' align='Right'><gaLabel:label name="SWQK" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>主从犯:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZCF" />
									</td>
								</tr>
								<tr>
									<td class='td1'>部门编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="BMBH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>创建者:</td>
									<td class='td2' align='Right'><gaLabel:label name="CJZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>创建时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="CJSJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>密级:</td>
									<td class='td2' align='Right'><gaLabel:label name="MJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>在案件角色:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZAJJS" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>简要案情:</td>
									<td class='td2' align='Right'><gaLabel:label name="JYAQ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>是否自主案件:</td>
									<td class='td2' align='Right'><gaLabel:label name="SFZYAJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>卷宗编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="JZBH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>案发地点:</td>
									<td class='td2' align='Right'><gaLabel:label name="AFDD" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>报警方式:</td>
									<td class='td2' align='Right'><gaLabel:label name="BJFS" />
									</td>
								</tr>
								<tr>
									<td class='td1'>案别:</td>
									<td class='td2' align='Right'><gaLabel:label name="AB" />
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
