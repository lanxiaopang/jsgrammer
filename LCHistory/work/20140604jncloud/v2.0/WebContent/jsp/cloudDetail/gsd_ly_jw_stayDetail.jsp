<%@page language='java' contentType='text/html;charset=UTF-8'%><%@taglib
	uri='/tags/ga-json' prefix='gaLabel'%><%@page language='java'
	pageEncoding='UTF-8'%><html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>

<link type='text/css' rel='stylesheet' href='skins/default/css/skin.css'>
<title>境外旅客住宿预定信息明细</title>
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
									<td class='td1'>ID:</td>
									<td class='td2' align='Right'><gaLabel:label name="ID" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>X_SN:</td>
									<td class='td2' align='Right'><gaLabel:label name="X_SN" />
									</td>
								</tr>
								<tr>
									<td class='td1'>M_FN:</td>
									<td class='td2' align='Right'><gaLabel:label name="M_FN" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>CHN_N:</td>
									<td class='td2' align='Right'><gaLabel:label name="CHN_N" />
									</td>
								</tr>
								<tr>
									<td class='td1'>SEX:</td>
									<td class='td2' align='right'><gaLabel:label name="SEX"
											collection="DIC_XB)" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>BDATE:</td>
									<td class='td2' align='Right'><gaLabel:label name="BDATE" />
									</td>
								</tr>
								<tr>
									<td class='td1'>P_NATIONAL:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="P_NATIONAL" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>PASS_T:</td>
									<td class='td2' align='Right'><gaLabel:label name="PASS_T" />
									</td>
								</tr>
								<tr>
									<td class='td1'>PASS_NO:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="PASS_NO" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>VISA_T:</td>
									<td class='td2' align='right'><gaLabel:label name="VISA_T"
											collection="DIC_QZLX)" />
									</td>
								</tr>
								<tr>
									<td class='td1'>VISA_NO:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="VISA_NO" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>STAY_DATE:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="STAY_DATE" />
									</td>
								</tr>
								<tr>
									<td class='td1'>QF_UNIT:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="QF_UNIT" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>IN_DATE:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="IN_DATE" />
									</td>
								</tr>
								<tr>
									<td class='td1'>IN_PORT:</td>
									<td class='td2' align='right'><gaLabel:label
											name="IN_PORT" collection="DIC_RJKA)" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>P_ADDRESS:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="P_ADDRESS" />
									</td>
								</tr>
								<tr>
									<td class='td1'>JD_UNIT:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="JD_UNIT" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>IN_TIME:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="IN_TIME" />
									</td>
								</tr>
								<tr>
									<td class='td1'>NO_ROOM:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="NO_ROOM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>OUT_TIME:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="OUT_TIME" />
									</td>
								</tr>
								<tr>
									<td class='td1'>TRA_TIME:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="TRA_TIME" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>PLACE:</td>
									<td class='td2' align='Right'><gaLabel:label name="PLACE" />
									</td>
								</tr>
								<tr>
									<td class='td1'>CREDIT_CODE:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="CREDIT_CODE" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>CREDIT_NO:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="CREDIT_NO" />
									</td>
								</tr>
								<tr>
									<td class='td1'>STA_CODE:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="STA_CODE" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>BUR_CODE:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="BUR_CODE" />
									</td>
								</tr>
								<tr>
									<td class='td1'>SPM:</td>
									<td class='td2' align='Right'><gaLabel:label name="SPM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>MEMO:</td>
									<td class='td2' align='Right'><gaLabel:label name="MEMO" />
									</td>
								</tr>
								<tr>
									<td class='td1'>REASON:</td>
									<td class='td2' align='Right'><gaLabel:label name="REASON" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>INSERT_TIME:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="INSERT_TIME" />
									</td>
								</tr>
								<tr>
									<td class='td1'>HOTELID:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="HOTELID" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>PDAFLAG:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="PDAFLAG" />
									</td>
								</tr>
								<tr>
									<td class='td1'>DRAGOMANAME:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="DRAGOMANAME" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>DRAGOMAPHONE:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="DRAGOMAPHONE" />
									</td>
								</tr>
								<tr>
									<td class='td1'>GROUPNO:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="GROUPNO" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>SFZH:</td>
									<td class='td2' align='Right'><gaLabel:label name="SFZH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>ZJYXQ:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZJYXQ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>CITY_CODE:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="CITY_CODE" />
									</td>
								</tr>
								<tr>
									<td class='td1'>OPERATOR:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="OPERATOR" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>DAYS:</td>
									<td class='td2' align='Right'><gaLabel:label name="DAYS" />
									</td>
								</tr>
								<tr>
									<td class='td1'>LEAVEDATE:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="LEAVEDATE" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>FLAGTJ:</td>
									<td class='td2' align='Right'><gaLabel:label name="FLAGTJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>ODC_CQSJ:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="ODC_CQSJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>ODC_GXSJ:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="ODC_GXSJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>ODC_ZJ:</td>
									<td class='td2' align='Right'><gaLabel:label name="ODC_ZJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>ODC_JCBZ:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="ODC_JCBZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>ZT:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZT" />
									</td>
									<td width='10%'>&nbsp;</td>
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
