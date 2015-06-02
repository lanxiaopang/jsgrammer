<%@page language='java' contentType='text/html;charset=UTF-8'%><%@taglib
	uri='/tags/ga-json' prefix='gaLabel'%><%@page language='java'
	pageEncoding='UTF-8'%><html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
 
<link type='text/css' rel='stylesheet' href='skins/default/css/skin.css'>
<title>济南律师名录明细</title>
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
									<td class='td1'>律师事务所:</td>
									<td class='td2' align='Right'><gaLabel:label name="LSSWS" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>姓名:</td>
									<td class='td2' align='Right'><gaLabel:label name="XM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>性别:</td>
									<td class='td2' align='Right'><gaLabel:label name="XB" collection="DIC_XB"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>出生年月:</td>
									<td class='td2' align='Right'><gaLabel:label name="CSRQ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>政治面貌:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZZMM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>民族:</td>
									<td class='td2' align='Right'><gaLabel:label name="MZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>专业:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZY" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>学历自定义:</td>
									<td class='td2' align='Right'><gaLabel:label name="XL" />
									</td>
								</tr>
								<tr>
									<td class='td1'>本所身份:</td>
									<td class='td2' align='Right'><gaLabel:label name="BSSF" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>律师职称:</td>
									<td class='td2' align='Right'><gaLabel:label name="LSZC" />
									</td>
								</tr>
								<tr>
									<td class='td1'>执业类别:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZYLB" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>初次执业时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="CCZYSJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>本次领证时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="BCLZSJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>执业证号:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZYZH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>执业证流水号:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZYZLSH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>公民身份号码:</td>
									<td class='td2' align='Right'><gaLabel:label name="SFZH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>执业专长:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZYZC" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>联系方式:</td>
									<td class='td2' align='Right'><gaLabel:label name="LXFS" />
									</td>
								</tr>
								<tr>
									<td class='td1'>资格证号:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZGZH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>个人邮箱:</td>
									<td class='td2' align='Right'><gaLabel:label name="GRYX" />
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
