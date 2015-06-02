<%@page language='java' contentType='text/html;charset=UTF-8'%><%@taglib
	uri='/tags/ga-json' prefix='gaLabel'%><%@page language='java'
	pageEncoding='UTF-8'%><html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
 
<link type='text/css' rel='stylesheet' href='skins/default/css/skin.css'>
<title>事故信息主表明细</title>
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
									<td class='td1'>事故编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="SGBH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>行政区划:</td>
									<td class='td2' align='Right'><gaLabel:label name="XZQH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>登记编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="DJBH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>开始勘查时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="KSKCSJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>结束勘查时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="JSKCSJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>星期:</td>
									<td class='td2' align='Right'><gaLabel:label name="XQ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>事故发生时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="SGFSSJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>路号:</td>
									<td class='td2' align='Right'><gaLabel:label name="LH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>路名:</td>
									<td class='td2' align='Right'><gaLabel:label name="LM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>公里数:</td>
									<td class='td2' align='Right'><gaLabel:label name="GLS" />
									</td>
								</tr>
								<tr>
									<td class='td1'>米数:</td>
									<td class='td2' align='Right'><gaLabel:label name="MS" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>起点米数:</td>
									<td class='td2' align='Right'><gaLabel:label name="QDMS" />
									</td>
								</tr>
								<tr>
									<td class='td1'>绝对位置:</td>
									<td class='td2' align='Right'><gaLabel:label name="JDWZ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>事故地点:</td>
									<td class='td2' align='Right'><gaLabel:label name="SGDD" />
									</td>
								</tr>
								<tr>
									<td class='td1'>在道路横断面位置:</td>
									<td class='td2' align='right'><gaLabel:label name="ZHDMWZ"
											collection="DIC_ZHDMWZ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>中央隔离设施:</td>
									<td class='td2' align='right'><gaLabel:label name="ZYGLSS"
											collection="DIC_ZYGLSS" />
									</td>
								</tr>
								<tr>
									<td class='td1'>道路安全属性:</td>
									<td class='td2' align='right'><gaLabel:label name="DLAQSX"
											collection="DIC_DLAQ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>交通信号方式(控制):</td>
									<td class='td2' align='right'><gaLabel:label name="JTXHFS"
											collection="DIC_JTXHFS" />
									</td>
								</tr>
								<tr>
									<td class='td1'>路侧防护设施类型:</td>
									<td class='td2' align='right'><gaLabel:label name="FHSSLX"
											collection="DIC_FHSSLX" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>道路物理隔离:</td>
									<td class='td2' align='right'><gaLabel:label name="DLWLGL"
											collection="DIC_DLWLGL" />
									</td>
								</tr>
								<tr>
									<td class='td1'>路面状况:</td>
									<td class='td2' align='right'><gaLabel:label name="LMZK"
											collection="DIC_LMZK" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>路表情况:</td>
									<td class='td2' align='right'><gaLabel:label name="LBQK"
											collection="DIC_LBQK" />
									</td>
								</tr>
								<tr>
									<td class='td1'>路面结构:</td>
									<td class='td2' align='right'><gaLabel:label name="LMJG"
											collection="DIC_LMJG" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>路口路段类型:</td>
									<td class='td2' align='right'><gaLabel:label name="LKLDLX"
											collection="DIC_LKLDLX" />
									</td>
								</tr>
								<tr>
									<td class='td1'>道路线型:</td>
									<td class='td2' align='right'><gaLabel:label name="DLXX"
											collection="DIC_DLXX" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>道路类型:</td>
									<td class='td2' align='right'><gaLabel:label name="DLLX"
											collection="DIC_DLLX" />
									</td>
								</tr>
								<tr>
									<td class='td1'>勘查人1:</td>
									<td class='td2' align='Right'><gaLabel:label name="KCR1" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>勘查人2:</td>
									<td class='td2' align='Right'><gaLabel:label name="KCR2" />
									</td>
								</tr>
								<tr>
									<td class='td1'>办案人1:</td>
									<td class='td2' align='Right'><gaLabel:label name="BAR1" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>办案人2:</td>
									<td class='td2' align='Right'><gaLabel:label name="BAR2" />
									</td>
								</tr>
								<tr>
									<td class='td1'>当场死亡人数:</td>
									<td class='td2' align='Right'><gaLabel:label name="SWRS" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>抢救无效死亡人数:</td>
									<td class='td2' align='Right'><gaLabel:label name="SWRSQ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>24小时死亡人数:</td>
									<td class='td2' align='Right'><gaLabel:label name="SWRS24" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>24小时受伤人数:</td>
									<td class='td2' align='Right'><gaLabel:label name="SSRS24" />
									</td>
								</tr>
								<tr>
									<td class='td1'>3日内死亡人数:</td>
									<td class='td2' align='Right'><gaLabel:label name="SWRS3" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>3日内受伤人数:</td>
									<td class='td2' align='Right'><gaLabel:label name="SSRS3" />
									</td>
								</tr>
								<tr>
									<td class='td1'>7日内死亡人数:</td>
									<td class='td2' align='Right'><gaLabel:label name="SWRS7" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>7日内受伤人数:</td>
									<td class='td2' align='Right'><gaLabel:label name="SSRS7" />
									</td>
								</tr>
								<tr>
									<td class='td1'>30日内死亡人数:</td>
									<td class='td2' align='Right'><gaLabel:label name="SWRS30" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>30日内受伤人数:</td>
									<td class='td2' align='Right'><gaLabel:label name="SSRS30" />
									</td>
								</tr>
								<tr>
									<td class='td1'>失踪人数:</td>
									<td class='td2' align='Right'><gaLabel:label name="SZRS" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>重伤人数:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZSRS" />
									</td>
								</tr>
								<tr>
									<td class='td1'>轻伤人数:</td>
									<td class='td2' align='Right'><gaLabel:label name="QSRS" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>受伤人数:</td>
									<td class='td2' align='Right'><gaLabel:label name="SSRS" />
									</td>
								</tr>
								<tr>
									<td class='td1'>机动车数量:</td>
									<td class='td2' align='Right'><gaLabel:label name="JDCSL" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>非机动车数量:</td>
									<td class='td2' align='Right'><gaLabel:label name="FJDCSL" />
									</td>
								</tr>
								<tr>
									<td class='td1'>行人数量:</td>
									<td class='td2' align='Right'><gaLabel:label name="XRSL" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>刑事管理部门:</td>
									<td class='td2' align='Right'><gaLabel:label name="XSGLBM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>刑事办案单位:</td>
									<td class='td2' align='Right'><gaLabel:label name="XSBADW" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>刑事办案人:</td>
									<td class='td2' align='Right'><gaLabel:label name="XSBAR" />
									</td>
								</tr>
								<tr>
									<td class='td1'>图片张数:</td>
									<td class='td2' align='Right'><gaLabel:label name="TPZS" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>现场图张数:</td>
									<td class='td2' align='Right'><gaLabel:label name="XCTZS" />
									</td>
								</tr>
								<tr>
									<td class='td1'>现场照片张数:</td>
									<td class='td2' align='Right'><gaLabel:label name="XCZPZS" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>直接财产损失:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZJCCSS" />
									</td>
								</tr>
								<tr>
									<td class='td1'>事故类型:</td>
									<td class='td2' align='right'><gaLabel:label name="SGLX"
											collection="DIC_SGLX" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>路外事故类型:</td>
									<td class='td2' align='Right'><gaLabel:label name="LWSGLX" />
									</td>
								</tr>
								<tr>
									<td class='td1'>事故初查原因分类:</td>
									<td class='td2' align='right'><gaLabel:label name="CCYYFL"
											collection="DIC_CCYYFL" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>事故认定原因分类:</td>
									<td class='td2' align='right'><gaLabel:label name="RDYYFL"
											collection="DIC_CCYYFL" />
									</td>
								</tr>
								<tr>
									<td class='td1'>事故初查原因:</td>
									<td class='td2' align='right'><gaLabel:label name="SGCCYY"
											collection="DIC_SGYY" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>事故认定原因:</td>
									<td class='td2' align='right'><gaLabel:label name="SGRDYY"
											collection="DIC_SGYY" />
									</td>
								</tr>
								<tr>
									<td class='td1'>简要案情:</td>
									<td class='td2' align='Right'><gaLabel:label name="JYAQ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>天气:</td>
									<td class='td2' align='right'><gaLabel:label name="TQ"
											collection="DIC_TQ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>能见度:</td>
									<td class='td2' align='right'><gaLabel:label name="NJD"
											collection="DIC_NJD" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>现场:</td>
									<td class='td2' align='right'><gaLabel:label name="XC"
											collection="DIC_XC" />
									</td>
								</tr>
								<tr>
									<td class='td1'>涉外事故:</td>
									<td class='td2' align='Right'><gaLabel:label name="SWSG" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>事故形态:</td>
									<td class='td2' align='right'><gaLabel:label name="SGXT"
											collection="DIC_SGXT" />
									</td>
								</tr>
								<tr>
									<td class='td1'>是否逃逸:</td>
									<td class='td2' align='Right'><gaLabel:label name="SFTY" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>车辆间事故:</td>
									<td class='td2' align='right'><gaLabel:label name="CLJSG"
											collection="DIC_CLJSG" />
									</td>
								</tr>
								<tr>
									<td class='td1'>单车事故:</td>
									<td class='td2' align='right'><gaLabel:label name="DCSG"
											collection="DIC_DCSG" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>碰撞方式:</td>
									<td class='td2' align='right'><gaLabel:label name="PZFS"
											collection="DIC_PZFS" />
									</td>
								</tr>
								<tr>
									<td class='td1'>逃逸事故侦破:</td>
									<td class='td2' align='Right'><gaLabel:label name="TYSGZP" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>逃逸事故侦破时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="TYZPSJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>地形:</td>
									<td class='td2' align='right'><gaLabel:label name="DX"
											collection="DIC_DX" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>照明条件:</td>
									<td class='td2' align='right'><gaLabel:label name="ZMTJ"
											collection="DIC_ZMTJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>调解人1:</td>
									<td class='td2' align='Right'><gaLabel:label name="TJR1" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>调解人2:</td>
									<td class='td2' align='Right'><gaLabel:label name="TJR2" />
									</td>
								</tr>
								<tr>
									<td class='td1'>是否运载危险物品:</td>
									<td class='td2' align='Right'><gaLabel:label name="YZWXP" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>运载危险品事故后果:</td>
									<td class='td2' align='right'><gaLabel:label
											name="YZWXPHG" collection="DIC_YZWXPHG" />
									</td>
								</tr>
								<tr>
									<td class='td1'>初次录入时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="CCLRSJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>1-快报记录:</td>
									<td class='td2' align='Right'><gaLabel:label name="JLLX" />
									</td>
								</tr>
								<tr>
									<td class='td1'>上传时间段(天数):</td>
									<td class='td2' align='Right'><gaLabel:label name="SCSJD" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>经办人:</td>
									<td class='td2' align='Right'><gaLabel:label name="JBR" />
									</td>
								</tr>
								<tr>
									<td class='td1'>提交时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="TJSJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>更新时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="GXSJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>所属中队:</td>
									<td class='td2' align='Right'><gaLabel:label name="SSZD" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>公路行政等级:</td>
									<td class='td2' align='right'><gaLabel:label name="GLXZDJ"
											collection="DIC_GLXZDJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>档案号:</td>
									<td class='td2' align='Right'><gaLabel:label name="DAH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>卷内号:</td>
									<td class='td2' align='Right'><gaLabel:label name="JNH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>所辖乡镇:</td>
									<td class='td2' align='Right'><gaLabel:label name="SXXZ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>上报:</td>
									<td class='td2' align='Right'><gaLabel:label name="SB" />
									</td>
								</tr>
								<tr>
									<td class='td1'>统计事故编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="TJSGBH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>管理部门:</td>
									<td class='td2' align='Right'><gaLabel:label name="GLBM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>电子坐标:</td>
									<td class='td2' align='Right'><gaLabel:label name="DZZB" />
									</td>
									<td width='10%'>&nbsp;</td>
								</tr>
								<tr>
									<td class='td1'>办案联系方式:</td>
									<td class='td2' align='Right'><gaLabel:label name="BALXFS" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>办案单位:</td>
									<td class='td2' align='Right'><gaLabel:label name="BADW" />
									</td>
								</tr>
								<tr>
									<td class='td1'>县以下行政区划:</td>
									<td class='td2' align='Right'><gaLabel:label name="XYXDM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>校验位:</td>
									<td class='td2' align='Right'><gaLabel:label name="JYW" />
									</td>
								</tr>
								<tr>
									<td class='td1'>是否二次事故:</td>
									<td class='td2' align='Right'><gaLabel:label name="SFECSG" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>是否典型事故:</td>
									<td class='td2' align='Right'><gaLabel:label name="SFDXSG" />
									</td>
								</tr>
								<tr>
									<td class='td1'>道路安全隐患等级:</td>
									<td class='td2' align='right'><gaLabel:label
											name="DLAQYHDJ" collection="DIC_DLAQYHDJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>当事人总数:</td>
									<td class='td2' align='Right'><gaLabel:label name="DSRZS" />
									</td>
								</tr>
								<tr>
									<td class='td1'>发送机关:</td>
									<td class='td2' align='Right'><gaLabel:label name="FSJG" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>分发机关:</td>
									<td class='td2' align='Right'><gaLabel:label name="FFJG" />
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
