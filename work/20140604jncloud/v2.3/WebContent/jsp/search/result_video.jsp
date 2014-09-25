<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>济南警务云搜索</title>
    <link href="css/result.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
    <script type='text/javascript' src='js/tool.js'></script>
    <script type="text/javascript" src="js/image.js"></script>
    <script type="text/javascript" src="js/result_video.js"></script>
</head>
<body>

<div class="wrapper">
<form name="doSearch" method="get" action="http://ssyq.zx.ga/doSearch.trs" id="searchForm">
<!--head-->
<div id="wrapper_head">
    <p>
        山东省济南市公安局科技信息通讯处有线通讯科 &nbsp;&nbsp;周建平 &nbsp;&nbsp;<a id="adv_user">高级用户</a>
    </p>
</div>
<!--middle-->
<div id="wrapper_mid_video">
    <div id="search_bar" class="grey_color1">
        <div class="g_bd1 f-cb">
            <div class="g_sd1">
                <div class="g_sd1c">
                    <a href="search.html" target="_blank">
                        <img src="img/result/list_logo.gif">
                    </a>
                </div>
            </div>
            <div class="g_mn1">
                <div class="g_mn1c">
                    <div id="search_right">
                        <div id="tria">
                            <ul>
                                <li id="tria1" class="grey_color2">
                                    <a href="#" class="grey_txt_color2">图像信息</a>
                                    <span class="info_icon_down"></span>
                                </li>
                                <li id="tria2" class="grey_color2">
                                    <a href="#" class="grey_txt_color2">视频信息</a>
                                </li>
                            </ul>
                        </div>
                        <label for="input_box">
                            <input id="input_box" value="" name="filter_keyWord" type="text" class="con_btn" onkeypress="javascript:document.doSearch.pageroffset.value='0';return submitViaEnter(event)"/>
                        </label>
                        <div class="bd_box">
                            <a href="#"><img id="slash" src="img/search2.gif"/></a>
                        </div>
                        <p id="adv_search"><a href="#" class="blue_link">高级搜索</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>




    <div id="imageContainer">
    <!--修改点击标签关键词不能回带回去 需要修改高级检索	-->

    <!-- 相关搜索词开始 -->

    <!-- 相关搜索词结束 -->
    <!-- 筛选条件 -->

    <div id="result_doc_con">
        <div class="border_grey grey_color2 condition_tab_doc">

            <div id="display_mode2" class="grey_txt_color2">
                <p class="display_mode2_p">排序：</p>
                <p class="display_mode2_p" style="margin-right: 20px;color: #000000">
                    <a href="#" id="order_relate" onclick="return false;">
                        <img src="img/doc/xgd.gif" style="margin-top: 9px;">
                    </a>
                </p>
                <p class="display_mode2_p" style="margin-right: 20px;">
                    <a href="#" id="order_time" onclick="javascript:changeShowOrder('order',2);return false;">时间</a>
                </p>


                <div id="filter" class="filter">
                    <div class="subFilter" id="styleFilter">
                        <div class="filter-menu-item" id="gs">
                            发布时间
                        </div>
                        <span class="menu-con-arrow"></span>
                        <ul class="filter-item-con" id="gschild">
                            <li isd="" par="lm" data-text="全部" val="7" id="All"
                                class="list-first-item selected">
                                <span class="condition_select">全部</span></li>
                            <li isd="" par="lm" data-text="一天内" val="6" id="D">
                                <a href="javascript:docondition('','M');"><font
                                        class="condition_href">一天内</font></a>
                            </li>
                            <li isd="" par="lm" data-text="一周内" val="6" id="W">
                                <a href="javascript:docondition('','M');"><font
                                        class="condition_href">一周内</font></a>
                            </li>
                            <li isd="" par="lm" data-text="一月内" val="7" id="M">
                                <a href="javascript:docondition('','S');"><font
                                        class="condition_href">一月内</font></a>
                            </li>
                        </ul>
                    </div>

                    <!-- 颜色 -->
                    <div class="subFilter" id="sizeFilter">
                        <div class="filter-menu-item">
                            时长
                        </div>
                        <span class="menu-con-arrow"></span>
                        <ul class="filter-item-con" id="cc">
                            <li isd="" par="z" data-text="全部" val="1" id="allcc"
                                class="list-first-item selected">
                                <span class="condition_select"> 全部</span></li>

                            <li isd="" par="z" data-text="长" val="3" id="big">
                                <a href="javascript:docondition('big','');"><font
                                        class="condition_href">长（30分钟以上）</font></a>
                            </li>
                            <li isd="" par="z" data-text="中" val="2" id="middle">
                                <a href="javascript:docondition('middle','');"><font
                                        class="condition_href">中（10-30分钟）</font></a></li>
                            <li isd="" par="z" data-text="短" val="1" id="small">
                                <a href="javascript:docondition('small','');"><font
                                        class="condition_href">短（0-10分钟）</font></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="resultVideo">
        <div class="v_bg">
            <a href="#" target="_blank">
                <div class="v_s_pic">
                    <img src="img/video/video1.jpg">
                    <span class="mask"></span>
                    <span class="icon"></span>
                </div>
                <div class="v_describe">
                    <span class="blue_txt_color">
                        <span class="tit_1">济南</span>市<span class="tit_1">公安</span>局分局悬赏缉拿重案逃犯</span>
                </div>
                <div class="v_date">
                    <span class="grey_txt_color1">2014-7-12</span>
                </div>
            </a>
        </div>
        <div class="v_bg">
            <a href="#" target="_blank">
                <div class="v_s_pic">
                    <img src="img/video/video1.jpg">
                    <span class="mask"></span>
                    <span class="icon"></span>
                </div>
                <div class="v_describe">
                    <span class="blue_txt_color">
                        <span class="tit_1">济南</span>市<span class="tit_1">公安</span>局分局悬赏缉拿重案逃犯</span>
                </div>
                <div class="v_date">
                    <span class="grey_txt_color1">2014-7-12</span>
                </div>
            </a>
        </div>
        <div class="v_bg">
            <a href="#" target="_blank">
                <div class="v_s_pic">
                    <img src="img/video/video1.jpg">
                    <span class="mask"></span>
                    <span class="icon"></span>
                </div>
                <div class="v_describe">
                    <span class="blue_txt_color">
                        <span class="tit_1">济南</span>市<span class="tit_1">公安</span>局分局悬赏缉拿重案逃犯</span>
                </div>
                <div class="v_date">
                    <span class="grey_txt_color1">2014-7-12</span>
                </div>
            </a>
        </div>
        <div class="v_bg">
            <a href="#" target="_blank">
                <div class="v_s_pic">
                    <img src="img/video/video1.jpg">
                    <span class="mask"></span>
                    <span class="icon"></span>
                </div>
                <div class="v_describe">
                    <span class="blue_txt_color">
                        <span class="tit_1">济南</span>市<span class="tit_1">公安</span>局分局悬赏缉拿重案逃犯</span>
                </div>
                <div class="v_date">
                    <span class="grey_txt_color1">2014-7-12</span>
                </div>
            </a>
        </div>
        <div class="v_bg">
            <a href="#" target="_blank">
                <div class="v_s_pic">
                    <img src="img/video/video1.jpg">
                    <span class="mask"></span>
                    <span class="icon"></span>
                </div>
                <div class="v_describe">
                    <span class="blue_txt_color">
                        <span class="tit_1">济南</span>市<span class="tit_1">公安</span>局分局悬赏缉拿重案逃犯</span>
                </div>
                <div class="v_date">
                    <span class="grey_txt_color1">2014-7-12</span>
                </div>
            </a>
        </div>

        <div class="v_bg">
            <a href="#" target="_blank">
                <div class="v_s_pic">
                    <img src="img/video/video1.jpg">
                    <span class="mask"></span>
                    <span class="icon"></span>
                </div>
                <div class="v_describe">
                    <span class="blue_txt_color">
                        <span class="tit_1">济南</span>市<span class="tit_1">公安</span>局分局悬赏缉拿重案逃犯</span>
                </div>
                <div class="v_date">
                    <span class="grey_txt_color1">2014-7-12</span>
                </div>
            </a>
        </div>
        <div class="v_bg">
            <a href="#" target="_blank">
                <div class="v_s_pic">
                    <img src="img/video/video1.jpg">
                    <span class="mask"></span>
                    <span class="icon"></span>
                </div>
                <div class="v_describe">
                    <span class="blue_txt_color">
                        <span class="tit_1">济南</span>市<span class="tit_1">公安</span>局分局悬赏缉拿重案逃犯</span>
                </div>
                <div class="v_date">
                    <span class="grey_txt_color1">2014-7-12</span>
                </div>
            </a>
        </div>
        <div class="v_bg">
            <a href="#" target="_blank">
                <div class="v_s_pic">
                    <img src="img/video/video1.jpg">
                    <span class="mask"></span>
                    <span class="icon"></span>
                </div>
                <div class="v_describe">
                    <span class="blue_txt_color">
                        <span class="tit_1">济南</span>市<span class="tit_1">公安</span>局分局悬赏缉拿重案逃犯</span>
                </div>
                <div class="v_date">
                    <span class="grey_txt_color1">2014-7-12</span>
                </div>
            </a>
        </div>
        <div class="v_bg">
            <a href="#" target="_blank">
                <div class="v_s_pic">
                    <img src="img/video/video1.jpg">
                    <span class="mask"></span>
                    <span class="icon"></span>
                </div>
                <div class="v_describe">
                    <span class="blue_txt_color">
                        <span class="tit_1">济南</span>市<span class="tit_1">公安</span>局分局悬赏缉拿重案逃犯</span>
                </div>
                <div class="v_date">
                    <span class="grey_txt_color1">2014-7-12</span>
                </div>
            </a>
        </div>
        <div class="v_bg">
            <a href="#" target="_blank">
                <div class="v_s_pic">
                    <img src="img/video/video1.jpg">
                    <span class="mask"></span>
                    <span class="icon"></span>
                </div>
                <div class="v_describe">
                    <span class="blue_txt_color">
                        <span class="tit_1">济南</span>市<span class="tit_1">公安</span>局分局悬赏缉拿重案逃犯</span>
                </div>
                <div class="v_date">
                    <span class="grey_txt_color1">2014-7-12</span>
                </div>
            </a>
        </div>

        <div class="v_bg">
            <a href="#" target="_blank">
                <div class="v_s_pic">
                    <img src="img/video/video1.jpg">
                    <span class="mask"></span>
                    <span class="icon"></span>
                </div>
                <div class="v_describe">
                    <span class="blue_txt_color">
                        <span class="tit_1">济南</span>市<span class="tit_1">公安</span>局分局悬赏缉拿重案逃犯</span>
                </div>
                <div class="v_date">
                    <span class="grey_txt_color1">2014-7-12</span>
                </div>
            </a>
        </div>
        <div class="v_bg">
            <a href="#" target="_blank">
                <div class="v_s_pic">
                    <img src="img/video/video1.jpg">
                    <span class="mask"></span>
                    <span class="icon"></span>
                </div>
                <div class="v_describe">
                    <span class="blue_txt_color">
                        <span class="tit_1">济南</span>市<span class="tit_1">公安</span>局分局悬赏缉拿重案逃犯</span>
                </div>
                <div class="v_date">
                    <span class="grey_txt_color1">2014-7-12</span>
                </div>
            </a>
        </div>
        <div class="v_bg">
            <a href="#" target="_blank">
                <div class="v_s_pic">
                    <img src="img/video/video1.jpg">
                    <span class="mask"></span>
                    <span class="icon"></span>
                </div>
                <div class="v_describe">
                    <span class="blue_txt_color">
                        <span class="tit_1">济南</span>市<span class="tit_1">公安</span>局分局悬赏缉拿重案逃犯</span>
                </div>
                <div class="v_date">
                    <span class="grey_txt_color1">2014-7-12</span>
                </div>
            </a>
        </div>
        <div class="v_bg">
            <a href="#" target="_blank">
                <div class="v_s_pic">
                    <img src="img/video/video1.jpg">
                    <span class="mask"></span>
                    <span class="icon"></span>
                </div>
                <div class="v_describe">
                    <span class="blue_txt_color">
                        <span class="tit_1">济南</span>市<span class="tit_1">公安</span>局分局悬赏缉拿重案逃犯</span>
                </div>
                <div class="v_date">
                    <span class="grey_txt_color1">2014-7-12</span>
                </div>
            </a>
        </div>
        <div class="v_bg">
            <a href="#" target="_blank">
                <div class="v_s_pic">
                    <img src="img/video/video1.jpg">
                    <span class="mask"></span>
                    <span class="icon"></span>
                </div>
                <div class="v_describe">
                    <span class="blue_txt_color">
                        <span class="tit_1">济南</span>市<span class="tit_1">公安</span>局分局悬赏缉拿重案逃犯</span>
                </div>
                <div class="v_date">
                    <span class="grey_txt_color1">2014-7-12</span>
                </div>
            </a>
        </div>

        <div class="v_bg">
            <a href="#" target="_blank">
                <div class="v_s_pic">
                    <img src="img/video/video1.jpg">
                    <span class="mask"></span>
                    <span class="icon"></span>
                </div>
                <div class="v_describe">
                    <span class="blue_txt_color">
                        <span class="tit_1">济南</span>市<span class="tit_1">公安</span>局分局悬赏缉拿重案逃犯</span>
                </div>
                <div class="v_date">
                    <span class="grey_txt_color1">2014-7-12</span>
                </div>
            </a>
        </div>
        <div class="v_bg">
            <a href="#" target="_blank">
                <div class="v_s_pic">
                    <img src="img/video/video1.jpg">
                    <span class="mask"></span>
                    <span class="icon"></span>
                </div>
                <div class="v_describe">
                    <span class="blue_txt_color">
                        <span class="tit_1">济南</span>市<span class="tit_1">公安</span>局分局悬赏缉拿重案逃犯</span>
                </div>
                <div class="v_date">
                    <span class="grey_txt_color1">2014-7-12</span>
                </div>
            </a>
        </div>
        <div class="v_bg">
            <a href="#" target="_blank">
                <div class="v_s_pic">
                    <img src="img/video/video1.jpg">
                    <span class="mask"></span>
                    <span class="icon"></span>
                </div>
                <div class="v_describe">
                    <span class="blue_txt_color">
                        <span class="tit_1">济南</span>市<span class="tit_1">公安</span>局分局悬赏缉拿重案逃犯</span>
                </div>
                <div class="v_date">
                    <span class="grey_txt_color1">2014-7-12</span>
                </div>
            </a>
        </div>
        <div class="v_bg">
            <a href="#" target="_blank">
                <div class="v_s_pic">
                    <img src="img/video/video1.jpg">
                    <span class="mask"></span>
                    <span class="icon"></span>
                </div>
                <div class="v_describe">
                    <span class="blue_txt_color">
                        <span class="tit_1">济南</span>市<span class="tit_1">公安</span>局分局悬赏缉拿重案逃犯</span>
                </div>
                <div class="v_date">
                    <span class="grey_txt_color1">2014-7-12</span>
                </div>
            </a>
        </div>
        <div class="v_bg">
            <a href="#" target="_blank">
                <div class="v_s_pic">
                    <img src="img/video/video1.jpg">
                    <span class="mask"></span>
                    <span class="icon"></span>
                </div>
                <div class="v_describe">
                    <span class="blue_txt_color">
                        <span class="tit_1">济南</span>市<span class="tit_1">公安</span>局分局悬赏缉拿重案逃犯</span>
                </div>
                <div class="v_date">
                    <span class="grey_txt_color1">2014-7-12</span>
                </div>
            </a>
        </div>

        <div class="v_bg">
            <a href="#" target="_blank">
                <div class="v_s_pic">
                    <img src="img/video/video1.jpg">
                    <span class="mask"></span>
                    <span class="icon"></span>
                </div>
                <div class="v_describe">
                    <span class="blue_txt_color">
                        <span class="tit_1">济南</span>市<span class="tit_1">公安</span>局分局悬赏缉拿重案逃犯</span>
                </div>
                <div class="v_date">
                    <span class="grey_txt_color1">2014-7-12</span>
                </div>
            </a>
        </div>
        <div class="v_bg">
            <a href="#" target="_blank">
                <div class="v_s_pic">
                    <img src="img/video/video1.jpg">
                    <span class="mask"></span>
                    <span class="icon"></span>
                </div>
                <div class="v_describe">
                    <span class="blue_txt_color">
                        <span class="tit_1">济南</span>市<span class="tit_1">公安</span>局分局悬赏缉拿重案逃犯</span>
                </div>
                <div class="v_date">
                    <span class="grey_txt_color1">2014-7-12</span>
                </div>
            </a>
        </div>
        <div class="v_bg">
            <a href="#" target="_blank">
                <div class="v_s_pic">
                    <img src="img/video/video1.jpg">
                    <span class="mask"></span>
                    <span class="icon"></span>
                </div>
                <div class="v_describe">
                    <span class="blue_txt_color">
                        <span class="tit_1">济南</span>市<span class="tit_1">公安</span>局分局悬赏缉拿重案逃犯</span>
                </div>
                <div class="v_date">
                    <span class="grey_txt_color1">2014-7-12</span>
                </div>
            </a>
        </div>
        <div class="v_bg">
            <a href="#" target="_blank">
                <div class="v_s_pic">
                    <img src="img/video/video1.jpg">
                    <span class="mask"></span>
                    <span class="icon"></span>
                </div>
                <div class="v_describe">
                    <span class="blue_txt_color">
                        <span class="tit_1">济南</span>市<span class="tit_1">公安</span>局分局悬赏缉拿重案逃犯</span>
                </div>
                <div class="v_date">
                    <span class="grey_txt_color1">2014-7-12</span>
                </div>
            </a>
        </div>
        <div class="v_bg">
            <a href="#" target="_blank">
                <div class="v_s_pic">
                    <img src="img/video/video1.jpg">
                    <span class="mask"></span>
                    <span class="icon"></span>
                </div>
                <div class="v_describe">
                    <span class="blue_txt_color">
                        <span class="tit_1">济南</span>市<span class="tit_1">公安</span>局分局悬赏缉拿重案逃犯</span>
                </div>
                <div class="v_date">
                    <span class="grey_txt_color1">2014-7-12</span>
                </div>
            </a>
        </div>

        <div class="v_bg">
            <a href="#" target="_blank">
                <div class="v_s_pic">
                    <img src="img/video/video1.jpg">
                    <span class="mask"></span>
                    <span class="icon"></span>
                </div>
                <div class="v_describe">
                    <span class="blue_txt_color">
                        <span class="tit_1">济南</span>市<span class="tit_1">公安</span>局分局悬赏缉拿重案逃犯</span>
                </div>
                <div class="v_date">
                    <span class="grey_txt_color1">2014-7-12</span>
                </div>
            </a>
        </div>
        <div class="v_bg">
            <a href="#" target="_blank">
                <div class="v_s_pic">
                    <img src="img/video/video1.jpg">
                    <span class="mask"></span>
                    <span class="icon"></span>
                </div>
                <div class="v_describe">
                    <span class="blue_txt_color">
                        <span class="tit_1">济南</span>市<span class="tit_1">公安</span>局分局悬赏缉拿重案逃犯</span>
                </div>
                <div class="v_date">
                    <span class="grey_txt_color1">2014-7-12</span>
                </div>
            </a>
        </div>
        <div class="v_bg">
            <a href="#" target="_blank">
                <div class="v_s_pic">
                    <img src="img/video/video1.jpg">
                    <span class="mask"></span>
                    <span class="icon"></span>
                </div>
                <div class="v_describe">
                    <span class="blue_txt_color">
                        <span class="tit_1">济南</span>市<span class="tit_1">公安</span>局分局悬赏缉拿重案逃犯</span>
                </div>
                <div class="v_date">
                    <span class="grey_txt_color1">2014-7-12</span>
                </div>
            </a>
        </div>
        <div class="v_bg">
            <a href="#" target="_blank">
                <div class="v_s_pic">
                    <img src="img/video/video1.jpg">
                    <span class="mask"></span>
                    <span class="icon"></span>
                </div>
                <div class="v_describe">
                    <span class="blue_txt_color">
                        <span class="tit_1">济南</span>市<span class="tit_1">公安</span>局分局悬赏缉拿重案逃犯</span>
                </div>
                <div class="v_date">
                    <span class="grey_txt_color1">2014-7-12</span>
                </div>
            </a>
        </div>
        <div class="v_bg">
            <a href="#" target="_blank">
                <div class="v_s_pic">
                    <img src="img/video/video1.jpg">
                    <span class="mask"></span>
                    <span class="icon"></span>
                </div>
                <div class="v_describe">
                    <span class="blue_txt_color">
                        <span class="tit_1">济南</span>市<span class="tit_1">公安</span>局分局悬赏缉拿重案逃犯</span>
                </div>
                <div class="v_date">
                    <span class="grey_txt_color1">2014-7-12</span>
                </div>
            </a>
        </div>


    </div>
    <div id="result_web_pagination">
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
            <div class="page_general"><input id="page_input" class="border_grey" type="text"></div>
            <div class="page_general">页</div>
            <div class="page_general"><img src="img/result/tiaozhuan.gif"></div>
        </div>
    </div>
    <div class="border_grey grey_color2 relate_result_video">
        <div class="g-bd6 f-cb">
            <div class="g-sd61">
                <p id="relate_result_l" class="ft14">相关搜索</p>
            </div>
            <div style="height: auto; overflow: auto;" class="g-mn6">
                <div class="g-mn6c">
                    <p>
                        <span><a href="#">心理测试</a></span>
                        <span><a href="#">网速测试</a></span>
                        <span><a href="#">行政能力测试</a></span>
                        <span><a href="#">体能测试</a></span>
                        <span><a href="#">心理测试</a></span>
                        <span><a href="#">网速测试</a></span>
                        <span><a href="#">行政能力测试</a></span>
                        <span><a href="#">体能测试</a></span>
                        <span><a href="#">心理测试</a></span>
                        <span><a href="#">网速测试</a></span>
                        <span><a href="#">行政能力测试</a></span>
                        <span><a href="#">体能测试</a></span>
                        <span><a href="#">心理测试</a></span>
                        <span><a href="#">网速测试</a></span>
                        <span><a href="#">行政能力测试</a></span>
                        <span><a href="#">体能测试</a></span>
                        <span><a href="#">心理测试</a></span>
                        <span><a href="#">网速测试</a></span>
                        <span><a href="#">行政能力测试</a></span>
                        <span><a href="#">体能测试</a></span>
                    </p>
                </div>
            </div>
        </div>
    </div>

    </div>




</div>

</form>


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
</body>
</html>