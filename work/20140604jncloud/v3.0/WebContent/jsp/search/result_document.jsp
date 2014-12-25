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
                                    <a href="#" class="grey_txt_color2">公安文档</a>
                                    <span class="info_icon_down"></span>
                                </li>
                                <li id="tria2" class="grey_color2">
                                    <a href="#" class="grey_txt_color2">信息资源</a>

                                </li>
                            </ul>
                        </div>
                        <label for="input_box"><input id="input_box" type="text" class="con_btn"/></label>
                        <div class="bd_box">
                            <a href="#"><img id="slash" src="<%=request.getContextPath()%>/images/search2.gif"/></a>
                        </div>
                        <p id="adv_search"><a href="#" class="blue_link">高级搜索</a></p>
                        <br>

                    </div>
                    <div id="result_doc_type">
                        <input type="radio" name="doctype" value="全部" checked="checked" style="margin-left:0; " />全部
                        <input type="radio" name="doctype" value="DOC" />DOC
                        <input type="radio" name="doctype" value="PPT" />PPT
                        <input type="radio" name="doctype" value="TXT" />TXT
                        <input type="radio" name="doctype" value="PDF" />PDF
                        <input type="radio" name="doctype" value="XLS" />XLS
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div id="result_doc_con">
        <div class="border_grey grey_color2 condition_tab_doc">
            <div id="sum_txt_doc" class="grey_txt_color2">
                找到相关结果约有<span class="orange_txt_color1">342</span>项,耗时7毫秒，以下是1-10条。
            </div>
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
                <p class="display_mode2_p">检索：</p>
                <p class="display_mode2_p" style="margin-right: 20px;">
                    <a href="#" id="search_article" onclick="return false;">
                        <img src="<%=request.getContextPath()%>/images/doc/qw.gif" style="margin-top: 9px;">
                    </a>
                </p>
                <p class="display_mode2_p" style="margin-right: 10px;">
                    <a href="#" id="search_title" onclick="javascript:changeShowOrder('search',2);return false;">标题</a>
                </p>
            </div>
        </div>
        <div class="result_doc_li border_bot_dot">
            <p class="result_doc_li1">
                <img src="<%=request.getContextPath()%>/images/doc/txt.gif">
                <span class="ft18">
                    <a href="#" class="underline">
                        <span class="underline">在线</span><span class="tit_1 underline">测试</span>
                    </a>
                </span>
            </p>
            <p class="result_doc_li2">
                数据在线
                <span class="tit_1">
                    测试
                </span>
            </p>
            <p class="result_doc_li3">
                <span class="green_color1 margin_r10">http://10.49.10.9/zxcx.txt</span>
                <span class="green_color1 margin_r10">2014-07-11</span>
                <span class="margin_r10">[21KB]</span>
                <span class="margin_r10">-</span>
                <span><a href="#" target="_blank" class="underline ft13 grey_txt_color2">本地快照</a></span>
            </p>
        </div>

        <div class="result_doc_li border_bot_dot">
            <p class="result_doc_li1">
                <img src="<%=request.getContextPath()%>/images/doc/xls.gif">
                <span class="ft18">
                    <a href="#" class="underline">
                        <span class="underline">在线</span><span class="tit_1 underline">测试</span>
                    </a>
                </span>
            </p>
            <p class="result_doc_li2">
                数据在线
                <span class="tit_1">
                    测试
                </span>
            </p>
            <p class="result_doc_li3">
                <span class="green_color1 margin_r10">http://10.49.10.9/zxcx.xls</span>
                <span class="green_color1 margin_r10">2014-07-11</span>
                <span class="margin_r10">[20KB]</span>
                <span class="margin_r10">-</span>
                <span><a href="#" target="_blank" class="underline ft13 grey_txt_color2">本地快照</a></span>
            </p>
        </div>

        <div class="result_doc_li border_bot_dot">
            <p class="result_doc_li1">
                <img src="<%=request.getContextPath()%>/images/doc/pdf.gif">
                <span class="ft18">
                    <a href="#" class="underline">
                        <span class="underline">在线</span><span class="tit_1 underline">测试</span>
                    </a>
                </span>
            </p>
            <p class="result_doc_li2">
                数据在线
                <span class="tit_1">
                    测试
                </span>
            </p>
            <p class="result_doc_li3">
                <span class="green_color1 margin_r10">http://10.49.10.9/zxcx.pdf</span>
                <span class="green_color1 margin_r10">2014-07-11</span>
                <span class="margin_r10">[121KB]</span>
                <span class="margin_r10">-</span>
                <span><a href="#" target="_blank" class="underline ft13 grey_txt_color2">本地快照</a></span>
            </p>
        </div>

        <div class="result_doc_li border_bot_dot">
            <p class="result_doc_li1">
                <img src="<%=request.getContextPath()%>/images/doc/ppt.gif">
                <span class="ft18">
                    <a href="#" class="underline">
                        <span class="underline">在线</span><span class="tit_1 underline">测试</span>
                    </a>
                </span>
            </p>
            <p class="result_doc_li2">
                数据在线
                <span class="tit_1">
                    测试
                </span>
            </p>
            <p class="result_doc_li3">
                <span class="green_color1 margin_r10">http://10.49.10.9/zxcx.ppt</span>
                <span class="green_color1 margin_r10">2014-07-11</span>
                <span class="margin_r10">[213KB]</span>
                <span class="margin_r10">-</span>
                <span>
                    <a href="#" target="_blank" class="underline ft13 grey_txt_color2">本地快照</a>
                </span>
            </p>
        </div>

        <div class="result_doc_li border_bot_dot">
            <p class="result_doc_li1">
                <img src="<%=request.getContextPath()%>/images/doc/doc.gif">
                <span class="ft18">
                    <a href="#" class="underline">
                        <span class="underline">在线</span><span class="tit_1 underline">测试</span>
                    </a>
                </span>
            </p>
            <p class="result_doc_li2">
                数据在线
                <span class="tit_1">
                    测试
                </span>
            </p>
            <p class="result_doc_li3">
                <span class="green_color1 margin_r10">http://10.49.10.9/zxcx.doc</span>
                <span class="green_color1 margin_r10">2014-07-11</span>
                <span class="margin_r10">[21KB]</span>
                <span class="margin_r10">-</span>
                <span><a href="#" target="_blank" class="underline ft13 grey_txt_color2">本地快照</a></span>
            </p>
        </div>

        <div class="result_doc_li border_bot_dot">
            <p class="result_doc_li1">
                <img src="<%=request.getContextPath()%>/images/doc/doc.gif">
                <span class="ft18">
                    <a href="#" class="underline">
                        <span class="underline">在线</span><span class="tit_1 underline">测试</span>
                    </a>
                </span>
            </p>
            <p class="result_doc_li2">
                数据在线
                <span class="tit_1">
                    测试
                </span>
            </p>
            <p class="result_doc_li3">
                <span class="green_color1 margin_r10">http://10.49.10.9/zxcx.doc</span>
                <span class="green_color1 margin_r10">2014-07-11</span>
                <span class="margin_r10">[21KB]</span>
                <span class="margin_r10">-</span>
                <span><a href="#" target="_blank" class="underline ft13 grey_txt_color2">本地快照</a></span>
            </p>
        </div>

        <div class="result_doc_li border_bot_dot">
            <p class="result_doc_li1">
                <img src="<%=request.getContextPath()%>/images/doc/doc.gif">
                <span class="ft18">
                    <a href="#" class="underline">
                        <span class="underline">在线</span><span class="tit_1 underline">测试</span>
                    </a>
                </span>
            </p>
            <p class="result_doc_li2">
                数据在线
                <span class="tit_1">
                    测试
                </span>
            </p>
            <p class="result_doc_li3">
                <span class="green_color1 margin_r10">http://10.49.10.9/zxcx.doc</span>
                <span class="green_color1 margin_r10">2014-07-11</span>
                <span class="margin_r10">[21KB]</span>
                <span class="margin_r10">-</span>
                <span><a href="#" target="_blank" class="underline ft13 grey_txt_color2">本地快照</a></span>
            </p>
        </div>

        <div class="result_doc_li border_bot_dot">
            <p class="result_doc_li1">
                <img src="<%=request.getContextPath()%>/images/doc/doc.gif">
                <span class="ft18">
                    <a href="#" class="underline">
                        <span class="underline">在线</span><span class="tit_1 underline">测试</span>
                    </a>
                </span>
            </p>
            <p class="result_doc_li2">
                数据在线
                <span class="tit_1">
                    测试
                </span>
            </p>
            <p class="result_doc_li3">
                <span class="green_color1 margin_r10">http://10.49.10.9/zxcx.doc</span>
                <span class="green_color1 margin_r10">2014-07-11</span>
                <span class="margin_r10">[21KB]</span>
                <span class="margin_r10">-</span>
                <span><a href="#" target="_blank" class="underline ft13 grey_txt_color2">本地快照</a></span>
            </p>
        </div>

        <div class="result_doc_li border_bot_dot">
            <p class="result_doc_li1">
                <img src="<%=request.getContextPath()%>/images/doc/doc.gif">
                <span class="ft18">
                    <a href="#" class="underline">
                        <span class="underline">在线</span><span class="tit_1 underline">测试</span>
                    </a>
                </span>
            </p>
            <p class="result_doc_li2">
                数据在线
                <span class="tit_1">
                    测试
                </span>
            </p>
            <p class="result_doc_li3">
                <span class="green_color1 margin_r10">http://10.49.10.9/zxcx.doc</span>
                <span class="green_color1 margin_r10">2014-07-11</span>
                <span class="margin_r10">[21KB]</span>
                <span class="margin_r10">-</span>
                <span><a href="#" target="_blank" class="underline ft13 grey_txt_color2">本地快照</a></span>
            </p>
        </div>

        <div class="result_doc_li border_bot_dot">
            <p class="result_doc_li1">
                <img src="<%=request.getContextPath()%>/images/doc/doc.gif">
                <span class="ft18">
                    <a href="#" class="underline">
                        <span class="underline">在线</span><span class="tit_1 underline">测试</span>
                    </a>
                </span>
            </p>
            <p class="result_doc_li2">
                数据在线
                <span class="tit_1">
                    测试
                </span>
            </p>
            <p class="result_doc_li3">
                <span class="green_color1 margin_r10">http://10.49.10.9/zxcx.doc</span>
                <span class="green_color1 margin_r10">2014-07-11</span>
                <span class="margin_r10">[21KB]</span>
                <span class="margin_r10">-</span>
                <span><a href="#" target="_blank" class="underline ft13 grey_txt_color2">本地快照</a></span>
            </p>
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
                <div class="page_general"><input id="page_input" class="border_grey" type="text"></div>
                <div class="page_general">页</div>
                <div class="page_general"><img src="<%=request.getContextPath()%>/images/result/tiaozhuan.gif"></div>
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
<script src="<%=request.getContextPath()%>/jsp/js/result_doc.js"></script>
</body>
</html>