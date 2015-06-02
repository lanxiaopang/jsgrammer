<%@page language='java' contentType='text/html;charset=UTF-8'%><%@taglib
	uri='/tags/ga-json' prefix='gaLabel'%><%@page language='java'
	pageEncoding='UTF-8'%><html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
 
<link type='text/css' rel='stylesheet' href='skins/default/css/skin.css'>
<title>物品明细</title>
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
									<td class='td1'>案件编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="AJBH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>人员/单位编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="SYZBH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>物品名称:</td>
									<td class='td2' align='Right'><gaLabel:label name="WPMC" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>物品性质:</td>
									<td class='td2' align='Right'><gaLabel:label name="WPXZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>撤销状态:</td>
									<td class='td2' align='Right'><gaLabel:label name="WPZT" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>物品类别:</td>
									<td class='td2' align='Right'><gaLabel:label name="WPLB" />
									</td>
								</tr>
								<tr>
									<td class='td1'>特征/证券号码/机身号:</td>
									<td class='td2' align='Right'><gaLabel:label name="WPTZ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>损失类型:</td>
									<td class='td2' align='Right'><gaLabel:label name="SSLX" />
									</td>
								</tr>
								<tr>
									<td class='td1'>损失时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="SSSJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>颜色:</td>
									<td class='td2' align='Right'><gaLabel:label name="WPYS" />
									</td>
								</tr>
								<tr>
									<td class='td1'>产地/发行单位:</td>
									<td class='td2' align='Right'><gaLabel:label name="WPCD" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>产牌/发行年度:</td>
									<td class='td2' align='Right'><gaLabel:label name="WPCP" />
									</td>
								</tr>
								<tr>
									<td class='td1'>型号/期组:</td>
									<td class='td2' align='Right'><gaLabel:label name="WPXH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>式样/发动机/枪支套简号:</td>
									<td class='td2' align='Right'><gaLabel:label name="WPSY" />
									</td>
								</tr>
								<tr>
									<td class='td1'>质地:</td>
									<td class='td2' align='Right'><gaLabel:label name="WPZD" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>规格/车牌/枪号:</td>
									<td class='td2' align='Right'><gaLabel:label name="WPGG" />
									</td>
								</tr>
								<tr>
									<td class='td1'>车牌颜色:</td>
									<td class='td2' align='Right'><gaLabel:label name="CPYS" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>成色/车架号/配枪单位:</td>
									<td class='td2' align='Right'><gaLabel:label name="WPCS" />
									</td>
								</tr>
								<tr>
									<td class='td1'>数量:</td>
									<td class='td2' align='Right'><gaLabel:label name="WPSL" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>单位(千克):</td>
									<td class='td2' align='Right'><gaLabel:label name="JLDW" />
									</td>
								</tr>
								<tr>
									<td class='td1'>价值/面值(元):</td>
									<td class='td2' align='Right'><gaLabel:label name="WPJZ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>折合人民币(元):</td>
									<td class='td2' align='Right'><gaLabel:label name="WPZK" />
									</td>
								</tr>
								<tr>
									<td class='td1'>属主/持枪人:</td>
									<td class='td2' align='Right'><gaLabel:label name="WPSZ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>属主地址:</td>
									<td class='td2' align='Right'><gaLabel:label name="SZDZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>扣押/缴获/回时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="KYSJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>找回地点:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZHDD" />
									</td>
								</tr>
								<tr>
									<td class='td1'>扣押/缴获/找回人:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZHRY" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>来源:</td>
									<td class='td2' align='Right'><gaLabel:label name="WPLY" />
									</td>
								</tr>
								<tr>
									<td class='td1'>当事人:</td>
									<td class='td2' align='Right'><gaLabel:label name="DSRY" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>保管人或地点:</td>
									<td class='td2' align='Right'><gaLabel:label name="BGRY" />
									</td>
								</tr>
								<tr>
									<td class='td1'>保管编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="BGBH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>物品处情况:</td>
									<td class='td2' align='Right'><gaLabel:label name="WPCL" />
									</td>
								</tr>
								<tr>
									<td class='td1'>备注:</td>
									<td class='td2' align='Right'><gaLabel:label name="BZ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>录入时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="LRSJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>录入人:</td>
									<td class='td2' align='Right'><gaLabel:label name="LRR" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>部门编号:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="DEPARTMENTCODE" />
									</td>
								</tr>
								<tr>
									<td class='td1'>创建者:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="CREATOR" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>创建时间:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="CREATEDTIME" />
									</td>
								</tr>
								<tr>
									<td class='td1'>密级:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SECURITYGRADE" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>物品状态:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="RESERVATION01" />
									</td>
								</tr>
								<tr>
									<td class='td1'>车辆类型:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="RESERVATION02" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>号牌种类:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="RESERVATION03" />
									</td>
								</tr>
								<tr>
									<td class='td1'>是否参加被盗抢险:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="RESERVATION04" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>车身颜色:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="RESERVATION05" />
									</td>
								</tr>
								<tr>
									<td class='td1'>原来的案件编号:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="RESERVATION09" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>特征描述:</td>
									<td class='td2' align='Right'><gaLabel:label name="TZMS" />
									</td>
								</tr>
								<tr>
									<td class='td1'>物品关联嫌疑人:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="RESERVATION10" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>最终修改人:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="LASTUPDATEDBY" />
									</td>
								</tr>
								<tr>
									<td class='td1'>最后修改时间:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="LASTUPDATEDTIME" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>更新时间:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="REFRESHTIME" />
									</td>
								</tr>
								<tr>
									<td class='td1'>挽回损失价值:</td>
									<td class='td2' align='Right'><gaLabel:label name="WHJZ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>损失价值:</td>
									<td class='td2' align='Right'><gaLabel:label name="SSJZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>追缴日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZJRQ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>追缴单位:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZJDW" />
									</td>
								</tr>
								<tr>
									<td class='td1'>鉴定结果:</td>
									<td class='td2' align='Right'><gaLabel:label name="JDJG" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>鉴定日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="JDRQ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>鉴定单位:</td>
									<td class='td2' align='Right'><gaLabel:label name="JDDW" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>书证物证种类:</td>
									<td class='td2' align='Right'><gaLabel:label name="SZWZZL" />
									</td>
								</tr>
								<tr>
									<td class='td1'>证据类别:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZJLB" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>录入人姓名:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="LRR_NAME" />
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
