<%@page language='java' contentType='text/html;charset=UTF-8'%><%@taglib
	uri='/tags/ga-json' prefix='gaLabel'%><%@page language='java'
	pageEncoding='UTF-8'%><html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>

<link type='text/css' rel='stylesheet' href='skins/default/css/skin.css'>
<title>印章使用人信息明细</title>
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
						<td colspan='1'><hr width='122' size='2' color='#1c9ad7'
								align='left'  >
						</td>
						<td colspan='1'><hr width='818' size='2' color='#d2d7db'
								align='right' noshade>
						</td>
					</tr>
					<tr>
						<td colspan='2' align='center'><table cellpadding='0'
								width='95%' style='vertical-align: top; background: white;'>
								<tr>
									<td class='td1'>ID:</td>
									<td class='td2' align='Right'><gaLabel:label name="ID" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>申刻单位编码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="ORGCODE" />
									</td>
								</tr>
								<tr>
									<td class='td1'>机构代码证号:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="ORG_CERT_NO" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>申刻单位名称:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="ORG_NAME" />
									</td>
								</tr>
								<tr>
									<td class='td1'>申刻单位名称(英文):</td>
									<td class='td2' align='Right'><gaLabel:label
											name="ORG_NAME_ENG" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>申刻单位名称(民族):</td>
									<td class='td2' align='Right'><gaLabel:label
											name="ORG_NAME_FOLK" />
									</td>
								</tr>
								<tr>
									<td class='td1'>申刻单位类型代码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="ORG_CLASS" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>语音系统密码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="VOICE_PASS" />
									</td>
								</tr>
								<tr>
									<td class='td1'>负责人姓名:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="CRP_NAME" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>负责人证件类型代码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="CRP_CERTTYPE" />
									</td>
								</tr>
								<tr>
									<td class='td1'>负责人证件号码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="CRP_CERTNO" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>单位地址:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="ADDRESS" />
									</td>
								</tr>
								<tr>
									<td class='td1'>联系电话:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="TELEPHONE" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>邮政编码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="POSTCODE" />
									</td>
								</tr>
								<tr>
									<td class='td1'>传输标记:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="TRANSFER" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>发送时间:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="TRANSFER_TIME" />
									</td>
								</tr>
								<tr>
									<td class='td1'>接收时间:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="RECEIVE_TIME" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>从那个收发端(节点)接收的:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="RECEIVE_NODE" />
									</td>
								</tr>
								<tr>
									<td class='td1'>创建时间:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="GMT_CREATE" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>修改时间:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="GMT_MODIFIED" />
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
