<%@page language='java' contentType='text/html;charset=UTF-8'%><%@taglib
	uri='/tags/ga-json' prefix='gaLabel'%><%@page language='java'
	pageEncoding='UTF-8'%><html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>

<link type='text/css' rel='stylesheet' href='skins/default/css/skin.css'>
<title>反馈单表明细</title>
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
									<td class='td1'>行政区划:</td>
									<td class='td2' align='Right'><gaLabel:label name="XZQH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>接警单编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="JJDBH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>处警单编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="CJDBH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>反馈单编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="FKDBH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>处警结束时间或网络派单时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="CJJSSJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>反馈时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="FKSJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>反馈时长:</td>
									<td class='td2' align='Right'><gaLabel:label name="FKSC" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>反馈超时:</td>
									<td class='td2' align='Right'><gaLabel:label name="FKCS" />
									</td>
								</tr>
								<tr>
									<td class='td1'>反馈录音号:</td>
									<td class='td2' align='Right'><gaLabel:label name="FKLYH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>填写反馈单位代码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="TXFKDWDM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>反馈台编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="FKTBH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>反馈单位IP:</td>
									<td class='td2' align='Right'><gaLabel:label name="FKDWIP" />
									</td>
								</tr>
								<tr>
									<td class='td1'>反馈人编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="FKRBH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>反馈人姓名:</td>
									<td class='td2' align='Right'><gaLabel:label name="FKRXM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>指挥中心接收人姓名:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="ZHZXJSRXM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>反馈单位代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="FKDWDM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>处警人姓名:</td>
									<td class='td2' align='Right'><gaLabel:label name="CJRXM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>实际出警时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="SJCJSJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>到达现场时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="DDXCSJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>案件类别编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="AJLBBH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>案件类型编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="AJLXBH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>案件细类编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="AJXLBH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>案件发生时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="AJFSSJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>案件结束时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="AJJSSJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>事故级别:</td>
									<td class='td2' align='Right'><gaLabel:label name="SGJB" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>灾害等级:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZHDJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>案发地址类别:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="AFDZLBBH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>案发地址类型:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="AFDZLXBH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>建筑类型:</td>
									<td class='td2' align='Right'><gaLabel:label name="JZLXDM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>出警情况:</td>
									<td class='td2' align='Right'><gaLabel:label name="CJQK" />
									</td>
								</tr>
								<tr>
									<td class='td1'>抓获人数:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZHRS" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>涉案人数:</td>
									<td class='td2' align='Right'><gaLabel:label name="SARS" />
									</td>
								</tr>
								<tr>
									<td class='td1'>救助人数:</td>
									<td class='td2' align='Right'><gaLabel:label name="JZRS" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>是否破获刑事案件:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SFPHXSAJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>是否查处治安案件:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SFCCZAAJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>是否解决纠纷:</td>
									<td class='td2' align='Right'><gaLabel:label name="SFJJJF" />
									</td>
								</tr>
								<tr>
									<td class='td1'>出动车辆数:</td>
									<td class='td2' align='Right'><gaLabel:label name="CDCLS" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>出动人数:</td>
									<td class='td2' align='Right'><gaLabel:label name="CDRS" />
									</td>
								</tr>
								<tr>
									<td class='td1'>火灾原因:</td>
									<td class='td2' align='Right'><gaLabel:label name="HZYY" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>经济损失:</td>
									<td class='td2' align='Right'><gaLabel:label name="JJSS" />
									</td>
								</tr>
								<tr>
									<td class='td1'>过火面积:</td>
									<td class='td2' align='Right'><gaLabel:label name="GHMJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>轻伤人数:</td>
									<td class='td2' align='Right'><gaLabel:label name="QSRS" />
									</td>
								</tr>
								<tr>
									<td class='td1'>重伤人数:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZSRS" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>死亡人数:</td>
									<td class='td2' align='Right'><gaLabel:label name="SWRS" />
									</td>
								</tr>
								<tr>
									<td class='td1'>中队受伤人数:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZDSSRS" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>中队死亡人数:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZDSWRS" />
									</td>
								</tr>
								<tr>
									<td class='td1'>挽回经济损失:</td>
									<td class='td2' align='Right'><gaLabel:label name="WHJJSS" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>是否与打防控关联:</td>
									<td class='td2' align='Right'><gaLabel:label name="DFKGL" />
									</td>
								</tr>
								<tr>
									<td class='td1'>打防控案件编号:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="DFKAJBH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>处理结果:</td>
									<td class='td2' align='Right'><gaLabel:label name="CLJGDM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>是否反馈终结:</td>
									<td class='td2' align='Right'><gaLabel:label name="FKZJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>归并标志:</td>
									<td class='td2' align='Right'><gaLabel:label name="GBBZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>归并接警单编号:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="GBJJDBH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>反馈单状态:</td>
									<td class='td2' align='Right'><gaLabel:label name="FKDZT" />
									</td>
								</tr>
								 
								<tr>
									<td class='td1'>涉案物品编号:</td>
									<td class='td2' align='right'><gaLabel:label name="SAWPBH"
											collection="DIC_SAWP" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>建筑结构代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="JZJGDM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>燃烧物质编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="RSWZBH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>起火楼层:</td>
									<td class='td2' align='Right'><gaLabel:label name="QHLC" />
									</td>
								</tr>
								<tr>
									<td class='td1'>是否涉外:</td>
									<td class='td2' align='Right'><gaLabel:label name="SFSW" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>涉外人员身份:</td>
									<td class='td2' align='Right'><gaLabel:label name="SWRYSF" />
									</td>
								</tr>
								<tr>
									<td class='td1'>涉外人员国籍:</td>
									<td class='td2' align='Right'><gaLabel:label name="SWRYGJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>是否涉警:</td>
									<td class='td2' align='Right'><gaLabel:label name="SFSJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>是否现场取证:</td>
									<td class='td2' align='Right'><gaLabel:label name="SFXCQZ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>现场取证情况:</td>
									<td class='td2' align='Right'><gaLabel:label name="XCQZQK" />
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
