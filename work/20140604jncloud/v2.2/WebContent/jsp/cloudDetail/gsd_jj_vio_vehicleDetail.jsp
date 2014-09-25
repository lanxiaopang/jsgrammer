<%@page language='java' contentType='text/html;charset=UTF-8'%><%@taglib
	uri='/tags/ga-json' prefix='gaLabel'%><%@page language='java'
	pageEncoding='UTF-8'%><html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>

<link type='text/css' rel='stylesheet' href='skins/default/css/skin.css'>
<title>机动车基本信息明细</title>
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
						<td colspan='2'><font size='2' face='黑体'>车辆信息</font>
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
									<td class='td1'>机动车序号:</td>
									<td class='td2' align='Right'><gaLabel:label name="XH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>号牌种类:</td>
									<td class='td2' align='Right'><gaLabel:label name="HPZL" collection="DIC_HPZL"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>号牌号码:</td>
									<td class='td2' align='Right'><gaLabel:label name="HPHM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>中文品牌:</td>
									<td class='td2' align='Right'><gaLabel:label name="CLPP1" />
									</td>
								</tr>
								
								
								<tr>
									<td class='td1'>初次登记日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="CCDJRQ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>最近定检日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="DJRQ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>检验有效期止:</td>
									<td class='td2' align='Right'><gaLabel:label name="YXQZ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>强制报废期止:</td>
									<td class='td2' align='Right'><gaLabel:label name="QZBFQZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>发证机关:</td>
									<td class='td2' align='Right'><gaLabel:label name="FZJG" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>管理部门:</td>
									<td class='td2' align='Right'><gaLabel:label name="GLBM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>发牌日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="FPRQ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>发行驶证日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="FZRQ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>发登记证书日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="FDJRQ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>发合格证日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="FHGZRQ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>保险终止日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="BXZZRQ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>补领号牌次数:</td>
									<td class='td2' align='Right'><gaLabel:label name="BPCS" />
									</td>
								</tr>
								<tr>
									<td class='td1'>补领行驶证次数:</td>
									<td class='td2' align='Right'><gaLabel:label name="BZCS" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>补/换领证书次数:</td>
									<td class='td2' align='Right'><gaLabel:label name="BDJCS" />
									</td>
								</tr>
								<tr>
									<td class='td1'>登记证书编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="DJZSBH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<!--td class='td1'>制登记证书行数:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="ZDJZSHS" />
									</td-->
									<td class='td1'>后膜编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="HMBH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>档案编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="DABH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>管理辖区:</td>
									<td class='td2' align='Right'><gaLabel:label name="XZQH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>机动车状态:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZT" collection="DIC_JDCZT"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>抵押标记:</td>
									<td class='td2' align='Right'><gaLabel:label name="DYBJ" collection="DIC_DYBJ"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>经办人:</td>
									<td class='td2' align='Right'><gaLabel:label name="JBR" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>车辆来源:</td>
									<td class='td2' align='Right'><gaLabel:label name="CLLY" collection="DIC_CLLY"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>注册流水号:</td>
									<td class='td2' align='Right'><gaLabel:label name="LSH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>发动机型号:</td>
									<td class='td2' align='Right'><gaLabel:label name="FDJXH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>获得方式:</td>
									<td class='td2' align='Right'><gaLabel:label name="HDFS" collection="DIC_HDFS"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>来历凭证1:</td>
									<td class='td2' align='Right'><gaLabel:label name="LLPZ1" collection="DIC_LLPZ"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>凭证编号1:</td>
									<td class='td2' align='Right'><gaLabel:label name="PZBH1" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>来历凭证2:</td>
									<td class='td2' align='Right'><gaLabel:label name="LLPZ2" collection="DIC_LLPZ"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>凭证编号2:</td>
									<td class='td2' align='Right'><gaLabel:label name="PZBH2" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>销售单位:</td>
									<td class='td2' align='Right'><gaLabel:label name="XSDW" />
									</td>
								</tr>
								<tr>
									<td class='td1'>销售价格:</td>
									<td class='td2' align='Right'><gaLabel:label name="XSJG" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>销售日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="XSRQ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>进口凭证:</td>
									<td class='td2' align='Right'><gaLabel:label name="JKPZ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>进口凭证编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="JKPZHM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>合格证编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="HGZBH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>纳税证明:</td>
									<td class='td2' align='Right'><gaLabel:label name="NSZM" collection="DIC_NSZM"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>纳税证明编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="NSZMBH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>更新日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="GXRQ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>相关资料:</td>
									<td class='td2' align='Right'><gaLabel:label name="XGZL" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>前膜编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="QMBH" />
									</td>
								</tr>
								<!--tr>
									<td class='td1'>后膜编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="HMBH" />
									</td>
									<td width='10%'>&nbsp;</td>
								 
								</tr-->
								<tr>
									<td class='td1'>原机动车序号:</td>
									<td class='td2' align='Right'><gaLabel:label name="YXH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>查验人员:</td>
									<td class='td2' align='Right'><gaLabel:label name="CYRY" />
									</td>
								</tr>
								<tr>
									<td class='td1'>底盘合格证编号:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="DPHGZBH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>单位编号:</td>
									<td class='td2' align='Right' colspan="4"><gaLabel:label name="DWBH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>车辆用途:</td>
									<td class='td2' align='Right'><gaLabel:label name="CLYT" collection="DIC_CLYT"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>用途属性:</td>
									<td class='td2' align='Right'><gaLabel:label name="YTSX" />
									</td>
								</tr>
								<tr>
									<td class='td1'>行驶证证芯编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="XSZBH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>检验合格标志:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="JYHGBZBH" />
									</td>
								</tr>
								<tr>
								 	<td class='td1'>备注:</td>
									<td class='td2' align='Right' colspan="4"><gaLabel:label name="BZ" />
									</td>
									
								</tr>
							</table>
						</td>
					</tr>
				</table>
				<table cellpadding='0' width='100%'
					style='vertical-align: top; background: white;'>
					<tr>
						<td colspan="2">&nbsp;</td>
					</tr>
					<tr>
						<td colspan='2'><font size='2' face='黑体'>车辆参数信息</font>
						</td>
					</tr>
					<tr>
						<td colspan='1'><hr width='120' size='2' color='#1c9ad7'
								align='left' noshade>
						</td>
						<td colspan='1'><hr width='818' size='2' color='#d2d7db'
								align='right' noshade>
						</td>
					</tr>
					<tr>
						<td colspan="2" align="center">
							<table cellpadding="0" width="95%"
								style="vertical-align: top; background: white;">
								<tr>
									<td class='td1'>车辆型号:</td>
									<td class='td2' align='Right'><gaLabel:label name="CLXH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>英文品牌:</td>
									<td class='td2' align='Right'><gaLabel:label name="CLPP2" />
									</td>
								</tr>
								<tr>
									<td class='td1'>国产/进口:</td>
									<td class='td2' align='Right'><gaLabel:label name="GCJK" collection="DIC_GCJK"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>制造国:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZZG" collection="DIC_GJ"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>制造厂名称:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZZCMC" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>车辆识别代号:</td>
									<td class='td2' align='Right'><gaLabel:label name="CLSBDH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>发动机号:</td>
									<td class='td2' align='Right'><gaLabel:label name="FDJH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>车辆类型:</td>
									<td class='td2' align='Right'><gaLabel:label name="CLLX" collection="DIC_CLLX"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>车身颜色:</td>
									<td class='td2' align='Right'><gaLabel:label name="CSYS" collection="DIC_CSYS"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>使用性质:</td>
									<td class='td2' align='Right'><gaLabel:label name="SYXZ" collection="DIC_SYXZ"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>燃料种类:</td>
									<td class='td2' align='Right'><gaLabel:label name="RLZL" collection="DIC_RLZL"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>排量:</td>
									<td class='td2' align='Right'><gaLabel:label name="PL" />
									</td>
								</tr>
								<tr>
									<td class='td1'>功率:</td>
									<td class='td2' align='Right'><gaLabel:label name="GL" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>转向形式:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZXXS" collection="DIC_ZXXS"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>车外廓长:</td>
									<td class='td2' align='Right'><gaLabel:label name="CWKC" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>车外廓宽:</td>
									<td class='td2' align='Right'><gaLabel:label name="CWKK" />
									</td>
								</tr>
								<tr>
									<td class='td1'>车外廓高:</td>
									<td class='td2' align='Right'><gaLabel:label name="CWKG" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>货箱内部长度:</td>
									<td class='td2' align='Right'><gaLabel:label name="HXNBCD" />
									</td>
								</tr>
								<tr>
									<td class='td1'>货箱内部宽度:</td>
									<td class='td2' align='Right'><gaLabel:label name="HXNBKD" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>货箱内部高度:</td>
									<td class='td2' align='Right'><gaLabel:label name="HXNBGD" />
									</td>
								</tr>
								<tr>
									<td class='td1'>钢板弹簧片数:</td>
									<td class='td2' align='Right'><gaLabel:label name="GBTHPS" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>轴数:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZS" />
									</td>
								</tr>
								<tr>
									<td class='td1'>轴距:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>前轮距:</td>
									<td class='td2' align='Right'><gaLabel:label name="QLJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>后轮距:</td>
									<td class='td2' align='Right'><gaLabel:label name="HLJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>轮胎规格:</td>
									<td class='td2' align='Right'><gaLabel:label name="LTGG" />
									</td>
								</tr>
								<tr>
									<td class='td1'>轮胎数:</td>
									<td class='td2' align='Right'><gaLabel:label name="LTS" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>总质量:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZZL" />
									</td>
								</tr>
								<tr>
									<td class='td1'>整备质量:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZBZL" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>核定载质量:</td>
									<td class='td2' align='Right'><gaLabel:label name="HDZZL" />
									</td>
								</tr>
								<tr>
									<td class='td1'>核定载客:</td>
									<td class='td2' align='Right'><gaLabel:label name="HDZK" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>准牵引总质量:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZQYZL" />
									</td>
								</tr>
								<tr>
									<td class='td1'>驾驶室前排载客人数:</td>
									<td class='td2' align='Right'><gaLabel:label name="QPZK" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>驾驶室后排载客人数:</td>
									<td class='td2' align='Right'><gaLabel:label name="HPZK" />
									</td>
								</tr>
								<tr>
									<td class='td1'>环保达标情况:</td>
									<td class='td2' align='Right'><gaLabel:label name="HBDBQK" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>出厂日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="CCRQ" />
									</td>
								</tr>
								</table>
								</td>
								</tr>
								</table>
				<table cellpadding='0' width='100%'
					style='vertical-align: top; background: white;'>
					<tr>
						<td colspan="2">&nbsp;</td>
					</tr>
					<tr>
						<td colspan='2'><font size='2' face='黑体'>所有人信息</font>
						</td>
					</tr>
					<tr>
						<td colspan='1'><hr width='120' size='2' color='#1c9ad7'
								align='left' noshade>
						</td>
						<td colspan='1'><hr width='818' size='2' color='#d2d7db'
								align='right' noshade>
						</td>
					</tr>
					<tr>
						<td colspan="2" align="center">
							<table cellpadding="0" width="95%"
								style="vertical-align: top; background: white;">
								<tr>
									<td class='td1'>机动车所有人:</td>
									<td class='td2' align='Right'><gaLabel:label name="SYR" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>所有权:</td>
									<td class='td2' align='Right'><gaLabel:label name="SYQ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>身份证明号码:</td>
									<td class='td2' align='Right'><gaLabel:label name="SFZMHM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>身份证明名称:</td>
									<td class='td2' align='Right'><gaLabel:label name="SFZMMC" />
									</td>
								</tr>
								<tr>
									<td class='td1'>住所详细地址:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZSXXDZ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>住所邮政编码:</td>
									<td class='td2' align='Right'><gaLabel:label name="YZBM1" />
									</td>
								</tr>
								<tr>
									<td class='td1'>联系电话:</td>
									<td class='td2' align='Right'><gaLabel:label name="LXDH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>暂住居住证明:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZZZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>暂住行政区划:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZZXZQH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>暂住详细地址:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZZXXDZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>暂住邮政编码:</td>
									<td class='td2' align='Right'><gaLabel:label name="YZBM2" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>社区代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="SQDM" />
									</td>
								</tr>
								<tr>
								<td class='td1'>住所行政区划:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZSXZQH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>电子邮箱:</td>
									<td class='td2' align='Right'><gaLabel:label name="DZYX" />
									</td>
								</tr>
								<tr>
								<td class='td1'>手机号码:</td>
									<td class='td2' align='Right'><gaLabel:label name="SJHM" />
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
