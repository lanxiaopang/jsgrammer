<%@page language='java' contentType='text/html;charset=UTF-8'%><%@taglib
	uri='/tags/ga-json' prefix='gaLabel'%><%@page language='java'
	pageEncoding='UTF-8'%><html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>

<link type='text/css' rel='stylesheet' href='skins/default/css/skin.css'>
<title>旅馆信息明细</title>
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
									<td class='td1'>旅馆代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="CODE" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>对应输入码:</td>
									<td class='td2' align='Right'><gaLabel:label name="I_CODE" />
									</td>
								</tr>
								<tr>
									<td class='td1'>旅馆名称:</td>
									<td class='td2' align='Right'><gaLabel:label name="CALLED" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>所属派出所代码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="STA_CODE" />
									</td>
								</tr>
								<tr>
									<td class='td1'>法定代表人:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="LEGAL_PERSON" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>负责人:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="MANAGER" />
									</td>
								</tr>
								<tr>
									<td class='td1'>治安负责人:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="POLICE_MANAGER" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>旅馆地址:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="ADDRESS" />
									</td>
								</tr>
								<tr>
									<td class='td1'>联系电话:</td>
									<td class='td2' align='Right'><gaLabel:label name="TEL" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>保安部电话:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="POLICE_TEL" />
									</td>
								</tr>
								<tr>
									<td class='td1'>状态:</td>
									<td class='td2' align='Right'><gaLabel:label name="STATUS" collection="DIC_LGZT"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>状态改变日期:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="MOD_TIME" />
									</td>
								</tr>
								<tr>
									<td class='td1'>房间数:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="ROOM_NUM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>床位数:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="BED_NUM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>星级:</td>
									<td class='td2' align='Right'><gaLabel:label name="STAR" collection="DIC_LGXJ"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>等级:</td>
									<td class='td2' align='Right'><gaLabel:label name="GRADE" collection="DIC_LGDJ"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>所属分局代码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="BUR_CODE" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>电话:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="TEL_LEGAL" />
									</td>
								</tr>
								<tr>
									<td class='td1'>保安人数:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="POLICEMEN" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>特种行业许可证:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SPECIAL_LICENCE" />
									</td>
								</tr>
								<tr>
									<td class='td1'>治安许可证:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="POLICE_LICENCE" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>套房:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SUITROOMS" />
									</td>
								</tr>
								<tr>
									<td class='td1'>标准房:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="STANDARDROOMS" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>双人房:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="DOUBLEROOMS" />
									</td>
								</tr>
								<tr>
									<td class='td1'>单人房:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SINGLEROOMS" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>其他房型:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="OTHERROOMS" />
									</td>
								</tr>
								<tr>
									<td class='td1'>从业人数:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="WORKMEN" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>外来打工人数:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="OTHERPLACEMEN" />
									</td>
								</tr>
								<tr>
									<td class='td1'>监控设施:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="MONITOR_CONTROL" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>房间保险箱:</td>
									<td class='td2' align='Right'><gaLabel:label name="COFFER" />
									</td>
								</tr>
								<tr>
									<td class='td1'>技防:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="TECH_DEFEND" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>物防:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="THING_DEFEND" />
									</td>
								</tr>
								<tr>
									<td class='td1'>KTV,舞厅:</td>
									<td class='td2' align='Right'><gaLabel:label name="KTV" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>棋牌室:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="CHESSROOM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>商务中心:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="COMMERCE" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>桑拿:</td>
									<td class='td2' align='Right'><gaLabel:label name="SAUNA" />
									</td>
								</tr>
								<tr>
									<td class='td1'>保龄球馆:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="BOWLING" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>游戏机房:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="GAMEROOM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>门锁类型:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="LOCKTYPE" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>门锁名称:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="LOCKNAME" />
									</td>
								</tr>
								<tr>
									<td class='td1'>基本备注:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="BASICREMARK" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>KTV间数:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="KTV_ROOMS" />
									</td>
								</tr>
								<tr>
									<td class='td1'>舞厅额定人数:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="KTV_MEN" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>KTV治安许可证:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="KTV_LICENCE" />
									</td>
								</tr>
								<tr>
									<td class='td1'>KTV:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="KTV_FIREPROOFING" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>KTV1:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="KTV_MONITOR_CONTROL" />
									</td>
								</tr>
								<tr>
									<td class='td1'>KTV2:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="KTV_CONTRACTOR" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>KTV3:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="KTV_NAME" />
									</td>
								</tr>
								<tr>
									<td class='td1'>KTV4:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="KTV_TEL" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>KTV5:</td>
									<td class='td2' align='Right'><gaLabel:label name="KTV_ID" />
									</td>
								</tr>
								<tr>
									<td class='td1'>棋牌室包厢数:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="CHESS_BOXES" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>棋牌室防火措施:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="CHESS_FIREPROOFING" />
									</td>
								</tr>
								<tr>
									<td class='td1'>棋牌室监控措施:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="CHESS_MONITOR_CONTROL" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>棋牌室承包人:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="CHESS_CONTRACTOR" />
									</td>
								</tr>
								<tr>
									<td class='td1'>棋牌室承包人姓名:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="CHESS_NAME" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>棋牌室承包人电话:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="CHESS_TEL" />
									</td>
								</tr>
								<tr>
									<td class='td1'>棋牌室承包人身份证:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="CHESS_ID" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>商务中心复印:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="COMMERCE_COPY" />
									</td>
								</tr>
								<tr>
									<td class='td1'>商务中心传真:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="COMMERCE_FAX" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>商务中心打字:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="COMMERCE_TYPED" />
									</td>
								</tr>
								<tr>
									<td class='td1'>商务中心订票:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="COMMERCE_TICKET" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>商务中心承包人:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="COMMERCE_CONTRACTOR" />
									</td>
								</tr>
								<tr>
									<td class='td1'>商务中心承包人姓名:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="COMMERCE_NAME" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>商务中心承包人电话:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="COMMERCE_TEL" />
									</td>
								</tr>
								<tr>
									<td class='td1'>商务中心承包人身份证:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="COMMERCE_ID" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>桑拿按摩:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SAUNA_KNEAD" />
									</td>
								</tr>
								<tr>
									<td class='td1'>桑拿按摩间数:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SAUNA_ROOMS" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>桑拿房从业人数:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SAUNA_WORKMEN" />
									</td>
								</tr>
								<tr>
									<td class='td1'>桑拿房承包人:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SAUNA_CONTRACTOR" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>桑拿房承包人姓名:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SAUNA_NAME" />
									</td>
								</tr>
								<tr>
									<td class='td1'>桑拿房承包人电话:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SAUNA_TEL" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>桑拿房承包人身份证:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SAUNA_ID" />
									</td>
								</tr>
								<tr>
									<td class='td1'>附属备注:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="OTHERREMARK" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>装机类型:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="DEVICE_TYPE" />
									</td>
								</tr>
								<tr>
									<td class='td1'>法人身份证:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="LEGAL_SFZH" />
									</td>
	 
									<td width='10%'>&nbsp;</td>
									<td class='td1'>前台系统版本号:</td>
									<td class='td2' align='Right'><gaLabel:label name="SYSVER" />
									</td>
								</tr>
								<tr>
									<td class='td1'>读卡设备类型:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="CARDTYPE" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>旅馆所有制:</td>
									<td class='td2' align='Right'><gaLabel:label name="LGSYZ" collection="DIC_LGSYZ"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>旅馆种类:</td>
									<td class='td2' align='Right'><gaLabel:label name="LGZL" collection="DIC_LGZL"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>旅馆位置:</td>
									<td class='td2' align='Right'><gaLabel:label name="LGWZ" collection="DIC_LGWZ"/>
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
