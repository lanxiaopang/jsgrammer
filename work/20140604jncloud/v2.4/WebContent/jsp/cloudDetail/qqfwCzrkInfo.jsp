<%@page language="java" contentType="text/html;charset=UTF-8"%>
<%@taglib uri="/tags/ga-json" prefix="gaLabel"%>
<%@page language="java" pageEncoding="UTF-8"%>
<%@page import="com.inspur.gacloudq.qqfw.data.QqfwCzrk"%>
<%@page import="com.inspur.gacloudq.utils.QqfwUtils"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <%
 QqfwCzrk qqfwCzrk = (QqfwCzrk)request.getAttribute("qqfwCzrk");
 String sfzh = qqfwCzrk.getSfzh();
 %>
<link type="text/css" rel="stylesheet" href="/skins/default/css/skin.css">
<title>常住人口明细</title>
<!--[if lte IE 6]>
<script src="/skins/js/DD_belatedPNG_0.0.8a.js" type="text/javascript"></script>
    <script type="text/javascript">
        DD_belatedPNG.fix('div, ul,span, img, li, input , a');
    </script>
    <script type="text/javascript">DD_belatedPNG.fix('*');</script>
<![endif]-->
</head>
<body background="/skins/default/images/background.jpg"
	style="background-repeat: repeat-x;">
	<form name="hzczrkForm" method="post" action="czrkDetail.jsp"
		id="hzczrkForm" style="vertical-align: top;">
		<div>
			<img alt="" src="/skins/default/images/page_logo.png"
				style="margin-left: 120px;">
		</div>
		<div>
			<div style="height: 2">
				<img alt="" src="/skins/default/images/detailpage_top.png"
					style="margin-left: 120px; vertical-align: bottom;">
			</div>
			<div style="width: 942; margin-left: 120px; border-left: 1px solid #ddd; border-right: 1px solid #ddd">

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
									<td rowspan="8"><img src="/images/qqfwCzrk/<%= sfzh%>?s=2" />
									</td>
								</tr>
								<tr>
									<td class='td1'>姓名:</td>
									<td class='td2' align='Right'><%= QqfwUtils.n2(qqfwCzrk.getXm())%>
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>公民身份号码:</td>
									<td class='td2' align='Right'><%= QqfwUtils.n2(qqfwCzrk.getSfzh())%>
									</td>
								</tr>
								<tr>
									<td class='td1'>曾用名:</td>
									<td class='td2' align='Right'><%= QqfwUtils.n2(qqfwCzrk.getCym())%>
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>性别:</td>
									<td class='td2' align='right'><%= QqfwUtils.n2(qqfwCzrk.getXb())%>
									</td>
								</tr>
								<tr>
									<td class='td1'>民族:</td>
									<td class='td2' align='right'><%= QqfwUtils.n2(qqfwCzrk.getMz())%>
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>出生日期:</td>
									<td class='td2' align='Right'><%= QqfwUtils.n2(qqfwCzrk.getCsrq())%>
									</td>
								</tr>
								<tr>
									<td class='td1'>住址:</td>
									<td class='td2' align='Right'><%= QqfwUtils.n2(qqfwCzrk.getZzxz())%>
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>出生所在行政区划:</td>
									<td class='td2' align='right'><%= QqfwUtils.n2(qqfwCzrk.getZzssxq())%>
									</td>
								</tr>
								<tr>
									<td class='td1'>出生地:</td>
									<td class='td2' align='right'><%= QqfwUtils.n2(qqfwCzrk.getCsd())%>
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>文化程度:</td>
									<td class='td2' align='Right'><%= QqfwUtils.n2(qqfwCzrk.getWhcd())%>
									</td>
								</tr>
								<tr>
									<td class='td1'>婚姻状况:</td>
									<td class='td2' align='right'><%= QqfwUtils.n2(qqfwCzrk.getHyzk())%>
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>身高:</td>
									<td class='td2' align='Right'><%= QqfwUtils.n2(qqfwCzrk.getSg())%>
									</td>
								</tr>
								<tr>
									<td class='td1'>工作单位:</td>
									<td class='td2' align='right'><%= QqfwUtils.n2(qqfwCzrk.getFwcs())%>
									</td>
									<td width='5%'>&nbsp;</td>
									<td class='td1'>职业:</td>
									<td class='td2' align='Right'><%= QqfwUtils.n2(qqfwCzrk.getZy())%>
									</td>
								</tr>
							</table></td>
					</tr>
				</table>

				
			</div>
		</div>
		<div>
			<img alt="" src="/skins/default/images/detailpage_bot.png"
				style="margin-left: 120px; vertical-align: top;">
		</div>
	</form>
</body>
</html>