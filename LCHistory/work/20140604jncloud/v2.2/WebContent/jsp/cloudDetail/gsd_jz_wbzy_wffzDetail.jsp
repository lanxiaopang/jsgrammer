<%@page language='java' contentType='text/html;charset=UTF-8'%><%@taglib
	uri='/tags/ga-json' prefix='gaLabel'%><%@page language='java'
	pageEncoding='UTF-8'%><html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>

<link type='text/css' rel='stylesheet' href='skins/default/css/skin.css'>
<title>全省违法犯罪明细</title>
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
								<!--tr>
									<td class='td1'>字段类型:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SYSTEMID" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>人员编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="RYBH" />
									</td>
								</tr-->
								<tr>
									<td class='td1'>姓名:</td>
									<td class='td2' align='Right'><gaLabel:label name="XM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>别名:</td>
									<td class='td2' align='Right'><gaLabel:label name="BM" />
									</td>
								</tr>
								<!--tr>
									<td class='td1'>性别代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="XB" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>性别:</td>
									<td class='td2' align='Right'><gaLabel:label name="XB_OLD" />
									</td>
								</tr-->
								<tr>
									<td class='td1'>性别中文:</td>
									<td class='td2' align='Right'><gaLabel:label name="XB_ZW" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>出生日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="CSRQ" />
									</td>
								</tr>
								<!--tr>
									<td class='td1'>政治面貌代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZZMM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>政治面貌代码OLD:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="ZZMM_OLD" />
									</td>
								</tr-->
								<tr>
									<td class='td1'>政治面貌中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="ZZMM_ZW" />
									</td>
									<td width='10%'>&nbsp;</td>
									<!--td class='td1'>证件类型代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZJLX" />
									</td-->
									<td class='td1'>证件类型中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="ZJLX_ZW" />
									</td>
								</tr>
								<!--tr>
									<td class='td1'>证件类型代码OLD:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="ZJLX_OLD" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>证件类型中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="ZJLX_ZW" />
									</td>
								</tr-->
								<tr>
									<td class='td1'>证件号码:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZJHM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<!--td class='td1'>婚姻状况代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="HYZK" />
									</td-->
									<td class='td1'>婚姻状况中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="HYZK_ZW" />
									</td>
								</tr>
								<!--tr>
									<td class='td1'>婚姻状况代码OLD:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="HYZK_OLD" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>婚姻状况中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="HYZK_ZW" />
									</td>
								</tr-->
								<!--tr>
									<td class='td1'>民族代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="MZ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>民族代码OLD:</td>
									<td class='td2' align='Right'><gaLabel:label name="MZ_OLD" />
									</td>
								</tr-->
								<tr>
									<td class='td1'>民族中文:</td>
									<td class='td2' align='Right'><gaLabel:label name="MZ_ZW" />
									</td>
									<td width='10%'>&nbsp;</td>
									<!--td class='td1'>国家地区代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="GJ" />
									</td-->
									<td class='td1'>国家地区中文:</td>
									<td class='td2' align='Right'><gaLabel:label name="GJ_ZW" />
									</td>
								</tr>
								<!--tr>
									<td class='td1'>国家地区代码OLD:</td>
									<td class='td2' align='Right'><gaLabel:label name="GJ_OLD" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>国家地区中文:</td>
									<td class='td2' align='Right'><gaLabel:label name="GJ_ZW" />
									</td>
								</tr-->
								<!--tr>
									<td class='td1'>籍贯代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="JG" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>籍贯代码OLD:</td>
									<td class='td2' align='Right'><gaLabel:label name="JG_OLD" />
									</td>
								</tr-->
								<tr>
									<td class='td1'>籍贯中文:</td>
									<td class='td2' align='Right'><gaLabel:label name="JG_ZW" />
									</td>
									<td width='10%'>&nbsp;</td>
									<!--td class='td1'>专长代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZC" />
									</td-->
									<td class='td1'>专长中文:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZC_ZW" />
									</td>
								</tr>
								<!--tr>
									<td class='td1'>专长代码OLD:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZC_OLD" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>专长中文:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZC_ZW" />
									</td>
								</tr-->
								<!--tr>
									<td class='td1'>文化程度代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="WHCD" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>文化程度代码OLD:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="WHCD_OLD" />
									</td>
								</tr-->
								<tr>
									<td class='td1'>文化程度中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="WHCD_ZW" />
									</td>
									<td width='10%'>&nbsp;</td>
									<!--td class='td1'>职业代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZY" />
									</td-->
									<td class='td1'>职业中文:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZY_ZW" />
									</td>
								</tr>
								<!--tr>
									<td class='td1'>职业代码OLD:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZY_OLD" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>职业中文:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZY_ZW" />
									</td>
								</tr-->
								<tr>
									<td class='td1'>工作单位:</td>
									<td class='td2' align='Right'><gaLabel:label name="GZDW" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>职务:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZW" />
									</td>
								</tr>
								<!--tr>
									<td class='td1'>身份代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="SF" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>身份代码OLD:</td>
									<td class='td2' align='Right'><gaLabel:label name="SF_OLD" />
									</td>
								</tr-->
								<tr>
									<td class='td1'>身份中文:</td>
									<td class='td2' align='Right'><gaLabel:label name="SF_ZW" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>特殊身份:</td>
									<td class='td2' align='Right'><gaLabel:label name="TSSF" />
									</td>
								</tr>
								<!--tr>
									<td class='td1'>户籍所在地代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="HJSZD" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>户籍所在地代码OLD:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="HJSZD_OLD" />
									</td>
								</tr-->
								<tr>
									<td class='td1'>户籍所在地中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="HJSZD_ZW" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>户籍地祥址:</td>
									<td class='td2' align='Right'><gaLabel:label name="HJDXZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>现住址区划:</td>
									<td class='td2' align='Right'><gaLabel:label name="XZZQH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>现住址详址:</td>
									<td class='td2' align='Right'><gaLabel:label name="XZZXZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>监室编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="JSBH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>监所类型:</td>
									<td class='td2' align='Right'><gaLabel:label name="JSLX" />
									</td>
								</tr>
								<tr>
									<td class='td1'>备注:</td>
									<td class='td2' align='Right' colspan="4"><gaLabel:label name="BZ" />
									</td>
									 <td width='10%'>&nbsp;</td>
									<td class='td1'>人员编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="RYBH" />
									</td>
								</tr>
							
								<!--tr>
									<td class='td1'>上传标志:</td>
									<td class='td2' align='Right'><gaLabel:label name="SCBZ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>状态:</td>
									<td class='td2' align='Right'><gaLabel:label name="STATUS" />
									</td>
								</tr-->
								<!--tr>
									<td class='td1'>原系统编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="YXTBH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>是否转换字典:</td>
									<td class='td2' align='Right'><gaLabel:label name="SFZHZD" />
									</td>
								</tr-->
								<!--tr>
									<td class='td1'>入库时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="D_RKSJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>处理标志:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="V_DEALFLAG" />
									</td>
								</tr-->
								<!--tr>
									<td class='td1'>更新时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="D_GXSJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>特殊身份OLD:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="TSSF_OLD" />
									</td>
								</tr-->
								<tr>
									<td class='td1'>特殊身份中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="TSSF_ZW" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>姓名拼音:</td>
									<td class='td2' align='Right'><gaLabel:label name="XMPY" />
									</td>
								</tr>
								<tr>
									<td class='td1'>身高:</td>
									<td class='td2' align='Right' colspan="4"><gaLabel:label name="SG" />
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
