<%@page language='java' contentType='text/html;charset=UTF-8'%><%@taglib
	uri='/tags/ga-json' prefix='gaLabel'%><%@page language='java'
	pageEncoding='UTF-8'%><html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
 
<link type='text/css' rel='stylesheet' href='skins/default/css/skin.css'>
<title>收教所-基本信息明细</title>
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
									<td class='td1'>序号:</td>
									<td class='td2' align='Right'><gaLabel:label name="ID" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>牢房房号:</td>
									<td class='td2' align='Right'><gaLabel:label name="LFFH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>姓名:</td>
									<td class='td2' align='Right'><gaLabel:label name="XM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>别名:</td>
									<td class='td2' align='Right'><gaLabel:label name="BM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>姓名拼音:</td>
									<td class='td2' align='Right'><gaLabel:label name="XMPY" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>性别:</td>
									<td class='td2' align='Right'><gaLabel:label name="XB" />
									</td>
								</tr>
								<tr>
									<td class='td1'>证件号:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZJH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>证件类型:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZJLX" />
									</td>
								</tr>
								<tr>
									<td class='td1'>出生年月:</td>
									<td class='td2' align='Right'><gaLabel:label name="CSNY" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>国籍:</td>
									<td class='td2' align='Right'><gaLabel:label name="GJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>民族:</td>
									<td class='td2' align='Right'><gaLabel:label name="MZ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>婚姻状况:</td>
									<td class='td2' align='Right'><gaLabel:label name="HYZK" />
									</td>
								</tr>
								<tr>
									<td class='td1'>文化程度:</td>
									<td class='td2' align='Right'><gaLabel:label name="WHCD" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>机构:</td>
									<td class='td2' align='Right'><gaLabel:label name="JG" />
									</td>
								</tr>
								<tr>
									<td class='td1'>身份:</td>
									<td class='td2' align='right'><gaLabel:label name="SF"
											collection="DIC_JLSRYSF" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>特殊身份:</td>
									<td class='td2' align='Right'><gaLabel:label name="TSSF" />
									</td>
								</tr>
								<tr>
									<td class='td1'>政治面貌:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZZMM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>户籍地:</td>
									<td class='td2' align='Right'><gaLabel:label name="HJD" />
									</td>
								</tr>
								<tr>
									<td class='td1'>HJDXZ:</td>
									<td class='td2' align='Right'><gaLabel:label name="HJDXZ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>XZDBM:</td>
									<td class='td2' align='Right'><gaLabel:label name="XZDBM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>XZDXZ:</td>
									<td class='td2' align='Right'><gaLabel:label name="XZDXZ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>职业:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZY" />
									</td>
								</tr>
								<tr>
									<td class='td1'>TAR:</td>
									<td class='td2' align='Right'><gaLabel:label name="TAR" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>电话:</td>
									<td class='td2' align='Right'><gaLabel:label name="DH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>入所日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="RSRQ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>出所日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="CSRQ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>处理结果:</td>
									<td class='td2' align='Right'><gaLabel:label name="CLJG" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>CSQX:</td>
									<td class='td2' align='Right'><gaLabel:label name="CSQX" />
									</td>
								</tr>
								<tr>
									<td class='td1'>ZHC:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZHC" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>档案号:</td>
									<td class='td2' align='Right'><gaLabel:label name="DAH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>RSWSH:</td>
									<td class='td2' align='Right'><gaLabel:label name="RSWSH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>CSWSH:</td>
									<td class='td2' align='Right'><gaLabel:label name="CSWSH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>JSH:</td>
									<td class='td2' align='Right'><gaLabel:label name="JSH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>SG:</td>
									<td class='td2' align='Right'><gaLabel:label name="SG" />
									</td>
								</tr>
								<tr>
									<td class='td1'>ZUC:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZUC" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>工作单位:</td>
									<td class='td2' align='Right'><gaLabel:label name="GZDW" />
									</td>
								</tr>
								<tr>
									<td class='td1'>纪录日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="JLRQ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>JYQX:</td>
									<td class='td2' align='Right'><gaLabel:label name="JYQX" />
									</td>
								</tr>
								<tr>
									<td class='td1'>GYQX:</td>
									<td class='td2' align='Right'><gaLabel:label name="GYQX" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>AY:</td>
									<td class='td2' align='Right'><gaLabel:label name="AY" />
									</td>
								</tr>
								<tr>
									<td class='td1'>CYLX:</td>
									<td class='td2' align='Right'><gaLabel:label name="CYLX" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>FZJL:</td>
									<td class='td2' align='Right'><gaLabel:label name="FZJL" />
									</td>
								</tr>
								<tr>
									<td class='td1'>办案单位:</td>
									<td class='td2' align='Right'><gaLabel:label name="BADW" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>单位类型:</td>
									<td class='td2' align='Right'><gaLabel:label name="DWLX" />
									</td>
								</tr>
								<tr>
									<td class='td1'>办案人:</td>
									<td class='td2' align='Right'><gaLabel:label name="BAR" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>简要案情:</td>
									<td class='td2' align='Right'><gaLabel:label name="JYAQ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>SBM:</td>
									<td class='td2' align='Right'><gaLabel:label name="SBM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>RSYY:</td>
									<td class='td2' align='Right'><gaLabel:label name="RSYY" />
									</td>
								</tr>
								<tr>
									<td class='td1'>TSBJ:</td>
									<td class='td2' align='Right'><gaLabel:label name="TSBJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>WXDJ:</td>
									<td class='td2' align='Right'><gaLabel:label name="WXDJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>重点人员:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZDRY" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>ZSZT:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZSZT" />
									</td>
								</tr>
								<tr>
									<td class='td1'>KYTD:</td>
									<td class='td2' align='Right'><gaLabel:label name="KYTD" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>ZWBH:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZWBH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>BYZD:</td>
									<td class='td2' align='Right'><gaLabel:label name="BYZD" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>备注:</td>
									<td class='td2' align='Right'><gaLabel:label name="BZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>GLZT:</td>
									<td class='td2' align='Right'><gaLabel:label name="GLZT" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>年龄:</td>
									<td class='td2' align='Right'><gaLabel:label name="NL" />
									</td>
								</tr>
								<tr>
									<td class='td1'>CSYY:</td>
									<td class='td2' align='Right'><gaLabel:label name="CSYY" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>SCBZ:</td>
									<td class='td2' align='Right'><gaLabel:label name="SCBZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>TMTZ:</td>
									<td class='td2' align='Right'><gaLabel:label name="TMTZ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>CAY:</td>
									<td class='td2' align='Right'><gaLabel:label name="CAY" />
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
