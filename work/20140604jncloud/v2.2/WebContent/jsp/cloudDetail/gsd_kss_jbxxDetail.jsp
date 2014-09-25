<%@page language='java' contentType='text/html;charset=UTF-8'%><%@taglib
	uri='/tags/ga-json' prefix='gaLabel'%><%@page language='java'
	pageEncoding='UTF-8'%><html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
 
<link type='text/css' rel='stylesheet' href='skins/default/css/skin.css'>
<title>看守在所人员信息明细</title>
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
									<td rowspan="6"><gaLabel:img dataType="KSS_IMG"
											name="LFFH" key="LFFH" ds=''></gaLabel:img>
									</td>
								</tr>
								<tr>
									<td class='td1'>姓名:</td>
									<td class='td2' align='Right'><gaLabel:label name="XM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>姓名拼音:</td>
									<td class='td2' align='Right'><gaLabel:label name="XMPY" />
									</td>
								</tr>
								<tr>
									<td class='td1'>别名:</td>
									<td class='td2' align='Right'><gaLabel:label name="BM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>性别:</td>
									<td class='td2' align='Right'><gaLabel:label name="XB" collection="DIC_XB" />
									</td>
								</tr>
								<tr>
									<td class='td1'>出生日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="CSRQ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>证件类型:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZJLX" collection="DIC_ZJLX"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>证件号:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZJH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>婚姻状况:</td>
									<td class='td2' align='Right'><gaLabel:label name="HYZK" collection="DIC_HYZK" />
									</td>
								</tr>
								<tr>
									
									<td class='td1'>民族:</td>
									<td class='td2' align='Right'><gaLabel:label name="MZ" collection="DIC_MZ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>国籍:</td>
									<td class='td2' align='Right'><gaLabel:label name="GJ" collection="DIC_GJ" />
									</td>
								</tr>
								<tr>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>户籍地:</td>
									<td class='td2' align='Right'><gaLabel:label name="HJD" collection="DIC_XZQH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>住址:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZZ" />
									</td>
								</tr>
								<tr>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>住址:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZZD" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>文化程度:</td>
									<td class='td2' align='Right'><gaLabel:label name="WHCD" collection="DIC_WHCD"  />
									</td>
								</tr>
								<tr>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>职业:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZY" collection="DIC_ZY"  />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>工作单位:</td>
									<td class='td2' align='Right'><gaLabel:label name="GZDW" />
									</td>
								</tr>
								<tr>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>身份:</td>
									<td class='td2' align='right'><gaLabel:label name="SF"
											collection="DIC_JLSRYSF" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>特殊身份:</td>
									<td class='td2' align='Right'><gaLabel:label name="TSSF" />
									</td>
								</tr>
								<tr>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>电话:</td>
									<td class='td2' align='Right'><gaLabel:label name="DH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>入所日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="RSRQ" />
									</td>
								</tr>
								<tr>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>入所性质:</td>
									<td class='td2' align='Right'><gaLabel:label name="RSXZ" collection="DIC_RSYY" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>责任单位:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZRDW" />
									</td>
								</tr>
								<tr>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>收押单位:</td>
									<td class='td2' align='Right'><gaLabel:label name="SYDW" />
									</td>
									
									<td width='10%'>&nbsp;</td>
									<td class='td1'>收押人:</td>
									<td class='td2' align='Right'><gaLabel:label name="SYR" />
									</td>
								</tr>
								
				
								<tr>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>办案人:</td>
									<td class='td2' align='Right'><gaLabel:label name="BAR" />
									</td>
									<td width='10%'>&nbsp;</td>
									
									<td class='td1'>办案单位:</td>
									<td class='td2' align='Right'><gaLabel:label name="BADW" />
									</td>
								</tr>
								
								
								<tr>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>备注:</td>
									<td class='td2' colspan="4"><gaLabel:label name="BZ" />
									</td>
									
									
								</tr>
								<tr>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>单位类型:</td>
									<td class='td2' align='Right'><gaLabel:label name="DWLX" collection="DIC_DWLX" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>出所时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="CSSJ" />
									</td>
								</tr>
								
								
								
								
								<tr>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>简要案情:</td>
									<td class='td2'  colspan="4"><gaLabel:label name="FZJJ" />
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
