<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type" content="text/html;charset=utf-8">
    <title>济南警务云搜索</title>
    <link id="style_link" href="<%=request.getContextPath()%>/css/result.css" rel="stylesheet"/>
</head>
<body>
<div class="wrapper">


<!--head-->
<div id="wrapper_head">
    <p>
        山东省济南市公安局科技信息通讯处有线通讯科 &nbsp;&nbsp;周建平 &nbsp;&nbsp;<a id="adv_user">高级用户</a>
    </p>
</div>


<!--middle-->
<div id="wrapper_mid">
<div id="search_bar" class="grey_color1">
    <div class="g_bd1 f-cb">
        <div class="g_sd1">
            <div class="g_sd1c">
                <a href="search.html" target="_blank">
                    <img src="<%=request.getContextPath()%>/images/result/list_logo.gif">
                </a>
            </div>
        </div>
        <div class="g_mn1">
            <div class="g_mn1c">
                <div id="search_right">
                    <div id="tria">
                        <ul>
                            <li id="tria1" class="grey_color2">
                                <a href="#" class="grey_txt_color2">信息资源</a>
                                <span class="info_icon_down"></span>
                            </li>
                            <li id="tria2" class="grey_color2">
                                <a href="#" class="grey_txt_color2">信息资源2</a>

                            </li>
                        </ul>
                    </div>
                    <label for="input_box"><input id="input_box" type="text" class="con_btn"/></label>
                    <div class="bd_box">
                        <a href="#"><img id="slash" src="<%=request.getContextPath()%>/images/search2.gif"/></a>
                    </div>
                    <p id="adv_search"><a href="#" class="blue_link">高级搜索</a></p>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="search_result">

<div class="g_bd2 f_cb">
<div class="g_sd2">
    <div class="g_sd2c">
        <div class="four_result_top blue_color1"></div>
        <p class="border_grey grey_color3 four_result_mid no_border_top">
            <span>搜索结果</span>
        </p>
        <div class="border_grey four_result_bot no_border_bot no_border_top">
            <ul>
                <li>
                    <a href="#" class="result_a">
                    <div class="border_grey four_result_li">
                        <img src="<%=request.getContextPath()%>/images/result/renyuan.gif"/>
                        <p><span class="result_type grey_txt_color1">人员</span> <span class="result_num grey_txt_color1">253万+</span></p>
                    </div>
                    </a>
                </li>
                <li>
                    <a href="#" class="result_a">
                    <div class="border_grey four_result_li">
                        <img src="<%=request.getContextPath()%>/images/result/anjian.gif"/>
                        <p><span class="result_type grey_txt_color1">案件</span> <span class="result_num grey_txt_color1">5931</span></p>
                    </div>
                    </a>
                </li>
                <li>
                    <a href="#" class="result_a">
                    <div class="border_grey four_result_li">
                        <img src="<%=request.getContextPath()%>/images/result/cheliang.gif"/>
                        <p><span class="result_type grey_txt_color1">车辆</span> <span class="result_num grey_txt_color1">39万+</span></p>
                        <p><span></span> <span></span></p>
                    </div>
                    </a>
                </li>
                <li>
                    <a href="#" class="result_a">
                    <div class="border_grey four_result_li">
                        <img src="<%=request.getContextPath()%>/images/result/danwei.gif"/>
                        <p><span class="result_type grey_txt_color1">单位</span> <span class="result_num grey_txt_color1">167</span></p>
                    </div>
                    </a>
                </li>
            </ul>
        </div>


        <div id="firstpane" class="menu_list">
            <p class="menu_head border_grey no_border_bot"><span>人员信息</span></p>
            <div style="display: none;" class="menu_body">
                <i class="sj_1"></i>
                <i class="sj_2"></i>
                <div>
                    <a href="#" target="_blank" title="" class="border_grey no_border_top">jquery图片切换</a>
                    <a href="#" target="_blank" title="" class="border_grey no_border_top">jquery幻灯片</a>
                    <a href="#" target="_blank" title="" class="border_grey no_border_top no_border_bot">jquery图片放大镜</a>
                </div>
            </div>
            <p class="menu_head border_grey no_border_bot"><span>案件信息</span></p>
            <div style="display: none;" class="menu_body">
                <i class="sj_1"></i>
                <i class="sj_2"></i>
                <div>
                    <a href="#" target="_blank" title="" class="border_grey no_border_top">案事件基本信息</a>
                    <a href="#" target="_blank" title="" class="border_grey no_border_top">涉案嫌疑人</a>
                    <a href="#" target="_blank" title="" class="border_grey no_border_top">报案/受害/当事/其人</a>
                    <a href="#" target="_blank" title="" class="border_grey no_border_top">涉案物品</a>
                    <a href="#" target="_blank" title="" class="border_grey no_border_top no_border_bot">涉案关系人</a>
                </div>
            </div>
            <p class="menu_head border_grey no_border_bot"><span>信息</span></p>
            <div style="display: none;" class="menu_body">
                <i class="sj_1"></i>
                <i class="sj_2"></i>
                <div>
                    <a href="#" target="_blank" title="" class="border_grey no_border_top">案事件基本信息</a>
                    <a href="#" target="_blank" title="" class="border_grey no_border_top">涉案嫌疑人</a>
                    <a href="#" target="_blank" title="" class="border_grey no_border_top">报案/受害/当事/其人</a>
                    <a href="#" target="_blank" title="" class="border_grey no_border_top">涉案物品</a>
                    <a href="#" target="_blank" title="" class="border_grey no_border_top no_border_bot">涉案关系人</a>
                </div>
            </div>
            <p class="menu_head border_grey no_border_bot"><span>信息</span></p>
            <div style="display: none;" class="menu_body">
                <i class="sj_1"></i>
                <i class="sj_2"></i>
                <div>
                    <a href="#" target="_blank" title="" class="border_grey no_border_top">案事件基本信息</a>
                    <a href="#" target="_blank" title="" class="border_grey no_border_top">涉案嫌疑人</a>
                    <a href="#" target="_blank" title="" class="border_grey no_border_top">报案/受害/当事/其人</a>
                    <a href="#" target="_blank" title="" class="border_grey no_border_top">涉案物品</a>
                    <a href="#" target="_blank" title="" class="border_grey no_border_top no_border_bot">涉案关系人</a>
                </div>
            </div>
            <p class="menu_head border_grey no_border_bot"><span>信息</span></p>
            <div style="display: none;" class="menu_body">
                <i class="sj_1"></i>
                <i class="sj_2"></i>
                <div>
                    <a href="#" target="_blank" title="" class="border_grey no_border_top">案事件基本信息</a>
                    <a href="#" target="_blank" title="" class="border_grey no_border_top">涉案嫌疑人</a>
                    <a href="#" target="_blank" title="" class="border_grey no_border_top">报案/受害/当事/其人</a>
                    <a href="#" target="_blank" title="" class="border_grey no_border_top">涉案物品</a>
                    <a href="#" target="_blank" title="" class="border_grey no_border_top no_border_bot">涉案关系人</a>
                </div>
            </div>
            <p class="menu_head border_grey no_border_bot"><span>信息</span></p>
            <div style="display: none;" class="menu_body">
                <i class="sj_1"></i>
                <i class="sj_2"></i>
                <div>
                    <a href="#" target="_blank" title="" class="border_grey no_border_top">案事件基本信息</a>
                    <a href="#" target="_blank" title="" class="border_grey no_border_top">涉案嫌疑人</a>
                    <a href="#" target="_blank" title="" class="border_grey no_border_top">报案/受害/当事/其人</a>
                    <a href="#" target="_blank" title="" class="border_grey no_border_top">涉案物品</a>
                    <a href="#" target="_blank" title="" class="border_grey no_border_top no_border_bot">涉案关系人</a>
                </div>
            </div>
            <p class="menu_head border_grey no_border_bot"><span>信息</span></p>
            <div style="display: none;" class="menu_body">
                <i class="sj_1"></i>
                <i class="sj_2"></i>
                <div>
                    <a href="#" target="_blank" title="" class="border_grey no_border_top">案事件基本信息</a>
                    <a href="#" target="_blank" title="" class="border_grey no_border_top">涉案嫌疑人</a>
                    <a href="#" target="_blank" title="" class="border_grey no_border_top">报案/受害/当事/其人</a>
                    <a href="#" target="_blank" title="" class="border_grey no_border_top">涉案物品</a>
                    <a href="#" target="_blank" title="" class="border_grey no_border_top no_border_bot">涉案关系人</a>
                </div>
            </div>
            <p class="menu_head border_grey"><span>警情信息</span></p>
            <div style="display: none;" class="menu_body">
                <i class="sj_1"></i>
                <i class="sj_2"></i>
                <div>
                    <a href="#" target="_blank" title="" class="border_grey no_border_top">jquery动画菜单</a>
                    <a href="#" target="_blank" title="" class="border_grey no_border_top">jquery树形菜单</a>
                    <a href="#" target="_blank" title="" class="border_grey no_border_top">jquery下拉菜单</a>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="g_mn2">
<div class="g_mn2c">
<div class="condition_con">
<p class="condition_top blue_color1"></p>
<p id="condition_tab_p" class="border_grey grey_color3 condition_tab no_border_top">
    <span id="location">搜索结果 > 案件信息 > <span class="orange_txt_color1">案事件基本信息</span></span>
    <span class="tab_toggle_con">
        <span class="tab_toggle1"></span>
    </span>
</p>
<div id="condition_body" class="condition_body_hide border_grey no_border_top">
    <div id="selected_condition">
        <span id="has_choose" class="selected_title">您已经选择：</span>
        <span class="selected_txt">
            <span class="select_tag orange_border_color1">
                性别：<span class="orange_txt_color1">男</span>
                <a href="#"><img src="<%=request.getContextPath()%>/images/result/tag_close.jpg"></a>
            </span>
            <span class="select_tag orange_border_color1">民族：<span class="orange_txt_color1">汉</span>
                <a href="#"><img src="<%=request.getContextPath()%>/images/result/tag_close.jpg"></a>
            </span>
        </span>
    </div>
	<div class="g-bd5 f-cb border_top_dot">
		<div class="g-sd51">
			<p>职业：</p>
		</div>
		<div class="g-mn5">
			<div class="g-mn5c">
				<p>
					<span><a href="#" onclick="showFqDetailInfo('zy','个体','职业')">个体（2）</a></span>
					<span><a href="#">会计（1）</a></span>
					<span><a href="#">内勤（1）</a></span>
					<span><a href="#">农民（2）</a></span>
					<span><a href="#">医生（1）</a></span>
					<span><a href="#">工人（1）</a></span>
					<span><a href="#">干部（2）</a></span>
					<span><a href="#">工程师（1）</a></span>
					<span><a href="#">幼师（1）</a></span>
					<span><a href="#">待业（2）</a></span>
					<span><a href="#">职员（1）</a></span>
					<span><a href="#">幼师（1）</a></span>
					<span><a href="#">待业（2）</a></span>
					<span><a href="#">职员（1）</a></span>
					<span><a href="#">职员（1）</a></span>
					<span><a href="#">幼师（1）</a></span>
					<span><a href="#">待业（2）</a></span>
					<span><a href="#">职员（1）</a></span>
					<span><a href="#">职员（1）</a></span>
					<span><a href="#">幼师（1）</a></span>
					<span><a href="#">待业（2）</a></span>
					<span><a href="#">职员（1）</a></span>
					<span><a href="#">职员（1）</a></span>
					<span><a href="#">幼师（1）</a></span>
					<span><a href="#">待业（2）</a></span>
					<span><a href="#">职员（1）</a></span>
					<span><a href="#">职员（1）</a></span>
					<span><a href="#">幼师（1）</a></span>
					<span><a href="#">待业（2）</a></span>
					<span><a href="#">职员（1）</a></span>
				</p>
			</div>
		</div>
		<div class="g-sd52">
			<p><img id="img_more" src="<%=request.getContextPath()%>/images/result/more.gif"/></p>
		</div>
	</div>

    <div id="selected_div_birth" class="border_top_dot p_relative">
        <span class="selected_title">出生年代：</span>
        <span class="selected_txt">
            <span><a href="#">1950（2）</a></span>
            <span><a href="#">1960（1）</a></span>
            <span><a href="#">1970（1）</a></span>
            <span><a href="#">1980（2）</a></span>
            <span><a href="#">1990（1）</a></span>
            <span><a href="#">2000（1）</a></span>
            <span><a href="#">2010（2）</a></span>

            <span style="position: relative;">
                <img onclick="showHideTabBirth()" class="self_def" src="<%=request.getContextPath()%>/images/result/zidingyi.gif">
                <span id="self_def_body" class="self_def_body orange_border_color1">
                    <div>
                        <input id="sta_num" type="text" class="sta_ipt">&nbsp;&nbsp;-&nbsp;&nbsp;<input type="text" class="sta_ipt">&nbsp;
                        岁&nbsp;
                        <img src="<%=request.getContextPath()%>/images/result/self_def_search_1.gif">
                    </div>
                </span>
            </span>

        </span>
    </div>
    <div id="selected_div_status" class="border_top_dot">
        <span class="selected_title">状态：</span>
        <span class="selected_txt">
            <span><a href="#">删除（2）</a></span>
            <span><a href="#">正常（1）</a></span>
            <span><a href="#">死亡（1）</a></span>
            <span><a href="#">迁出（1）</a></span>
        </span>
    </div>
</div>

<div class="result_sum border_grey grey_color3">
    <span id="sum_txt" class="grey_txt_color2">
        约有342项<span class="orange_txt_color1">济南常住人员</span>符合搜索 “张三” 的查询结果，耗时7毫秒，以下是1-10条。
    </span>
    <a href="result_map.jsp" target="_self">
        <span id="display_mode3" class="display_mode12 grey_color3">
            <img src="<%=request.getContextPath()%>/images/result/icon3_2.gif">
        </span>
    </a>
    <span class="separator grey_color4"></span>
    <a href="result_table.jsp" target="_self">
        <span id="display_mode2" class="display_mode12 grey_color3">
            <img src="<%=request.getContextPath()%>/images/result/icon2_2.gif">
        </span>
    </a>
    <span class="separator grey_color4"></span>
    <a href="result.jsp" target="_self">
        <span id="display_mode1" class="display_mode12 white_bg_color">
            <img src="<%=request.getContextPath()%>/images/result/icon1_1.gif">
        </span>
    </a>
    <span class="separator grey_color4"></span>
    <span id="display_mode" class="grey_txt_color2">
        显示模式
    </span>
</div>
<div id="result_list">
<div class="result_list_li border_bot_dot">
    <div class="li_title">
        <span class="tit_left">
            <a>
                <span class="tit_1 underline">张三</span><span  class="tit_2 underline">（370124198803086511）的常住人口信息</span></a>
        </span>
        <span class="tit_right">
            <a><span class="underline">查看人员档案</span></a>
        </span>
    </div>
    <div class="li_body">
        <div class="li_img"><img src="<%=request.getContextPath()%>/images/result/touxiang.jpg"></div>
        <div class="li_detail">
            <span class="li_detail_item">姓名：张三</span>
            <span class="li_detail_item">曾用名：-</span>
            <span class="li_detail_item">性别：男</span>
            <span class="li_detail_item">身份证号：370124198803086511</span>
            <span class="li_detail_item">民族：汉</span>
            <span class="li_detail_item">职业：学生</span>
            <span class="li_detail_item">户籍地址：桑园路60号</span>
            <span class="li_detail_item">服务处所：山东省工会干部管理学院</span>
            <span class="li_detail_item">人员状态：迁出</span>
            <span class="li_detail_item green_color1">所属派出所：山东省济南市公安局历城区分局全福派出所</span>
            <span class="li_detail_item green_color1">所属辖区：桑园路警务区</span>
        </div>
    </div>
</div>
<div class="result_list_li border_bot_dot">
    <div class="li_title">
        <span class="tit_left">
            <a>
                <span class="tit_1 underline">张三</span><span  class="tit_2 underline">（370124198803086511）的常住人口信息</span></a>
        </span>
        <span class="tit_right">
            <a><span class="underline">查看人员档案</span></a>
        </span>
    </div>
    <div class="li_body">
        <div class="li_img"><img src="<%=request.getContextPath()%>/images/result/touxiang.jpg"></div>
        <div class="li_detail">
            <span class="li_detail_item">姓名：张三</span>
            <span class="li_detail_item">曾用名：-</span>
            <span class="li_detail_item">性别：男</span>
            <span class="li_detail_item">身份证号：370124198803086511</span>
            <span class="li_detail_item">民族：汉</span>
            <span class="li_detail_item">职业：学生</span>
            <span class="li_detail_item">户籍地址：桑园路60号</span>
            <span class="li_detail_item">服务处所：山东省工会干部管理学院</span>
            <span class="li_detail_item">人员状态：迁出</span>
            <span class="li_detail_item green_color1">所属派出所：山东省济南市公安局历城区分局全福派出所</span>
            <span class="li_detail_item green_color1">所属辖区：桑园路警务区</span>
        </div>
    </div>
</div>
<div class="result_list_li border_bot_dot">
    <div class="li_title">
        <span class="tit_left">
            <a>
                <span class="tit_1 underline">张三</span><span  class="tit_2 underline">（370124198803086511）的常住人口信息</span></a>
        </span>
        <span class="tit_right">
            <a><span class="underline">查看人员档案</span></a>
        </span>
    </div>
    <div class="li_body">
        <div class="li_img"><img src="<%=request.getContextPath()%>/images/result/touxiang.jpg"></div>
        <div class="li_detail">
            <span class="li_detail_item">姓名：张三</span>
            <span class="li_detail_item">曾用名：-</span>
            <span class="li_detail_item">性别：男</span>
            <span class="li_detail_item">身份证号：370124198803086511</span>
            <span class="li_detail_item">民族：汉</span>
            <span class="li_detail_item">职业：学生</span>
            <span class="li_detail_item">户籍地址：桑园路60号</span>
            <span class="li_detail_item">服务处所：山东省工会干部管理学院</span>
            <span class="li_detail_item">人员状态：迁出</span>
            <span class="li_detail_item green_color1">所属派出所：山东省济南市公安局历城区分局全福派出所</span>
            <span class="li_detail_item green_color1">所属辖区：桑园路警务区</span>
        </div>
    </div>
</div>
<div class="result_list_li border_bot_dot">
    <div class="li_title">
        <span class="tit_left">
            <a>
                <span class="tit_1 underline">张三</span><span  class="tit_2 underline">（370124198803086511）的常住人口信息</span></a>
        </span>
        <span class="tit_right">
            <a><span class="underline">查看人员档案</span></a>
        </span>
    </div>
    <div class="li_body">
        <div class="li_img"><img src="<%=request.getContextPath()%>/images/result/touxiang.jpg"></div>
        <div class="li_detail">
            <span class="li_detail_item">姓名：张三</span>
            <span class="li_detail_item">曾用名：-</span>
            <span class="li_detail_item">性别：男</span>
            <span class="li_detail_item">身份证号：370124198803086511</span>
            <span class="li_detail_item">民族：汉</span>
            <span class="li_detail_item">职业：学生</span>
            <span class="li_detail_item">户籍地址：桑园路60号</span>
            <span class="li_detail_item">服务处所：山东省工会干部管理学院</span>
            <span class="li_detail_item">人员状态：迁出</span>
            <span class="li_detail_item green_color1">所属派出所：山东省济南市公安局历城区分局全福派出所</span>
            <span class="li_detail_item green_color1">所属辖区：桑园路警务区</span>
        </div>
    </div>
</div>
<div class="result_list_li border_bot_dot">
    <div class="li_title">
        <span class="tit_left">
            <a>
                <span class="tit_1 underline">张三</span><span  class="tit_2 underline">（370124198803086511）的常住人口信息</span></a>
        </span>
        <span class="tit_right">
            <a><span class="underline">查看人员档案</span></a>
        </span>
    </div>
    <div class="li_body">
        <div class="li_img"><img src="<%=request.getContextPath()%>/images/result/touxiang.jpg"></div>
        <div class="li_detail">
            <span class="li_detail_item">姓名：张三</span>
            <span class="li_detail_item">曾用名：-</span>
            <span class="li_detail_item">性别：男</span>
            <span class="li_detail_item">身份证号：370124198803086511</span>
            <span class="li_detail_item">民族：汉</span>
            <span class="li_detail_item">职业：学生</span>
            <span class="li_detail_item">户籍地址：桑园路60号</span>
            <span class="li_detail_item">服务处所：山东省工会干部管理学院</span>
            <span class="li_detail_item">人员状态：迁出</span>
            <span class="li_detail_item green_color1">所属派出所：山东省济南市公安局历城区分局全福派出所</span>
            <span class="li_detail_item green_color1">所属辖区：桑园路警务区</span>
        </div>
    </div>
</div>
<div class="result_list_li border_bot_dot">
    <div class="li_title">
        <span class="tit_left">
            <a>
                <span class="tit_1 underline">张三</span><span  class="tit_2 underline">（370124198803086511）的常住人口信息</span></a>
        </span>
        <span class="tit_right">
            <a><span class="underline">查看人员档案</span></a>
        </span>
    </div>
    <div class="li_body">
        <div class="li_img"><img src="<%=request.getContextPath()%>/images/result/touxiang.jpg"></div>
        <div class="li_detail">
            <span class="li_detail_item">姓名：张三</span>
            <span class="li_detail_item">曾用名：-</span>
            <span class="li_detail_item">性别：男</span>
            <span class="li_detail_item">身份证号：370124198803086511</span>
            <span class="li_detail_item">民族：汉</span>
            <span class="li_detail_item">职业：学生</span>
            <span class="li_detail_item">户籍地址：桑园路60号</span>
            <span class="li_detail_item">服务处所：山东省工会干部管理学院</span>
            <span class="li_detail_item">人员状态：迁出</span>
            <span class="li_detail_item green_color1">所属派出所：山东省济南市公安局历城区分局全福派出所</span>
            <span class="li_detail_item green_color1">所属辖区：桑园路警务区</span>
        </div>
    </div>
</div>
<div class="result_list_li border_bot_dot">
    <div class="li_title">
        <span class="tit_left">
            <a>
                <span class="tit_1 underline">张三</span><span  class="tit_2 underline">（370124198803086511）的常住人口信息</span></a>
        </span>
        <span class="tit_right">
            <a><span class="underline">查看人员档案</span></a>
        </span>
    </div>
    <div class="li_body">
        <div class="li_img"><img src="<%=request.getContextPath()%>/images/result/touxiang.jpg"></div>
        <div class="li_detail">
            <span class="li_detail_item">姓名：张三</span>
            <span class="li_detail_item">曾用名：-</span>
            <span class="li_detail_item">性别：男</span>
            <span class="li_detail_item">身份证号：370124198803086511</span>
            <span class="li_detail_item">民族：汉</span>
            <span class="li_detail_item">职业：学生</span>
            <span class="li_detail_item">户籍地址：桑园路60号</span>
            <span class="li_detail_item">服务处所：山东省工会干部管理学院</span>
            <span class="li_detail_item">人员状态：迁出</span>
            <span class="li_detail_item green_color1">所属派出所：山东省济南市公安局历城区分局全福派出所</span>
            <span class="li_detail_item green_color1">所属辖区：桑园路警务区</span>
        </div>
    </div>
</div>
<div class="result_list_li border_bot_dot">
    <div class="li_title">
        <span class="tit_left">
            <a>
                <span class="tit_1 underline">张三</span><span  class="tit_2 underline">（370124198803086511）的常住人口信息</span></a>
        </span>
        <span class="tit_right">
            <a><span class="underline">查看人员档案</span></a>
        </span>
    </div>
    <div class="li_body">
        <div class="li_img"><img src="<%=request.getContextPath()%>/images/result/touxiang.jpg"></div>
        <div class="li_detail">
            <span class="li_detail_item">姓名：张三</span>
            <span class="li_detail_item">曾用名：-</span>
            <span class="li_detail_item">性别：男</span>
            <span class="li_detail_item">身份证号：370124198803086511</span>
            <span class="li_detail_item">民族：汉</span>
            <span class="li_detail_item">职业：学生</span>
            <span class="li_detail_item">户籍地址：桑园路60号</span>
            <span class="li_detail_item">服务处所：山东省工会干部管理学院</span>
            <span class="li_detail_item">人员状态：迁出</span>
            <span class="li_detail_item green_color1">所属派出所：山东省济南市公安局历城区分局全福派出所</span>
            <span class="li_detail_item green_color1">所属辖区：桑园路警务区</span>
        </div>
    </div>
</div>
<div class="result_list_li border_bot_dot">
    <div class="li_title">
        <span class="tit_left">
            <a>
                <span class="tit_1 underline">张三</span><span  class="tit_2 underline">（370124198803086511）的常住人口信息</span></a>
        </span>
        <span class="tit_right">
            <a><span class="underline">查看人员档案</span></a>
        </span>
    </div>
    <div class="li_body">
        <div class="li_img"><img src="<%=request.getContextPath()%>/images/result/touxiang.jpg"></div>
        <div class="li_detail">
            <span class="li_detail_item">姓名：张三</span>
            <span class="li_detail_item">曾用名：-</span>
            <span class="li_detail_item">性别：男</span>
            <span class="li_detail_item">身份证号：370124198803086511</span>
            <span class="li_detail_item">民族：汉</span>
            <span class="li_detail_item">职业：学生</span>
            <span class="li_detail_item">户籍地址：桑园路60号</span>
            <span class="li_detail_item">服务处所：山东省工会干部管理学院</span>
            <span class="li_detail_item">人员状态：迁出</span>
            <span class="li_detail_item green_color1">所属派出所：山东省济南市公安局历城区分局全福派出所</span>
            <span class="li_detail_item green_color1">所属辖区：桑园路警务区</span>
        </div>
    </div>
</div>
<div class="result_list_li border_bot_dot">
    <div class="li_title">
        <span class="tit_left">
            <a>
                <span class="tit_1 underline">张三</span><span  class="tit_2 underline">（370124198803086511）的常住人口信息</span></a>
        </span>
        <span class="tit_right">
            <a><span class="underline">查看人员档案</span></a>
        </span>
    </div>
    <div class="li_body">
        <div class="li_img"><img src="<%=request.getContextPath()%>/images/result/touxiang.jpg"></div>
        <div class="li_detail">
            <span class="li_detail_item">姓名：张三</span>
            <span class="li_detail_item">曾用名：-</span>
            <span class="li_detail_item">性别：男</span>
            <span class="li_detail_item">身份证号：370124198803086511</span>
            <span class="li_detail_item">民族：汉</span>
            <span class="li_detail_item">职业：学生</span>
            <span class="li_detail_item">户籍地址：桑园路60号</span>
            <span class="li_detail_item">服务处所：山东省工会干部管理学院</span>
            <span class="li_detail_item">人员状态：迁出</span>
            <span class="li_detail_item green_color1">所属派出所：山东省济南市公安局历城区分局全福派出所</span>
            <span class="li_detail_item green_color1">所属辖区：桑园路警务区</span>
        </div>
    </div>
</div>
</div>
<div id="result_pagination">
    <div id="pagination_con">
        <a><div class="page_num border_grey current_page">1</div></a>
        <a><div class="page_num border_grey">2</div></a>
        <a><div class="page_num border_grey">3</div></a>
        <a><div class="page_num border_grey">4</div></a>
        <a><div class="page_num border_grey">5</div></a>
        <div class="page_num">...</div>
        <a><div class="page_num border_grey">35</div></a>
        <div class="page_next border_grey">下一页</div>
        <div class="page_sum">共35页</div>
        <div class="page_general">第</div>
        <div class="page_general"><input type="text" id="page_input" class="border_grey"/></div>
        <div class="page_general">页</div>
        <div class="page_general"><img src="<%=request.getContextPath()%>/images/result/tiaozhuan.gif"></div>
    </div>
</div>
</div>



</div>
</div>
</div>

</div>

</div>


<!--bottom-->
<div id="wrapper_bot_result">
    <p id="bot_p_list">
        <a href="#" class="blue_link">使用说明</a>|<a href="#" class="blue_link">警综平台</a>|<a href="#" class="blue_link">市局首页</a>
    </p>
    <p id="copyright">
        @2013 济南市公安局科技信息通信处技术支持 电话：80858，83349
    </p>
</div>
</div>
<script type="text/javascript">
var ctx = '<%=request.getContextPath()%>'+'/';
</script>
<script src="<%=request.getContextPath()%>/jsp/js/jquery-1.4.2.min.js"></script>
<script src="<%=request.getContextPath()%>/jsp/js/result.js"></script>
</body>
</html>