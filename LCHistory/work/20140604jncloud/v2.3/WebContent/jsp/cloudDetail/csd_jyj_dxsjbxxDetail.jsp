<%@page language='java' contentType='text/html;charset=UTF-8'%><%@taglib
	uri='/tags/ga-json' prefix='gaLabel'%><%@page language='java'
	pageEncoding='UTF-8'%><html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
 
<link type='text/css' rel='stylesheet' href='skins/default/css/skin.css'>
<title>在校大学生基本信息明细</title>
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
									<td class='td1'>公民身份号码:</td>
									<td class='td2' align='Right'><gaLabel:label name="SFZHM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>姓名:</td>
									<td class='td2' align='Right'><gaLabel:label name="XM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>出生日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="CSRQ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>民族:</td>
									<td class='td2' align='Right'><gaLabel:label name="MZ" collection="DIC_MZ"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>性别:</td>
									<td class='td2' align='Right'><gaLabel:label name="XB" collection="DIC_XB"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>政治面貌:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZZMM" collection="DIC_ZZMM"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>就读学历:</td>
									<td class='td2' align='Right'><gaLabel:label name="JDXL" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>就读年限:</td>
									<td class='td2' align='Right'><gaLabel:label name="JDNX" />
									</td>
								</tr>
								<tr>
									<td class='td1'>入学时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="RXSJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>院校名称:</td>
									<td class='td2' align='Right'><gaLabel:label name="YXMC" />
									</td>
								</tr>
								<tr>
									<td class='td1'>专业:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="ZHUANYE" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>院校地址:</td>
									<td class='td2' align='Right'><gaLabel:label name="YXDZ" />
									</td>
								</tr>
								 
								<tr>
									<td class='td1'>职业:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZY" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>暂住事由:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZZSY" collection="DIC_ZZSY"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>暂住处所:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZZCS" collection="DIC_ZZCS"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>转学原因:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZXYY" />
									</td>
								</tr>
								<tr>
									<td class='td1'>填报单位:</td>
									<td class='td2' align='Right'><gaLabel:label name="TBDW" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>填报人:</td>
									<td class='td2' align='Right'><gaLabel:label name="TBR" />
									</td>
								</tr>
								<tr>
									<td class='td1'>院校户籍协管员证号:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="YXHJXGYZH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>在校日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZXRQ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>填报日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="TBRQ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>院校所属辖区:</td>
									<td class='td2' align='Right'><gaLabel:label name="YXSSXQ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>身高:</td>
									<td class='td2' align='Right'><gaLabel:label name="SG" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>院校所属辖区名称:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="YXSSXQMC" />
									</td>
								</tr>
								<tr>
									<td class='td1'>其它住址所属辖区:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="QTZZSSXQ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>其它住址所属辖区名称:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="QTZZSSXQMC" />
									</td>
								</tr>
								<tr>
									<td class='td1'>备注:</td>
									<td class='td2' align='Right'><gaLabel:label name="BZ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>联系方式:</td>
									<td class='td2' align='Right'><gaLabel:label name="LXFS" />
									</td>
								</tr>
								<tr>
									<td class='td1'>登记日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="DJRQ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>照片:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZPXH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>填报单位编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="TBDWBH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>院校地址编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="YXDZID" />
									</td>
								</tr>
								<tr>
									<td class='td1'>学生状态:</td>
									<td class='td2' align='Right'><gaLabel:label name="XSZT" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>邮编:</td>
									<td class='td2' align='Right'><gaLabel:label name="YB" />
									</td>
								</tr>
								 
								<tr>
									<td class='td1'>户口性质:</td>
									<td class='td2' align='Right'><gaLabel:label name="HYZK" collection="DIC_HYZK"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>院校编码:</td>
									<td class='td2' align='Right'><gaLabel:label name="YXBM" />
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
