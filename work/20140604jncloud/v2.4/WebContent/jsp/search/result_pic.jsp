<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>济南警务云搜索</title>
    <link href="<%=request.getContextPath()%>/css/result.css" rel="stylesheet" type="text/css"/>
    <link href="<%=request.getContextPath()%>/css/result_pic.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="<%=request.getContextPath()%>/jsp/js/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/jsp/js/common.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/jsp/js/imgShow.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/jsp/js/wresize.js"></script>
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
                                    <a href="#" class="grey_txt_color2">图像信息</a>
                                    <span class="info_icon_down"></span>
                                </li>
                                <li id="tria2" class="grey_color2">
                                    <a href="#" class="grey_txt_color2">视频信息</a>
                                </li>
                            </ul>
                        </div>
                        <label for="input_box">
                            <input id="input_box" value="郭声琨" name="filter_keyWord" type="text" class="con_btn" onkeypress="javascript:document.doSearch.pageroffset.value='0';return submitViaEnter(event)"/>
                            <input type="hidden" name="searchWord" value="default=include(郭声琨,5:80:100)" id="searchWord">
                            <input type="hidden" name="trs_dispatch" value="9">
                            <input type="hidden" name="model" value="imageSearch">
                            <input type="hidden" name="model_desc" value="图片检索">
                            <input type="hidden" name="sort" value="">
                            <input type="hidden" name="pageroffset" value="0" id="pageroffset">
                            <input type="hidden" name="trslc" value="2164262986.A79C0730@C.1" disabled="disabled">
                            <input type="hidden" name="lastq" value="郭声琨" id="lastq">
                            <input type="hidden" name="db" value="image" id="db">
                            <input type="hidden" name="queryFrom" value="searchForm" id="queryFrom">
                            <input type="hidden" name="second" value="false">
                            <input type="hidden" name="keepBox" value="false">
                            <input type="hidden" name="category" value="">
                            <input type="hidden" name="sorttype" value="RELEVANCE;*RANK" id="sorttype">
                            <input type="hidden" name="table" value="" id="table">
                            <input type="hidden" name="keyword_Pos" value="" id="keyword_Pos"/>
                            <input type="hidden" name="channel" id="channel" value=""/>
                            <input type="hidden" name="imgSizeType" id="imgSizeType" value=""/>
                            <input type="hidden" name="imgType" id="imgType" value=""/>
                        </label>
                        <div class="bd_box">
                            <a href="#"><img id="slash" src="<%=request.getContextPath()%>/images/search2.gif"/></a>
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
    <script type="text/javascript" src="js/image.js"></script>
    <div id="result_doc_con">
        <div class="border_grey grey_color2 condition_tab_doc">

            <div id="display_mode2" class="grey_txt_color2">
                <p class="display_mode2_p">排序：</p>
                <p class="display_mode2_p" style="margin-right: 20px;color: #000000">
                    <a href="#" id="order_relate" onclick="return false;">
                        <img src="<%=request.getContextPath()%>/images/doc/xgd.gif" style="margin-top: 9px;">
                    </a>
                </p>
                <p class="display_mode2_p" style="margin-right: 20px;">
                    <a href="#" id="order_time" onclick="javascript:changeShowOrder('order',2);return false;">时间</a>
                </p>


                <div id="filter" class="filter">
                    <div class="subFilter" id="styleFilter">
                        <div class="filter-menu-item" id="gs">
                            全部格式
                        </div>
                        <span class="menu-con-arrow"></span>
                        <ul class="filter-item-con" id="gschild">
                            <li isd="" par="lm" data-text="全部格式" val="7" id="All"
                                class="list-first-item selected">
                                <span class="condition_select">全部格式</span></li>
                            <li isd="" par="lm" data-text="动态图片" val="6" id="M">
                                <a href="javascript:docondition('','M');"><font
                                        class="condition_href">动态图片</font></a>
                            </li>
                            <li isd="" par="lm" data-text="静态图片" val="7" id="S">
                                <a href="javascript:docondition('','S');"><font
                                        class="condition_href">静态图片</font></a>
                            </li>
                        </ul>
                    </div>

                    <!-- 颜色 -->
                    <div class="subFilter" id="sizeFilter">
                        <div class="filter-menu-item">
                            全部尺寸<!---->
                        </div>
                        <span class="menu-con-arrow"></span>
                        <ul class="filter-item-con" id="cc">
                            <li isd="" par="z" data-text="全部尺寸" val="1" id="allcc"
                                class="list-first-item selected">
                                <span class="condition_select"> 全部尺寸</span></li>

                            <li isd="" par="z" data-text="大尺寸" val="3" id="big">
                                <a href="javascript:docondition('big','');"><font
                                        class="condition_href">大尺寸</font></a>
                            </li>
                            <li isd="" par="z" data-text="中尺寸" val="2" id="middle">
                                <a href="javascript:docondition('middle','');"><font
                                        class="condition_href">中尺寸</font></a></li>
                            <li isd="" par="z" data-text="小尺寸" val="1" id="small">
                                <a href="javascript:docondition('small','');"><font
                                        class="condition_href">小尺寸</font></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="resultImg"></div>
    <div class="dt">
        <div id="showbigdiv" style="display: none;">
            <div id="bigimgdiv">
                <div>
                    <a href="" target="_blank" class="pic-wrap"><img id="showbigimg"/></a>
                </div>
            </div>
            <div class="a" id="urltitle"></div>
            <div class="b" id="urltime"></div>
            <div class="b">
                <span id="imgsize"></span>
                <span id="urlsize"></span>
                <span id="suffixname"></span>
            </div>
            <div class="c" id="purlname"></div>
            <div style="clear: both;"></div>
        </div>
    </div>
    <div class="imgloadingdiv" align="middle" style="display: none;">
        <img src='<%=request.getContextPath()%>/images/pic/loading-big.gif' border='0' alt='' title='' align='middle'/>正在加载图片。。。
    </div>
    <div id="pageMoreWrap"></div>
    <div id="totop" class="totop">
        <a href="#" title="回到顶部">
            <img src="<%=request.getContextPath()%>/images/pic/go_top.gif" alt="返回顶部"/>
        </a>
    </div>
    <div>
        <script type="text/javascript">
            showImg('[{"CONTENT":"","DB":"","PINYIN":"","PUrlName":"10.88.16.6/news.jsp?varNewsId=207011","SID":"","SOURCE":"","XIANGJIE":"","appFlag":"","authors":"","catalog":"","channel":"","charSet":"","content":"","contentType":"","dbtype":0,"delFlag":"","extName":"","hitPoints":0,"imgFeature":"c8f0c0c4c08040c4","imgHeight":"406","imgName":"207011_1.jpg","imgSize":"560x406","imgWidth":"560","ipAddress":"","keywords":"","lastTime":"","name":"","pageLevel":"","pageRank":"","port":"","position":1,"purlId":"","rank":28,"relevance":0.5903662443161011,"score":0,"selectedBox":false,"showTitle":"","sid":"24193552","simFlag":"","simRank":"","siteName":"","smallImgFile":"http://image.ssyq.zx.ga/imagedata/smallimgfile/2014/02/08/343/633/2589517933605238573.jpg","srcName":"","startId":"","subUrlName":"http://10.88.16.6/uploadimages/207011_1.jpg","suffixName":"jpg","trsInterval":"","urlBody":"","urlDate":"","urlId":"","urlName":"http://10.88.16.6/uploadimages/207011_1.jpg","urlSize":"256327","urlTime":"2014.01.27 00:00:00","urlTitle":"郭声琨：公安机关要设身处地考虑广大旅客的感受","urlTopic":"","vabstract":""},{"CONTENT":"","DB":"","PINYIN":"","PUrlName":"10.173.73.9/show.aspx?id=57477","SID":"","SOURCE":"","XIANGJIE":"","appFlag":"","authors":"","catalog":"","channel":"","charSet":"","content":"","contentType":"","dbtype":0,"delFlag":"","extName":"","hitPoints":0,"imgFeature":"c0c4fcf0f888c3c3","imgHeight":"335","imgName":"gsk.jpg","imgSize":"550x335","imgWidth":"550","ipAddress":"","keywords":"","lastTime":"","name":"","pageLevel":"","pageRank":"","port":"","position":2,"purlId":"","rank":16,"relevance":1,"score":0,"selectedBox":false,"showTitle":"","sid":"3940707","simFlag":"","simRank":"","siteName":"","smallImgFile":"http://image.ssyq.zx.ga/imagedata/smallimgfile/2013/02/09/632/63/3580331227880734335.jpg","srcName":"","startId":"","subUrlName":"http://10.173.73.9/Upload/Images/gsk.jpg","suffixName":"jpg","trsInterval":"","urlBody":"","urlDate":"","urlId":"","urlName":"http://10.173.73.9/Upload/Images/gsk.jpg","urlSize":"37187","urlTime":"2012.12.26 00:00:00","urlTitle":"郭声琨任公安部党委书记","urlTopic":"","vabstract":""},{"CONTENT":"","DB":"","PINYIN":"","PUrlName":"www.an/main_new/info_detail.asp?info_id=82621","SID":"","SOURCE":"","XIANGJIE":"","appFlag":"","authors":"","catalog":"","channel":"","charSet":"","content":"","contentType":"","dbtype":0,"delFlag":"","extName":"","hitPoints":0,"imgFeature":"cfccc0b4f0c0f00f","imgHeight":"481","imgName":"201311262253442432.jpg","imgSize":"600x481","imgWidth":"600","ipAddress":"","keywords":"","lastTime":"","name":"","pageLevel":"","pageRank":"","port":"","position":3,"purlId":"","rank":23,"relevance":0.6606425046920776,"score":0,"selectedBox":false,"showTitle":"","sid":"22451392","simFlag":"","simRank":"","siteName":"","smallImgFile":"http://image.ssyq.zx.ga/imagedata/smallimgfile/2013/11/26/907/571/7998919409962975407.jpg","srcName":"","startId":"","subUrlName":"http://www.an/eWebEditor/chinauepic/info/201311262253442432.jpg","suffixName":"jpg","trsInterval":"","urlBody":"","urlDate":"","urlId":"","urlName":"http://www.an/eWebEditor/chinauepic/info/201311262253442432.jpg","urlSize":"312920","urlTime":"2013.11.26 00:00:00","urlTitle":"孟建柱、郭声琨会见吴春忠同志先进事迹...","urlTopic":"","vabstract":""},{"CONTENT":"","DB":"","PINYIN":"","PUrlName":"10.102.120.24/ReadNews.asp?NewsID=13504","SID":"","SOURCE":"","XIANGJIE":"","appFlag":"","authors":"","catalog":"","channel":"","charSet":"","content":"","contentType":"","dbtype":0,"delFlag":"","extName":"","hitPoints":0,"imgFeature":"880fc0b0f0003808","imgHeight":"371","imgName":"8761967310313967182.jpg","imgSize":"550x371","imgWidth":"550","ipAddress":"","keywords":"","lastTime":"","name":"","pageLevel":"","pageRank":"","port":"","position":4,"purlId":"","rank":21,"relevance":0.7155623435974121,"score":0,"selectedBox":false,"showTitle":"","sid":"17529164","simFlag":"","simRank":"","siteName":"","smallImgFile":"http://image.ssyq.zx.ga/imagedata/smallimgfile/2013/08/02/349/953/3333368097364375386.jpg","srcName":"","startId":"","subUrlName":"http://10.49.10.9/sysfiles/8761967310313967182.jpg","suffixName":"jpg","trsInterval":"","urlBody":"","urlDate":"","urlId":"","urlName":"http://10.49.10.9/sysfiles/8761967310313967182.jpg","urlSize":"50534","urlTime":"2013.07.30 00:00:00","urlTitle":"郭声琨：做好维护国家安全和社会稳定各项工作（图）(3月28日)浏览(12)","urlTopic":"","vabstract":""},{"CONTENT":"","DB":"","PINYIN":"","PUrlName":"www.ga/gayw_07/tpxw_07/201306/t20130616_563817.html","SID":"","SOURCE":"","XIANGJIE":"","appFlag":"","authors":"","catalog":"","channel":"","charSet":"","content":"","contentType":"","dbtype":0,"delFlag":"","extName":"","hitPoints":0,"imgFeature":"b8b888c048f0b87f","imgHeight":"352","imgName":"W020130616795826328049.jpg","imgSize":"560x352","imgWidth":"560","ipAddress":"","keywords":"","lastTime":"","name":"","pageLevel":"","pageRank":"","port":"","position":5,"purlId":"","rank":23,"relevance":0.6370982527732849,"score":0,"selectedBox":false,"showTitle":"","sid":"16828380","simFlag":"","simRank":"","siteName":"","smallImgFile":"http://image.ssyq.zx.ga/imagedata/smallimgfile/2013/07/31/137/338/7880236876978906400.jpg","srcName":"","startId":"","subUrlName":"http://www.ga/gayw_07/tpxw_07/201306/W020130616795826328049.jpg","suffixName":"jpg","trsInterval":"","urlBody":"","urlDate":"","urlId":"","urlName":"http://www.ga/gayw_07/tpxw_07/201306/W020130616795826328049.jpg","urlSize":"207965","urlTime":"2013.06.16 00:00:00","urlTitle":"郭声琨在安徽调研时强调","urlTopic":"","vabstract":""},{"CONTENT":"","DB":"","PINYIN":"","PUrlName":"www.xz/admin/news_view.jsp?subjectID=7&newsID=321717","SID":"","SOURCE":"","XIANGJIE":"","appFlag":"","authors":"","catalog":"","channel":"","charSet":"","content":"","contentType":"","dbtype":0,"delFlag":"","extName":"","hitPoints":0,"imgFeature":"8bcbc8b0f7cb8080","imgHeight":"3456","imgName":"00321717_img_4.jpg","imgSize":"5184x3456","imgWidth":"5184","ipAddress":"","keywords":"","lastTime":"","name":"","pageLevel":"","pageRank":"","port":"","position":6,"purlId":"","rank":21,"relevance":0.677817165851593,"score":0,"selectedBox":false,"showTitle":"","sid":"21372750","simFlag":"","simRank":"","siteName":"","smallImgFile":"http://image.ssyq.zx.ga/imagedata/smallimgfile/2013/10/16/478/280/2102737296035368703.jpg","srcName":"","startId":"","subUrlName":"http://www.xz/upload/00321717_img_4.jpg","suffixName":"jpg","trsInterval":"","urlBody":"","urlDate":"","urlId":"","urlName":"http://www.xz/upload/00321717_img_4.jpg","urlSize":"9510805","urlTime":"2013.10.16 00:00:00","urlTitle":"郭声琨同志赴西藏视察调研工作","urlTopic":"","vabstract":""},{"CONTENT":"","DB":"","PINYIN":"","PUrlName":"10.166.228.253/ReadNews.asp?NewsID=12169","SID":"","SOURCE":"","XIANGJIE":"","appFlag":"","authors":"","catalog":"","channel":"","charSet":"","content":"","contentType":"","dbtype":0,"delFlag":"","extName":"","hitPoints":0,"imgFeature":"7c48787c4f3c7878","imgHeight":"405","imgName":"20138298022127.jpg","imgSize":"300x405","imgWidth":"300","ipAddress":"","keywords":"","lastTime":"","name":"","pageLevel":"","pageRank":"","port":"","position":7,"purlId":"","rank":18,"relevance":0.7537805438041687,"score":0,"selectedBox":false,"showTitle":"","sid":"22384564","simFlag":"","simRank":"","siteName":"","smallImgFile":"http://image.ssyq.zx.ga/imagedata/smallimgfile/2013/11/22/618/522/4682528528538430217.jpg","srcName":"","startId":"","subUrlName":"http://10.166.228.253/uploadfile/jpg/2013-8/20138298022127.jpg","suffixName":"jpg","trsInterval":"","urlBody":"","urlDate":"","urlId":"","urlName":"http://10.166.228.253/uploadfile/jpg/2013-8/20138298022127.jpg","urlSize":"25281","urlTime":"2013.08.29 00:00:00","urlTitle":"郭声琨兼任国家反恐怖工作领导小组组长((图/简历)","urlTopic":"","vabstract":""},{"CONTENT":"","DB":"","PINYIN":"","PUrlName":"www.ln/75998243711877120/20130902/2375227.shtml","SID":"","SOURCE":"","XIANGJIE":"","appFlag":"","authors":"","catalog":"","channel":"","charSet":"","content":"","contentType":"","dbtype":0,"delFlag":"","extName":"","hitPoints":0,"imgFeature":"4470f0787cf07447","imgHeight":"426","imgName":"979065.jpg","imgSize":"640x426","imgWidth":"640","ipAddress":"","keywords":"","lastTime":"","name":"","pageLevel":"","pageRank":"","port":"","position":8,"purlId":"","rank":22,"relevance":0.5479345321655273,"score":0,"selectedBox":false,"showTitle":"","sid":"19747176","simFlag":"","simRank":"","siteName":"","smallImgFile":"http://image.ssyq.zx.ga/imagedata/smallimgfile/2013/09/02/64/154/5617586843507717502.jpg","srcName":"","startId":"","subUrlName":"http://www.ln/75998243711877120/20130902/979065.jpg","suffixName":"jpg","trsInterval":"","urlBody":"","urlDate":"","urlId":"","urlName":"http://www.ln/75998243711877120/20130902/979065.jpg","urlSize":"221367","urlTime":"2013.09.02 00:00:00","urlTitle":"国务委员、公安部部长郭声琨同志坐镇辽宁...","urlTopic":"","vabstract":""},{"CONTENT":"","DB":"","PINYIN":"","PUrlName":"10.103.160.9/html/201403/content_8601.htm","SID":"","SOURCE":"","XIANGJIE":"","appFlag":"","authors":"","catalog":"","channel":"","charSet":"","content":"","contentType":"","dbtype":0,"delFlag":"","extName":"","hitPoints":0,"imgFeature":"0407770033330400","imgHeight":"307","imgName":"138027266876006.jpg","imgSize":"560x307","imgWidth":"560","ipAddress":"","keywords":"","lastTime":"","name":"","pageLevel":"","pageRank":"","port":"","position":9,"purlId":"","rank":25,"relevance":0.4710731506347656,"score":0,"selectedBox":false,"showTitle":"","sid":"40529240","simFlag":"","simRank":"","siteName":"","smallImgFile":"http://image.ssyq.zx.ga/imagedata/smallimgfile/2014/03/14/637/37/8221939754903674520.jpg","srcName":"","startId":"","subUrlName":"http://10.103.160.9/upload/image/2013-09-27/138027266876006.jpg","suffixName":"jpg","trsInterval":"","urlBody":"","urlDate":"","urlId":"","urlName":"http://10.103.160.9/upload/image/2013-09-27/138027266876006.jpg","urlSize":"203497","urlTime":"2014.03.07 00:00:00","urlTitle":"宝音德力格尔副市长在全市道路","urlTopic":"","vabstract":""},{"CONTENT":"","DB":"","PINYIN":"","PUrlName":"www.yzh.js/view.asp?id=44654","SID":"","SOURCE":"","XIANGJIE":"","appFlag":"","authors":"","catalog":"","channel":"","charSet":"","content":"","contentType":"","dbtype":0,"delFlag":"","extName":"","hitPoints":0,"imgFeature":"b7f0c7c343000040","imgHeight":"330","imgName":"2013123095118458.jpg","imgSize":"529x330","imgWidth":"529","ipAddress":"","keywords":"","lastTime":"","name":"","pageLevel":"","pageRank":"","port":"","position":10,"purlId":"","rank":20,"relevance":0.5837740302085876,"score":0,"selectedBox":false,"showTitle":"","sid":"23202144","simFlag":"","simRank":"","siteName":"","smallImgFile":"http://image.ssyq.zx.ga/imagedata/smallimgfile/2013/12/30/509/637/9075516752074094696.jpg","srcName":"","startId":"","subUrlName":"http://www.yzh.js/WebFiles/2013123095118458.jpg","suffixName":"jpg","trsInterval":"","urlBody":"","urlDate":"","urlId":"","urlName":"http://www.yzh.js/WebFiles/2013123095118458.jpg","urlSize":"25886","urlTime":"2013.12.30 00:00:00","urlTitle":"郭声琨在河南调研时强调坚持问题导向 ...","urlTopic":"","vabstract":""},{"CONTENT":"","DB":"","PINYIN":"","PUrlName":"10.15.35.166/gayw/05/155271.shtml","SID":"","SOURCE":"","XIANGJIE":"","appFlag":"","authors":"","catalog":"","channel":"","charSet":"","content":"","contentType":"","dbtype":0,"delFlag":"","extName":"","hitPoints":0,"imgFeature":"0f87370787474707","imgHeight":"331","imgName":"F1AAD4DD769B944EBF133FAE00D9AD07.jpg","imgSize":"500x331","imgWidth":"500","ipAddress":"","keywords":"","lastTime":"","name":"","pageLevel":"","pageRank":"","port":"","position":11,"purlId":"","rank":21,"relevance":0.5430693626403809,"score":0,"selectedBox":false,"showTitle":"","sid":"42814944","simFlag":"","simRank":"","siteName":"","smallImgFile":"http://image.ssyq.zx.ga/imagedata/smallimgfile/2014/05/20/814/405/2978524577105160907.jpg","srcName":"","startId":"","subUrlName":"http://10.15.35.166/gayw/images/msczb/2014/05/20/F1AAD4DD769B944EBF133FAE00D9AD07.jpg","suffixName":"jpg","trsInterval":"","urlBody":"","urlDate":"","urlId":"","urlName":"http://10.15.35.166/gayw/images/msczb/2014/05/20/F1AAD4DD769B944EBF133FAE00D9AD07.jpg","urlSize":"62634","urlTime":"2014.05.20 00:00:00","urlTitle":"郭声琨同志坐镇亚信峰会安保指挥中心指挥峰会安保工作","urlTopic":"","vabstract":""},{"CONTENT":"","DB":"","PINYIN":"","PUrlName":"10.6.76.9/qzlx/Wygkcn_ReadNews.asp?NewsID=2935","SID":"","SOURCE":"","XIANGJIE":"","appFlag":"","authors":"","catalog":"","channel":"","charSet":"","content":"","contentType":"","dbtype":0,"delFlag":"","extName":"","hitPoints":0,"imgFeature":"f4fcf4bffff08484","imgHeight":"310","imgName":"2013719173813422.jpg","imgSize":"559x310","imgWidth":"559","ipAddress":"","keywords":"","lastTime":"","name":"","pageLevel":"","pageRank":"","port":"","position":12,"purlId":"","rank":19,"relevance":0.5925189852714539,"score":0,"selectedBox":false,"showTitle":"","sid":"17122642","simFlag":"","simRank":"","siteName":"","smallImgFile":"http://image.ssyq.zx.ga/imagedata/smallimgfile/2013/08/01/576/915/1634685977398387539.jpg","srcName":"","startId":"","subUrlName":"http://10.6.76.9/qzlx/uploadfile/jpg/2013-7/2013719173813422.jpg","suffixName":"jpg","trsInterval":"","urlBody":"","urlDate":"","urlId":"","urlName":"http://10.6.76.9/qzlx/uploadfile/jpg/2013-7/2013719173813422.jpg","urlSize":"29627","urlTime":"2013.07.22 00:00:00","urlTitle":"六局党委研究部署局机关和九边检总站..","urlTopic":"","vabstract":""},{"CONTENT":"","DB":"","PINYIN":"","PUrlName":"10.148.128.11:88/news/content.asp?id=36994","SID":"","SOURCE":"","XIANGJIE":"","appFlag":"","authors":"","catalog":"","channel":"","charSet":"","content":"","contentType":"","dbtype":0,"delFlag":"","extName":"","hitPoints":0,"imgFeature":"f0f0ccf0f0f8f8f8","imgHeight":"300","imgName":"2008325155828.bmp","imgSize":"400x300","imgWidth":"400","ipAddress":"","keywords":"","lastTime":"","name":"","pageLevel":"","pageRank":"","port":"","position":13,"purlId":"","rank":16,"relevance":0.6890954375267029,"score":0,"selectedBox":false,"showTitle":"","sid":"5025332","simFlag":"","simRank":"","siteName":"","smallImgFile":"http://image.ssyq.zx.ga/imagedata/smallimgfile/2013/02/11/726/235/7382431556523804328.bmp","srcName":"","startId":"","subUrlName":"http://10.148.128.11:88/news/20083/2008325155828.bmp","suffixName":"bmp","trsInterval":"","urlBody":"","urlDate":"","urlId":"","urlName":"http://10.148.128.11:88/news/20083/2008325155828.bmp","urlSize":"360054","urlTime":"2008.03.25 00:00:00","urlTitle":"自治区党委书记郭声琨深入三江融水调研民族村寨防火…","urlTopic":"","vabstract":""},{"CONTENT":"","DB":"","PINYIN":"","PUrlName":"10.74.215.10/News.asp?id=2012122844304","SID":"","SOURCE":"","XIANGJIE":"","appFlag":"","authors":"","catalog":"","channel":"","charSet":"","content":"","contentType":"","dbtype":0,"delFlag":"","extName":"","hitPoints":0,"imgFeature":"f8f0f0fcf8f38380","imgHeight":"386","imgName":"2012-12-26-9-6-17.jpg","imgSize":"400x386","imgWidth":"400","ipAddress":"","keywords":"","lastTime":"","name":"","pageLevel":"","pageRank":"","port":"","position":14,"purlId":"","rank":17,"relevance":0.6297515630722046,"score":0,"selectedBox":false,"showTitle":"","sid":"1604095","simFlag":"","simRank":"","siteName":"","smallImgFile":"http://image.ssyq.zx.ga/imagedata/smallimgfile/2013/02/06/125/329/8062398059076838402.jpg","srcName":"","startId":"","subUrlName":"http://10.74.215.10/edit/uploadfile/201212/2012-12-26-9-6-17.jpg","suffixName":"jpg","trsInterval":"","urlBody":"","urlDate":"","urlId":"","urlName":"http://10.74.215.10/edit/uploadfile/201212/2012-12-26-9-6-17.jpg","urlSize":"35577","urlTime":"2012.12.28 00:00:00","urlTitle":"郭声琨任公安部部长 孟建柱不再兼任…&#39;n","urlTopic":"","vabstract":""},{"CONTENT":"","DB":"","PINYIN":"","PUrlName":"www.xz/admin/news_view.jsp?subjectID=7&newsID=321717","SID":"","SOURCE":"","XIANGJIE":"","appFlag":"","authors":"","catalog":"","channel":"","charSet":"","content":"","contentType":"","dbtype":0,"delFlag":"","extName":"","hitPoints":0,"imgFeature":"b703c40303030703","imgHeight":"3456","imgName":"00321717_img_2.jpg","imgSize":"5184x3456","imgWidth":"5184","ipAddress":"","keywords":"","lastTime":"","name":"","pageLevel":"","pageRank":"","port":"","position":15,"purlId":"","rank":10,"relevance":0.3094814121723175,"score":0,"selectedBox":false,"showTitle":"","sid":"21372700","simFlag":"","simRank":"","siteName":"","smallImgFile":"http://image.ssyq.zx.ga/imagedata/smallimgfile/2013/10/16/515/937/5776178192398272199.jpg","srcName":"","startId":"","subUrlName":"http://www.xz/upload/00321717_img_2.jpg","suffixName":"jpg","trsInterval":"","urlBody":"","urlDate":"","urlId":"","urlName":"http://www.xz/upload/00321717_img_2.jpg","urlSize":"7828616","urlTime":"2013.10.16 00:00:00","urlTitle":"郭声琨同志赴西藏视察调研工作","urlTopic":"","vabstract":""},{"CONTENT":"","DB":"","PINYIN":"","PUrlName":"10.143.23.200/index.php?m=content&c=index&a=lists&catid=12/index.php?m=content&c=index&a=show&catid=12&id=8146","SID":"","SOURCE":"","XIANGJIE":"","appFlag":"","authors":"","catalog":"","channel":"","charSet":"","content":"","contentType":"","dbtype":0,"delFlag":"","extName":"","hitPoints":0,"imgFeature":"b8b888c048f0b87f","imgHeight":"352","imgName":"20130617051248100.jpg","imgSize":"560x352","imgWidth":"560","ipAddress":"","keywords":"","lastTime":"","name":"","pageLevel":"","pageRank":"","port":"","position":16,"purlId":"","rank":11,"relevance":0.2791045606136322,"score":0,"selectedBox":false,"showTitle":"","sid":"17635808","simFlag":"","simRank":"","siteName":"","smallImgFile":"http://image.ssyq.zx.ga/imagedata/smallimgfile/2013/08/03/94/979/7696022160534830223.jpg","srcName":"","startId":"","subUrlName":"http://10.143.23.200/uploadfile/2013/0617/20130617051248100.jpg","suffixName":"jpg","trsInterval":"","urlBody":"","urlDate":"","urlId":"","urlName":"http://10.143.23.200/uploadfile/2013/0617/20130617051248100.jpg","urlSize":"207965","urlTime":"2013.06.17 00:00:00","urlTitle":"郭声琨在安徽调研时强调大力加强动态化信息化条件下基层基础工作努力提升打击犯罪服务","urlTopic":"","vabstract":""},{"CONTENT":"","DB":"","PINYIN":"","PUrlName":"www.an/main_new/info_detail.asp?info_id=82621","SID":"","SOURCE":"","XIANGJIE":"","appFlag":"","authors":"","catalog":"","channel":"","charSet":"","content":"","contentType":"","dbtype":0,"delFlag":"","extName":"","hitPoints":0,"imgFeature":"f0c0c4c8f0f0b0c3","imgHeight":"309","imgName":"2013112622572649605.jpg","imgSize":"600x309","imgWidth":"600","ipAddress":"","keywords":"","lastTime":"","name":"","pageLevel":"","pageRank":"","port":"","position":17,"purlId":"","rank":11,"relevance":0.2702755331993103,"score":0,"selectedBox":false,"showTitle":"","sid":"22451382","simFlag":"","simRank":"","siteName":"","smallImgFile":"http://image.ssyq.zx.ga/imagedata/smallimgfile/2013/11/26/862/634/1632743976136290625.jpg","srcName":"","startId":"","subUrlName":"http://www.an/eWebEditor/chinauepic/info/2013112622572649605.jpg","suffixName":"jpg","trsInterval":"","urlBody":"","urlDate":"","urlId":"","urlName":"http://www.an/eWebEditor/chinauepic/info/2013112622572649605.jpg","urlSize":"221198","urlTime":"2013.11.26 00:00:00","urlTitle":"孟建柱、郭声琨会见吴春忠同志先进事迹...","urlTopic":"","vabstract":""},{"CONTENT":"","DB":"","PINYIN":"","PUrlName":"www.ald.xj/dlj/List/List_1429_1.html","SID":"","SOURCE":"","XIANGJIE":"","appFlag":"","authors":"","catalog":"","channel":"","charSet":"","content":"","contentType":"","dbtype":0,"delFlag":"","extName":"","hitPoints":0,"imgFeature":"7c48787c4f3c7878","imgHeight":"405","imgName":"20121226112622122.jpg","imgSize":"300x405","imgWidth":"300","ipAddress":"","keywords":"","lastTime":"","name":"","pageLevel":"","pageRank":"","port":"","position":18,"purlId":"","rank":10,"relevance":0.2731521725654602,"score":0,"selectedBox":false,"showTitle":"","sid":"18115870","simFlag":"","simRank":"","siteName":"","smallImgFile":"http://image.ssyq.zx.ga/imagedata/smallimgfile/2013/08/07/546/4/1813257959725910926.jpg","srcName":"","startId":"","subUrlName":"http://www.ald.xj/UploadFiles/dlj_UploadFiles_4551/201212/20121226112622122.jpg","suffixName":"jpg","trsInterval":"","urlBody":"","urlDate":"","urlId":"","urlName":"http://www.ald.xj/UploadFiles/dlj_UploadFiles_4551/201212/20121226112622122.jpg","urlSize":"95367","urlTime":"2012.09.10 00:00:00","urlTitle":"多棱镜-阿勒泰地区公安局","urlTopic":"","vabstract":""},{"CONTENT":"","DB":"","PINYIN":"","PUrlName":"www.ga/gayw_07/201401/t20140125_617514.html","SID":"","SOURCE":"","XIANGJIE":"","appFlag":"","authors":"","catalog":"","channel":"","charSet":"","content":"","contentType":"","dbtype":0,"delFlag":"","extName":"","hitPoints":0,"imgFeature":"c0f3c8f3c4fcc4c4","imgHeight":"358","imgName":"W020140125010198994601.jpg","imgSize":"560x358","imgWidth":"560","ipAddress":"","keywords":"","lastTime":"","name":"","pageLevel":"","pageRank":"","port":"","position":19,"purlId":"","rank":8,"relevance":0.1688984235127767,"score":0,"selectedBox":false,"showTitle":"","sid":"24144506","simFlag":"","simRank":"","siteName":"","smallImgFile":"http://image.ssyq.zx.ga/imagedata/smallimgfile/2014/01/26/985/226/1972023450799204466.jpg","srcName":"","startId":"","subUrlName":"http://www.ga/gayw_07/201401/W020140125010198994601.jpg","suffixName":"jpg","trsInterval":"","urlBody":"","urlDate":"","urlId":"","urlName":"http://www.ga/gayw_07/201401/W020140125010198994601.jpg","urlSize":"243516","urlTime":"2014.01.24 00:00:00","urlTitle":"郭声琨在广东看望慰问基层公安民警转达习近平总书记亲切关怀勉励大家忠诚履职再创佳绩-公安要闻","urlTopic":"","vabstract":""},{"CONTENT":"","DB":"","PINYIN":"","PUrlName":"www.an/main_new/info_detail.asp?info_id=82621","SID":"","SOURCE":"","XIANGJIE":"","appFlag":"","authors":"","catalog":"","channel":"","charSet":"","content":"","contentType":"","dbtype":0,"delFlag":"","extName":"","hitPoints":0,"imgFeature":"fc0ff7bff3fcbcf0","imgHeight":"399","imgName":"2013112622514766440.jpg","imgSize":"600x399","imgWidth":"600","ipAddress":"","keywords":"","lastTime":"","name":"","pageLevel":"","pageRank":"","port":"","position":20,"purlId":"","rank":7,"relevance":0.17510644594828287,"score":0,"selectedBox":false,"showTitle":"","sid":"22451386","simFlag":"","simRank":"","siteName":"","smallImgFile":"http://image.ssyq.zx.ga/imagedata/smallimgfile/2013/11/26/316/873/8268108385591705112.jpg","srcName":"","startId":"","subUrlName":"http://www.an/eWebEditor/chinauepic/info/2013112622514766440.jpg","suffixName":"jpg","trsInterval":"","urlBody":"","urlDate":"","urlId":"","urlName":"http://www.an/eWebEditor/chinauepic/info/2013112622514766440.jpg","urlSize":"287000","urlTime":"2013.11.26 00:00:00","urlTitle":"孟建柱、郭声琨会见吴春忠同志先进事迹...","urlTopic":"","vabstract":""},{"CONTENT":"","DB":"","PINYIN":"","PUrlName":"www.xz/admin/news_view.jsp?subjectID=7&newsID=321717","SID":"","SOURCE":"","XIANGJIE":"","appFlag":"","authors":"","catalog":"","channel":"","charSet":"","content":"","contentType":"","dbtype":0,"delFlag":"","extName":"","hitPoints":0,"imgFeature":"f0f0c0f0f0f0f0c4","imgHeight":"3456","imgName":"00321717_img_1.jpg","imgSize":"5184x3456","imgWidth":"5184","ipAddress":"","keywords":"","lastTime":"","name":"","pageLevel":"","pageRank":"","port":"","position":21,"purlId":"","rank":7,"relevance":0.1732947031656901,"score":0,"selectedBox":false,"showTitle":"","sid":"21372698","simFlag":"","simRank":"","siteName":"","smallImgFile":"http://image.ssyq.zx.ga/imagedata/smallimgfile/2013/10/16/63/613/2489671495327942023.jpg","srcName":"","startId":"","subUrlName":"http://www.xz/upload/00321717_img_1.jpg","suffixName":"jpg","trsInterval":"","urlBody":"","urlDate":"","urlId":"","urlName":"http://www.xz/upload/00321717_img_1.jpg","urlSize":"6268320","urlTime":"2013.10.16 00:00:00","urlTitle":"郭声琨同志赴西藏视察调研工作","urlTopic":"","vabstract":""},{"CONTENT":"","DB":"","PINYIN":"","PUrlName":"10.98.89.9/Article_Show.asp?ArticleID=52244&ShowTitle=True&ShowFz=True","SID":"","SOURCE":"","XIANGJIE":"","appFlag":"","authors":"","catalog":"","channel":"","charSet":"","content":"","contentType":"","dbtype":0,"delFlag":"","extName":"","hitPoints":0,"imgFeature":"b8b888c048f0b87f","imgHeight":"352","imgName":"201361782912628.jpg","imgSize":"560x352","imgWidth":"560","ipAddress":"","keywords":"","lastTime":"","name":"","pageLevel":"","pageRank":"","port":"","position":22,"purlId":"","rank":6,"relevance":0.1860363483428955,"score":0,"selectedBox":false,"showTitle":"","sid":"20056164","simFlag":"","simRank":"","siteName":"","smallImgFile":"http://image.ssyq.zx.ga/imagedata/smallimgfile/2013/09/06/491/259/6819343747804681592.jpg","srcName":"","startId":"","subUrlName":"http://10.98.89.9/UploadFiles/201361782912628.jpg","suffixName":"jpg","trsInterval":"","urlBody":"","urlDate":"","urlId":"","urlName":"http://10.98.89.9/UploadFiles/201361782912628.jpg","urlSize":"207965","urlTime":"2013.06.17 00:00:00","urlTitle":"郭声琨在安徽调研时强调 大力加强动态化信息化条件下基层基础工作 努力提升打击犯罪服务","urlTopic":"","vabstract":""},{"CONTENT":"","DB":"","PINYIN":"","PUrlName":"www.ga/gayw_07/201401/t20140125_617524.html","SID":"","SOURCE":"","XIANGJIE":"","appFlag":"","authors":"","catalog":"","channel":"","charSet":"","content":"","contentType":"","dbtype":0,"delFlag":"","extName":"","hitPoints":0,"imgFeature":"c8f0c0c4c08040c4","imgHeight":"406","imgName":"W020140125686086049590.jpg","imgSize":"560x406","imgWidth":"560","ipAddress":"","keywords":"","lastTime":"","name":"","pageLevel":"","pageRank":"","port":"","position":23,"purlId":"","rank":6,"relevance":0.13176147639751434,"score":0,"selectedBox":false,"showTitle":"","sid":"24144684","simFlag":"","simRank":"","siteName":"","smallImgFile":"http://image.ssyq.zx.ga/imagedata/smallimgfile/2014/01/26/627/713/3727084830207311831.jpg","srcName":"","startId":"","subUrlName":"http://www.ga/gayw_07/201401/W020140125686086049590.jpg","suffixName":"jpg","trsInterval":"","urlBody":"","urlDate":"","urlId":"","urlName":"http://www.ga/gayw_07/201401/W020140125686086049590.jpg","urlSize":"256327","urlTime":"2014.01.25 00:00:00","urlTitle":"郭声琨在广州火车站检查春运安保工作时强调用扎实细致的工作和热情周到的服务确保广大群众开开心心回家平平安安返程-公安要闻","urlTopic":"","vabstract":""},{"CONTENT":"","DB":"","PINYIN":"","PUrlName":"www.lpx.qjs.yn/doc/depart/view.php?id=669&cata=1040","SID":"","SOURCE":"","XIANGJIE":"","appFlag":"","authors":"","catalog":"","channel":"","charSet":"","content":"","contentType":"","dbtype":0,"delFlag":"","extName":"","hitPoints":0,"imgFeature":"c080f7f3f3f7f8f0","imgHeight":"337","imgName":"W020130929732812659969.jpg","imgSize":"560x337","imgWidth":"560","ipAddress":"","keywords":"","lastTime":"","name":"","pageLevel":"","pageRank":"","port":"","position":24,"purlId":"","rank":5,"relevance":0.13263696432113647,"score":0,"selectedBox":false,"showTitle":"","sid":"40892180","simFlag":"","simRank":"","siteName":"","smallImgFile":"http://image.ssyq.zx.ga/imagedata/smallimgfile/2014/03/16/41/258/7925417195487380106.jpg","srcName":"","startId":"","subUrlName":"http://www.ga/gayw_07/tpxw_07/201309/W020130929732812659969.jpg","suffixName":"jpg","trsInterval":"","urlBody":"","urlDate":"","urlId":"","urlName":"http://www.ga/gayw_07/tpxw_07/201309/W020130929732812659969.jpg","urlSize":"193005","urlTime":"2013.09.29 00:00:00","urlTitle":"郭声琨在陕西调研时强调传承延安精神 加强能力建设","urlTopic":"","vabstract":""},{"CONTENT":"","DB":"","PINYIN":"","PUrlName":"www.an/main_new/info_detail.asp?info_id=82621","SID":"","SOURCE":"","XIANGJIE":"","appFlag":"","authors":"","catalog":"","channel":"","charSet":"","content":"","contentType":"","dbtype":0,"delFlag":"","extName":"","hitPoints":0,"imgFeature":"4fb080f3f0f0f0f4","imgHeight":"471","imgName":"2013112622532335840.jpg","imgSize":"600x471","imgWidth":"600","ipAddress":"","keywords":"","lastTime":"","name":"","pageLevel":"","pageRank":"","port":"","position":25,"purlId":"","rank":5,"relevance":0.12793752551078796,"score":0,"selectedBox":false,"showTitle":"","sid":"22451396","simFlag":"","simRank":"","siteName":"","smallImgFile":"http://image.ssyq.zx.ga/imagedata/smallimgfile/2013/11/26/960/581/2748507408518228521.jpg","srcName":"","startId":"","subUrlName":"http://www.an/eWebEditor/chinauepic/info/2013112622532335840.jpg","suffixName":"jpg","trsInterval":"","urlBody":"","urlDate":"","urlId":"","urlName":"http://www.an/eWebEditor/chinauepic/info/2013112622532335840.jpg","urlSize":"345858","urlTime":"2013.11.26 00:00:00","urlTitle":"孟建柱、郭声琨会见吴春忠同志先进事迹...","urlTopic":"","vabstract":""},{"CONTENT":"","DB":"","PINYIN":"","PUrlName":"www.ga/gayw_07/tpxw_07/201306/t20130602_561947.html","SID":"","SOURCE":"","XIANGJIE":"","appFlag":"","authors":"","catalog":"","channel":"","charSet":"","content":"","contentType":"","dbtype":0,"delFlag":"","extName":"","hitPoints":0,"imgFeature":"f0fcf843473f8fbc","imgHeight":"432","imgName":"W020130602708958319370.jpg","imgSize":"560x432","imgWidth":"560","ipAddress":"","keywords":"","lastTime":"","name":"","pageLevel":"","pageRank":"","port":"","position":26,"purlId":"","rank":4,"relevance":0.11042224168777466,"score":0,"selectedBox":false,"showTitle":"","sid":"42108664","simFlag":"","simRank":"","siteName":"","smallImgFile":"http://image.ssyq.zx.ga/imagedata/smallimgfile/2014/05/06/758/114/8546460220620755763.jpg","srcName":"","startId":"","subUrlName":"http://www.ga/gayw_07/tpxw_07/201306/W020130602708958319370.jpg","suffixName":"jpg","trsInterval":"","urlBody":"","urlDate":"","urlId":"","urlName":"http://www.ga/gayw_07/tpxw_07/201306/W020130602708958319370.jpg","urlSize":"220571","urlTime":"2013.06.02 00:00:00","urlTitle":"郭声琨在浙江调研时强调","urlTopic":"","vabstract":""},{"CONTENT":"","DB":"","PINYIN":"","PUrlName":"www.an/main_new/info_detail.asp?info_id=82652","SID":"","SOURCE":"","XIANGJIE":"","appFlag":"","authors":"","catalog":"","channel":"","charSet":"","content":"","contentType":"","dbtype":0,"delFlag":"","extName":"","hitPoints":0,"imgFeature":"ff47c0c4f080f0f7","imgHeight":"400","imgName":"2013112710291216204.jpg","imgSize":"600x400","imgWidth":"600","ipAddress":"","keywords":"","lastTime":"","name":"","pageLevel":"","pageRank":"","port":"","position":27,"purlId":"","rank":4,"relevance":0.09893240332603455,"score":0,"selectedBox":false,"showTitle":"","sid":"22453164","simFlag":"","simRank":"","siteName":"","smallImgFile":"http://image.ssyq.zx.ga/imagedata/smallimgfile/2013/11/27/727/586/3513789185800050748.jpg","srcName":"","startId":"","subUrlName":"http://www.an/eWebEditor/chinauepic/info/2013112710291216204.jpg","suffixName":"jpg","trsInterval":"","urlBody":"","urlDate":"","urlId":"","urlName":"http://www.an/eWebEditor/chinauepic/info/2013112710291216204.jpg","urlSize":"457711","urlTime":"2013.11.27 00:00:00","urlTitle":"郭声琨亲切慰问吴春忠同志先进事迹报告...","urlTopic":"","vabstract":""},{"CONTENT":"","DB":"","PINYIN":"","PUrlName":"www.lpx.qjs.yn/doc/depart/view.php?id=669&cata=1040","SID":"","SOURCE":"","XIANGJIE":"","appFlag":"","authors":"","catalog":"","channel":"","charSet":"","content":"","contentType":"","dbtype":0,"delFlag":"","extName":"","hitPoints":0,"imgFeature":"3f3830007040403f","imgHeight":"348","imgName":"W020130929732812642694.jpg","imgSize":"560x348","imgWidth":"560","ipAddress":"","keywords":"","lastTime":"","name":"","pageLevel":"","pageRank":"","port":"","position":28,"purlId":"","rank":3,"relevance":0.08763850728670756,"score":0,"selectedBox":false,"showTitle":"","sid":"40892132","simFlag":"","simRank":"","siteName":"","smallImgFile":"http://image.ssyq.zx.ga/imagedata/smallimgfile/2014/03/16/62/802/9104517458497674403.jpg","srcName":"","startId":"","subUrlName":"http://www.ga/gayw_07/tpxw_07/201309/W020130929732812642694.jpg","suffixName":"jpg","trsInterval":"","urlBody":"","urlDate":"","urlId":"","urlName":"http://www.ga/gayw_07/tpxw_07/201309/W020130929732812642694.jpg","urlSize":"215389","urlTime":"2013.09.29 00:00:00","urlTitle":"郭声琨在陕西调研时强调传承延安精神 加强能力建设","urlTopic":"","vabstract":""},{"CONTENT":"","DB":"","PINYIN":"","PUrlName":"www.ga/gayw_07/201309/t20130929_593867.html","SID":"","SOURCE":"","XIANGJIE":"","appFlag":"","authors":"","catalog":"","channel":"","charSet":"","content":"","contentType":"","dbtype":0,"delFlag":"","extName":"","hitPoints":0,"imgFeature":"c080f7f3f3f7f8f0","imgHeight":"337","imgName":"W020130929732552517100.jpg","imgSize":"560x337","imgWidth":"560","ipAddress":"","keywords":"","lastTime":"","name":"","pageLevel":"","pageRank":"","port":"","position":29,"purlId":"","rank":1,"relevance":0.03439438555921827,"score":0,"selectedBox":false,"showTitle":"","sid":"21785144","simFlag":"","simRank":"","siteName":"","smallImgFile":"http://image.ssyq.zx.ga/imagedata/smallimgfile/2013/10/23/30/37/2259629866050731225.jpg","srcName":"","startId":"","subUrlName":"http://www.ga/gayw_07/201309/W020130929732552517100.jpg","suffixName":"jpg","trsInterval":"","urlBody":"","urlDate":"","urlId":"","urlName":"http://www.ga/gayw_07/201309/W020130929732552517100.jpg","urlSize":"193005","urlTime":"2013.09.29 00:00:00","urlTitle":"郭声琨在陕西调研时强调传承延安精神 加强能力建设推动陕西公安工作走在西部前列-公安要闻","urlTopic":"","vabstract":""},{"CONTENT":"","DB":"","PINYIN":"","PUrlName":"www.ga/gayw_07/201309/t20130929_593867.html","SID":"","SOURCE":"","XIANGJIE":"","appFlag":"","authors":"","catalog":"","channel":"","charSet":"","content":"","contentType":"","dbtype":0,"delFlag":"","extName":"","hitPoints":0,"imgFeature":"3f3830007040403f","imgHeight":"348","imgName":"W020130929732552503131.jpg","imgSize":"560x348","imgWidth":"560","ipAddress":"","keywords":"","lastTime":"","name":"","pageLevel":"","pageRank":"","port":"","position":30,"purlId":"","rank":1,"relevance":0.02980193868279457,"score":0,"selectedBox":false,"showTitle":"","sid":"21785144","simFlag":"","simRank":"","siteName":"","smallImgFile":"http://image.ssyq.zx.ga/imagedata/smallimgfile/2013/10/23/525/741/7703405438518990195.jpg","srcName":"","startId":"","subUrlName":"http://www.ga/gayw_07/201309/W020130929732552503131.jpg","suffixName":"jpg","trsInterval":"","urlBody":"","urlDate":"","urlId":"","urlName":"http://www.ga/gayw_07/201309/W020130929732552503131.jpg","urlSize":"215389","urlTime":"2013.09.29 00:00:00","urlTitle":"郭声琨在陕西调研时强调传承延安精神 加强能力建设推动陕西公安工作走在西部前列-公安要闻","urlTopic":"","vabstract":""}]', 0);
            var w = $(window);
            var OH = w.height();
            var OW = w.width();
            $().ready(function () {
                //判断ie浏览器
                if ($.browser.msie) {
                    var version = parseInt($.browser.version, 10);
                    w.wresize(function () {
                        var H = w.height();
                        var W = w.width();
                        if ((OH != H || OW != W) && version != 8) {
                            window.location.href = window.location;
                        }
                    });
                }
                else {
                    $(window).resize(function () {

                        var H = w.height();
                        var W = w.width();
                        if (OH != H || OW != W) {
                            window.location.href = window.location;
                        }
                    });
                }
            });
        </script>
    </div>
    </div>




</div>

<script type="text/javascript">
//回车验证
$().ready(
    function () {
        $("#q").keydown(function (e) {
            var curKey = e.which;
            if (curKey == 13) {

                return validateQ();
            }
        });
    }
);

function changeShowOrder(type,num){
    if(type=="order"){
        switch(num){
            case 2:
                var str2 = "<a href=\"#\" id=\"order_time\" onclick=\"return false;\"><img src=\"img\/doc\/sj.gif\" style=\"margin-top: 9px;\"><\/a>";
                document.getElementById('order_time').outerHTML=str2;
                var str = "<a href=\"#\" id=\"order_relate\" onclick=\"javascript:changeShowOrder('order',1);return false;\">相关度<\/a>";
                document.getElementById('order_relate').outerHTML=str;
                break;
            case 1:
                var str2 = "<a href=\"#\" id=\"order_time\" onclick=\"javascript:changeShowOrder('order',2);return false;\">时间<\/a>";
                document.getElementById('order_time').outerHTML=str2;
                var str = "<a href=\"#\" id=\"order_relate\" onclick=\"return false;\"><img src=\"img\/doc\/xgd.gif\" style=\"margin-top: 9px;\"><\/a>";
                document.getElementById('order_relate').outerHTML=str;
                break;
        }
    }else if(type=="search"){
        switch(num){
            case 2:
                var str2 = "<a href=\"#\" id=\"search_title\" onclick=\"return false;\"><img src=\"img\/doc\/bt.gif\" style=\"margin-top: 9px;\"><\/a>";
                document.getElementById('search_title').outerHTML=str2;
                var str = "<a href=\"#\" id=\"search_article\" onclick=\"javascript:changeShowOrder('search',1);return false;\">全文<\/a>";
                document.getElementById('search_article').outerHTML=str;
                break;
            case 1:
                var str2 = "<a href=\"#\" id=\"search_title\" onclick=\"javascript:changeShowOrder('search',2);return false;\">标题<\/a>";
                document.getElementById('search_title').outerHTML=str2;
                var str = "<a href=\"#\" id=\"search_article\" onclick=\"return false;\"><img src=\"img\/doc\/qw.gif\" style=\"margin-top: 9px;\"><\/a>";
                document.getElementById('search_article').outerHTML=str;
                break;
        }
    }
}
</script>
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
<script type="text/javascript">
var ctx = '<%=request.getContextPath()%>'+'/';
</script>
<script type="text/javascript" src="<%=request.getContextPath()%>/jsp/js/news.js"></script>
<script type="text/javascript">
    //输入框获取焦点
    $().ready(function () {
        $("#q").focus();
        clickShowMorePic();
    });
    //发送请求，展示第二页的记录。
    $().ready(function () {
        clickShowMorePic();
    });
    //点击日志保存
    $().ready(function () {
        $(".click").click(function () {
            try {
                var urlId = $(this).attr("urlId");
                var position = $(this).attr("position");
                var q = $("#lastq").val();
                if (null == q) {
                    q = "";
                }
                var url = $(this).attr("href");
                var db = $(this).attr("db");
                var title = $(this).html();
                if (null == title) {
                    title = "";
                }
                var sql = $("#searchWord").val();
                if (null == sql) {
                    sql = "";
                }
                var actionUrl = "http://ssyq.zx.ga/clickLog.trs";
                var params = "urlId=" + urlId + "&position=" + position + "&q=" + encodeURIComponent(encodeURIComponent(q)) + "&db=" + db + "&sql=" + encodeURIComponent(encodeURIComponent(sql)) + "&url=" + encodeURIComponent(encodeURIComponent(url)) + "&title=" + encodeURIComponent(encodeURIComponent(title));

                (new Image()).src = actionUrl + "?" + params;
            } catch (err) {
                //alert(err.message);
            }
        });


    });
    jQuery("#showbigdiv").bind("mouseout", function (event) {
        hidebig(event);
    });
</script>
<script src="<%=request.getContextPath()%>/jsp/js/image.js"></script>
<script src="<%=request.getContextPath()%>/jsp/js/result.js"></script>
</body>
</html>