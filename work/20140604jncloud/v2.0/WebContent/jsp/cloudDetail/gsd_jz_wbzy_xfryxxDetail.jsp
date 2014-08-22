<%@page language='java' contentType='text/html;charset=UTF-8'%><%@taglib
	uri='/tags/ga-json' prefix='gaLabel'%><%@page language='java'
	pageEncoding='UTF-8'%><html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
 
<link type='text/css' rel='stylesheet' href='skins/default/css/skin.css'>
<title>全省信访人员信息明细</title>
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
									<td class='td1'>信访人编号:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="PERSONID" />
									</td>
								</tr>
								<tr>
									<td class='td1'>民族:</td>
									<td class='td2' align='Right'><gaLabel:label name="TNAME" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>姓名拼音:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="PHONETICIZE" />
									</td>
								</tr>
								<tr>
									<td class='td1'>证件代码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="CARDTYPE" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>证件代码1:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="CARDTYPE_OLD" />
									</td>
								</tr>
								<tr>
									<td class='td1'>证件类型中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="CARDTYPE_ZW" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>证件号码:</td>
									<td class='td2' align='Right'><gaLabel:label name="IDCARD" />
									</td>
								</tr>
								<tr>
									<td class='td1'>性别代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="TSEX" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>性别代码OLD:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="TSEX_OLD" />
									</td>
								</tr>
								<tr>
									<td class='td1'>性别中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="TSEX_ZW" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>生日:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="TBIRTHDAY" />
									</td>
								</tr>
								<tr>
									<td class='td1'>照片地址:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="PICTUREURL" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>照片类型:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="PICTURETYPE" />
									</td>
								</tr>
								<tr>
									<td class='td1'>信访人户籍所属省/直辖市:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="PROVINCEID" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>信访人户籍所属省/直辖市1:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="PROVINCENAME" />
									</td>
								</tr>
								<tr>
									<td class='td1'>信访人户籍所属地区:</td>
									<td class='td2' align='Right'><gaLabel:label name="AREAID" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>信访人户籍所属地区名称:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="AREANAME" />
									</td>
								</tr>
								<tr>
									<td class='td1'>信访人户籍所属县名称:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="COUNTYNAME" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>邮编:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="POSTALCODE" />
									</td>
								</tr>
								<tr>
									<td class='td1'>联系电话:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="LINKPHONE" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>EMAIL:</td>
									<td class='td2' align='Right'><gaLabel:label name="EMAIL" />
									</td>
								</tr>
								<tr>
									<td class='td1'>联系地址:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="LINKADDRESS" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>信访人单位:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="CORPORATION" />
									</td>
								</tr>
								<tr>
									<td class='td1'>信访人信息备注:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="PERSONREMARK" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>记录人编号:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="RECORDUSERID" />
									</td>
								</tr>
								<tr>
									<td class='td1'>记录人名称:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="RECORDUSERNAME" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>登记部门编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="DEPTID" />
									</td>
								</tr>
								<tr>
									<td class='td1'>登记部门名称:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="DEPTNAME" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>记录时间:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="RECORDTIME" />
									</td>
								</tr>
								<tr>
									<td class='td1'>最后修改时间:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="ENDEDITTIME" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>信访部门类型:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="AGENTDEPTTYPE" />
									</td>
								</tr>
								<tr>
									<td class='td1'>数据类型:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="DATATYPE" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>原系统编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="YXTBH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>是否转换字典:</td>
									<td class='td2' align='Right'><gaLabel:label name="SFZHZD" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>入库时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="D_RKSJ" />
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
