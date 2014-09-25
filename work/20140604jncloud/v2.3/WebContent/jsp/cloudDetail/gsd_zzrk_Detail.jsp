<%@page language='java' contentType='text/html;charset=UTF-8'%><%@taglib
	uri='/tags/ga-json' prefix='gaLabel'%><%@page language='java'
	pageEncoding='UTF-8'%><html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>

<link type='text/css' rel='stylesheet' href='skins/default/css/skin.css'>
<title>暂住人口登记表明细</title>
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
	<form name='hzzzrkForm' method='post' action='gsd_zzrk_Detail.jsp'
		id='hzzzrkForm' style='vertical-align: top;'>
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
									<td rowspan="6"><gaLabel:img dataType="HZCZRK_IMG"
											name="ZK_ZP" key="ZK_ZP" ds=''></gaLabel:img>
									</td>
								</tr>
								<tr>
									<td class='td1'>姓名:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_XM" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>身份证号:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_GMSFHM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>年龄:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_NL" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>姓名拼音:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_XMPY" />
									</td>
								</tr>
								<tr>
									<td class='td1'>别名:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_BM" />
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>性别:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_XB" collection="DIC_XB"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>民族:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_MZ" collection="DIC_MZ"/>
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>出生日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_CSRQ" />
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
									<td class='td1'>身高:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_SG" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>体貌特征:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_TMTZ" collection="DIC_TMTZ"/>
									</td>
								</tr>			
								<tr>
									<td class='td1'>文化程度:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_WHCD" collection="DIC_WHCD"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>婚姻状况:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_HYZK" collection="DIC_HYZK"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>政治面貌:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_ZZMM" collection="DIC_ZZMM"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>特长:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_TC" />
									</td>
								</tr>
								<tr>
									<td class='td1'>联系方式:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_LXFS" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>邮政编码:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_YZBM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>户籍地详址:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_HJDXZ"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>常口行政区划:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_CKXZQH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>服务处所:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_FWCS"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>从事职业:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_ZY" />
									</td>
								</tr>
								<tr>
									<td class='td1'>原户口类别:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_YHKLB" collection="DIC_HKXZ"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>计生证号:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_JSZH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>计生证是否审验:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_JSZSFSY" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>是否办证:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_SFBZ" collection="DIC_SF"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>来济日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_LJRQ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>核查情况:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_HCQK" />
									</td>
								</tr>
								<tr>
									<td class='td1'>注销日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_ZXRQ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>去向:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_ZXQX" />
									</td>
								</tr>
								<tr>
									<td class='td1'>辖区编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_XQBH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>务工地址辖区:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_WGDZXQ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>务工地址:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_WGDZ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>务工地址辖区编码:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_WGDZXQBM" />
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
						<td colspan="2"><font size="2" face="黑体">暂住信息</font></td>
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
									<td class='td1'>暂住事由:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_ZZSY" collection="DIC_JZSY"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>暂住处所:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_ZZCS" collection="DIC_ZZCS"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>暂住地址详址:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_ZZDZXZ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>暂住地址辖区:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_ZZDZXQ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>务工地址详址:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_WGDZXZ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>暂住证编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_ZZBH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>暂住证签发日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_ZZZQFRQ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>暂住证有效期限:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_ZZZYXQX" collection="DIC_ZK_YXQX"/>  
									</td>
								</tr>
								<tr>
									<td class='td1'>暂住证截止日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_ZZZJZRQ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>暂住地址:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_ZZDZ" />
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
						<td colspan="2"><font size="2" face="黑体">相关信息</font></td>
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
									<td class='td1'>房主姓名:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_FZXM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>房主公民身份号码:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_FZGMSFHM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>房主联系电话:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_FZLXDH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>与房主关系:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_FZGX" collection="DIC_JTGX"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>暂口姓名:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_ZKXM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>暂口房主姓名:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_ZKFZXM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>暂口责任人姓名:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_ZKZRRXM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>责任人联系方式:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_ZZRLXFS" />
									</td>
								</tr>
								<tr>
									<td class='td1'>责任人分类:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_ZRRFL" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>责任人姓名:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_ZZRXM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>责任人公民身份号码:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_ZZRGMSFHM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>责任人性别:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_ZZRXB" collection="DIC_XB"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>管理单位:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_GLDW" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>管理单位编码:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_GLDWBM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>填表人:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_TBR" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>填表日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_TBRQ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>填报单位编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_TBDWBH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>填报单位:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_TBDW" />
									</td>
								</tr>
								<tr>
									<td class='td1'>回函时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_HHSJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>发函时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_FHSJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>函查联系方式:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_HCLXFS" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>受函单位:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_SHDW" />
									</td>
								</tr>
								<tr>
									<td class='td1'>函查其他情况:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_HCQTQK" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>受函单位编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_SHDWBH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>发函状态:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_FHZT" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>发函编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZK_FHBH" />
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
