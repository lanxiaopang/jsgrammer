<%@page language='java' contentType='text/html;charset=UTF-8'%><%@taglib
	uri='/tags/ga-json' prefix='gaLabel'%><%@page language='java'
	pageEncoding='UTF-8'%><html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>

<link type='text/css' rel='stylesheet' href='skins/default/css/skin.css'>
<title>警情明细</title>
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
				style='width: 942; margin-left: 120px; border-left: 1px solid #ddd; border-right: 1px solid #ddd'>
				<table cellpadding='0' width='100%'
					style='vertical-align: top; background: white;'>
					<tr>
						<td colspan='2'><font size='2' face='黑体'>详细信息</font>
						</td>
					</tr>
					<tr>
						<td colspan='1'><hr width='120' size='2' color='#1c9ad7'
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
									<td class='td1'>案件名称:</td>
									<td class='td2' align='Right'><gaLabel:label name="AJMC" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>受理接警单位:</td>
									<td class='td2' align='Right'><gaLabel:label name="SLJJDW" />
									</td>
								</tr>
								<tr>
									<td class='td1'>受理接警人员:</td>
									<td class='td2' align='Right'><gaLabel:label name="SLJJRY" />
									</td>
									<td width='10%'>&nbsp;</td>
								</tr>
								<tr>
									<td class='td1'>警情类别:</td>
									<td class='td2' align='Right'><gaLabel:label name="JQLB" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>案别:</td>
									<td class='td2' align='Right'><gaLabel:label name="AB" />
									</td>
								</tr>
								<tr>
									<td class='td1'>受理接警时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="SLJJSJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>受理发现日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="SLFXRQ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>发案时间初值:</td>
									<td class='td2' align='Right'><gaLabel:label name="FASJCZ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>发案时间终值:</td>
									<td class='td2' align='Right'><gaLabel:label name="FASJZZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>接警方式:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SL_JJFS" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>移送时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="YSSJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>移送原因:</td>
									<td class='td2' align='Right'><gaLabel:label name="YSYY" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>移动单位:</td>
									<td class='td2' align='Right'><gaLabel:label name="YSDW" />
									</td>
								</tr>
								<tr>
									<td class='td1'>移送单位承办人:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="YSDWCBR" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>移送承办人:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="YSCBRDH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>发案地点_区县:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="FADD_QX" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>发案地点_街道:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="FADD_JD" />
									</td>
								</tr>
								<tr>
									<td class='td1'>案件所属警区:</td>
									<td class='td2' align='Right'><gaLabel:label name="AJSSJQ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>发案地点:</td>
									<td class='td2' align='Right'><gaLabel:label name="FADD" />
									</td>
								</tr>
								<tr>
									<td class='td1'>所属社区:</td>
									<td class='td2' align='Right'><gaLabel:label name="SSSQ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>简要案情:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZYAQ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>死亡人数:</td>
									<td class='td2' align='Right'><gaLabel:label name="SWRS" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>受伤人数:</td>
									<td class='td2' align='Right'><gaLabel:label name="SSRS" />
									</td>
								</tr>
								<tr>
									<td class='td1'>损失折款:</td>
									<td class='td2' align='Right'><gaLabel:label name="SSJZ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>涉案总值:</td>
									<td class='td2' align='Right'><gaLabel:label name="SAZZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>案件处理情况:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SL_AJCLQK" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>出警人员:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SL_CJRY" />
									</td>
								</tr>
								<tr>
									<td class='td1'>受理时间:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SL_SLSJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>受理人姓名:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SL_SLRXM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>受理接受单位:</td>
									<td class='td2' align='Right'><gaLabel:label name="SLJSDW" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>录入人:</td>
									<td class='td2' align='Right'><gaLabel:label name="SL_LRR" />
									</td>
								</tr>
								<tr>
									<td class='td1'>录入时间:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SL_LRSJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>处理机关:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SL_CLJG" />
									</td>
								</tr>
								 
								<tr>
									 <td class='td1'>填表人:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SL_LRR_NAME" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>最后修改时间:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="LASTUPDATEDTIME" />
									</td>
								</tr>
								<tr>
									<td class='td1'>出警人员:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SL_CJRY_NAME" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>单位名称:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="DEPARTMENTCODE_NAME" />
									</td>
								</tr>
								<tr>
									<td class='td1'>接警单位:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SLJJDW_NAME" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>受理单位:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SLJSDW_NAME" />
									</td>
								</tr>
								<tr>
									<td class='td1'>接警人员:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SLJJRY_NAME" />
									</td>
									<td width='10%'>&nbsp;</td>
								</tr>
								<tr>
									<td class='td1'>备注:</td>
									<td class='td2' align='Right'><gaLabel:label name="BZ" />
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
