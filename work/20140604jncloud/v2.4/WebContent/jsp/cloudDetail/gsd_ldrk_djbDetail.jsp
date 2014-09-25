<%@page language='java' contentType='text/html;charset=UTF-8'%><%@taglib
	uri='/tags/ga-json' prefix='gaLabel'%><%@page language='java'
	pageEncoding='UTF-8'%><html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>

<link type='text/css' rel='stylesheet' href='skins/default/css/skin.css'>
<title>流动人口登记表明细</title>
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
	<form name='ldrkForm' method='post' action='gsd_ldrk_djbDetail.jsp'
		id='ldrkForm' style='vertical-align: top;'>
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
						<td colspan='2'><font size='2' face='黑体'>个人信息</font>
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
						<td colspan='2' align='center'>
						<table cellpadding='0' width='95%' style='vertical-align: top; background: white;'>
								<tr>
									<td rowspan="6"><gaLabel:img dataType="LDRK_IMG"
											name="SFZH" key="SFZH" ds=''></gaLabel:img>
									</td>
								</tr>
								<tr>
									<td class='td1'>姓名:</td>
									<td class='td2' align='Right'><gaLabel:label name="XM" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>身份证号:</td>
									<td class='td2' align='Right'><gaLabel:label name="SFZH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>别名:</td>
									<td class='td2' align='Right'><gaLabel:label name="BM" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>性别:</td>
									<td class='td2' align='Right'><gaLabel:label name="XB" collection="DIC_XB"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>民族:</td>
									<td class='td2' align='Right'><gaLabel:label name="MZ" collection="DIC_MZ"/>
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>出生日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="CSRQ" />
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
						<td colspan='2'><font size='2' face='黑体'>个人详细信息</font>
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
									<td class='td1'>学历:</td>
									<td class='td2' align='Right'><gaLabel:label name="XL" collection="DIC_WHCD"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>婚姻状况:</td>
									<td class='td2' align='Right'><gaLabel:label name="HYZK" collection="DIC_HYZK"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>居住事由:</td>
									<td class='td2' align='Right'><gaLabel:label name="JZSY" collection="DIC_JZSY"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>从事职业:</td>
									<td class='td2' align='Right'><gaLabel:label name="CSZY" />
									</td>
								</tr>
								<tr>
									<td class='td1'>政治面貌:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZZMM" collection="DIC_ZZMMAO"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>到达本地日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="DDBDRQ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>是否参加工作:</td>
									<td class='td2' align='Right'><gaLabel:label name="SFCJGZ" collection="DIC_SF" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>常住户口所在地住址:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="CZHKSZDZZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>联系方式-手机:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="LXFS_SJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>联系方式-固话:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="LXFS_GH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>拟居住期限:</td>
									<td class='td2' align='Right'><gaLabel:label name="NJZQX" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>工作单位:</td>
									<td class='td2' align='Right'><gaLabel:label name="GZDW" />
									</td>
								</tr>
								<tr>
									<td class='td1'>单位负责人:</td>
									<td class='td2' align='Right'><gaLabel:label name="DWFZR" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>单位负责人联系电话:</td>
									<td class='td2' align='Right'><gaLabel:label name="DWLXDH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>单位地址:</td>
									<td class='td2' align='Right'><gaLabel:label name="DWDZ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>已工作年限:</td>
									<td class='td2' align='Right'><gaLabel:label name="YGZNX" />
									</td>
								</tr>
								<tr>
									<td class='td1'>户籍地行政区划:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="HJDXZQH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>现住地行政区划:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="XZDXZQH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>现居住地住址:</td>
									<td class='td2' align='Right'><gaLabel:label name="XJZDZZ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>住所类别:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZSLB" collection="DIC_ZSLB"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>劳动合同签订情况:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="LDHTQDQK" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>参保情况:</td>
									<td class='td2' align='Right'><gaLabel:label name="CBQK" />
									</td>
								</tr>
								<tr>
									<td class='td1'>是否生育:</td>
									<td class='td2' align='Right'><gaLabel:label name="SFSY" collection="DIC_SF" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>生育子女数—男:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SYZN_NAN" />
									</td>
								</tr>
								<tr>
									<td class='td1'>生育子女数—女:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SYZN_NV" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>婚育证明编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="HYZMBH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>是否采取节育措施:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SFCQJYCS" collection="DIC_SF" />
									</td>
									<td width='10%'>&nbsp;</td>
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
						<td colspan='2'><font size='2' face='黑体'>相关信息</font>
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
									<td class='td1'>房主:</td>
									<td class='td2' align='Right'><gaLabel:label name="FZ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>房主身份证号:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="FZ_SFZH" />
									</td>
								</tr>				
								<tr>
									<td class='td1'>填报时间/居住证有效期（开始时间）:</td>
									<td class='td2' align='Right'><gaLabel:label name="TBSJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>填报单位代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="TBDWDM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>填报人姓名:</td>
									<td class='td2' align='Right'><gaLabel:label name="TBRXM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>填报人身份证号:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="TBRSFZH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>最后修改时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZHXGSJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>审批状态:</td>
									<td class='td2' align='Right'><gaLabel:label name="SPZT" collection="DIC_SPZT" />
									</td>
								</tr>
								<tr>
									<td class='td1'>数据有效性-验证时间:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SJYXX_YZSJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>（社区民警）是否漏审:</td>
									<td class='td2' align='Right'><gaLabel:label name="SFLS" collection="DIC_SF" />
									</td>
								</tr>
								<tr>
									<td class='td1'>（户籍民警）受理时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="SLSJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>公安机关代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="GAJGDM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>注销时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZXSJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>审核人:</td>
									<td class='td2' align='Right'><gaLabel:label name="SHR" />
									</td>
								</tr>
								<tr>
									<td class='td1'>（户籍民警）审核时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="SHSJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>审核单位代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="SHDWDM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>是否申领居住证:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SFSLJZZ" collection="DIC_SF" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>审核通过之后标准地址:</td>
									<td class='td2' align='Right'><gaLabel:label name="BZDZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>居住证有效期:</td>
									<td class='td2' align='Right'><gaLabel:label name="JZZYXQ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>是否允许制证:</td>
									<td class='td2' align='Right'><gaLabel:label name="SFYXZZ" collection="DIC_SF" />
									</td>
								</tr>
								<tr>
									
									<td class='td1'>签发时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="QFSJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>签发人:</td>
									<td class='td2' align='Right'><gaLabel:label name="QFR" />
									</td>
								</tr>
								<tr>
									<td class='td1'>制证时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZZSJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>制证标志:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZZBZ" collection="DIC_ZZBZ"/>
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
