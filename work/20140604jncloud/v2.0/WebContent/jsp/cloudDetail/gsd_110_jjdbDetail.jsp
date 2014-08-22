<%@page language='java' contentType='text/html;charset=UTF-8'%><%@taglib
	uri='/tags/ga-json' prefix='gaLabel'%><%@page language='java'
	pageEncoding='UTF-8'%><html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>

<link type='text/css' rel='stylesheet' href='skins/default/css/skin.css'>
<title>接警单表明细</title>
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
									<td class='td1'>关联接警单编号:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="GLJJDBH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>报警方式代码:</td>
									<td class='td2' align='right'><gaLabel:label name="BJFSDM"
											collection="DIC_BJFS)" />
									</td>
								</tr>
								<tr>
									<td class='td1'>接警类型代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="JJLXDM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>接警单处理类型代码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="JJDCLLXDM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>接警单位代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="JJDWDM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>接警员工号:</td>
									<td class='td2' align='Right'><gaLabel:label name="JJYGH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>接警员姓名:</td>
									<td class='td2' align='Right'><gaLabel:label name="JJYXM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>接警台编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="JJTBH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>接警台IP:</td>
									<td class='td2' align='Right'><gaLabel:label name="JJTIP" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>呼入时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="HRSJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>报警时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="BJSJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>话终时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="HZSJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>呼入时长:</td>
									<td class='td2' align='Right'><gaLabel:label name="HRSC" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>接警时长:</td>
									<td class='td2' align='Right'><gaLabel:label name="JJSC" />
									</td>
								</tr>
								<tr>
									<td class='td1'>报警电话:</td>
									<td class='td2' align='Right'><gaLabel:label name="BJDH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>用户姓名:</td>
									<td class='td2' align='Right'><gaLabel:label name="YHXM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>用户地址:</td>
									<td class='td2' align='Right'><gaLabel:label name="YHDZ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>接警录音号:</td>
									<td class='td2' align='Right'><gaLabel:label name="JJLYH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>报警人姓名:</td>
									<td class='td2' align='Right'><gaLabel:label name="BJRXM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>报警人性别:</td>
									<td class='td2' align='Right'><gaLabel:label name="BJRXB" />
									</td>
								</tr>
								<tr>
									<td class='td1'>联系电话:</td>
									<td class='td2' align='Right'><gaLabel:label name="LXDH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>报警人联系住址或单位:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZZDW" />
									</td>
								</tr>
								<tr>
									<td class='td1'>案发地址:</td>
									<td class='td2' align='Right'><gaLabel:label name="AFDD" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>水源信息:</td>
									<td class='td2' align='Right'><gaLabel:label name="SYXX" />
									</td>
								</tr>
								<tr>
									<td class='td1'>管辖单位代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="GXDWDM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>报警类别代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="BJLBDM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>报警类型代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="BJLXDM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>报警细类代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="BJXLDM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>号牌种类代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="HPZLDM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>被困人数:</td>
									<td class='td2' align='Right'><gaLabel:label name="BKRS" />
									</td>
								</tr>
								<tr>
									<td class='td1'>受伤人数:</td>
									<td class='td2' align='Right'><gaLabel:label name="SSRS" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>死亡人数:</td>
									<td class='td2' align='Right'><gaLabel:label name="SWRS" />
									</td>
								</tr>
								<tr>
									<td class='td1'>报警车号牌种类:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="BJCHPZL" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>报警车牌号:</td>
									<td class='td2' align='Right'><gaLabel:label name="BJCPH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>燃烧建筑类型代码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="RSJZLXDM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>起火部位代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="QHBWDM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>起火楼层:</td>
									<td class='td2' align='Right'><gaLabel:label name="QHLC" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>燃烧物质编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="RSWZBH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>有否危险品:</td>
									<td class='td2' align='Right'><gaLabel:label name="YFWXP" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>燃烧面积:</td>
									<td class='td2' align='Right'><gaLabel:label name="RSMJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>警情级别:</td>
									<td class='td2' align='Right'><gaLabel:label name="JQJB" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>灾害等级:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZHDJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>接警单状态:</td>
									<td class='td2' align='Right'><gaLabel:label name="JJDZT" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>119接警单编号:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="JJDBH119" />
									</td>
								</tr>
								<tr>
									<td class='td1'>燃烧建筑结果:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="RSJZJGDM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>周边信息:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZBXX" />
									</td>
								</tr>
								<tr>
									<td class='td1'>报警内容:</td>
									<td class='td2' align='Right' colspan="4"><gaLabel:label name="BJNR" />
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
