<%@page language='java' contentType='text/html;charset=UTF-8'%><%@taglib
	uri='/tags/ga-json' prefix='gaLabel'%><%@page language='java'
	pageEncoding='UTF-8'%><html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>

<link type='text/css' rel='stylesheet' href='skins/default/css/skin.css'>
<title>案件明细</title>
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
						<td colspan="2" align="center">
							<table cellpadding="0" width="95%"
								style="vertical-align: top; background: white;">
								<tr>

									<td class='td1'>案件编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="AJBH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>受理单位/接收单位:</td>
									<td class='td2' align='Right'><gaLabel:label name="SLJSDW" collection="DIC_GAJGDM"/>
									</td>
								</tr>
								<tr>


									<td class='td1'>案件状态:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="AJSTATE" collection="DIC_AJZT"/>
									</td>
									<td width='10%'>&nbsp;</td> 
									<td class='td1'>作案状态:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZAZT" collection="DIC_ZAZT"/>
									</td>
								</tr>
								<tr>


									<td class='td1'>接警受理号:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SL_BJSLH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>接警方式:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SL_JJFS" collection="DIC_JJFS"/>
									</td>
								</tr>
								<tr>

									<td class='td1'>案件类型:</td>
									<td class='td2' align='Right'><gaLabel:label name="AJLX" collection="DIC_AJLX"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>案别/案由:</td>
									<td class='td2' align='Right'><gaLabel:label name="AB" collection="DIC_AJLB"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>专案标识:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZABZ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>案件名称:</td>
									<td class='td2' align='Right'><gaLabel:label name="AJMC" />
									</td>
								</tr>
								<tr>

									<td class='td1'>案件号:</td>
									<td class='td2' align='Right'><gaLabel:label name="AJWH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>报警时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="SLJJSJ" />
									</td>
								</tr>
								<tr>

									<td class='td1'>发现时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="SLFXRQ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>发案时间初值:</td>
									<td class='td2' align='Right'><gaLabel:label name="FASJCZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>发案时间终值:</td>
									<td class='td2' align='Right'><gaLabel:label name="FASJZZ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>发案地点_区县:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="FADD_QX" collection="DIC_XZQH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>发案地点_街道:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="FADD_JD" collection="DIC_AFDJD"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>所属警区:</td>
									<td class='td2' align='Right'><gaLabel:label name="AJSSJQ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>发案地点详址:</td>
									<td class='td2' align='Right'><gaLabel:label name="FADD" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>所属社区:</td>
									<td class='td2' align='Right'><gaLabel:label name="SSSQ" collection="DIC_SSSQ"/>
									</td>
								</tr>
								<tr>
									 
									<td class='td1'>发案处所:</td>
									<td class='td2' align='Right'><gaLabel:label name="SLFACS" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>发案地政区划:</td>
									<td class='td2' align='Right'><gaLabel:label name="SLFAQH" collection="DIC_XZQH"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>发现形式:</td>
									<td class='td2' align='Right'><gaLabel:label name="FXXS" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>危害程度:</td>
									<td class='td2' align='Right'><gaLabel:label name="AJWHCD" />
									</td>
								</tr>
								<tr>
									<td class='td1'>补立原因:</td>
									<td class='td2' align='Right'><gaLabel:label name="BLYY" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>作案时机:</td>
									<td class='td2' align='Right'><gaLabel:label name="XZSJ" collection="DIC_ZASJ"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>选择处所:</td>
									<td class='td2' align='Right'><gaLabel:label name="XZCS" collection="DIC_XZCS" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>选择对象:</td>
									<td class='td2' align='Right'><gaLabel:label name="XZDX" collection="DIC_XZDX" />
									</td>
								</tr>
								<tr>
									<td class='td1'>选择物品:</td>
									<td class='td2' align='Right'><gaLabel:label name="XZWP" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>作案工具:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZAGJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>选择部位:</td>
									<td class='td2' align='Right'><gaLabel:label name="XZBW" collection="DIC_XZCS" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>作案人数:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZARS" />
									</td>
								</tr>
								<tr>
									<td class='td1'>作案手段特点:</td>
									<td class='td2' align='Right'><gaLabel:label name="SDTD" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>死亡人数:</td>
									<td class='td2' align='Right'><gaLabel:label name="SWRS" />
									</td>
								</tr>
								<tr>
									<td class='td1'>受伤人数:</td>
									<td class='td2' align='Right'><gaLabel:label name="SSRS" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>损失折款:</td>
									<td class='td2' align='Right'><gaLabel:label name="SSJZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>破案时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="PASJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>结案时间:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="JA_JASJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>销案时间:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="XA_XASJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>移送时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="YSSJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>受理时间:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SL_LRSJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>备用:</td>
									<td class='td2' align='Right'><gaLabel:label name="SLJJRY" />
									</td>
								</tr>
								<tr>
									<td class='td1'>督办信息:</td>
									<td class='td2' align='Right'><gaLabel:label name="DBXX" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>案件来源:</td>
									<td class='td2' align='Right'><gaLabel:label name="AJLY" collection="DIC_AJLY"/>
									</td>
								</tr>
								<tr>

									<td class='td1'>挽回损失价值:</td>
									<td class='td2' align='Right'><gaLabel:label name="WHSSJZ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>涉案总值:</td>
									<td class='td2' align='Right'><gaLabel:label name="SAZZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>督办级别:</td>
									<td class='td2' align='Right'><gaLabel:label name="DBJB" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>具体案件来源:</td>
									<td class='td2' align='Right'><gaLabel:label name="JTAJLY" />
									</td>
								</tr>
								<tr>
									<td class='td1'>犯罪主体类型:</td>
									<td class='td2' align='Right'><gaLabel:label name="FZZTLX" collection="DIC_FZZTLX"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>案情是否涉外:</td>
									<td class='td2' align='Right'><gaLabel:label name="SFSW" collection="DIC_SF" />
									</td>
								</tr>
								<tr>
									<td class='td1'>案情涉及国家地区:</td>
									<td class='td2' align='Right'><gaLabel:label name="SJGJDQ" collection="DIC_GJDM"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>一审时间:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="YISHENSJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>二审时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="ESSJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>省:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="RESERVATION04" />
									</td>
								</tr>
								<tr>
									<td class='td1'>发案地域:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="RESERVATION05" />
									</td>
									<td width='10%'>&nbsp;</td>

									<td class='td1'>当场处罚专用字段:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="RESERVATION08" />
									</td>
								</tr>
								<tr>
									<td class='td1'>主案编号:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="RESERVATION11" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>标识是否重新立案:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="RESERVATION34" />
									</td>
								</tr>
								<tr>
									<td class='td1'>经侦案件编号:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="RESERVATION35" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>初查审核结果:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="RESERVATION36" collection="DIC_CHSCJG"/>
									</td>
								</tr>

								<tr>
									<td class='td1'>经侦同步更新时间:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="RESERVATION51" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>证据:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="RESERVATION03" />
									</td>
								</tr>
								<tr>
								<td class='td1'>备注:</td>
									<td class='td2' align='Right' colspan="4"><gaLabel:label name="BZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>简要案情:</td>
									<td class='td2' align='Right' colspan="4"><gaLabel:label
											name="ZYAQ" />
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
						<td colspan='2'><font size='2' face='黑体'>相关单位信息</font>
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
									<td class='td1'>接警单位:</td>
									<td class='td2' align='Right'><gaLabel:label name="SLJJDW" collection="DIC_GAJGDM"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>受理人:</td>
									<td class='td2' align='Right'><gaLabel:label name="SL_LRR" />
									</td>
								</tr>
								<tr>
									<td class='td1'>立案人:</td>
									<td class='td2' align='Right'><gaLabel:label name="AJLARY" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>主办单位:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZBDW" collection="DIC_GAJGDM"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>主要办案人:</td>
									<td class='td2' align='Right'><gaLabel:label name="AJZBRY" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>案件协办人:</td>
									<td class='td2' align='Right'><gaLabel:label name="AJXBRY" />
									</td>
								</tr>
								<tr>
									<td class='td1'>办案人联系电话:</td>
									<td class='td2' align='Right'><gaLabel:label name="AJBARP" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>立案录入人:</td>
									<td class='td2' align='Right'><gaLabel:label name="LA_LRR" />
									</td>
								</tr>
								<tr>
									<td class='td1'>立案录入时间:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="LA_LRSJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>立案批准人:</td>
									<td class='td2' align='Right'><gaLabel:label name="LA_PZR" />
									</td>
								</tr>
								<tr>
								<td class='td1'>立案单位:</td>
									<td class='td2' align='Right'><gaLabel:label name="LADW" collection="DIC_GAJGDM"/>
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>立案录入人姓名:</td>
									<td class='td2' align='Right' ><gaLabel:label
											name="LA_LRR_NAME" />
									</td>
								</tr>
								<tr>
									<td class='td1'>立案批时间:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="LA_PZSJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>案后修改人:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="LA_ZHXGR" />
									</td>
								</tr>
								<tr>
									<td class='td1'>案最后修改时间:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="LA_ZHXGSJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>批示状态:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="LA_PSSTATE" />
									</td>
								</tr>
								<tr>
									<td class='td1'>移送承办人:</td>
									<td class='td2' align='Right'><gaLabel:label name="YSCBR" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>移送单位电话:</td>
									<td class='td2' align='Right'><gaLabel:label name="YSDWDH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>移送单位(新):</td>
									<td class='td2' align='Right'><gaLabel:label
											name="YSDW_NEW" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>移送单位电话(新):</td>
									<td class='td2' align='Right'><gaLabel:label
											name="YSDWDH_NEW" />
									</td>
								</tr>
								<tr>
								<td class='td1'>移送单位:</td>
									<td class='td2' align='Right'><gaLabel:label name="YSDW" />
									</td>
								<td width='10%'>&nbsp;</td>
								<td class='td1'>案件主办人:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="AJZBRY_NAME" />
									</td>
								</tr>
								<tr>
									<td class='td1'>移送承办人(新):</td>
									<td class='td2' align='Right'><gaLabel:label
											name="YSCBR_NEW" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>移送时间(新):</td>
									<td class='td2' align='Right'><gaLabel:label
											name="YSSJ_NEW" />
									</td>
								</tr>
								<tr>
									<td class='td1'>主办侦查员中文姓名:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="RESERVATION01" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>协办侦查员中文姓名:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="RESERVATION02" />
									</td>
								</tr>
								<tr>
									<td class='td1'>案件协办人姓名:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="AJXBRY_NAME" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>受理人姓名:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SL_LRR_NAME" />
									</td>
								</tr>
								<tr>
									<td class='td1'>填表人:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SL_SLRXM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>填表时间:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SL_SLSJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>填表人姓名:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SL_SLRXM_NAME" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>立案人姓名:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="AJLARY_NAME" /></td>
								</tr>
								<tr>
									<td class='td1'>立案日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="LASJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>部门编号:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="DEPARTMENTCODE" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>创建者:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="CREATOR" />
									</td>
								</tr>
								<tr>
									<td class='td1'>创建时间:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="CREATEDTIME" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>密级:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SECURITYGRADE" collection="DIC_BMJBIE"/>
									</td>
								</tr>
								<tr>
									<td class='td1'>最终修改人:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="LASTUPDATEDBY" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>最后修改时间:</td> 
									<td class='td2' align='Right'><gaLabel:label
											name="LASTUPDATEDTIME" />
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
