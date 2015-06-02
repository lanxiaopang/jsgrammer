锘�<%@page language='java' contentType='text/html;charset=UTF-8'%><%@taglib
	uri='/tags/ga-json' prefix='gaLabel'%><%@page language='java'
	pageEncoding='UTF-8'%><html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
<link type='text/css' rel='stylesheet'
	href='css/libra_en.3.3.0260.00.css'>
<link type='text/css' rel='stylesheet' href='skins/default/css/skin.css'>
<title>鍑虹杞﹀叕鍙镐俊鎭槑缁�</title>
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
						<td colspan='2'><font size='2' face='榛戜綋'>璇︾粏淇℃伅</font>
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
									<td class='td1'>鍗曚綅缂栧彿:</td>
									<td class='td2' align='Right'><gaLabel:label name="DWID" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>妗ｆ缂栧彿:</td>
									<td class='td2' align='Right'><gaLabel:label name="DABH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>鍗曚綅鍚嶇О:</td>
									<td class='td2' align='Right'><gaLabel:label name="DWMC" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>鍗曚綅鍦板潃:</td>
									<td class='td2' align='Right'><gaLabel:label name="DWDZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>璐熻矗浜�:</td>
									<td class='td2' align='Right'><gaLabel:label name="FZRXM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>璐熻矗浜虹數璇�:</td>
									<td class='td2' align='Right'><gaLabel:label name="FREDH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>钀ヨ繍鍑虹杞︽暟閲�:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="YYCZCSL" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>澶囨敞:</td>
									<td class='td2' align='Right'><gaLabel:label name="BZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>钀ヤ笟鎵х収鍙�:</td>
									<td class='td2' align='Right'><gaLabel:label name="YYZZH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>SSXS:</td>
									<td class='td2' align='Right'><gaLabel:label name="SSXS" />
									</td>
								</tr>
								<tr>
									<td class='td1'>韬唤璇佸彿:</td>
									<td class='td2' align='Right'><gaLabel:label name="SFZHM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>鎬у埆:</td>
									<td class='td2' align='Right'><gaLabel:label name="XB" />
									</td>
								</tr>
								<tr>
									<td class='td1'>鐢靛彴鑱旂郴鐢佃瘽:</td>
									<td class='td2' align='Right'><gaLabel:label name="DTLXDH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>鐢靛彴鑱旂郴鐢佃瘽1:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="DTLXDHUA" />
									</td>
								</tr>
								<tr>
									<td class='td1'>绯荤粺ID:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SYSTEM_ID" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>鍏ュ簱鏃堕棿:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="CREATE_TIME" />
									</td>
								</tr>
								<tr>
									<td class='td1'>鏇存柊鏃堕棿:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="UPDATE_TIME" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>妫�鏌ユ爣蹇�:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="CHECK_FLAG" />
									</td>
								</tr>
								<tr>
									<td class='td1'>ODC鎶藉彇鏃堕棿:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="ODC_CQSJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>ODC鏇存柊鏃堕棿:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="ODC_GXSJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>ODC涓婚敭:</td>
									<td class='td2' align='Right'><gaLabel:label name="ODC_ZJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>ODC妫�鏌ユ爣蹇�:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="ODC_JCBZ" />
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
