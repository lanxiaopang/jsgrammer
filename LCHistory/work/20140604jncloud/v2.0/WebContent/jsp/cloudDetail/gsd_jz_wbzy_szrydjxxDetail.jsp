<%@page language='java' contentType='text/html;charset=UTF-8'%><%@taglib
	uri='/tags/ga-json' prefix='gaLabel'%><%@page language='java'
	pageEncoding='UTF-8'%><html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>

<link type='text/css' rel='stylesheet' href='skins/default/css/skin.css'>
<title>全省失踪人员登记信息明细</title>
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
									<td class='td1'>失踪人员信息编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="BH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>报告人姓名:</td>
									<td class='td2' align='Right'><gaLabel:label name="BGR_XM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<!--td class='td1'>报告人性别代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="BGR_XB" />
									</td-->
									<td class='td1'>报告人性别中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="BGR_XB_ZW" />
									</td>
								</tr>
								<!--tr>
									<td class='td1'>报告人性别代码OLD:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="BGR_XB_OLD" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>报告人性别中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="BGR_XB_ZW" />
									</td>
								</tr-->
								<tr>
									<td class='td1'>报告人出生日期:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="BGR_CSRQ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>报告人身份证号:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="BGR_ZJHM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>报告人联系电话:</td>
									<td class='td2' align='Right'><gaLabel:label name="BGR_DH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<!--td class='td1'>报告人与失踪人关系:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="BGR_YSZRGX" />
									</td-->
									<td class='td1'>报告人与失踪人关系中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="BGR_YSZRGX_ZW" />
									</td>
								</tr>
								<!--tr>
									<td class='td1'>报告人与失踪人关系OLD:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="BGR_YSZRGX_OLD" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>报告人与失踪人关系中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="BGR_YSZRGX_ZW" />
									</td>
								</tr-->
								<tr>
									<td class='td1'>报告人工作单位:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="BGR_GZDW" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>报告人详细地址:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="BGR_XZZXZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>报告人户籍地详址:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="BGR_HJDXZ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>失踪地点:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="BGR_SZDD" />
									</td>
								</tr>
								<tr>
									<td class='td1'>失踪时间上限:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="BGR_SZSJ1" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>失踪时间下限:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="BGR_SZSJ2" />
									</td>
								</tr>
								<tr>
									<td class='td1'>发现失踪时间:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="BGR_FXSZSJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<!--td class='td1'>接报单位代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="JBDWDM" />
									</td-->
									<td class='td1'>接报单位中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="JBDWDM_ZW" />
									</td>
								</tr>
								<!--tr>
									<td class='td1'>接报单位代码OLD:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="JBDWDM_OLD" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>接报单位中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="JBDWDM_ZW" />
									</td>
								</tr-->
								<tr>
									<td class='td1'>接报单位详细名称:</td>
									<td class='td2' align='Right'><gaLabel:label name="JBDWMC" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>接报人姓名:</td>
									<td class='td2' align='Right'><gaLabel:label name="JBR" />
									</td>
								</tr>
								<tr>
									<td class='td1'>接报人联系电话:</td>
									<td class='td2' align='Right'><gaLabel:label name="JBR_DH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>简要情况:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="BGR_JYQK" />
									</td>
								</tr>
								<tr>
									<td class='td1'>失踪人姓名:</td>
									<td class='td2' align='Right'><gaLabel:label name="SZR_XM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>失踪人别名:</td>
									<td class='td2' align='Right'><gaLabel:label name="SZR_BM" />
									</td>
								</tr>
								<!--tr>
									<td class='td1'>失踪人性别代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="SZR_XB" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>失踪人性别代码OLD:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SZR_XB_OLD" />
									</td>
								</tr-->
								<tr>
									<td class='td1'>失踪人性别中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SZR_XB_ZW" />
									</td>
									<td width='10%'>&nbsp;</td>
									<!--td class='td1'>失踪人民族代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="SZR_MZ" />
									</td-->
									<td class='td1'>失踪人民族中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SZR_MZ_ZW" />
									</td>
								</tr>
								<!--tr>
									<td class='td1'>失踪人民族代码OLD:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SZR_MZ_OLD" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>失踪人民族中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SZR_MZ_ZW" />
									</td>
								</tr-->
								<tr>
									<td class='td1'>是否检验DNA:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SZR_IFDNA" />
									</td>
									<td width='10%'>&nbsp;</td>
									<!--td class='td1'>是否检验DNA OLD:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SZR_IFDNA_OLD" />
									</td-->
									<td class='td1'>DNA的编号:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SZR_DNA" />
									</td>
								</tr>
								<!--tr>
									<td class='td1'>是否检验DNA中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SZR_IFDNA_ZW" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>DNA的编号:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SZR_DNA" />
									</td>
								</tr-->
								<tr>
									<td class='td1'>失踪人出生日期:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SZR_CSRQ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>失踪人身份证号:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SZR_ZJHM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>失踪人工作单位:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SZR_GZDW" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>失踪人户籍地详细地址:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SZR_HJDXZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>失踪人现住址详细地址:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SZR_XZZXZ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<!--td class='td1'>失踪人体形代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="SZR_TX" />
									</td-->
									<td class='td1'>失踪人体形中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SZR_TX_ZW" />
									</td>
								</tr>
								<!--tr>
									<td class='td1'>失踪人体形代码OLD:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SZR_TX_OLD" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>失踪人体形中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SZR_TX_ZW" />
									</td>
								</tr-->
								<!--tr>
									<td class='td1'>失踪人脸形代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="SZR_LX" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>失踪人脸形代码OLD:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SZR_LX_OLD" />
									</td>
								</tr-->
								<tr>
									<td class='td1'>失踪人脸形中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SZR_LX_ZW" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>失踪人身高:</td>
									<td class='td2' align='Right'><gaLabel:label name="SZR_SG" />
									</td>
								</tr>
								<!--tr>
									<td class='td1'>失踪人血型代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="SZR_XX" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>失踪人血型代码OLD:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SZR_XX_OLD" />
									</td>
								</tr-->
								<tr>
									<td class='td1'>失踪人血型中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SZR_XX_ZW" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>失踪人足长:</td>
									<td class='td2' align='Right'><gaLabel:label name="SZR_ZC" />
									</td>
								</tr>
								<!--tr>
									<td class='td1'>失踪人口音代码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SZR_KOUYIN" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>失踪人口音代码OLD:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SZR_KOUYIN_OLD" />
									</td>
								</tr-->
								<tr>
									<td class='td1'>失踪人口音中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SZR_KOUYIN_ZW" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>损伤及病理特征:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SZR_SSJBLTZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>随身物品:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SZR_SSWP" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>衣着情况:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SZR_YZQK" />
									</td>
								</tr>
								<tr>
									<td class='td1'>填表人:</td>
									<td class='td2' align='Right'><gaLabel:label name="TBR" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>填表单位所属地区代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="TBDW" />
									</td>
								</tr>
								<tr>
									<!--td class='td1'>填表单位所属地区代码OLD:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="TBDW_OLD" />
									</td-->
									<td width='10%'>&nbsp;</td>
									<td class='td1'>填表单位所属地区中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="TBDW_ZW" />
									</td>
								</tr>
								<tr>
									<td class='td1'>填表单位详细名称:</td>
									<td class='td2' align='Right'><gaLabel:label name="TBDWMC" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>填表时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="TBSJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>审批人:</td>
									<td class='td2' align='Right'><gaLabel:label name="SPR" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>备注:</td>
									<td class='td2' align='Right'><gaLabel:label name="BZ" />
									</td>
								</tr>
								<!--tr>
									<td class='td1'>审核标记代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="SHBJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>审核标记代码OLD:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SHBJ_OLD" />
									</td>
								</tr-->
								<tr>
									<td class='td1'>审核标记中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SHBJ_ZW" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>撤销标记:</td>
									<td class='td2' align='Right'><gaLabel:label name="CXBJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>上报标记:</td>
									<td class='td2' align='Right'><gaLabel:label name="SCBJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>上报时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="SBSJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>入省库时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="RKSJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<!--td class='td1'>删除标记代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="DELBJ" />
									</td-->
									<td class='td1'>删除标记中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="DELBJ_ZW" />
									</td>
								</tr>
								<!--tr>
									<td class='td1'>删除标记代码1:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="DELBJ_OLD" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>删除标记中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="DELBJ_ZW" />
									</td>
								</tr-->
								<tr>
									<td class='td1'>报告人现住址代码代码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="BGR_XZZDM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<!--td class='td1'>报告人现住址代码代码OLD:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="BGR_XZZDM_OLD" />
									</td-->
									<td class='td1'>报告人户籍地代码中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="BGR_HJDDM_ZW" />
									</td>
								</tr>
								<tr>
									<td class='td1'>报告人现住址代码中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="BGR_XZZDM_ZW" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>报告人户籍地代码代码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="BGR_HJDDM" />
									</td>
								</tr>
								<!--tr>
									<td class='td1'>报告人户籍地代码代码OLD:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="BGR_HJDDM_OLD" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>报告人户籍地代码中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="BGR_HJDDM_ZW" />
									</td>
								</tr-->
								<tr>
									<td class='td1'>失踪人现住址代码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SZR_XZZDM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<!--td class='td1'>失踪人现住址代码OLD:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SZR_XZZDM_OLD" />
									</td-->
									<td class='td1'>失踪人户籍地中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SZR_HJDDM_ZW" />
									</td>
								</tr>
								<tr>
									<td class='td1'>失踪人现住址中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SZR_XZZDM_ZW" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>失踪人户籍地代码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SZR_HJDDM" />
									</td>
								</tr>
								<!--tr>
									<td class='td1'>失踪人户籍地代码OLD:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SZR_HJDDM_OLD" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>失踪人户籍地中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SZR_HJDDM_ZW" />
									</td>
								</tr-->
								<!--tr>
									<td class='td1'>疑似被侵害依据代码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SZR_YSBQHYJDM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>疑似被侵害依据代码OLD:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SZR_YSBQHYJDM_OLD" />
									</td>
								</tr-->
								<tr>
									<td class='td1'>疑似被侵害依据中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SZR_YSBQHYJDM_ZW" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>失踪人指纹编号:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SZR_ZWBH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>审批未通过原因:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SPWTGYY" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>删除时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="DELSJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>失踪人姓名全拼:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SZR_XM_QP" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>失踪地点代码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="BGR_SZDDDM" />
									</td>
								</tr>
								<tr>
									<!--td class='td1'>失踪地点代码OLD:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="BGR_SZDDDM_OLD" />
									</td-->
									<td class='td1'>操作人员ID:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="OPTERID" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>失踪地点中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="BGR_SZDDDM_ZW" />
									</td>
								</tr>
								<tr>
									<td class='td1'>最后修改时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZHXGSJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>审批时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="SHSJ" />
									</td>
								</tr>
								<!--tr>
									<td class='td1'>操作人员ID:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="OPTERID" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>JYFLG:</td>
									<td class='td2' align='Right'><gaLabel:label name="JYFLG" />
									</td>
								</tr-->
								<!-- >tr>
									<td class='td1'>入部库时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="RBKSJ" />
									</td>
									<td class='td1'>初次入部库传输文件名:</td>
									<td class='td2' align='Right'><gaLabel:label name="FNAME0" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>初次入部库时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="RBKSJ0" />
									</td>
								</tr-->
								<!--tr>
									<td class='td1'>入部库传输文件名:</td>
									<td class='td2' align='Right'><gaLabel:label name="FNAME" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>初次入部库传输文件名:</td>
									<td class='td2' align='Right'><gaLabel:label name="FNAME0" />
									</td>
								</tr-->
								<!--tr>
									<td class='td1'>入部库错误描述:</td>
									<td class='td2' align='Right'><gaLabel:label name="SBERR" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>数据版本:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="VERSION" />
									</td>
								</tr-->
								<tr>
									<td class='td1'>失踪人姓名拼音:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SZR_XM_PY" />
									</td>
									<td width='10%'>&nbsp;</td>
									<!--td class='td1'>原系统编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="YXTBH" />
									</td-->
									<td class='td1'>姓名拼音:</td>
									<td class='td2' align='Right'><gaLabel:label name="XMPY" />
									</td>
								</tr>
								<!--tr>
									<td class='td1'>是否转换字典:</td>
									<td class='td2' align='Right'><gaLabel:label name="SFZHZD" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>入库时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="D_RKSJ" />
									</td>
								</tr-->
								<!--tr>
									<td class='td1'>处理标志:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="V_DEALFLAG" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>姓名拼音:</td>
									<td class='td2' align='Right'><gaLabel:label name="XMPY" />
									</td>
								</tr-->
				 
								 
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
