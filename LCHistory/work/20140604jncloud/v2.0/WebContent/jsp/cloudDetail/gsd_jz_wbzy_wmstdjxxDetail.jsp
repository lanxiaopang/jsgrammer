<%@page language='java' contentType='text/html;charset=UTF-8'%><%@taglib
	uri='/tags/ga-json' prefix='gaLabel'%><%@page language='java'
	pageEncoding='UTF-8'%><html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>

<link type='text/css' rel='stylesheet' href='skins/default/css/skin.css'>
<title>全省无名尸体登记信息明细</title>
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
									<td class='td1'>填表单位所属地区:</td>
									<td class='td2' align='Right'><gaLabel:label name="TBDWDM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>填表单位名称:</td>
									<td class='td2' align='Right'><gaLabel:label name="TBDWMC" />
									</td>
								</tr>
								<tr>
									<td class='td1'>发现人姓名:</td>
									<td class='td2' align='Right'><gaLabel:label name="FXRXM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<!--td class='td1'>发现人性别代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="FXRXB" />
									</td-->
									<td class='td1'>发现人性别中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="FXRXB_ZW" />
									</td>
								</tr>
								<!--tr>
									<td class='td1'>发现人性别代码OLD:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="FXRXB_OLD" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>发现人性别中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="FXRXB_ZW" />
									</td>
								</tr-->
								<tr>
									<td class='td1'>发现人出生日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="CSRQ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<!--td class='td1'>发现人证件类型:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZJLX" />
									</td-->
									<td class='td1'>发现人证件类型中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="ZJLX_ZW" />
									</td>
								</tr>
								<!--tr>
									<td class='td1'>发现人证件类型OLD:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="ZJLX_OLD" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>发现人证件类型中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="ZJLX_ZW" />
									</td>
								</tr-->
								<tr>
									<td class='td1'>发现人证件号码:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZJHM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>发现人移动电话:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="FXR_YDDH" />
									</td>
								</tr>
								<tr>
									<td class='td1'>发现人工作单位名称:</td>
									<td class='td2' align='Right'><gaLabel:label name="GZDW" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>发现人现住址:</td>
									<td class='td2' align='Right'><gaLabel:label name="XZZ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>发现时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="FXSJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>发现地点详细地址:</td>
									<td class='td2' align='Right'><gaLabel:label name="FXDD" />
									</td>
								</tr>
								<tr>
									<td class='td1'>承办单位代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="CBDW" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>承办单位详细名称:</td>
									<td class='td2' align='Right'><gaLabel:label name="CBDWMC" />
									</td>
								</tr>
								<!--tr>
									<td class='td1'>业务分类代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="YWFL" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>业务分类代码OLD:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="YWFL_OLD" />
									</td>
								</tr-->
								<tr>
									<td class='td1'>业务分类中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="YWFL_ZW" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>案件编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="AJBH" />
									</td>
								</tr>
								<!--tr>
									<td class='td1'>案件类别代码||刑事案件执行:</td>
									<td class='td2' align='Right'><gaLabel:label name="AJLB" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>案件类别代码||刑事案件执行OLD:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="AJLB_OLD" />
									</td>
								</tr-->
								<tr>
									<td class='td1'>案件类中文别||刑事案件执行:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="AJLB_ZW" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>承办人:</td>
									<td class='td2' align='Right'><gaLabel:label name="CBR" />
									</td>
								</tr>
								<tr>
									<td class='td1'>联系电话:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="CBR_YDDH" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>简要情况:</td>
									<td class='td2' align='Right'><gaLabel:label name="JYQK" />
									</td>
								</tr>
								<tr>
									<td class='td1'>填表人:</td>
									<td class='td2' align='Right'><gaLabel:label name="TBR" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>填表单位详细名称:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="TBDWXXMC" />
									</td>
								</tr>
								<tr>
									<td class='td1'>填表日期:</td>
									<td class='td2' align='Right'><gaLabel:label name="TBRQ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>审批人:</td>
									<td class='td2' align='Right'><gaLabel:label name="SPR" />
									</td>
								</tr>
								<!--tr>
									<td class='td1'>审核标记代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="SHBJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>审核标记代码OLD:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SHBJ_OLD" />
									</td>
								</tr-->
								<tr>
									<td class='td1'>审核标记中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SHBJ_ZW" />
									</td>
									<td width='10%'>&nbsp;</td>
									<!--td class='td1'>撤销标记代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="CXBJ" />
									</td-->
									<td class='td1'>撤销标记中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="CXBJ_ZW" />
									</td>
								</tr>
								<!--tr>
									<td class='td1'>撤销标记代码OLD:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="CXBJ_OLD" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>撤销标记中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="CXBJ_ZW" />
									</td>
								</tr-->
								<!--tr>
									<td class='td1'>上传标记代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="SCBJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>上传标记代码OLD:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SCBJ_OLD" />
									</td>
								</tr-->
								<tr>
									<td class='td1'>上传标记中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SCBJ_ZW" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>上报时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="SBSJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>入省库时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="RKSJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<!--td class='td1'>删除标记代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="DELBJ" />
									</td-->
									<td class='td1'>删除标记中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="DELBJ_ZW" />
									</td>
								</tr>
								<!--tr>
									<td class='td1'>删除标记代码OLD:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="DELBJ_OLD" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>删除标记中文:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="DELBJ_ZW" />
									</td>
								</tr-->
								<tr>
									<td class='td1'>发现人现住址代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="XZZDM" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>发现地点代码:</td>
									<td class='td2' align='Right'><gaLabel:label name="FXDDDM" />
									</td>
								</tr>
								<tr>
									<td class='td1'>审批未通过原因:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="SPWTGYY" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>删除时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="DELSJ" />
									</td>
								</tr>
								<tr>
									<td class='td1'>最后修改时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="ZHXGSJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>审批时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="SHSJ" />
									</td>
								</tr>
								 
								<!--tr>
									<td class='td1'>入部库时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="RBKSJ" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>初次入部库时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="RBKSJ0" />
									</td>
								</tr>
								<tr>
									<td class='td1'>入部库传输文件名:</td>
									<td class='td2' align='Right'><gaLabel:label name="FNAME" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>初次入部库传输文件名:</td>
									<td class='td2' align='Right'><gaLabel:label name="FNAME0" />
									</td>
								</tr-->
								<!--tr>
									<td class='td1'>入部库错误描述:</td>
									<td class='td2' align='Right'><gaLabel:label name="SBERR" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>数据版本:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="VERSION" />
									</td>
								</tr-->
								<tr>
									<td class='td1'>发现人姓名拼音:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="FXRXMPY" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>原系统编号:</td>
									<td class='td2' align='Right'><gaLabel:label name="YXTBH" />
									</td>
								</tr>
								<!--tr>
									<td class='td1'>是否转换字典:</td>
									<td class='td2' align='Right'><gaLabel:label name="SFZHZD" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>入库时间:</td>
									<td class='td2' align='Right'><gaLabel:label name="D_RKSJ" />
									</td>
								</tr-->
								<tr>
									<!--td class='td1'>处理标志:</td>
									<td class='td2' align='Right'><gaLabel:label
											name="V_DEALFLAG" />
									</td-->
									<td class='td1'>入部库错误描述:</td>
									<td class='td2' align='Right'><gaLabel:label name="SBERR" />
									</td>
									<td width='10%'>&nbsp;</td>
									<td class='td1'>姓名拼音:</td>
									<td class='td2' align='Right'><gaLabel:label name="XMPY" />
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
