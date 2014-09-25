<%@page language='java' contentType='text/html;charset=UTF-8'%><%@taglib
	uri='/tags/ga-json' prefix='gaLabel'%><%@page language='java'
	pageEncoding='UTF-8'%><html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>

<link type='text/css' rel='stylesheet' href='skins/default/css/skin.css'>
<title>全国被盗抢信息明细</title>
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
									<td class='td1'>案件编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="AJBH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<!--td class='td1'>案件性质:</td>
									<td class='td2' align='Right'><gaLabel:label name="AJXZ" />
									</td-->
									<td class='td1'>案件性质中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="AJXZ_ZW" />
									</td>
								</tr>
								<!--tr>
									<td class='td1'>案件性质OLD:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="AJXZ_OLD" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>案件性质中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="AJXZ_ZW" />
									</td>
								</tr-->
								<!--tr>
									<td class='td1'>车辆类型:</td>
									<td class='td2' align='Right'><gaLabel:label name="CLLX" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>车辆类型OLD:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="CLLX_OLD" />
									</td>
								</tr-->
								<tr>
									<td class='td1'>车辆类型中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="CLLX_ZW" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>车辆品牌:</td>
									<td class='td2' align='Right'><gaLabel:label name="CLPP" />
									</td>
								</tr>
								<tr>
									<td class='td1'>车辆型号:</td>
									<td class='td2' align='Right'><gaLabel:label name="CLXH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<!--td class='td1'>号牌种类:</td>
									<td class='td2' align='Right'><gaLabel:label name="HPZL" />
									</td-->
									<td class='td1'>号牌种类中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="HPZL_ZW" />
									</td>
								</tr>
								<!--tr>
									<td class='td1'>号牌种类OLD:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="HPZL_OLD" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>号牌种类中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="HPZL_ZW" />
									</td>
								</tr-->
								<tr>
									<td class='td1'>号牌号码:</td>
									<td class='td2' align='Right'><gaLabel:label name="HPHM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<!--td class='td1'>车身颜色:</td>
									<td class='td2' align='Right'><gaLabel:label name="CSYS" />
									</td-->
									<td class='td1'>车身颜色中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="CSYS_ZW" />
									</td>
								</tr>
								<!--tr>
									<td class='td1'>车身颜色OLD:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="CSYS_OLD" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>车身颜色中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="CSYS_ZW" />
									</td>
								</tr-->
								<tr>
									<td class='td1'>机动车所有人:</td>
									<td class='td2' align='Right'><gaLabel:label name="SYR" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>初次登记时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="CCDJRQ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>发动机号:</td>
									<td class='td2' align='Right'><gaLabel:label name="FDJH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>车辆识别代号:</td>
									<td class='td2' align='Right'><gaLabel:label name="CLSBDH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>车架号:</td>
									<td class='td2' align='Right'><gaLabel:label name="CJH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>是否参加被盗抢险:</td>
									<td class='td2' align='Right'><gaLabel:label name="SFBX" />
									</td>
								</tr>
								<tr>
									<td class='td1'>报案人:</td>
									<td class='td2' align='Right'><gaLabel:label name="BAR" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>立案单位区划:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="LA_DWQH" />
									</td>
								</tr>
								<!--tr>
									<td class='td1'>立案单位区划OLD:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="LA_DWQH_OLD" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>立案单位区划中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="LA_DWQH_ZW" />
									</td>
								</tr-->
								<tr>
									<td class='td1'>立案单位代码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="LA_DWDM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<!--td class='td1'>立案单位代码OLD:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="LA_DWDM_OLD" />
									</td-->
									<td class='td1'>立案单位区划中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="LA_DWQH_ZW" />
									</td>
								</tr>
								<tr>
									<td class='td1'>立案单位代码中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="LA_DWDM_ZW" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>立案单位名称:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="LA_DWMC" />
									</td>
								</tr>
								<tr>
									<td class='td1'>立案时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="LA_SJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>立案经办人:</td>
									<td class='td2' align='Right'><gaLabel:label name="LA_JBR" />
									</td>
								</tr>
								<tr>
									<td class='td1'>立案单位联系电话:</td>
									<td class='td2' align='Right'><gaLabel:label name="LA_DH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>受理单位区划:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SL_DWQH" />
									</td>
								</tr>
								<tr>
									<!--td class='td1'>受理单位区划OLD:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SL_DWQH_OLD" />
									</td-->
									<td class='td1'>受理单位代码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SL_DWDM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>受理单位区划中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SL_DWQH_ZW" />
									</td>
								</tr>
								<!--tr>
									<td class='td1'>受理单位代码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SL_DWDM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>受理单位代码OLD:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SL_DWDM_OLD" />
									</td>
								</tr-->
								<tr>
									<td class='td1'>受理单位代码中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SL_DWDM_ZW" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>受理单位名称:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SL_DWMC" />
									</td>
								</tr>
								<tr>
									<td class='td1'>受理时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="SL_SJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>受理经办人:</td>
									<td class='td2' align='Right'><gaLabel:label name="SL_JBR" />
									</td>
								</tr>
								<tr>
									<td class='td1'>受理单位联系电话:</td>
									<td class='td2' align='Right'><gaLabel:label name="SL_DH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>备注:</td>
									<td class='td2' align='Right'><gaLabel:label name="BZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>填报单位区划:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="TB_DWQH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<!--td class='td1'>填报单位区划OLD:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="TB_DWQH_OLD" />
									</td-->
									<td class='td1'>填报单位代码中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="TB_DWDM_ZW" />
									</td>
								</tr>
								<tr>
									<td class='td1'>填报单位区划中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="TB_DWQH_ZW" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>填报单位代码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="TB_DWDM" />
									</td>
								</tr>
								<!--tr>
									<td class='td1'>填报单位代码OLD:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="TB_DWDM_OLD" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>填报单位代码中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="TB_DWDM_ZW" />
									</td>
								</tr-->
								<tr>
									<td class='td1'>填报单位名称:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="TB_DWMC" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>审批人||GA:</td>
									<td class='td2' align='Right'><gaLabel:label name="TB_SPR" />
									</td>
								</tr>
								<tr>
									<td class='td1'>填表人||GA:</td>
									<td class='td2' align='Right'><gaLabel:label name="TB_TBR" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>填表时间||:</td>
									<td class='td2' align='Right'><gaLabel:label name="TB_SJ" />
									</td>
								</tr>
								<!-- tr>
									<td class='td1'>状态:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZT" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>状态OLD:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZT_OLD" />
									</td>
								</tr-->
								<tr>
									<td class='td1'>状态_ZW:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZT_ZW" />
									</td>
									<td width='10%'>&nbsp;</td>
									<!--td class='td1'>删除标记:</td>
									<td class='td2' align='Right'><gaLabel:label name="N_DEL" />
									</td-->
									<td class='td1'>录入单位代码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="LR_DWDM" />
									</td>
								</tr>
								<!--tr>
									<td class='td1'>录入单位代码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="LR_DWDM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>录入单位代码OLD:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="LR_DWDM_OLD" />
									</td>
								</tr-->
								<tr>
									<td class='td1'>录入单位代码中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="LR_DWDM_ZW" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>录入人:</td>
									<td class='td2' align='Right'><gaLabel:label name="LRR" />
									</td>
								</tr>
								<tr>
									<td class='td1'>录入时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="LRSJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>修改单位代码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="XG_DWDM" />
									</td>
								</tr>
								<tr>
									<!--td class='td1'>修改单位代码OLD:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="XG_DWDM_OLD" />
									</td-->
									<td class='td1'>修改人姓名:</td>
									<td class='td2' align='Right'><gaLabel:label name="XGR" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>修改单位代码中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="XG_DWDM_ZW" />
									</td>
								</tr>
								<!--tr>
									<td class='td1'>修改人姓名:</td>
									<td class='td2' align='Right'><gaLabel:label name="XGR" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>XGSJ:</td>
									<td class='td2' align='Right'><gaLabel:label name="XGSJ" />
									</td>
								</tr-->
								<tr>
									<td class='td1'>审批意见:</td>
									<td class='td2' align='Right'><gaLabel:label name="SPYJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>使用单位代码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SY_DWDM" />
									</td>
								</tr>
								<tr>
									<!--td class='td1'>使用单位代码OLD:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SY_DWDM_OLD" />
									</td-->
									<td class='td1'>登记序号:</td>
									<td class='td2' align='Right'><gaLabel:label name="DJ_ID" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>使用单位中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SY_DWDM_ZW" />
									</td>
								</tr>
								<!--tr>
									<td class='td1'>登记序号:</td>
									<td class='td2' align='Right'><gaLabel:label name="DJ_ID" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>原初次登记时间:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="J_CCDJRQ" />
									</td>
								</tr-->
								<!--tr>
									<td class='td1'>原号牌号码:</td>
									<td class='td2' align='Right'><gaLabel:label name="J_HPHM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>原号牌种类:</td>
									<td class='td2' align='Right'><gaLabel:label name="J_HPZL" />
									</td>
								</tr-->
								<tr>
									<!--td class='td1'>原号牌种类OLD:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="J_HPZL_OLD" />
									</td-->
									<td class='td1'>原号牌种类:</td>
									<td class='td2' align='Right'><gaLabel:label name="J_HPZL" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>原号牌种类中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="J_HPZL_ZW" />
									</td>
								</tr>
								<!--tr>
									<td class='td1'>原车身颜色:</td>
									<td class='td2' align='Right'><gaLabel:label name="J_CSYS" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>原车身颜色OLD:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="J_CSYS_OLD" />
									</td>
								</tr-->
								<!-- tr>
									<td class='td1'>原车身颜色中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="J_CSYS_ZW" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>原发动机号:</td>
									<td class='td2' align='Right'><gaLabel:label name="J_FDJH" />
									</td>
								</tr-->
								<tr>
									<td class='td1'>原车辆识别代号:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="J_CLSBDH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>原车身颜色中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="J_CSYS_ZW" />
									</td>
									<!--td class='td1'>原车架号:</td>
									<td class='td2' align='Right'><gaLabel:label name="J_CJH" />
									</td-->
								</tr>
								<tr>
									<td class='td1'>现初次登记时间:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="X_CCDJRQ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>现号牌号码:</td>
									<td class='td2' align='Right'><gaLabel:label name="X_CPH" />
									</td>
								</tr>
								<!--tr>
									<td class='td1'>现号牌种类:</td>
									<td class='td2' align='Right'><gaLabel:label name="X_HPZL" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>现号牌种类OLD:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="X_HPZL_OLD" />
									</td>
								</tr-->
								<tr>
									<td class='td1'>现号牌种类中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="X_HPZL_ZW" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>现车身颜色中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="X_CSYS_ZW" />
									</td>
									<!--td class='td1'>现车身颜色:</td>
									<td class='td2' align='Right'><gaLabel:label name="X_CSYS" />
									</td-->
								</tr>
								<!--tr>
									<td class='td1'>现车身颜色OLD:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="X_CSYS_OLD" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>现车身颜色中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="X_CSYS_ZW" />
									</td>
								</tr-->
								<tr>
									<td class='td1'>现发动机号:</td>
									<td class='td2' align='Right'><gaLabel:label name="X_FDJH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>现车辆识别代号:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="X_CLSBDH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>现车架号:</td>
									<td class='td2' align='Right'><gaLabel:label name="X_CJH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>查获单位区划:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="CH_DWQH" />
									</td>
								</tr>
								<tr>
									<!--td class='td1'>查获单位区划OLD:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="CH_DWQH_OLD" />
									</td-->
									<td class='td1'>查获单位代码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="CH_DWDM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>查获单位区划中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="CH_DWQH_ZW" />
									</td>
								</tr>
								<!--tr>
									<td class='td1'>查获单位代码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="CH_DWDM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>查获单位代码OLD:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="CH_DWDM_OLD" />
									</td>
								</tr-->
								<tr>
									<td class='td1'>查获单位代码中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="CH_DWDM_ZW" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>查获单位名称:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="CH_DWMC" />
									</td>
								</tr>
								<tr>
									<td class='td1'>查获时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="CH_SJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>联系电话:</td>
									<td class='td2' align='Right'><gaLabel:label name="CH_DH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>流向行政区划:</td>
									<td class='td2' align='Right'><gaLabel:label name="LXQH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<!--td class='td1'>流向行政区划OLD:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="LXQH_OLD" />
									</td-->
									<td class='td1'>是否参加被盗抢险中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SFBX_ZW" />
									</td>
								</tr>
								<tr>
									<td class='td1'>流向行政区划中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="LXQH_ZW" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>原系统编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="YXTBH" />
									</td>
								</tr>
								<<!--tr>
									<td class='td1'>入库时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="D_RKSJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>处理标志位:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="V_DEALFLAG" />
									</td>
								</tr-->
								<!--tr>
									<td class='td1'>更新时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="D_GXSJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>撤销标记:</td>
									<td class='td2' align='Right'><gaLabel:label name="DQZT" />
									</td>
								</tr-->
								<!--tr>
									<td class='td1'>是否参加被盗抢险OLD:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SFBX_OLD" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>是否参加被盗抢险中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SFBX_ZW" />
									</td>
								</tr-->
								<tr>
									<td class='td1'>撤销标记中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="DQZT_ZW" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>姓名拼音:</td>
									<td class='td2' align='Right'><gaLabel:label name="XMPY" />
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
