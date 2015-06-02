<%@page language='java' contentType='text/html;charset=UTF-8'%><%@taglib
	uri='/tags/ga-json' prefix='gaLabel'%><%@page language='java'
	pageEncoding='UTF-8'%><html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>

<link type='text/css' rel='stylesheet' href='skins/default/css/skin.css'>
<title>驾驶员信息明细</title>
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
									<td class='td1'>姓名:</td>
									<td class='td2' align='Right'><gaLabel:label name="XM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>性别:</td>
									<td class='td2' align='Right'><gaLabel:label name="XB" collection="DIC_XB"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>出生日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="CSRQ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>国籍:</td>
									<td class='td2' align='Right'><gaLabel:label name="GJ" collection="DIC_GJ"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>手机号码:</td>
									<td class='td2' align='Right'><gaLabel:label name="SJHM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>电子邮箱:</td>
									<td class='td2' align='Right'><gaLabel:label name="DZYX" />
									</td>
								</tr>
								<tr>
									<td class='td1'>档案编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="DABH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>身份证明号码:</td>
									<td class='td2' align='Right'><gaLabel:label name="SFZMHM" />
									</td>
								</tr>
								<!--tr>
									<td class='td1'>身份证明名称:</td>
									<td class='td2' align='Right'><gaLabel:label name="SFZMMC" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>号码长度:</td>
									<td class='td2' align='Right'><gaLabel:label name="HMCD" />
									</td>
								</tr-->
								<tr>
									<td class='td1'>准驾车型:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZJCX" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>原准驾车型:</td>
									<td class='td2' align='Right'><gaLabel:label name="YZJCX" />
									</td>
								</tr>
								<tr>
									<td class='td1'>下一清分日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="QFRQ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>下一审验日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="SYRQ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>初次领证日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="CCLZRQ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>初次发证机关:</td>
									<td class='td2' align='Right'><gaLabel:label name="CCFZJG" />
									</td>
								</tr>
								<tr>
									<td class='td1'>驾证期限:</td>
									<td class='td2' align='Right'><gaLabel:label name="JZQX" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>有效期始:</td>
									<td class='td2' align='Right'><gaLabel:label name="YXQS" />
									</td>
								</tr>
								<tr>
									<td class='td1'>有效期止:</td>
									<td class='td2' align='Right'><gaLabel:label name="YXQZ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>累积记分:</td>
									<td class='td2' align='Right'><gaLabel:label name="LJJF" />
									</td>
								</tr>
								<tr>
									<td class='td1'>超分日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="CFRQ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>学习通知日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="XXTZRQ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>补证次数:</td>
									<td class='td2' align='Right'><gaLabel:label name="BZCS" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>驾驶证状态:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZT" collection="DIC_JSZZT"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>驾驶人来源:</td>
									<td class='td2' align='Right'><gaLabel:label name="LY" collection="DIC_JSRLY"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>驾校名称:</td>
									<td class='td2' align='Right'><gaLabel:label name="JXMC" />
									</td>
								</tr>
								<tr>
									<td class='td1'>教练员:</td>
									<td class='td2' align='Right'><gaLabel:label name="JLY" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>行政区划:</td>
									<td class='td2' align='Right'><gaLabel:label name="XZQH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>乡镇区局:</td>
									<td class='td2' align='Right'><gaLabel:label name="XZQJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>发证日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="FZRQ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>经办人:</td>
									<td class='td2' align='Right'><gaLabel:label name="JBR" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>管理部门:</td>
									<td class='td2' align='Right'><gaLabel:label name="GLBM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>发证机关:</td>
									<td class='td2' align='Right'><gaLabel:label name="FZJG" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>更新时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="GXSJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>原档案编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="YDABH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>社区代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="SQDM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>证芯编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZXBH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>序号:</td>
									<td class='td2' align='Right'><gaLabel:label name="XH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>登记住所行政区划:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="DJZSXZQH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>登记住所详细地址:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="DJZSXXDZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>联系住所行政区划:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="LXZSXZQH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>联系住所详细地址:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="LXZSXXDZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>联系住所邮政编码:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="LXZSYZBM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>联系电话:</td>
									<td class='td2' align='Right'><gaLabel:label name="LXDH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>暂住证明:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZZZM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>暂住发证机关:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZZFZJG" />
									</td>
								</tr>
								<tr>
									<td class='td1'>暂住发证日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZZFZRQ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>是否本地:</td>
									<td class='td2' align='Right'><gaLabel:label name="SFBD" collection="DIC_SF"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>属地信息:</td>
									<td class='td2' align='Right'><gaLabel:label name="DWBH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>审验有效期止:</td>
									<td class='td2' align='Right'><gaLabel:label name="SYYXQZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>校车驾驶资格:</td>
									<td class='td2' align='Right'><gaLabel:label name="XCZG" collection="DIC_SF"/>
									</td>
								 	<td width='10%'>&nbsp;</td>
								 	<td class='td1'>相关资料:</td>
									<td class='td2' align='Right'><gaLabel:label name="XGZL" />
									</td>
								</tr>
								<tr>
									<td class='td1'>身份证明名称:</td>
									<td class='td2' align='Right'><gaLabel:label name="SFZMMC" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>备注:</td>
									<td class='td2' align='Right' colspan="4"><gaLabel:label name="BZ" />
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
