<%@page language='java' contentType='text/html;charset=UTF-8'%><%@taglib
	uri='/tags/ga-json' prefix='gaLabel'%><%@page language='java'
	pageEncoding='UTF-8'%><html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>

<link type='text/css' rel='stylesheet' href='skins/default/css/skin.css'>
<title>印章单位信息明细</title>
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
									<td class='td1'>印章编码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SEALCODE" />
									</td>
								</tr>
								<tr>
									<td class='td1'>印章名称:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SEALNAME" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>印章状态代码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SEAL_STATUS" />
									</td>
								</tr>
								<tr>
									<td class='td1'>印章申刻单位编码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="ORG_USER_CODE" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>审批单位编码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="INSTCODE" />
									</td>
								</tr>
								<tr>
									<td class='td1'>印章制作单位编码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="CMPCODE" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>印章类型代码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SEAL_TYPE" />
									</td>
								</tr>
								<tr>
									<td class='td1'>章面材料代码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SEAL_MATTYPE" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>印油说明:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="OIL_DESCRIPTION" />
									</td>
								</tr>
								<tr>
									<td class='td1'>申刻人姓名:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="APPLY_PERSON" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>申刻人证件类型代码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="AP_CERTTYPE" />
									</td>
								</tr>
								<tr>
									<td class='td1'>审批人(帐号全名):</td>
									<td class='td2' align='Right'><gaLabel:label
											name="PERMIT_PERSON" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>审批日期:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="DATE_PERMIT" />
									</td>
								</tr>
								<tr>
									<td class='td1'>承接日期:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="DATE_ACCEPT" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>制作日期:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="DATE_MAKE" />
									</td>
								</tr>
								<tr>
									<td class='td1'>交付日期:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="DATE_DELIVER" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>报废日期:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="DATE_DISCARD" />
									</td>
								</tr>
								<tr>
									<td class='td1'>缴销日期:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="DATE_CANCEL" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>挂失日期:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="DATE_LOST" />
									</td>
								</tr>
								<tr>
									<td class='td1'>最后年检日期:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="DATE_LASTCHECK" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>印章印模图像数据:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SEALIMAGE" />
									</td>
								</tr>
								<tr>
									<td class='td1'>删除标记:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="DELETED" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>印章英文名称:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="ENG_NAME" />
									</td>
								</tr>
								<tr>
									<td class='td1'>申刻单位名称（民族）:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SEAL_FOLK" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>印章规格:</td>
									<td class='td2' align='Right'><gaLabel:label name="SPECS" />
									</td>
								</tr>
								<tr>
									<td class='td1'>申刻人证件号码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="AP_CERTNO" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>排版规格代码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="TYPESET_STYLE" />
									</td>
								</tr>
								<tr>
									<td class='td1'>并刊类型代码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="TYPESET_ADJOIN_TYPE" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>并刊内容:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="TYPESET_ADJION" />
									</td>
								</tr>
								<tr>
									<td class='td1'>排版中刊代码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="TYPESET_MIDDLE" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>排版环排字:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="TYPESET_W_1" />
									</td>
								</tr>
								<tr>
									<td class='td1'>排版横排字:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="TYPESET_W_2" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>排版竖排字:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="TYPESET_W_3" />
									</td>
								</tr>
								<tr>
									<td class='td1'>排版补充说明:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="TYPESET_W_4" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>图像宽度:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SI_WIDTH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>图像高度:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SI_HEIGHT" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>压缩标记:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SI_COMPRESS_FLAG" />
									</td>
								</tr>
								<tr>
									<td class='td1'>上传标志:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="TRANSFER" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>申刻单位类型代码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="USE_ORG_CLASS" />
									</td>
								</tr>
								<tr>
									<td class='td1'>行政区域:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="DISTRICT" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>发送时间:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="TRANSFER_TIME" />
									</td>
								</tr>
								<tr>
									<td class='td1'>接收时间:</td>
									<td class='td2' align='Right' colspan="4"><gaLabel:label
											name="RECEIVE_TIME" />
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
