var lineperpage = 3;//概览页每页显示行数
var gapwidth =9;//每张图片的间隔
var maxpageonce = 2;//最大显示行数，从0开始计数
var baseLeft = 0;//每张图片左侧边距距离
var pageroffset = 0;//从第几条记录开始取结果
var pageno = 0;//当前页数
var currpageroffset = 0;//当前记录位置
var linewidth = 800;//概览页最小宽度
var conditionwidth = 0;//左侧条件框的宽度
var detailaction = "http://ssyq.zx.ga/doSearch.trs";//细览页发送请求地址
var showDetailWidth = 100;//细览页缩略图宽度
var showDetailHeight = 100;//细览页缩略图高度
var originalImgMaxHeight = 300;//细览页大图的高度
var detailStartIdx = 0;//细览页大图显示记录
var detailData;//细览页数据列表
var maxResult = 20;//细览页图片最大保存记录数
var pagesize = 30;
var imgmaxwidth = 180;//图片展示最大宽度
var imgmaxheight = 140;//图片展示最大高度
var mayup = true;//是否可以向上滚动
var maydown = true;//是否可以向下滚动
var offsettop = 162;
var bigimgminwidth = 200;//概览页图片放大最小宽度
var memdata = {};//保存在内存中的图片
var detailcurrpageroffset = 0;//细览页当前pageroffset
var detailsearchpageroffset = 0;//细览页查询时pageroffset初始化
//图片检索概览页展示图片
function showImg(result,pageNo){
    var totalwidth = parseInt($(window).width());//页面宽度
    while(result.indexOf('\n')!=-1){
        result = result.replace('\n','');
    }
    var data = eval('('+result+')');
    memdata = jsonUnion(data, memdata);

    if(memdata.length == 0 && pageroffset == 0){
        $("#condition").html("");
//		$("#resultImg").append("<table width='100%' cellpadding='0' cellspacing='0' class='padding_left_40 padding_righr_40'><tr><td id='emptyresult' align='left'><font class='container_word red'> <html:img page='/images/icons/err.gif' align='absmiddle'/>&nbsp;未检索到有效信息</font></td></tr></table>");
        $("#resultImg").append("<div style='width:50px;float:left;'>&nbsp;</div><div style='width:300px;height:80px;font-size: 13px;'>未检索到有效信息</div>");
    }
    linewidth = linewidth - conditionwidth;

    if((totalwidth-conditionwidth)*0.9>linewidth){
        linewidth = parseInt((totalwidth-conditionwidth)*0.9);
    }
    baseLeft = parseInt((totalwidth + conditionwidth - linewidth)/2);
    var showwidth = gapwidth;
    var from = pageroffset;
    for(var i=pageroffset;i<memdata.length;i++){
        if(pageNo>maxpageonce){
            break;
        }
        var width = memdata[i].imgWidth;
        var height = memdata[i].imgHeight;
        width = getsmallimgwidth(width,height);
        if(!width){
            width = imgmaxwidth;
        }
        showwidth =showwidth + parseInt(width)+gapwidth;
        if(showwidth>linewidth){
            if(showwidth-linewidth>width/2){
                showwidth -= width + gapwidth;
                i --;
                pageroffset --;
            }
            var needwidth = (i-from+2)*gapwidth;
            var rate = (linewidth-needwidth)/(showwidth-needwidth);
            showLine(memdata,from,i,rate,pageNo,gapwidth,linewidth*rate);
            pageNo ++;
            from = i+1;
            showwidth = gapwidth;
            pageroffset ++;
            continue;
        }
        pageroffset ++;
    }
    if(pageNo<=maxpageonce && memdata.length>from){
        showLine(memdata,from,memdata.length,1,pageNo,gapwidth,linewidth);
    }
    //添加点击显示更多图片事件
    if(pageno==0 && memdata.length!=0 && typeof(memdata.length)!='undefined')
    {
        //点击显示更多图片
        $("#pageMoreWrap").html("<a id=\"pageMore\" href=\"javascript:void(0);\" onclick=\"clickShowMorePic();\" >加载更多图片</a>");
        jQuery(window).bind('scroll',scrollShowMorePic );
    }
    else if(pageno%9==0 && memdata.length>pageroffset && pageno!=0)
    {
        $("#pageMoreWrap").html("<a id=\"pageMore\" href=\"javascript:void(0);\" onclick=\"clickShowMorePic();\" >加载更多图片</a>");
        jQuery(window).unbind('scroll',scrollShowMorePic );
    }
    else
    {
        if(typeof(memdata.length)=='undefined')
        {
            $("#pageMoreWrap").html("");
        }
        else{
            $("#pageMoreWrap").html("<a id=\"pageMore\" href=\"javascript:void(0);\" onclick=\"clickShowMorePic();\" >加载更多图片</a>");
            //显示滚动显示更多图片功能
            jQuery(window).bind('scroll',scrollShowMorePic );
        }

    }
    if (memdata.length < 10+pageroffset) {
        $("#pageMoreWrap").html("");
    }
    pageno ++;
}

//图片检索概览页展示一行图片
function showLine(data,from,end,rate,pageNo,gapwidth,linewidth){
    if(data.length == 0){
        return;
    }
    var sorttype = "";
    sorttype = $("#sorttype").val();
    var left = 0;
    var width = 0;
    var height = 0;
    var datawidth = 0;
    var dataheight = 0;
    if(pageNo % lineperpage == 0){
        if(pageno == 0){
//			$("#resultImg").append("<div style='height:30px;'></div>");
            offsettop += 40;
//			$("#pageMoreWrap").html("<a id=\"pageMore\" href=\"javascript:void(0);\" onclick=\"showMorePic();\" >加载更多图片</a>");
        }else{
            $("#resultImg").append("<div align='center' style='width:"+linewidth+"px;height:15px;padding-top:30px;left:"+baseLeft+"px;'><div style='position: absolute;left:"+baseLeft+"px;'><font class='pageNum'>第"+(pageno+1)+"页</font></div></div>");
            offsettop += 45;


        }
    }
    var maxHeight = 0;
    for(var i=from;i<data.length&&i<=end;i++){
        height = getsmallimgheight(data[i].imgWidth,data[i].imgHeight);
        if(!height){
            height = imgmaxheight;
        }
        height = height*rate;
        if(parseInt(height)>maxHeight){
            maxHeight = parseInt(height);
        }
    }
    var content = "<div style='height:10px;font-size:0px;'></div><div align='center' style='left:"+baseLeft+"px;width:"+linewidth+"px;height:"+maxHeight+"px;'>";
    var top = 0;
    offsettop += 10;
    for(var i=from;i<data.length&&i<=end;i++){
        datawidth = data[i].imgWidth;
        dataheight = data[i].imgHeight;
        left = left + width + gapwidth;
        height = getsmallimgheight(data[i].imgWidth,data[i].imgHeight);
        width = getsmallimgwidth(data[i].imgWidth,data[i].imgHeight);
        if(!width){
            width = imgmaxwidth;
            height = imgmaxheight;
        }
        width = width*rate;
        height = parseInt(height*rate);
        var imgshowwidth = 0;
        var imgrelativeleft = 0;
        //小图标不做放大截取
        if(width/height < 2 && width > imgmaxwidth){
            imgshowwidth = width * maxHeight/height;
            imgrelativeleft = (width-imgshowwidth)/2;
            height = maxHeight;
        }else{
            imgshowwidth = width;
        }
        if(height < maxHeight){
            top = (maxHeight-height)/2;
        }else{
            top = 0;
        }
        var showoffsettop = top + offsettop;
        var filter_keyWord = $("#lastq").val();
        filter_keyWord = encodeURL(filter_keyWord);
        var r=/\'/g;
        var searchWord=$("#searchWord").val().replace(r,"&#39;");
        searchWord = encodeURL(searchWord);
        var trslc=$("#trslc").val();
        var imgSizeType = $("#imgSizeType").val();
        var imgType = $("#imgType").val();
        var sid = data[i].sid;
        var url = detailaction+"?trs_dispatch=9&detail=true&model=imageSearch&db=image&filter_keyWord="+filter_keyWord+"&pageroffset="+(pageroffset-end+i)+"&imgSizeType="+imgSizeType+"&imgType="+imgType+"&sorttype="+sorttype+"&searchWord="+searchWord+"&trslc="+trslc;
        var src = data[i].smallImgFile;
        var purlname = data[i].PUrlName;
        var urlname = data[i].urlName;
        var urltitle = data[i].urlTitle;
        var imgsize = data[i].imgSize;
        var suffixname = data[i].suffixName;
        var urlsize = data[i].urlSize;
        var urltime = data[i].urlTime;
        urlsize = urlsizeTransfer(urlsize);
        content += "<div style='overflow:hidden;position: absolute;vertical-align: middle;left:"+(baseLeft+left)+"px;width:"+width+"px;height:"+maxHeight+"px;float:left;top:"+showoffsettop+"px;'><a href='"+url+"' target='_blank'><img class='outlineimg' sid='"+sid+"' purlname='"+purlname+"' urlname='"+urlname+"' urltitle='"+urltitle+"' imgsize='"+imgsize+"' suffixname='"+suffixname+"' urlsize='"+urlsize+"' datawidth='"+datawidth+"' dataheight='"+dataheight+"' urltime='"+urltime+"' alt='' src='"+src+"' width='"+imgshowwidth+"' height='"+height+"' onmouseover='showbig(this);' style='position:relative;left:"+imgrelativeleft+"px;'></img></a></div>";
    }
    offsettop += top *2 +height;
    content += "</div>";
    $("#resultImg").append(content);
}

//图片检索概览页展示剩余不够一行的图片
function showRemainImages(data,from,end,rate,pageNo,gapwidth,linewidth){
    if(data.length == 0){
        return;
    }
    var left = 0;
    var width = 0;
    var height = 0;
    var datawidth = 0;
    var dataheight = 0;
    if(pageNo % lineperpage == 0){
        if(pageno == 0){
            $("#resultImg").append("<div style='height:30px;'></div>");
            offsettop += 30;
        }else{
            $("#resultImg").append("<div align='center' style='width:"+linewidth+"px;height:15px;padding-top:30px;left:"+baseLeft+"px;'><div style='position: absolute;left:"+baseLeft+"px;'><font class='pageNum'>第"+(pageno+1)+"页</font></div></div>");
            offsettop += 45;
        }
    }
    var maxHeight = 0;
    for(var i=from;i<data.length;i++){
        height = getsmallimgheight(data[i].imgWidth,data[i].imgHeight);
        if(parseInt(height)>maxHeight){
            maxHeight = parseInt(height);
        }
    }
    var content = "<div style='height:10px;font-size:0px;'></div><div align='center' style='left:"+baseLeft+"px;width:"+linewidth+"px;height:"+maxHeight+"px;'>";
    for(var i=from;i<data.length;i++){
        datawidth = data[i].imgWidth;
        dataheight = data[i].imgHeight;
        left = left + width + gapwidth;
        height = getsmallimgheight(data[i].imgWidth,data[i].imgHeight);
        width = getsmallimgwidth(data[i].imgWidth,data[i].imgHeight);
        if(!width){
            width = imgmaxwidth;
            height = imgmaxheight;
        }
        var filter_keyWord = $("#lastq").val();
        filter_keyWord = encodeURL(filter_keyWord);
        var imgSizeType = $("#imgSizeType").val();
        var imgType = $("#imgType").val();
        var searchWord=$("#searchWord").val();
        searchWord = encodeURL(searchWord);
        var trslc=$("#trslc").val();
        var sid = data[i].sid;
        var url = detailaction+"?trs_dispatch=9&detail=true&model=imageSearch&db=image&filter_keyWord="+filter_keyWord+"&pageroffset="+(pageroffset-end+i)+"&imgSizeType="+imgSizeType+"&imgType="+imgType+"&sorttype="+sorttype+"&searchWord="+searchWord+"&trslc="+trslc;
        var src = data[i].smallImgFile;
        var purlname = data[i].PUrlName;
        var urlname = data[i].urlName;
        var urltitle = data[i].urlTitle;
        var imgsize = data[i].imgSize;
        var suffixname = data[i].suffixName;
        var urlsize = data[i].urlSize;
        var urltime = data[i].urlTime;
        urlsize = urlsizeTransfer(urlsize);
        content += "<div style='position: absolute;vertical-align: middle;left:"+(baseLeft+left)+"px;width:"+width+"px;height:"+maxHeight+"px;float:left;' ><a href='"+url+"' target='_blank' id=imagelink><img class='outlineimg' sid='"+sid+"' purlname='"+purlname+"' urlname='"+urlname+"' urltitle='"+urltitle+"' imgsize='"+imgsize+"' suffixname='"+suffixname+"' urlsize='"+urlsize+"' datawidth='"+datawidth+"' dataheight='"+dataheight+"' urltime='"+urltime+"' alt='' src='"+src+"' width='"+width+"' height='"+height+"' onmouseover='showbig(this);'></img></a></div>";
    }

    content += "</div>";
    $("#resultImg").append(content);
}

/**
 * 图片检索细览页展示右侧列表
 * @param {Object} result
 * @param {Object} pageNo
 */
function showImgDetailList(result,startIdx,lastlength,searchpageroffset,isinit){
    if(isinit == "true"){
        detailsearchpageroffset = searchpageroffset;
    }
    var data = result;
    detailData = data;
    detailStartIdx = startIdx;
    var content = "<div id='listdiv' class='height_hidden_310'><ul id='resultList'>";
    var classname = "biankuang";
    var top = 0;
    var datawidth = 0;
    var dataheight = 0;
    var showwidth = 0;
    var showheight = 0;
    pageroffset += data.length - lastlength;
    for(var i=0;i<data.length;i++){
        if(i == startIdx){
            classname = "xuanzhong";
        }else{
            classname = "biankuang";
        }
        datawidth = data[i].imgWidth;
        dataheight = data[i].imgHeight;
        var rate = datawidth/dataheight;
        var showrate = showDetailWidth/showDetailHeight;
        var top = 0;
        if(rate >= showrate){
            showwidth = showDetailWidth;
            showheight = showwidth*dataheight/datawidth;
            top = (showDetailWidth-showheight)/2;
        }else{
            showheight = showDetailHeight;
            showwidth = showheight*datawidth/dataheight;
        }
        var src = data[i].smallImgFile;
        var sid = data[i].sid;
        var purlname = data[i].PUrlName;
        var urlname = data[i].urlName;
        var urltitle = data[i].urlTitle;
        var imgsize = data[i].imgSize;
        var suffixname = data[i].suffixName;
        var urlsize = data[i].urlSize;
        var urltime = data[i].urlTime;
        urlsize = urlsizeTransfer(urlsize);

        content += "<li class='"+classname+"'><img sid='"+sid+"' purlname='"+purlname+"' urlname='"+urlname+"' urltitle='"+urltitle+"' imgsize='"+imgsize+"' suffixname='"+suffixname+"' urlsize='"+urlsize+"' datawidth='"+datawidth+"' dataheight='"+dataheight+"' urltime='"+urltime+"' src='"+src+"' alt='' width='"+showwidth+"' height='"+showheight+"' style='top:"+top+"px;position:relative;' onclick='showIt(this)' title='"+urltitle+"'></li>";
    }

    content += "</ul></div>";
    $("#imageList").html(content);
    $("#originalImg").attr("width",data[startIdx].imgWidth);
    $("#originalImg").attr("height",data[startIdx].imgHeight);
    $("#originalImg").attr("src",data[startIdx].smallImgFile);
    if(data[startIdx].imgHeight<originalImgMaxHeight){
        var originalImgTop = (originalImgMaxHeight-data[startIdx].imgHeight)/2;
        $("#originalImg").attr("style","top:"+originalImgTop+"px;position:relative;");
    }
    //显示图片信息
    detailShow($("[sid="+data[startIdx].sid+"]"));

}

/**
 * 细览页鼠标点击小图查看大图
 * @param {Object} target
 */
function detailShow(target){
    var totalwidth = parseInt($(window).width());//页面宽度
    var src = $(target).attr("urlname");
    var purlname = $(target).attr("purlname");
    var datawidth = $(target).attr("datawidth");
    var dataheight = $(target).attr("dataheight");
    var maxwidth = parseInt(totalwidth*0.8);
    if(datawidth>maxwidth){
        dataheight = maxwidth*dataheight/datawidth;
        datawidth = maxwidth;
    }
    if(dataheight<originalImgMaxHeight){
        var originalImgTop = (originalImgMaxHeight-dataheight)/2;
        //$("#originalImg").attr("style","top:"+originalImgTop+"px;position:relative;");
    }else{
        datawidth = datawidth*originalImgMaxHeight/dataheight;
        dataheight = originalImgMaxHeight;
    }

    //进行加载判断
    imageLazy(src,datawidth,dataheight,purlname);
    //$("#originalImg").LoadImage(true,datawidth,dataheight,src);
    //$("#originalImg").LoadImage(true,800,600,"/images/loading-big.gif");

    $(".xuanzhong").attr("class","biankuang");
    $(target).parent("li").attr("class","xuanzhong");
//	var currtop = (1-detailStartIdx)*(showDetailHeight+2);
//	$("#resultList").attr("style","position:relative;top:"+currtop+"px;");
    var currleft = (4-detailStartIdx)*(showDetailWidth+2);
    var listdivwidth = $("#listdiv").width();

    $("#listdiv").attr("style","position:relative;left:"+currleft+"px;float:left;width:"+(parseInt(listdivwidth+showDetailWidth*pagesize+2))+"px;");
    var urltitle = $(target).attr("urltitle");
    $("#originalImg").attr("title",urltitle);
    if(urltitle){
        urltitle = urltitle.replace("<font color='red'>","");
        urltitle = urltitle.replace("<\/font>","");
        if(urltitle.length>15){
            urltitle = urltitle.substr(0,15);
        }
        if(purlname != ''){
            urltitle = "<a  href='http://"+purlname+"' target='_blank' title='"+urltitle+"' class='imgdetaillink'>"+urltitle+"</a>";
        }
    }
    var showpurlname = "";
    if(purlname.length>30){
        showpurlname = purlname.substr(0,30)+"...";
    }else{
        showpurlname = purlname;
    }
    $("#urltitle").html(urltitle);
    $("#purlname").html("<a style='color:#001fba;' href='http://"+purlname+"' target='_blank' title='"+purlname+"'>"+showpurlname+"</a>");
    $("#imgsize").html($(target).attr("imgsize"));
    $("#suffixname").html($(target).attr("suffixname"));
    $("#urlsize").html($(target).attr("urlsize"));
}

/**
 * 细览页查看下一张
 */
function detailShowNext(){
    if(detailStartIdx == detailData.length-1){
        return;
    }
    var sid = detailData[parseInt(detailStartIdx)+1].sid;
    plusIdx();
    detailShow($("[sid="+sid+"]"));
}

/**
 * 细览页查看上一张
 */
function detailShowPre(){
    if(detailStartIdx == 0){
        return;
    }
    var sid = detailData[parseInt(detailStartIdx)-1].sid;
    mimusIdx();
    detailShow($("[sid="+sid+"]"));
}

/**
 * 展示当前图片
 * @param {Object} target
 */
function showIt(target){
    var sid = $(target).attr("sid");
    for(var i=0;i<detailData.length;i++){
        if(detailData[i].sid == sid){
            detailStartIdx = i;
            break;
        }
    }
    if(detailStartIdx==0){
        getMoreResult(false);
    }else if(detailStartIdx==detailData.length-1){
        getMoreResult(true);
    }
    detailShow(target);
}

function plusIdx(){
    detailStartIdx = parseInt(detailStartIdx)+1;
    detailcurrpageroffset = parseInt(detailcurrpageroffset)+1;
    if(detailStartIdx==detailData.length-1){
        getMoreResult(true);
    }
}

function mimusIdx(){
    detailStartIdx = parseInt(detailStartIdx)-1;
    detailcurrpageroffset = parseInt(detailcurrpageroffset)-1;
    if(detailStartIdx==0){
        getMoreResult(false);
    }
}

function getMoreResult(next){
    if((next && !maydown)||(!next && !mayup)){
        return;
    }
    var searchword = $("#lastq").val();
    searchword = encodeURL(searchword);
    var imgSizeType = $("#imgSizeType").val();
    var imgType = $("#imgType").val();
    var searchWord=$("#searchWord").val();
    searchWord = encodeURL(searchWord);
    var trslc=$("#trslc").val();
    var offset = pageroffset;
    var supply = 0;
    if(pageroffset % pagesize != 0){
        supply = pagesize - pageroffset % pagesize;
    }
    var currpageroffset = parseInt(detailcurrpageroffset) + parseInt(detailsearchpageroffset) + 1;
    if(!next){
//   		offset = parseInt(offset) - parseInt(maxResult) - pagesize + supply;
//   		if(offset < 0){
//   			mayup = false;
//   			return;
//   		}
        currpageroffset = currpageroffset - pagesize;
        if(currpageroffset<0){
            mayup = false;
            return;
        }
        maydown = true;
    }else{
        mayup = true;
    }
//	var action = "doSearch.trs?trs_dispatch=9&detail=true&page=true&model=imageSearch&db=image&filter_keyWord="+searchword+"&pageroffset="+offset+"&imgSizeType="+imgSizeType+"&imgType="+imgType;
    var action = "http://ssyq.zx.ga/doSearch.trs?trs_dispatch=9&detail=true&page=true&model=imageSearch&db=image&filter_keyWord="+searchword+"&pageroffset="+currpageroffset+"&imgSizeType="+imgSizeType+"&imgType="+imgType+"&searchWord="+searchWord+"&trslc="+trslc;
    $.ajax( {
        type : 'GET',
        url : action,
        dataType:'json',
        success : function(result) {
            var data = eval('(' + result + ')');
            if(next){
                detailData = jsonUnion(data,detailData);
                var content = "";
                for(var i=0;i<data.length;i++){
                    classname = "biankuang";
                    datawidth = data[i].imgWidth;
                    dataheight = data[i].imgHeight;
                    var rate = datawidth/dataheight;
                    var showrate = showDetailWidth/showDetailHeight;
                    var top = 0;
                    if(rate >= showrate){
                        showwidth = showDetailWidth;
                        showheight = showwidth*dataheight/datawidth;
                        top = (showDetailWidth-showheight)/2;
                    }else{
                        showheight = showDetailHeight;
                        showwidth = showheight*datawidth/dataheight;
                    }
                    var src = data[i].smallImgFile;
                    var sid = data[i].sid;
                    var purlname = data[i].PUrlName;
                    var urlname = data[i].urlName;
                    var urltitle = data[i].urlTitle;
                    var imgsize = data[i].imgSize;
                    var suffixname = data[i].suffixName;
                    var urlsize = data[i].urlSize;
                    var urltime = data[i].urlTime;
                    urlsize = urlsizeTransfer(urlsize);

                    content += "<li class='"+classname+"'><img sid='"+sid+"' purlname='"+purlname+"' urlname='"+urlname+"' urltitle='"+urltitle+"' imgsize='"+imgsize+"' suffixname='"+suffixname+"' urlsize='"+urlsize+"' datawidth='"+datawidth+"' dataheight='"+dataheight+"' urltime='"+urltime+"' src='"+src+"' alt='' width='"+showwidth+"' height='"+showheight+"' style='top:"+top+"px;position:relative;' onclick='showIt(this)' title='"+urltitle+"'></li>";
                }

                $("#resultList").append(content);
            }else{
                detailStartIdx = data.length -1;
                detailData = jsonUnion(detailData,data);
                showImgDetailList(detailData,detailStartIdx,0,"false");
            }

//			if(result.length > 0){
//				if(result.length < pagesize){
//					if(next){
//						maydown = false;
//						mayup = true;
//					}else{
//						mayup = false;
//						maydown = true;
//					}
//				}
//				var oridata = detailData;
//				var max = parseInt(maxResult);
//				var start = result.length + oridata.length - max;
//				var data = oridata;
//				var lastlength = 0;
//				if(next){
//					for(var i=start;i<oridata.length;i++){
//						data[i-start] = oridata[i];
//					}
//					lastlength = oridata.length - start;
//					start = max-result.length;
//					for(var j=0;j<result.length;j++){
//						data[start+j] = result[j];
//					}
//					detailData = data;
//					if(detailStartIdx == max-1){
//						detailStartIdx = detailStartIdx - result.length;
//					}
//					if(detailStartIdx>=0){
//						showImgDetailList(detailData,detailStartIdx,lastlength);
//					}
//				}else{
//					start = start - supply;
//					for(var i=0;i<oridata.length-start;i++){
//						data[i+start] = oridata[i];
//					}
//					var k = 0;
//					for(var j=result.length-start;j<result.length;j++){
//						data[k++] = result[j];
//					}
//					detailData = data;
//					if(detailStartIdx == 0){
//						detailStartIdx = detailStartIdx + result.length - supply;
//					}
//					//初始化需要修正的pageoffset大小。
//					lastlength = detailData.length*2 - oridata.length + start;
//					if(detailStartIdx>=0){
//						showImgDetailList(detailData,detailStartIdx,lastlength);
//					}
//				}
//			}else{
//				if(next){
//						maydown = false;
//					}else{
//						mayup = false;
//					}
//			}
        },
        dataType : 'html'
    });
}

/**
 * 计算缩略图的宽度
 * @param {Object} width
 * @param {Object} height
 * @return {TypeName}
 */
function getsmallimgwidth(width,height){
    if(width == 0 || height ==0){
        return parseInt(imgmaxwidth);
    }
    width = parseInt(width);
    height = parseInt(height);
    if(width<parseInt(imgmaxwidth) && height < parseInt(imgmaxheight)){
        return width;
    }
    var rate = width/height;
    var baserate = parseInt(imgmaxwidth)/parseInt(imgmaxheight);
    if(rate > baserate){
        return parseInt(imgmaxwidth);
    }else{
        return width*imgmaxheight/height;
    }
}

/**
 * 计算缩略图的高度
 * @param {Object} width
 * @param {Object} height
 * @return {TypeName}
 */
function getsmallimgheight(width,height){
    if(width == 0 || height ==0){
        return parseInt(imgmaxheight);
    }
    width = parseInt(width);
    height = parseInt(height);
    if(width<parseInt(imgmaxwidth) && height < parseInt(imgmaxheight)){
        return height;
    }
    var rate = width/height;
    var baserate = parseInt(imgmaxwidth)/parseInt(imgmaxheight);
    if(rate < baserate){
        return parseInt(imgmaxheight);
    }else{
        return height*imgmaxwidth/width;
    }
}

/**
 * 图片推送
 * @param {Object} result
 * @param {Object} maxHeight
 */
function showImgPush(result,maxHeight){
    var data = eval('('+result+')');
    var content = "";
    for(var i=0;i<data.length;i++){
        var width = data[i].imgWidth;
        var height = data[i].imgHeight;
        width = parseInt(width)*parseInt(maxHeight)/parseInt(height);
        var src = data[i].smallImgFile;
        var filter_keyWord = $("#lastq").val();
        filter_keyWord = encodeURL(filter_keyWord);
        var url = detailaction+"?trs_dispatch=9&detail=true&model=imageSearch&db=image&filter_keyWord="+filter_keyWord+"&pageroffset="+i;
        content += "<div style='width:"+width+"px;height:"+maxHeight+"px;'><a href='"+url+"' target='_blank'><img src='"+src+"' alt='' width='"+width+"px' height='"+maxHeight+"px'/></a></div>";
    }
    $("#imagepushlist").append(content);
}

/**
 * 计算图片大小
 * @param {Object} urlsize
 * @return {TypeName}
 */
function urlsizeTransfer(urlsize){
    var size = "";
    if(parseInt(urlsize)<1024){
        size = urlsize+"B";
    }else {
        size = parseInt(parseInt(urlsize)/1024)+"K";
        urlsize = parseInt(parseInt(urlsize)/1024);
        if(urlsize>1024){
            size = parseInt(parseInt(urlsize)/1024)+"M";
        }
    }
    return size;
}

function showbig(target){
    var width = $(target).width();
    var height = $(target).height();
    var showwidth = width * 1.5;
    var showheight = height * 1.5;
    //如果图片尺寸小，则不放大
    if(showwidth<imgmaxwidth || showheight<imgmaxheight){
        showwidth = width;
        showheight = height;
    }
    showwidth = showwidth + 10;
    var bigimgdivwidth = showwidth;
    if(bigimgdivwidth < bigimgminwidth){
        bigimgdivwidth = bigimgminwidth;
    }
    var src = $(target).attr("src");
    var left = $(target).offset().left;
    var top = $(target).offset().top;
    var bigimgleft = parseInt(left - (bigimgdivwidth-width)/2 -1);
    var bigimgtop = parseInt(top - (showheight-height)/2 -6);
    showheight = showheight + 10;
    var bigimgdivstyle = "position:absolute;left:"+bigimgleft+"px;top:"+bigimgtop+"px;width:"+bigimgdivwidth+"px;height:auto;border:1px solid #999;background-color: white;";
    $("#showbigdiv").attr("style",bigimgdivstyle);
    $("#showbigdiv").hide();
//	$("#showbigdiv").animate({
//        height: showheight + 100,
//        width: showwidth,
//        left: bigimgleft,
//        top: bigimgtop
//    }, "10");
    $("#showbigimg").attr("src",src);
    $("#showbigimg").attr("width",showwidth-10);
    $("#showbigimg").attr("height",showheight-10);
    $("#showbigimg").attr("class","bigimage");
    $("#bigimgdiv").attr("style","text-align: center;vertical-align: middle;top:5px;position:relative;");
    $("#bigimgdiv").hide();
    $("#showbigimg").parent("a").attr("href",$(target).parent("a").attr("href"));
    $("#showbigimg").parent("a").attr("class","imagelink");
    $("#showbigdiv").fadeIn(1500);
    $("#bigimgdiv").fadeIn(1500);
    var purlname = $(target).attr("purlname");
    var urltitle = $(target).attr("urltitle");
    if(urltitle){
        urltitle = urltitle.replace("<font color='red'>","");
        urltitle = urltitle.replace("<\/font>","");
        if(urltitle.length>15){
            urltitle = urltitle.substr(0,15);
        }
        if(purlname != ''){
            urltitle = "<a  href='http://"+purlname+"' target='_blank' title='"+urltitle+"' class='imgdetaillink'>"+urltitle+"</a>";
        }
    }
    var showpurlname = "";
    if(purlname.length>30){
        showpurlname = purlname.substr(0,30)+"...";
    }else{
        showpurlname = purlname;
    }
    $("#urltitle").html(urltitle);
    $("#purlname").html("<a  href='http://"+purlname+"' target='_blank' title='"+purlname+"'>"+showpurlname+"</a>");
    $("#imgsize").html($(target).attr("imgsize"));
    $("#suffixname").html($(target).attr("suffixname"));
    $("#urlsize").html($(target).attr("urlsize"));
    $("#urltime").html($(target).attr("urltime"));
}

function hidebig(theEvent){
    if (theEvent){
        var browser=navigator.userAgent;
        if (browser.indexOf("Firefox")>0){
            HTMLElement.prototype.contains=function(obj) {
                if(obj==this)return true;
                while(obj=obj.parentNode)if(obj==this)return true;   return false;
            }
            if (document.getElementById('showbigdiv').contains(theEvent.relatedTarget)) {
                return;   //结束函式
            }
        }
        if (browser.indexOf("MSIE")>0){  //如果是IE
            if (document.getElementById('showbigdiv').contains(event.toElement)) {  //如果是子元素
                return;  //结束函式
            }
        }
    }
    /*要执行的操作*/
    $("#showbigdiv").hide();
}
/**
 * 点击显示更多图片
 */
function clickShowMorePic(){
    var heightOffset = 10;
    //  var scrollTarget = $(window);
    var searchword = $("#lastq").val();
    searchword = encodeURL(searchword);
    var imgSizeType = $("#imgSizeType").val();
    var imgType = $("#imgType").val();
    var trslc=$("#trslc").val();
    var action = 'http://localhost:63342/doSearch.trs?filter_keyWord='+searchword+'&trs_dispatch=9&model=imageSearch&sort=&db=image&queryFrom=searchForm&second=false&keepBox=false&category=&sorttype=RELEVANCE%3B*RANK&table=&keyword_Pos=&channel=&trslc='+trslc;
    if(!searchword || searchword == '')
    {
        var searchWord=$("#searchWord").val();
        searchWord=encodeURL(searchWord);
        action+="&searchWord="+searchWord;
    }
    var scrollpageroffset = pageno*30;
    var param = {"pageroffset":scrollpageroffset,"imgSizeType":imgSizeType,"imgType":imgType};
    //   var mayLoadContent = scrollTarget.scrollTop()+heightOffset >= $(document).height() - scrollTarget.height();
    if (currpageroffset!=pageroffset){
        currpageroffset=pageroffset;
        $.ajax({
            type: 'GET',
            url: action,
            data: param,
            beforeSend: function(){
                $(".imgloadingdiv").show();
                var aa = "<script type=\"text/javascript\">showImg('[{\"CONTENT\":\"\",\"DB\":\"\",\"PINYIN\":\"\",\"PUrlName\":\"www.syf.zys.gz/wMcms_ShowArticle.asp?/4250.html\",\"SID\":\"\",\"SOURCE\":\"\",\"XIANGJIE\":\"\",\"appFlag\":\"\",\"authors\":\"\",\"catalog\":\"\",\"channel\":\"\",\"charSet\":\"\",\"content\":\"\",\"contentType\":\"\",\"dbtype\":0,\"delFlag\":\"\",\"extName\":\"\",\"hitPoints\":0,\"imgFeature\":\"fff8c0c0cccfffff\",\"imgHeight\":\"500\",\"imgName\":\"20131010151340614.jpg\",\"imgSize\":\"700x500\",\"imgWidth\":\"700\",\"ipAddress\":\"\",\"keywords\":\"\",\"lastTime\":\"\",\"name\":\"\",\"pageLevel\":\"\",\"pageRank\":\"\",\"port\":\"\",\"position\":61,\"purlId\":\"\",\"rank\":17,\"relevance\":0.5430074334144592,\"score\":0,\"selectedBox\":false,\"showTitle\":\"\",\"sid\":\"21876340\",\"simFlag\":\"\",\"simRank\":\"\",\"siteName\":\"\",\"smallImgFile\":\"http://image.ssyq.zx.ga/imagedata/smallimgfile/2013/10/24/925/823/6766006569808163619.jpg\",\"srcName\":\"\",\"startId\":\"\",\"subUrlName\":\"http://www.syf.zys.gz/uploadfile/jpg/2013-10/20131010151340614.jpg\",\"suffixName\":\"jpg\",\"trsInterval\":\"\",\"urlBody\":\"\",\"urlDate\":\"\",\"urlId\":\"\",\"urlName\":\"http://www.syf.zys.gz/uploadfile/jpg/2013-10/20131010151340614.jpg\",\"urlSize\":\"45234\",\"urlTime\":\"2013.10.12 00:00:00\",\"urlTitle\":\"党委组织离退休职工欢度重阳节  李余松书记出席并讲话  姚震阳政委通报公安工作情况\",\"urlTopic\":\"\",\"vabstract\":\"\"}]',0);</script>";
                $("#resultImg").append(aa);
            },
            success: function(data){
                $(".imgloadingdiv").hide();
                //var aa = "<script type=\"text/javascript\">showImg('[{\"CONTENT\":\"\",\"DB\":\"\",\"PINYIN\":\"\",\"PUrlName\":\"www.syf.zys.gz/wMcms_ShowArticle.asp?/4250.html\",\"SID\":\"\",\"SOURCE\":\"\",\"XIANGJIE\":\"\",\"appFlag\":\"\",\"authors\":\"\",\"catalog\":\"\",\"channel\":\"\",\"charSet\":\"\",\"content\":\"\",\"contentType\":\"\",\"dbtype\":0,\"delFlag\":\"\",\"extName\":\"\",\"hitPoints\":0,\"imgFeature\":\"fff8c0c0cccfffff\",\"imgHeight\":\"500\",\"imgName\":\"20131010151340614.jpg\",\"imgSize\":\"700x500\",\"imgWidth\":\"700\",\"ipAddress\":\"\",\"keywords\":\"\",\"lastTime\":\"\",\"name\":\"\",\"pageLevel\":\"\",\"pageRank\":\"\",\"port\":\"\",\"position\":61,\"purlId\":\"\",\"rank\":17,\"relevance\":0.5430074334144592,\"score\":0,\"selectedBox\":false,\"showTitle\":\"\",\"sid\":\"21876340\",\"simFlag\":\"\",\"simRank\":\"\",\"siteName\":\"\",\"smallImgFile\":\"http://image.ssyq.zx.ga/imagedata/smallimgfile/2013/10/24/925/823/6766006569808163619.jpg\",\"srcName\":\"\",\"startId\":\"\",\"subUrlName\":\"http://www.syf.zys.gz/uploadfile/jpg/2013-10/20131010151340614.jpg\",\"suffixName\":\"jpg\",\"trsInterval\":\"\",\"urlBody\":\"\",\"urlDate\":\"\",\"urlId\":\"\",\"urlName\":\"http://www.syf.zys.gz/uploadfile/jpg/2013-10/20131010151340614.jpg\",\"urlSize\":\"45234\",\"urlTime\":\"2013.10.12 00:00:00\",\"urlTitle\":\"党委组织离退休职工欢度重阳节  李余松书记出席并讲话  姚震阳政委通报公安工作情况\",\"urlTopic\":\"\",\"vabstract\":\"\"}]',4);</script>";
                //$("#resultImg").append(aa);
            },
            dataType: 'html'
        });
    }
}
/*
 * 添加滚动显示更多图片
 */
function scrollShowMorePic(){
    var heightOffset = 10;
    var scrollTarget = $(window);
    var searchword = $("#lastq").val();
    searchword = encodeURL(searchword);
    var imgSizeType = $("#imgSizeType").val();
    var imgType = $("#imgType").val();
    var trslc=$("#trslc").val();
    var action = 'http://localhost:63342/doSearch.trs?filter_keyWord='+searchword+'&trs_dispatch=9&model=imageSearch&sort=&db=image&queryFrom=searchForm&second=false&keepBox=false&category=&sorttype=RELEVANCE%3B*RANK&table=&keyword_Pos=&channel=&trslc='+trslc;
    if(!searchword || searchword == '')
    {
        var searchWord=$("#searchWord").val();
        searchWord=encodeURL(searchWord);
        action+="&searchWord="+searchWord;
    }
    var scrollpageroffset = pageno*30;
    var param = {"pageroffset":scrollpageroffset,"imgSizeType":imgSizeType,"imgType":imgType};
    var mayLoadContent = scrollTarget.scrollTop()+heightOffset >= $(document).height() - scrollTarget.height();
    if (mayLoadContent && currpageroffset!=pageroffset){
        currpageroffset=pageroffset;
        $.ajax({
            type: 'GET',
            url: action,
            data: param,
            beforeSend: function(){
                $(".imgloadingdiv").show();
                $("#pageMoreWrap").html("");
                var aa = "<script type=\"text/javascript\">showImg('[{\"CONTENT\":\"\",\"DB\":\"\",\"PINYIN\":\"\",\"PUrlName\":\"www.syf.zys.gz/wMcms_ShowArticle.asp?/4250.html\",\"SID\":\"\",\"SOURCE\":\"\",\"XIANGJIE\":\"\",\"appFlag\":\"\",\"authors\":\"\",\"catalog\":\"\",\"channel\":\"\",\"charSet\":\"\",\"content\":\"\",\"contentType\":\"\",\"dbtype\":0,\"delFlag\":\"\",\"extName\":\"\",\"hitPoints\":0,\"imgFeature\":\"fff8c0c0cccfffff\",\"imgHeight\":\"500\",\"imgName\":\"20131010151340614.jpg\",\"imgSize\":\"700x500\",\"imgWidth\":\"700\",\"ipAddress\":\"\",\"keywords\":\"\",\"lastTime\":\"\",\"name\":\"\",\"pageLevel\":\"\",\"pageRank\":\"\",\"port\":\"\",\"position\":61,\"purlId\":\"\",\"rank\":17,\"relevance\":0.5430074334144592,\"score\":0,\"selectedBox\":false,\"showTitle\":\"\",\"sid\":\"21876340\",\"simFlag\":\"\",\"simRank\":\"\",\"siteName\":\"\",\"smallImgFile\":\"http://image.ssyq.zx.ga/imagedata/smallimgfile/2013/10/24/925/823/6766006569808163619.jpg\",\"srcName\":\"\",\"startId\":\"\",\"subUrlName\":\"http://www.syf.zys.gz/uploadfile/jpg/2013-10/20131010151340614.jpg\",\"suffixName\":\"jpg\",\"trsInterval\":\"\",\"urlBody\":\"\",\"urlDate\":\"\",\"urlId\":\"\",\"urlName\":\"http://www.syf.zys.gz/uploadfile/jpg/2013-10/20131010151340614.jpg\",\"urlSize\":\"45234\",\"urlTime\":\"2013.10.12 00:00:00\",\"urlTitle\":\"党委组织离退休职工欢度重阳节  李余松书记出席并讲话  姚震阳政委通报公安工作情况\",\"urlTopic\":\"\",\"vabstract\":\"\"}]',0);</script>";
                $("#pageMoreWrap").append(aa);
            },
            success: function(data){
                $(".imgloadingdiv").hide();
                $("#resultImg").append(data);

            },
            dataType: 'html'
        });
    }
}

/**
 * json合并
 * @param {Object} src
 * @param {Object} dest
 * @return {TypeName} 合并后的json
 */
function jsonUnion(src,dest){
    if(src && src.length > 0 && dest){
        var destlength = dest.length;
        if(!destlength){
            return src;
        }
        for(var i=0;i<src.length;i++){
            dest[destlength+i] = src[i];
        }
    }
    return dest;
}



/**
 *
 * @param	{String}	图片路径
 * @param	{Function}	尺寸就绪
 * @param	{Function}	加载完毕 (可选)
 * @param	{Function}	加载错误 (可选)
 * @example imgReady('http://www.google.com.hk/intl/zh-CN/images/logo_cn.png', function () {
		alert('size ready: width=' + this.width + '; height=' + this.height);
	});
 */
var imgReady = (function () {
    var list = [], intervalId = null,

    // 用来执行队列
        tick = function () {
            var i = 0;
            for (; i < list.length; i++) {
                list[i].end ? list.splice(i--, 1) : list[i]();
            };
            !list.length && stop();
        },

    // 停止所有定时器队列
        stop = function () {
            clearInterval(intervalId);
            intervalId = null;
        };

    return function (url, ready, load, error) {
        var onready, width, height, newWidth, newHeight,
            img = new Image();

        img.src = url;

        // 如果图片被缓存，则直接返回缓存数据  <a href="http://www.51xuediannao.com/js/">jquery特效</a> http://www.51xuediannao.com/js/
        if (img.complete) {
            ready.call(img);
            load && load.call(img);
            return;
        };

        width = img.width;
        height = img.height;

        // 加载错误后的事件
        img.onerror = function () {
            error && error.call(img);
            onready.end = true;
            img = img.onload = img.onerror = null;
        };

        // 图片尺寸就绪
        onready = function () {
            newWidth = img.width;
            newHeight = img.height;
            if (newWidth !== width || newHeight !== height ||
                // 如果图片已经在其他地方加载可使用面积检测
                newWidth * newHeight > 1024
                ) {
                ready.call(img);
                onready.end = true;
            };
        };
        onready();

        // 完全加载完毕的事件
        img.onload = function () {
            // onload在定时器时间差范围内可能比onready快
            // 这里进行检查并保证onready优先执行
            !onready.end && onready();

            load && load.call(img);

            // IE gif动画会循环执行onload，置空onload即可
            img = img.onload = img.onerror = null;
        };

        // 加入队列中定期执行
        if (!onready.end) {
            list.push(onready);
            // 无论何时只允许出现一个定时器，减少浏览器性能损耗
            if (intervalId === null) intervalId = setInterval(tick, 40);
        };
    };
})();
function imageLazy(src,width,height,url){
    var imgUrl =src;
    // 参数: 图片地址, 尺寸就绪事件, 完全加载事件, 加载错误事件

    imgReady(imgUrl,function () {
        //alert(imgUrl);
        //图片加载就绪事件
        $("#originalImg").attr("src",src);
        $("#originalImg").attr("width",width);
        $("#originalImg").attr("height",height);
        $("#originalImg").parent("a").attr("href","http://"+url);
        $("#originalImg").css("top","21px");
        $("#originalImg").css("left","");
        $("#originalImg").css("position","relative");
    },function(){
        //完全加载
        $("#originalImg").attr("src",src);
        $("#originalImg").attr("width",width);
        $("#originalImg").attr("height",height);
        $("#originalImg").parent("a").attr("href","http://"+url);
        $("#originalImg").css("top","21px");
        $("#originalImg").css("left","");
        $("#originalImg").css("position","relative");
    },function(){
        //加载错误事件
        $("#originalImg").attr("src","/images/loading-big.gif");
        $("#originalImg").attr("width",30);
        $("#originalImg").attr("height",30);
        $("#originalImg").css("position","absolute");
        $("#originalImg").css("display","block");
        $("#originalImg").css("top","35%");
        $("#originalImg").css("left","45%");
    });
}
/**
 * IE下 window.onresize 有bug 可以使用debounce封装监听函数
 * see http://blog.csdn.net/fudesign2008/article/details/7035537
 * @author FuDesign2008@163.com
 * @date   2011-11-30
 * @time   下午04:02:55
 */

/**
 *
 * @param {Function} callback 回调函数
 * @param {Integer} delay   延迟时间，单位为毫秒(ms)，默认150
 * @param {Object} context  上下文，即this关键字指向的对象，默认为null
 * @return {Function}
 */
function debounce(callback, delay, context){
    if (typeof(callback) !== "function") {
        return;
    }
    delay = delay || 150;
    context = context || null;
    var timeout;
    var runIt = function(){
        callback.apply(context);
    };
    return (function(){
        window.clearTimeout(timeout);
        timeout = window.setTimeout(runIt, delay);
    });
}
