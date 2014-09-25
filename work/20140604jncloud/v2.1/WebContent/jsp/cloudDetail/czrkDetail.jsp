<%@page language="java" contentType="text/html;charset=UTF-8"%>
<%@taglib uri="/tags/ga-json" prefix="gaLabel"%>
<%@page language="java" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 
<link type="text/css" rel="stylesheet" href="skins/default/css/skin.css">
<title>常住人口明细</title>
<!--[if lte IE 6]>
<script src="skins/js/DD_belatedPNG_0.0.8a.js" type="text/javascript"></script>
    <script type="text/javascript">
        DD_belatedPNG.fix('div, ul,span, img, li, input , a');
    </script>
    <script type="text/javascript">DD_belatedPNG.fix('*');</script>
<![endif]-->
</head>
<body background="skins/default/images/background.jpg"
	style="background-repeat: repeat-x;">
	<form name="hzczrkForm" method="post" action="czrkDetail.jsp"
		id="hzczrkForm" style="vertical-align: top;">
		<div>
			<img alt="" src="skins/default/images/page_logo.png"
				style="margin-left: 120px;">
		</div>
		<div>
			<div style="height: 2">
				<img alt="" src="skins/default/images/detailpage_top.png"
					style="margin-left: 120px; vertical-align: bottom;">
			</div>
			<div
				style="width: 942; margin-left: 120px; border-left: 1px solid #ddd; border-right: 1px solid #ddd">

				<table cellpadding="0" width="100%"
					style="vertical-align: top; background: white;">
					<tr>
						<td colspan="2"><font size="2" face="黑体">个人 信息</font></td>
					</tr>
					<tr>
						<td colspan="1">
							<hr width="120" size="2" color="#1c9ad7" align="left"></td>
						<td colspan="1">
							<hr width="818" size="2" color="#d2d7db" align="right" noshade>
						</td>
					</tr>
					<tr>
						<td colspan="2" align="center">
							<table cellpadding="0" width="95%"
								style="vertical-align: top; background: white;">
								<tr>
									<td rowspan="6"><gaLabel:img dataType="HZCZRK_IMG"
											name="ZP" key="SDZP" ds=''></gaLabel:img>
									</td>
								</tr>
								<tr>
									<td class='td1'>姓名:</td>
									<td class='td2' align='Right'><gaLabel:label name="XM" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>公民身份号码:</td>
									<td class='td2' align='Right'><gaLabel:label name="GMSFHM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>曾用名:</td>
									<td class='td2' align='Right'><gaLabel:label name="CYM" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>性别:</td>
									<td class='td2' align='right'><gaLabel:label name="XB"
											collection="DIC_XB" />
									</td>
								</tr>
								<tr>
									<td class='td1'>民族:</td>
									<td class='td2' align='right'><gaLabel:label name="MZ"
											collection="DIC_MZ" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>出生日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="CSRQ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>出生时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="CSSJ" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>出生地国家:</td>
									<td class='td2' align='right'><gaLabel:label name="CSDGJ"
											collection="DIC_GJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>出生地省市县:</td>
									<td class='td2' align='right'><gaLabel:label name="CSDSSX"
											collection="DIC_XZQH" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>出生地详址:</td>
									<td class='td2' align='Right'><gaLabel:label name="CSDXZ" />
									</td>
								</tr>
							</table></td>
					</tr>
				</table>

				<table cellpadding="0" width="100%"
					style="vertical-align: top; background: white;">
					<tr>
						<td colspan="2">&nbsp;</td>
					</tr>
					<tr>
						<td colspan="2"><font size="2" face="黑体">相关人信息</font></td>
					</tr>
					<tr>
						<td colspan="1">
							<hr width="120" size="2" color="#1c9ad7" align="left"></td>
						<td colspan="1">
							<hr width="818" size="2" color="#d2d7db" align="right" noshade>
						</td>
					</tr>
					<tr>
						<td colspan="2" align="center">
							<table cellpadding="0" width="95%"
								style="vertical-align: top; background: white;">
								<tr>
									<td class='td1'>监护人一姓名:</td>
									<td class='td2' align='Right'><gaLabel:label name="JHRYXM" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>监护人二姓名:</td>
									<td class='td2' align='Right'><gaLabel:label name="JHREXM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>监护人一公民身份号码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="JHRYGMSFHM" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>监护人二公民身份号码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="JHREGMSFHM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>监护人一监护关系:</td>
									<td class='td2' align='right'><gaLabel:label
											name="JHRYJHGX" collection="DIC_JTGX" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>监护人二监护关系:</td>
									<td class='td2' align='right'><gaLabel:label
											name="JHREJHGX" collection="DIC_JTGX" />
									</td>
								</tr>
								<tr>
									<td class='td1'>父亲姓名:</td>
									<td class='td2' align='Right'><gaLabel:label name="FQXM" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>母亲姓名:</td>
									<td class='td2' align='Right'><gaLabel:label name="MQXM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>父亲公民身份号码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="FQGMSFHM" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>母亲公民身份号码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="MQGMSFHM" />
									</td>

								</tr>
								<tr>
									<td class='td1'>配偶公民身份号码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="POGMSFHM" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>配偶姓名:</td>
									<td class='td2' align='Right'><gaLabel:label name="POXM" />
									</td>
								</tr>
							</table></td>
					</tr>
				</table>
				<table cellpadding="0" width="100%"
					style="vertical-align: top; background: white;">
					<tr>
						<td colspan="2">&nbsp;</td>
					</tr>
					<tr>
						<td colspan="2"><font size="2" face="黑体">个人详细信息</font></td>
					</tr>
					<tr>
						<td colspan="1">
							<hr width="120" size="2" color="#1c9ad7" align="left"></td>
						<td colspan="1">
							<hr width="818" size="2" color="#d2d7db" align="right" noshade>
						</td>
					</tr>
					<tr>
						<td colspan="2" align="center">
							<table cellpadding="0" width="95%"
								style="vertical-align: top; background: white;">
								
								<tr>
									<td class='td1'>户号:</td>
									<td class='td2' align='Right'><gaLabel:label name="HH" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>户口性质:</td>
									<td class='td2' align='right'><gaLabel:label name="HKXZ"
											collection="DIC_HKXZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>户主姓名:</td>
									<td class='td2' align='Right'><gaLabel:label name="HZXM" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>与户主关系:</td>
									<td class='td2' align='right'  ><gaLabel:label
											name="YHZGX" collection="DIC_JTGX" />
									</td>
								</tr>
								<tr>
									<td class='td1'>户类型:</td>
									<td class='td2' align='right'><gaLabel:label name="HLX"
											collection="DIC_HLX" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>籍贯国家:</td>
									<td class='td2' align='right'><gaLabel:label name="JGGJ"
											collection="DIC_GJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>籍贯省市县:</td>
									<td class='td2' align='right'><gaLabel:label name="JGSSX"
											collection="DIC_XZQH" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>原籍贯省市县:</td>
									<td class='td2' align='Right' colspan="4"><gaLabel:label
											name="YJGSSX" />
									</td>
								</tr>
								<tr>
									<td class='td1'>籍贯详址:</td>
									<td class='td2' align='Right'><gaLabel:label name="JGXZ" />
									</td>
														
								</tr>
								<tr>
									<td class='td1'>身高:</td>
									<td class='td2' align='Right'><gaLabel:label name="SG" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>血型:</td>
									<td class='td2' align='right'><gaLabel:label name="XX"
											collection="DIC_XX" />
									</td>
								</tr>
								<tr>
									<td class='td1'>文化程度:</td>
									<td class='td2' align='right'><gaLabel:label name="WHCD"
											collection="DIC_WHCD" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>宗教信仰:</td>
									<td class='td2' align='right'><gaLabel:label name="ZJXY"
											collection="DIC_ZJXY" />
									</td>
								</tr>
								<tr>
									<td class='td1'>婚姻状况:</td>
									<td class='td2' align='right'><gaLabel:label name="HYZK"
											collection="DIC_HYZK" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>兵役状况:</td>
									<td class='td2' align='right'><gaLabel:label name="BYZK"
											collection="DIC_BYZK" />
									</td>
								</tr>
								<tr>
									<td class='td1'>职业:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZY" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>职业类别:</td>
									<td class='td2' align='right'><gaLabel:label name="ZYLB"
											collection="DIC_ZYLB" />
									</td>
								</tr>
								
								<tr>
									
									<td class='td1'>出生登记时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="CSDJSJ" />
									</td>	
									<td width='5%'>&nbsp;</td>
									<td class='td1'>出生证明编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="CSZMBH" />
									</td>
									
									
								</tr>
								<tr>
									<td class='td1'>身份证签发机关:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SFZQFJG" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>身份证有效期限:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SFZYXQX" />
									</td>
								</tr>
								<tr>
									<td class='td1'>身份证起始日期:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SFZQSRQ" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>身份证截止日期:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SFZJZRQ" />
									</td>
								</tr>

								<tr>
									<td class='td1'>服务处所:</td>
									<td class='td2' align='Right'><gaLabel:label name="FWCS" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>信息级别:</td>
									<td class='td2' align='right'><gaLabel:label name="XXJB"
											collection="DIC_XXJB" />
									</td>
								</tr>
								<tr>
									
									<td class='td1'>联系方式:</td>
									<td class='td2' align='Right'><gaLabel:label name="LXFS" />
									</td>
								</tr>
								<tr>
									<td class='td1'>申报人公民身份号码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SBRGMSFHM" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>申报人姓名:</td>
									<td class='td2' align='Right'><gaLabel:label name="SBRXM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>受理单位:</td>
									<td class='td2' align='Right'><gaLabel:label name="SLDW" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>受理人姓名:</td>
									<td class='td2' align='Right'><gaLabel:label name="SLRXM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>受理时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="SLSJ" />
									</td>
								</tr>
								<tr>
									
									<td class='td1'>死亡证明编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="SWZMBH" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>死亡日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="SWRQ" />
									</td>
								</tr>
			 
								<tr>
									<td class='td1'>死亡交证情况:</td>
									<td class='td2' align='Right'><gaLabel:label name="SWJZQK" />
									</td>
									<td width='5%'>&nbsp;</td>
									
								</tr>
								<tr>
									<td class='td1'>补录日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="BLRQ" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>补录类别:</td>
									<td class='td2' align='Right'><gaLabel:label name="BLLB" />
									</td>
								</tr>
								
								<tr>
									<td class='td1'>档案号:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="QTXX_HFYY" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>迁往地户口性质:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="QWDHKXZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>是否人户分离:</td>
									<td class='td2' align='right'><gaLabel:label name="SFRHFL"
											collection="DIC_SFRHFL" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>身份证受理标记:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SFZSLBJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>改登前户口性质:</td>
									<td class='td2' align='right'><gaLabel:label
											name="GDQHKXZ" collection="DIC_HKXZ" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>户口性质改登日期:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="HKXZGDRQ" />
									</td>
								</tr>
								<tr>
									
								 
									<td class='td1'>迁入登记时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="QRDJSJ" />
									</td>
								</tr>
								
							</table>
						</td>
					</tr>
				</table>
				<table cellpadding="0" width="100%"
					style="vertical-align: top; background: white;">
					<tr>
						<td colspan="2">&nbsp;</td>
					</tr>
					<tr>
						<td colspan="2"><font size="2" face="黑体">住址信息</font></td>
					</tr>
					<tr>
						<td colspan="1">
							<hr width="120" size="2" color="#1c9ad7" align="left"></td>
						<td colspan="1">
							<hr width="818" size="2" color="#d2d7db" align="right" noshade>
						</td>
					</tr>
					<tr>
						<td colspan="2" align="center">
							<table cellpadding="0" width="95%"
								style="vertical-align: top; background: white;">
								<tr>
									<td class='td1'>住址:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>住址所属辖区:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZZSSXQ" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>住址行政区划编码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="ZZXZQHBM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>临时住址代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="LSZZDM" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>临时住址辖区编码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="LSZZXQBM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>临时其它住址辖区编码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="LSQTZZXQBM" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>临时户号:</td>
									<td class='td2' align='Right'><gaLabel:label name="LSHH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>临时原住址代码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="LSYZZDM" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>临时原住址辖区编码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="LSYZZXQBM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>历史其它住址代码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="LSQTZZDM" />
									</td>
									<td width='5%'>&nbsp;</td>
									
								</tr>
								</table>
						</td>
					</tr>
				</table>

				<table cellpadding="0" width="100%"
					style="vertical-align: top; background: white;">
					<tr>
						<td colspan="2">&nbsp;</td>
					</tr>
					<tr>
						<td colspan="2"><font size="2" face="黑体">变动信息</font></td>
					</tr>
					<tr>
						<td colspan="1">
							<hr width="120" size="2" color="#1c9ad7" align="left"></td>
						<td colspan="1">
							<hr width="818" size="2" color="#d2d7db" align="right" noshade>
						</td>
					</tr>
					<tr>
						<td colspan="2" align="center">
							<table cellpadding="0" width="95%"
								style="vertical-align: top; background: white;">
								<tr>
									<td class='td1'>变动原因:</td>
									<td class='td2' align='right'><gaLabel:label name="BDYY"
											collection="DIC_BDYY" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>变动时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="BDRQ" />
									</td>
								</tr>

								<tr>
									<td class='td1'>注销标识:</td>
									<td class='td2' align='right'><gaLabel:label name="ZXBZ"
											collection="DIC_ZXBZ" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>迁出地国家地区:</td>
									<td class='td2' align='right'><gaLabel:label name="QCDGJ"
											collection="DIC_GJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>迁出地省市县:</td>
									<td class='td2' align='right'><gaLabel:label name="QCDSSX"
											collection="DIC_XZQH" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>迁出地详址:</td>
									<td class='td2' align='Right'><gaLabel:label name="QCDXZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>迁移证编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="QYZBH" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>准迁证编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZQZBH" />
									</td>
								</tr>
								
								<tr>
									
									<td class='td1'>迁往地国家地区:</td>
									<td class='td2' align='right'><gaLabel:label name="QWDGJ"
											collection="DIC_GJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>迁往地省市县:</td>
									<td class='td2' align='right'><gaLabel:label name="QWDSSX"
											collection="DIC_XZQH" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>迁往地详址:</td>
									<td class='td2' align='Right'><gaLabel:label name="QWDXZ" />
									</td>
								</tr>
								
								<tr>
									<td class='td1'>迁来时户别:</td>
									<td class='td2' align='right'><gaLabel:label name="QLSHB"
											collection="DIC_HKXZ" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>何时迁来本市:</td>
									<td class='td2' align='Right'><gaLabel:label name="HSQLBS" />
									</td>
								</tr>
								<tr>
									<td class='td1'>何因迁来本市:</td>
									<td class='td2' align='right'><gaLabel:label name="HYQLBS"
											collection="DIC_BDYY" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>何时迁来本址:</td>
									<td class='td2' align='Right'><gaLabel:label name="HSQLBZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>何因迁来本址:</td>
									<td class='td2' align='right'><gaLabel:label name="HYQLBZ"
											collection="DIC_BDYY" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>变更更正类别:</td>
									<td class='td2' align='Right'><gaLabel:label name="BGGZLB" />
									</td>
								</tr>
								<tr>
									<td class='td1'>何时迁出:</td>
									<td class='td2' align='Right'><gaLabel:label name="HSQC" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>何因迁出:</td>
									<td class='td2' align='Right'><gaLabel:label name="HYQC" />
									</td>
								</tr>
								<tr>
									<td class='td1'>何地迁来区划:</td>
									<td class='td2' align='right'><gaLabel:label name="HDQLQH"
											collection="DIC_XZQH" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>何地迁来地址:</td>
									<td class='td2' align='Right'><gaLabel:label name="HDQLDZ" />
									</td>
								</tr>
							
								<tr>
					 
									<td class='td1'>迁移证签发日期:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="QYZQFRQ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>迁移证截止日期:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="QYZJZRQ" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>变动范围:</td>
									<td class='td2' align='right'><gaLabel:label name="BDFW"
											collection="DIC_BDFW" />
									</td>
								</tr>
								<tr>
									<td class='td1'>变动户口性质:</td>
									<td class='td2' align='right'><gaLabel:label name="BDHKXZ"
											collection="DIC_HKXZ" />
									</td>
									
								</tr>
								
								<tr>
									<td class='td1'>姓名拼音:</td>
									<td class='td2' align='Right'><gaLabel:label name="XMPY" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>限制变动标识:</td>
									<td class='td2' align='right'><gaLabel:label name="XZBDBS"
											collection="DIC_XZBDBS" />
									</td>
								</tr>
								
								<tr>
									<td class='td1'>其他地址:</td>
									<td class='td2' align='Right'><gaLabel:label name="QTZZ" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>迁移原址辖区:</td>
									<td class='td2' align='Right'><gaLabel:label name="QYYZXQ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>迁移原址:</td>
									<td class='td2' align='Right'><gaLabel:label name="QYYZ" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>是否上传:</td>
									<td class='td2' align='right'><gaLabel:label name="SFSC"
											collection="DIC_SF" />
									</td>
								</tr>
								
							</table>
						</td>
					</tr>
				</table>
			</div>
		</div>
		<div>
			<img alt="" src="skins/default/images/detailpage_bot.png"
				style="margin-left: 120px; vertical-align: top;">
		</div>
	</form>
</body>
</html>