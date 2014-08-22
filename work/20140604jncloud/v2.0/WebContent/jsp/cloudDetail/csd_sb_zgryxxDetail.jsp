<%@page language='java' contentType='text/html;charset=UTF-8'%><%@taglib
	uri='/tags/ga-json' prefix='gaLabel'%><%@page language='java'
	pageEncoding='UTF-8'%><html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
 
<link type='text/css' rel='stylesheet' href='skins/default/css/skin.css'>
<title>职工人员社保信息明细</title>
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
						<td colspan='1'><hr width='125' size='2' color='#1c9ad7'
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
									<td class='td1'>身份证号:</td>
									<td class='td2' align='Right'><gaLabel:label name="SFZH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>性别:</td>
									<td class='td2' align='Right'><gaLabel:label name="XB" collection="DIC_XB"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>出生日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="CSRQ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>个人身份:</td>
									<td class='td2' align='Right'><gaLabel:label name="GRSF" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>参加工作日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="CJGZRQ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>职工类别:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZGLB" collection="DIC_SBZGLB"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>参保状态:</td>
									<td class='td2' align='Right'><gaLabel:label name="CBZT" collection="DIC_SBCBZT"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>死亡日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="SWRQ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>家庭住址:</td>
									<td class='td2' align='Right'><gaLabel:label name="JTZZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>联系电话:</td>
									<td class='td2' align='Right'><gaLabel:label name="LXDH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>单位编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="DWBH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>发放管理单位:</td>
									<td class='td2' align='Right'><gaLabel:label name="FFGLDW" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>最后申报年月:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZHSBNY" />
									</td>
								</tr>
								<tr>
									<td class='td1'>待遇享受开始年月:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="DYXSKSNY" />
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
