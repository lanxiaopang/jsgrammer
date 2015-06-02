<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.inspur.pcs.web.data.GcqUserInfo"%>
 
<!DOCTYPE html>
<html>
<%
String contPath = request.getContextPath(); 
%>
 
<HEAD><TITLE>济南公安信息网</TITLE>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<META content=False name=vs_showGrid>
<META content="MSHTML 6.00.2900.6357" name=GENERATOR>
<META content=C# name=CODE_LANGUAGE>
<META content=JavaScript name=vs_defaultClientScript>
<META content=http://schemas.microsoft.com/intellisense/ie5 
name=vs_targetSchema><LINK href="jngaxxw.files/index.css" rel=stylesheet>
<SCRIPT src="jngaxxw.files/menu.js" type=text/javascript></SCRIPT>

<STYLE type=text/css>A {
	FONT-SIZE: 12px
}
A:visited {
	TEXT-DECORATION: none
}
A:hover {
	TEXT-DECORATION: none
}
A:active {
	TEXT-DECORATION: none
}
</STYLE>

<SCRIPT type=text/javascript>
  
		</SCRIPT>
</HEAD>
<BODY bottomMargin=0 bgColor=#ffffff leftMargin=0 topMargin=0 rightMargin=0 >
 
<TABLE cellSpacing=0 cellPadding=0 width=1001 align="center" border=0>
  <TBODY>
  <TR>
    <TD>
      <DIV id=menuDiv 
      style="Z-INDEX: 2; VISIBILITY: hidden; POSITION: absolute"></DIV>
      <TABLE 
      style="BACKGROUND: url(images/border2_bg.gif) repeat-x; WIDTH: 1008px; HEIGHT: 30px">
        <TBODY>
        <TR>
          <TD width=800>
            </TD>
          <TD>
            <DIV style="PADDING-RIGHT: 15px; FLOAT: right">
            <TABLE cellSpacing=0 cellPadding=0 width=500 border=0>
              <TBODY>
              <TR>
                <TD style="WIDTH: 60px; PADDING-TOP: 5px" width=60></TD>
                <TD style="PADDING-TOP: 5px" align=right><A>站内检索：</A> </TD>
                <TD style="PADDING-TOP: 4px" width=120><INPUT class=smallInput 
                  onkeypress=if(event.keyCode==13){search();} id=topic> </TD>
                <TD width=30></TD>
                <TD style="PADDING-TOP: 6px" width=100><IMG 
                  style="CURSOR: hand" onclick=search(); 
                  src="jngaxxw.files/sousuo.jpg"> </TD></TR>
              <SCRIPT type=text/javascript>
function search()
{
	window.open("infolist/search.aspx?sort="+document.getElementById("Search1_searchsort").value+"&topic="+document.getElementById("topic").value);
}
												</SCRIPT>
              </TBODY></TABLE></DIV></TD></TR></TBODY></TABLE></TD></TR>
  <TR>
    <TD>
      <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR background="/images/bg.jpg">
          <TD width=493><IMG height=136 src="jngaxxw.files/logo.jpg" 
          width=493></TD>
          <TD bgColor=#a5c7ef><IFRAME src="jngaxxw.files/banner.htm" 
            frameBorder=0 width=509 scrolling=no 
        height=136></IFRAME></TD></TR></TBODY></TABLE></TD></TR>
  <TR>
    <TD align=right background=jngaxxw.files/menubg.gif height=32>
      <TABLE id=Menu1_menulist 
      style="BACKGROUND-IMAGE: url(/images/menubg.gif); WIDTH: 99%; BORDER-COLLAPSE: collapse; HEIGHT: 32px" 
      cellSpacing=0 cellPadding=0 border=0>
        <TBODY>
        <TR>
          <TD noWrap 
            background=jngaxxw.files/menu.gif>&nbsp;&nbsp;&nbsp;&nbsp;<A 
            class=green href="http://10.49.10.9/default.aspx" 
            target=_blank>首页</A></TD>
          <TD noWrap 
            background=jngaxxw.files/menu.gif>&nbsp;&nbsp;&nbsp;&nbsp;<A 
            class=green href="http://10.49.10.9/infolist/techshow.aspx?sid=3109" 
            target=_blank>公安简报</A></TD>
          <TD noWrap 
            background=jngaxxw.files/menu.gif>&nbsp;&nbsp;&nbsp;&nbsp;<A 
            class=green href="http://10.49.9.213:8088/" 
target=_blank>政治工作</A></TD>
          <TD noWrap 
            background=jngaxxw.files/menu.gif>&nbsp;&nbsp;&nbsp;&nbsp;<A 
            class=green href="http://10.49.10.9/infolist/techshow.aspx?sid=09" 
            target=_blank>法制110</A></TD>
          <TD noWrap 
            background=jngaxxw.files/menu.gif>&nbsp;&nbsp;&nbsp;&nbsp;<A 
            class=green href="http://10.49.10.9/infolist/tech.aspx?sid=51" 
            target=_blank>警钟长鸣</A></TD>
          <TD noWrap 
            background=jngaxxw.files/menu.gif>&nbsp;&nbsp;&nbsp;&nbsp;<A 
            class=green href="http://10.49.10.9/infolist/tech.aspx?sid=30" 
            target=_blank>科技强警</A></TD>
          <TD noWrap 
            background=jngaxxw.files/menu.gif>&nbsp;&nbsp;&nbsp;&nbsp;<A 
            class=green href="http://10.49.10.9/infolist/techlist.aspx?sid=14" 
            target=_blank>公安大事记</A></TD>
          <TD noWrap 
            background=jngaxxw.files/menu.gif>&nbsp;&nbsp;&nbsp;&nbsp;<A 
            class=green href="https://10.49.6.195:8443/sologin/linkToDoc.jsp" 
            target=_blank>办公自动化</A></TD>
          <TD noWrap 
            background=jngaxxw.files/menu.gif>&nbsp;&nbsp;&nbsp;&nbsp;<A 
            class=green href="http://10.49.10.9/infolist/techlist.aspx?sid=8701" 
            target=_blank>明传电报</A></TD>
          <TD noWrap 
            background=jngaxxw.files/menu.gif>&nbsp;&nbsp;&nbsp;&nbsp;<A 
            class=green href="http://10.49.6.164/Main_zj.aspx?page=zjlist.aspx" 
            target=_blank>图片中心</A></TD>
          <TD noWrap 
            background=jngaxxw.files/menu.gif>&nbsp;&nbsp;&nbsp;&nbsp;<A 
            class=green href="http://10.49.10.9/infolist/techshow.aspx?sid=37" 
            target=_blank>视频中心</A></TD>
          <TD noWrap 
            background=jngaxxw.files/menu.gif>&nbsp;&nbsp;&nbsp;&nbsp;<A 
            class=green href="http://10.49.10.9/infolist/techshow.aspx?sid=4401" 
            target=_blank>应用系统导航</A></TD></TR></TBODY></TABLE></TD></TR>
  <TR>
    <TD style="HEIGHT: 401px" align=middle>
      <TABLE cellSpacing=0 cellPadding=0 width=992 border=0>
        <TBODY>
        <TR>
          <TD vAlign=top width=242>
            <TABLE cellSpacing=0 cellPadding=0 width=242 border=0>
              <TBODY>
              <TR>
                <TD style="HEIGHT: 1px">
                  <TABLE id=Table1 height=212 cellSpacing=0 cellPadding=0 
                  width=242 background=jngaxxw.files/news2.gif border=0>
                    <TBODY>
                    <TR>
                      <TD vAlign=bottom align=right 
                      background=jngaxxw.files/news1.gif height=27>
                        <TABLE id=News1_Table2 cellSpacing=0 cellPadding=0 
                        width=30 border=0>
                          <TBODY>
                          <TR>
                            <TD vAlign=top height=18><A class=green 
                              id=News1_HyperLink1 
                              href="http://10.49.10.9/infolist/techlist.aspx?sid=6601" 
                              target=_blank>更多</A></TD></TR></TBODY></TABLE></TD></TR>
                    <TR>
                      <TD vAlign=top align=right>
                        <TABLE id=News1_datalist1 
                        style="WIDTH: 240px; BORDER-COLLAPSE: collapse" 
                        cellSpacing=0 cellPadding=0 border=0>
                          <TBODY>
                          <TR>
                            <TD style="HEIGHT: 21px" align=middle>
                              <TABLE cellSpacing=5 cellPadding=0 width="100%" 
                              border=0>
                                <TBODY>
                                <TR>
                                <TD width=5><IMG 
                                src="jngaxxw.files/button3.gif"></TD>
                                <TD><A class=green 
                                href="http://10.49.10.9/infolist/show.aspx?id=46624" 
                                target=_blank>关于组织参加司法考试培训面</A></TD>
                                <TD width=45><FONT 
                                color=#086fab>(08-20)</FONT></TD></TR></TBODY></TABLE></TD></TR>
                          <TR>
                            <TD style="HEIGHT: 21px" align=middle>
                              <TABLE cellSpacing=5 cellPadding=0 width="100%" 
                              border=0>
                                <TBODY>
                                <TR>
                                <TD width=5><IMG 
                                src="jngaxxw.files/button3.gif"></TD>
                                <TD><A class=green 
                                href="http://10.49.10.9/infolist/show.aspx?id=46623" 
                                target=_blank>关于召开全市重大火灾隐患集</A></TD>
                                <TD width=45><FONT 
                                color=#086fab>(08-20)</FONT></TD></TR></TBODY></TABLE></TD></TR>
                          <TR>
                            <TD style="HEIGHT: 21px" align=middle>
                              <TABLE cellSpacing=5 cellPadding=0 width="100%" 
                              border=0>
                                <TBODY>
                                <TR>
                                <TD width=5><IMG 
                                src="jngaxxw.files/button3.gif"></TD>
                                <TD><A class=green 
                                href="http://10.49.10.9/infolist/show.aspx?id=46613" 
                                target=_blank>关于做好民生警务热线集中接</A></TD>
                                <TD width=45><FONT 
                                color=#086fab>(08-19)</FONT></TD></TR></TBODY></TABLE></TD></TR>
                          <TR>
                            <TD style="HEIGHT: 21px" align=middle>
                              <TABLE cellSpacing=5 cellPadding=0 width="100%" 
                              border=0>
                                <TBODY>
                                <TR>
                                <TD width=5><IMG 
                                src="jngaxxw.files/button3.gif"></TD>
                                <TD><A class=green 
                                href="http://10.49.10.9/infolist/show.aspx?id=46598" 
                                target=_blank>关于参加德廉知识集中测试的</A></TD>
                                <TD width=45><FONT 
                                color=#086fab>(08-18)</FONT></TD></TR></TBODY></TABLE></TD></TR>
                          <TR>
                            <TD style="HEIGHT: 21px" align=middle>
                              <TABLE cellSpacing=5 cellPadding=0 width="100%" 
                              border=0>
                                <TBODY>
                                <TR>
                                <TD width=5><IMG 
                                src="jngaxxw.files/button3.gif"></TD>
                                <TD><A class=green 
                                href="http://10.49.10.9/infolist/show.aspx?id=46597" 
                                target=_blank>关于加强中秋节、国庆节期间</A></TD>
                                <TD width=45><FONT 
                                color=#086fab>(08-18)</FONT></TD></TR></TBODY></TABLE></TD></TR>
                          <TR>
                            <TD style="HEIGHT: 21px" align=middle>
                              <TABLE cellSpacing=5 cellPadding=0 width="100%" 
                              border=0>
                                <TBODY>
                                <TR>
                                <TD width=5><IMG 
                                src="jngaxxw.files/button3.gif"></TD>
                                <TD><A class=green 
                                href="http://10.49.10.9/infolist/show.aspx?id=46596" 
                                target=_blank>关于学习贯彻公安部政治部印</A></TD>
                                <TD width=45><FONT 
                                color=#086fab>(08-18)</FONT></TD></TR></TBODY></TABLE></TD></TR>
                          <TR>
                            <TD style="HEIGHT: 21px" align=middle>
                              <TABLE cellSpacing=5 cellPadding=0 width="100%" 
                              border=0>
                                <TBODY>
                                <TR>
                                <TD width=5><IMG 
                                src="jngaxxw.files/button3.gif"></TD>
                                <TD><A class=green 
                                href="http://10.49.10.9/infolist/show.aspx?id=46577" 
                                target=_blank>关于报送二季度民生警务平台</A></TD>
                                <TD width=45><FONT 
                                color=#086fab>(08-15)</FONT></TD></TR></TBODY></TABLE></TD></TR>
                          <TR>
                            <TD style="HEIGHT: 21px" align=middle>
                              <TABLE cellSpacing=5 cellPadding=0 width="100%" 
                              border=0>
                                <TBODY>
                                <TR>
                                <TD width=5><IMG 
                                src="jngaxxw.files/button3.gif"></TD>
                                <TD><A class=green 
                                href="http://10.49.10.9/infolist/show.aspx?id=46576" 
                                target=_blank>关于做好全市公安机关与机动</A></TD>
                                <TD width=45><FONT 
                                color=#086fab>(08-15)</FONT></TD></TR></TBODY></TABLE></TD></TR>
                          <TR>
                            <TD style="HEIGHT: 21px" align=middle>
                              <TABLE cellSpacing=5 cellPadding=0 width="100%" 
                              border=0>
                                <TBODY>
                                <TR>
                                <TD width=5><IMG 
                                src="jngaxxw.files/button3.gif"></TD>
                                <TD><A class=green 
                                href="http://10.49.10.9/infolist/show.aspx?id=46575" 
                                target=_blank>关于申报2014年度山东公</A></TD>
                                <TD width=45><FONT 
                                color=#086fab>(08-15)</FONT></TD></TR></TBODY></TABLE></TD></TR>
                          <TR>
                            <TD style="HEIGHT: 21px" align=middle>
                              <TABLE cellSpacing=5 cellPadding=0 width="100%" 
                              border=0>
                                <TBODY>
                                <TR>
                                <TD width=5><IMG 
                                src="jngaxxw.files/button3.gif"></TD>
                                <TD><A class=green 
                                href="http://10.49.10.9/infolist/show.aspx?id=46573" 
                                target=_blank>关于举办2014年第二季度</A></TD>
                                <TD width=45><FONT 
                                color=#086fab>(08-15)</FONT></TD></TR></TBODY></TABLE></TD></TR>
                          <TR>
                            <TD style="HEIGHT: 21px" align=middle>
                              <TABLE cellSpacing=5 cellPadding=0 width="100%" 
                              border=0>
                                <TBODY>
                                <TR>
                                <TD width=5><IMG 
                                src="jngaxxw.files/button3.gif"></TD>
                                <TD><A class=green 
                                href="http://10.49.10.9/infolist/show.aspx?id=46571" 
                                target=_blank>关于充实市政府门户网站内容</A></TD>
                                <TD width=45><FONT 
                                color=#086fab>(08-15)</FONT></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR>
                    <TR>
                      <TD><IMG 
                  src="jngaxxw.files/news3.gif"></TD></TR></TBODY></TABLE></TD></TR>
              <TR>
                <TD><IMG height=8 src="jngaxxw.files/10.49.10.htm" 
              width=0></TD></TR>
              <TR>
                <TD><IFRAME src="jngaxxw.files/elogin.htm" frameBorder=0 
                  width=242 scrolling=no 
          height=61></IFRAME></TD></TR></TBODY></TABLE></TD>
          <TD vAlign=top width=765>
            <TABLE cellSpacing=0 cellPadding=0 width=765 border=0>
              <TBODY>
              <TR vAlign=top height=68 width="770" border="0">
                <TD colSpan=2><!--这里是前台图片修改开始,href为目标地址-->
	<jsp:include page="cloudSearch.jsp" />
<!--这里是前台图片修改结束,上src为图片名称--></A></TD></TR>
              <TR>
                <TD vAlign=top width=330><IFRAME src="jngaxxw.files/index.htm" 
                  frameBorder=0 width=320 scrolling=no height=290></IFRAME></TD>
                <TD vAlign=top width=426>
                  <TABLE cellSpacing=0 cellPadding=0 width=100 
                  background=jngaxxw.files/news5.gif border=0>
                    <TBODY>
                    <TR>
                      <TD align=right background=jngaxxw.files/news4.gif 
                      height=27><IMG height=5 src="jngaxxw.files/10.49.10.htm" 
                        width=0><BR><A class=green 
                        href="http://10.49.10.9/sjzy/sjyw/index.html" 
                        target=_blank>更多</A>&nbsp;&nbsp;</TD></TR>
                    <TR>
                      <TD align=middle><IFRAME marginWidth=0 marginHeight=0 
                        src="jngaxxw.files/sjywlist.htm" frameBorder=0 
                        width="99%" scrolling=no height=260></IFRAME></TD></TR>
                    <TR>
                      <TD><IMG 
                  src="jngaxxw.files/news6.gif"></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE><!--
<div  style="WIDTH: 1000px; POSITION: static; ">
<img src="http://10.49.11.111/images/banner.png" border="0" />


</div>
--></TD></TR><!--
					<tr>
						<td><IMG height="10" src="#" width="0"></td>
					</tr>
					-->
  <TR>
    <TD align=middle>
      <TABLE cellSpacing=0 cellPadding=0 width=992 border=0>
        <TBODY>
        <TR>
          <TD vAlign=top width=209>
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD>
                  <TABLE id=Table1 height=113 cellSpacing=0 cellPadding=0 
                  width=209 border=0>
                    <TBODY>
                    <TR>
                      <TD align=right background=jngaxxw.files/day.gif><IMG 
                        height=18 src="jngaxxw.files/10.49.10.htm" width=0> 
                        <TABLE id=Board1_menulist 
                        style="WIDTH: 95%; BORDER-COLLAPSE: collapse" 
                        cellSpacing=0 cellPadding=0 border=0>
                          <TBODY>
                          <TR>
                            <TD style="HEIGHT: 29px" 
                              align=middle>&nbsp;&nbsp;&nbsp;<A class=green 
                              href="http://10.49.10.9/infolist/tech.aspx?sid=81" 
                              target=_blank>警情通报</A></TD>
                            <TD style="HEIGHT: 29px" 
                              align=middle>&nbsp;&nbsp;&nbsp;<A class=green 
                              href="http://10.49.10.9/infolist/techlist.aspx?sid=8201" 
                              target=_blank>警力部署</A></TD></TR>
                          <TR>
                            <TD style="HEIGHT: 29px" 
                              align=middle>&nbsp;&nbsp;&nbsp;<A class=green 
                              href="http://10.49.10.9/infolist/techlist.aspx?sid=8301" 
                              target=_blank>勤务检查</A></TD>
                            <TD style="HEIGHT: 29px" 
                              align=middle>&nbsp;&nbsp;&nbsp;<A class=green 
                              href="http://10.49.10.9/infolist/techlist.aspx?sid=8401" 
                              target=_blank>防控指令</A></TD></TR>
                          <TR>
                            <TD style="HEIGHT: 29px" 
                              align=middle>&nbsp;&nbsp;&nbsp;<A class=green 
                              href="http://10.49.10.9/infolist/techlist.aspx?sid=8501" 
                              target=_blank>每日情况</A></TD>
                            <TD style="HEIGHT: 29px" 
                              align=middle>&nbsp;&nbsp;&nbsp;<A class=green 
                              href="http://10.49.10.9/infolist/techlist.aspx?sid=8601" 
                              target=_blank>现案侦破</A></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR>
              <TR>
                <TD><IMG height=8 src="jngaxxw.files/10.49.10.htm" 
              width=0></TD></TR>
              <TR>
                <TD>
                  <TABLE id=Table1 cellSpacing=0 cellPadding=0 width=209 
                  background=jngaxxw.files/left2.gif border=0>
                    <TBODY>
                    <TR>
                      <TD height=29><IMG src="jngaxxw.files/left1.gif"></TD></TR>
                    <TR>
                      <TD align=middle>
                        <TABLE id=Ztlist1_datalist1 
                        style="WIDTH: 207px; BORDER-COLLAPSE: collapse; HEIGHT: 240px" 
                        cellSpacing=0 cellPadding=0 border=0>
                          <TBODY>
                          <TR>
                            <TD style="HEIGHT: 18px" align=middle><A 
                              href="http://10.49.10.185:8080/portal" 
                              target=_blank><IMG 
                              src="jngaxxw.files/2013724152134610.gif" 
                              border=0></A></TD></TR>
                          <TR>
                            <TD style="HEIGHT: 18px" align=middle><A 
                              href="http://10.49.58.9/jnxf/jxcszl/" 
                              target=_blank><IMG 
                              src="jngaxxw.files/20121119232346681.gif" 
                              border=0></A></TD></TR>
                          <TR>
                            <TD style="HEIGHT: 18px" align=middle><A 
                              href="http://10.49.9.194/otype.asp?classid=5&amp;boardname=大讨论大走访创满意" 
                              target=_blank><IMG 
                              src="jngaxxw.files/201282292707140.gif" 
                              border=0></A></TD></TR>
                          <TR>
                            <TD style="HEIGHT: 18px" align=middle><A 
                              href="http://10.49.9.194/" target=_blank><IMG 
                              src="jngaxxw.files/20091225211114609.gif" 
                              border=0></A></TD></TR>
                          <TR>
                            <TD style="HEIGHT: 18px" align=middle><A 
                              href="http://10.49.6.39/zhuanti/index.php?id=23" 
                              target=_blank><IMG 
                              src="jngaxxw.files/2011610105448841.gif" 
                              border=0></A></TD></TR>
                          <TR>
                            <TD style="HEIGHT: 18px" align=middle><A 
                              href="http://10.49.71.8/bhweb/web/dj/index.jsp" 
                              target=_blank><IMG 
                              src="jngaxxw.files/2013411161043298.gif" 
                              border=0></A></TD></TR>
                          <TR>
                            <TD style="HEIGHT: 18px" align=middle><A 
                              href="http://10.49.10.9:8080/" target=_blank><IMG 
                              src="jngaxxw.files/201061885420450.gif" 
                              border=0></A></TD></TR>
                          <TR>
                            <TD style="HEIGHT: 18px" align=middle><A 
                              href="http://10.49.9.194:82/default.asp" 
                              target=_blank><IMG 
                              src="jngaxxw.files/2013321160634344.gif" 
                              border=0></A></TD></TR>
                          <TR>
                            <TD style="HEIGHT: 18px" align=middle><A 
                              href="http://10.49.9.212:8090/" target=_blank><IMG 
                              src="jngaxxw.files/201442391450271.gif" 
                              border=0></A></TD></TR>
                          <TR>
                            <TD style="HEIGHT: 18px" align=middle><A 
                              href="http://10.49.9.212/gj/" target=_blank><IMG 
                              src="jngaxxw.files/201268151710953.gif" 
                              border=0></A></TD></TR>
                          <TR>
                            <TD style="HEIGHT: 18px" align=middle><A 
                              href="http://10.49.11.173/sacw/" 
                              target=_blank><IMG 
                              src="jngaxxw.files/2011429152041304.gif" 
                              border=0></A></TD></TR>
                          <TR>
                            <TD style="HEIGHT: 18px" align=middle><A 
                              href="http://10.49.10.31:8080/" target=_blank><IMG 
                              src="jngaxxw.files/2012810112333140.gif" 
                              border=0></A></TD></TR></TBODY></TABLE></TD></TR>
                    <TR>
                      <TD><IMG 
                  src="jngaxxw.files/left3.gif"></TD></TR></TBODY></TABLE></TD></TR>
              <TR>
                <TD></TD></TR>
              <TR>
                <TD>
                  <TABLE id=Table1 cellSpacing=0 cellPadding=0 width=209 
                  background=jngaxxw.files/left2.gif border=0>
                    <TBODY>
                    <TR>
                      <TD><IMG src="jngaxxw.files/left6.jpg"></TD></TR>
                    <TR>
                      <TD>
                        <TABLE cellSpacing=5 cellPadding=0 width="100%" 
border=0>
                          <TBODY>
                          <TR>
                            <TD align=middle><A style="CURSOR: hand" 
                              onclick="javascript:changerxform('1');"><IMG 
                              src="jngaxxw.files/quxian2.gif" border=0></A></TD>
                            <TD align=middle><A style="CURSOR: hand" 
                              onclick="javascript:changerxform('2');"><IMG 
                              src="jngaxxw.files/bumen2.gif" 
                          border=0></A></TD></TR></TBODY></TABLE></TD></TR>
                    <TR>
                      <TD id=rxtable align=middle 
                      background=jngaxxw.files/pm1.gif height=164><IFRAME 
                        src="jngaxxw.files/12345rxlist.htm" frameBorder=0 
                        width=200 scrolling=no height=160></IFRAME></TD></TR>
                    <TR>
                      <TD><IMG height=3 src="jngaxxw.files/10.49.10.htm" 
                        width=0></TD></TR>
                    <TR>
                      <TD><IMG 
                  src="jngaxxw.files/left3.gif"></TD></TR></TBODY></TABLE>
                  <SCRIPT language=javascript>
<!--
function changerxform(obj)
{
	var sign=obj;
	if(sign=="1")
	{
		rxtable.innerHTML="<iframe src='/UserControl/12345rxlist.htm' frameBorder='0' scrolling='no' width='200' height='160'></iframe>";
	}
	else
	{
		rxtable.innerHTML="<iframe src='/UserControl/12345rxlist1.htm' frameBorder='0' scrolling='no' width='200' height='160'></iframe>";
	}
}
//-->
</SCRIPT>
                </TD></TR>
              <TR>
                <TD><IMG height=8 src="jngaxxw.files/10.49.10.htm" 
              width=0></TD></TR>
              <TR>
                <TD>
                  <TABLE id=Table1 cellSpacing=0 cellPadding=0 width=209 
                  background=jngaxxw.files/left2.gif border=0>
                    <TBODY>
                    <TR>
                      <TD><IMG src="jngaxxw.files/left4.gif"></TD></TR>
                    <TR>
                      <TD>
                        <TABLE cellSpacing=5 cellPadding=0 width="100%" 
border=0>
                          <TBODY>
                          <TR>
                            <TD align=middle><A style="CURSOR: hand" 
                              onclick="javascript:changeform('1');"><IMG 
                              src="jngaxxw.files/quxian.gif" border=0></A></TD>
                            <TD align=middle><A style="CURSOR: hand" 
                              onclick="javascript:changeform('2');"><IMG 
                              src="jngaxxw.files/bumen.gif" 
                          border=0></A></TD></TR></TBODY></TABLE></TD></TR>
                    <TR>
                      <TD id=pmtable align=middle 
                      background=jngaxxw.files/pm1.gif height=164><IFRAME 
                        src="jngaxxw.files/pmlist.htm" frameBorder=0 width=200 
                        scrolling=no height=160></IFRAME></TD></TR>
                    <TR>
                      <TD><IMG height=3 src="jngaxxw.files/10.49.10.htm" 
                        width=0></TD></TR>
                    <TR>
                      <TD><IMG 
                  src="jngaxxw.files/left3.gif"></TD></TR></TBODY></TABLE>
                  <SCRIPT language=javascript>
<!--
function changeform(obj)
{
	var sign=obj;
	if(sign=="1")
	{
		pmtable.innerHTML="<iframe src='/UserControl/pmlist.htm' frameBorder='0' scrolling='no' width='200' height='160'></iframe>";
	}
	else
	{
		pmtable.innerHTML="<iframe src='/UserControl/pmlist1.htm' frameBorder='0' scrolling='no' width='200' height='160'></iframe>";
	}
}
//-->
</SCRIPT>
                </TD></TR>
              <TR>
                <TD><IMG height=8 src="jngaxxw.files/10.49.10.htm" 
              width=0></TD></TR>
              <TR>
                <TD>
                  <TABLE id=Table1 cellSpacing=0 cellPadding=0 width=209 
                  border=0>
                    <TBODY>
                    <TR>
                      <TD><IMG src="jngaxxw.files/left5.gif"></TD></TR>
                    <TR>
                      <TD align=middle background=jngaxxw.files/left2.gif>
                        <TABLE id=Table2 height=80 cellSpacing=5 cellPadding=0 
                        width="95%" border=0>
                          <TBODY>
                          <TR>
                            <TD align=middle><INPUT class=smallInput 
                              onkeypress=if(event.keyCode==13){search();} 
                              id=topic></TD>
                            <TD align=middle><IMG style="CURSOR: hand" 
                              onclick=search(); 
                            src="jngaxxw.files/search.gif"></TD></TR>
                          <TR>
                            <TD align=middle colSpan=2>分类：<SELECT 
                              id=Search1_searchsort style="WIDTH: 140px" 
                              name=Search1:searchsort> <OPTION value="" 
                                selected></OPTION> <OPTION 
                                value=0401>警情分析</OPTION> <OPTION 
                                value=0402>即时防控</OPTION> <OPTION 
                                value=0403>110接处警</OPTION> <OPTION 
                                value=0902>法制110</OPTION> <OPTION 
                                value=1301>科技强警</OPTION> <OPTION 
                                value=1401>公安大事记</OPTION> <OPTION 
                                value=2401>为警之道</OPTION> <OPTION 
                                value=2402>理论研讨</OPTION> <OPTION 
                                value=2403>警务战术研讨</OPTION> <OPTION 
                                value=2901>信息化推进年简报</OPTION> <OPTION 
                                value=2902>打防控应用平台建设</OPTION> <OPTION 
                                value=2903>全国PGIS试点城市</OPTION> <OPTION 
                                value=3001>济南公安科技专刊</OPTION> <OPTION 
                                value=3003>科技活动月</OPTION> <OPTION 
                                value=3103>济南公安简报</OPTION> <OPTION 
                                value=3104>政工简报</OPTION> <OPTION 
                                value=3108>重点工作推进简报</OPTION> <OPTION 
                                value=3109>工作简报导航</OPTION> <OPTION 
                                value=3201>取保候审突出问题专项督察</OPTION> <OPTION 
                                value=3401>局长督办令</OPTION> <OPTION 
                                value=3403>督察通报</OPTION> <OPTION 
                                value=3501>市局考核</OPTION> <OPTION 
                                value=3502>指挥部考核</OPTION> <OPTION 
                                value=3503>政治部考核</OPTION> <OPTION 
                                value=3504>纪委考核</OPTION> <OPTION 
                                value=3505>审计工作考核</OPTION> <OPTION 
                                value=3506>警务督察考核</OPTION> <OPTION 
                                value=3507>宣传工作考核</OPTION> <OPTION 
                                value=3508>法制业务考核</OPTION> <OPTION 
                                value=3509>信访工作考核</OPTION> <OPTION 
                                value=3510>装财工作考核</OPTION> <OPTION 
                                value=3511>科技信通工作考核</OPTION> <OPTION 
                                value=3512>户政业务考核</OPTION> <OPTION 
                                value=3513>出入境业务考核</OPTION> <OPTION 
                                value=3514>网警业务考核</OPTION> <OPTION 
                                value=3515>警卫工作考核</OPTION> <OPTION 
                                value=3516>保安管理考核</OPTION> <OPTION 
                                value=3517>国保业务考核</OPTION> <OPTION 
                                value=3518>反邪教业务考核</OPTION> <OPTION 
                                value=3519>经侦业务考核</OPTION> <OPTION 
                                value=3520>治安业务考核</OPTION> <OPTION 
                                value=3521>经文保业务考核</OPTION> <OPTION 
                                value=3522>禁毒业务考核</OPTION> <OPTION 
                                value=3523>监管业务考核</OPTION> <OPTION 
                                value=3524>刑警业务考核</OPTION> <OPTION 
                                value=3525>反恐业务考核</OPTION> <OPTION 
                                value=3526>交警业务考核</OPTION> <OPTION 
                                value=3527>巡警业务考核</OPTION> <OPTION 
                                value=3528>消防业务考核</OPTION> <OPTION 
                                value=3701>视频中心</OPTION> <OPTION 
                                value=3901>破案攻坚会战</OPTION> <OPTION 
                                value=4101>每月十题</OPTION> <OPTION 
                                value=4301>调查研究警务探讨</OPTION> <OPTION 
                                value=4401>应用系统导航</OPTION> <OPTION 
                                value=4501>好警网和谐网</OPTION> <OPTION 
                                value=4901>干部任免</OPTION> <OPTION 
                                value=5101>案例通报</OPTION> <OPTION 
                                value=5102>反腐在线</OPTION> <OPTION 
                                value=5103>国外反腐</OPTION> <OPTION 
                                value=5104>古镜今鉴</OPTION> <OPTION 
                                value=5403>网站导航</OPTION> <OPTION 
                                value=5501>决策服务</OPTION> <OPTION 
                                value=5602>图片新闻</OPTION> <OPTION 
                                value=5603>光辉事迹</OPTION> <OPTION 
                                value=5604>悼念战友</OPTION> <OPTION 
                                value=5901>调查研究</OPTION> <OPTION 
                                value=6240>全员目标管理绩效考核系统</OPTION> <OPTION 
                                value=6401>安全通报</OPTION> <OPTION 
                                value=6402>安全规定</OPTION> <OPTION 
                                value=6406>运行管理</OPTION> <OPTION 
                                value=6601>通知公告</OPTION> <OPTION 
                                value=6602>重点新闻</OPTION> <OPTION 
                                value=6701>警务视窗</OPTION> <OPTION 
                                value=6801>时事要闻</OPTION> <OPTION 
                                value=6901>系统软件</OPTION> <OPTION 
                                value=6902>网络工具</OPTION> <OPTION 
                                value=6903>安全防护</OPTION> <OPTION 
                                value=6904>图形图像</OPTION> <OPTION 
                                value=6905>办公相关</OPTION> <OPTION 
                                value=6906>内部软件</OPTION> <OPTION 
                                value=6907>安全检查专栏</OPTION> <OPTION 
                                value=6908>数字证书</OPTION> <OPTION 
                                value=6909>移动警务</OPTION> <OPTION 
                                value=6910>学习培训</OPTION> <OPTION 
                                value=6920>邮件系统</OPTION> <OPTION 
                                value=7101>警情分析</OPTION> <OPTION 
                                value=7201>流动警务</OPTION> <OPTION 
                                value=7401>文件讲话</OPTION> <OPTION 
                                value=7501>工作动态</OPTION> <OPTION 
                                value=7502>文件讲话</OPTION> <OPTION 
                                value=7503>战果快报</OPTION> <OPTION 
                                value=7504>勤务检查</OPTION> <OPTION 
                                value=7505>警情分析</OPTION> <OPTION 
                                value=7506>防控指令</OPTION> <OPTION 
                                value=7507>警力报备</OPTION> <OPTION 
                                value=7508>经验交流</OPTION> <OPTION 
                                value=7601>科技通信</OPTION> <OPTION 
                                value=7701>全运警力配置表</OPTION> <OPTION 
                                value=7801>队伍建设</OPTION> <OPTION 
                                value=7901>民生警务工作情况</OPTION> <OPTION 
                                value=8101>每日警情通报</OPTION> <OPTION 
                                value=8102>每周警情通报</OPTION> <OPTION 
                                value=8103>每月警情通报</OPTION> <OPTION 
                                value=8201>警力部署</OPTION> <OPTION 
                                value=8301>勤务检查</OPTION> <OPTION 
                                value=8401>防控指令</OPTION> <OPTION 
                                value=8501>每日情况</OPTION> <OPTION 
                                value=8601>现案侦破</OPTION> <OPTION 
                                value=8701>明传电报</OPTION> <OPTION 
                                value=8801>三基三项建设</OPTION> <OPTION 
                                value=8902>宣传栏</OPTION> <OPTION 
                                value=8903>准驾人员备案表</OPTION> <OPTION 
                                value=8904>公务用车备案表</OPTION></SELECT></TD></TR></TBODY></TABLE></TD></TR>
                    <TR>
                      <TD><IMG 
                  src="jngaxxw.files/left3.gif"></TD></TR></TBODY></TABLE>
                  <SCRIPT type=text/javascript>
function search()
{
	window.open("infolist/search.aspx?sort="+document.getElementById("Search1_searchsort").value+"&topic="+document.getElementById("topic").value);
}
</SCRIPT>
                </TD></TR></TBODY></TABLE></TD>
          <TD vAlign=top align=middle width=603>
            <TABLE cellSpacing=0 cellPadding=0 width=593 border=0>
              <TBODY>
              <TR>
                <TD vAlign=top height=85>
                  <TABLE id=Quicklist1_DataList1 
                  style="WIDTH: 100%; BORDER-COLLAPSE: collapse" cellSpacing=0 
                  cellPadding=0 border=0>
                    <TBODY>
                    <TR>
                      <TD style="HEIGHT: 46px" align=middle><A 
                        href="http://10.49.9.213:8090/" target=_blank><IMG 
                        alt=打防管控 src="jngaxxw.files/20111229121720768.gif" 
                        border=0></A></TD>
                      <TD style="HEIGHT: 46px" align=middle><A 
                        href="http://10.49.9.213:8086/" target=_blank><IMG 
                        alt=创意警务 src="jngaxxw.files/2012516142905703.gif" 
                        border=0></A></TD>
                      <TD style="HEIGHT: 46px" align=middle><A 
                        href="http://10.49.9.213:8096/" target=_blank><IMG 
                        alt=重点工作 src="jngaxxw.files/201281485517343.gif" 
                        border=0></A></TD>
                      <TD style="HEIGHT: 46px" align=middle><A 
                        href="http://10.49.6.48:9004/" target=_blank><IMG 
                        alt=电子杂志 src="jngaxxw.files/20091225210242625.gif" 
                        border=0></A></TD>
                      <TD style="HEIGHT: 46px" align=middle><A 
                        href="http://10.49.6.54/" target=_blank><IMG alt=外网镜像 
                        src="jngaxxw.files/20091225210340359.gif" 
                      border=0></A></TD></TR>
                    <TR>
                      <TD style="HEIGHT: 46px" align=middle><A 
                        href="http://10.49.6.166:8090/" target=_blank><IMG 
                        alt=民生警务 src="jngaxxw.files/201262795249921.gif" 
                        border=0></A></TD>
                      <TD style="HEIGHT: 46px" align=middle><A 
                        href="http://10.49.9.9/" target=_blank><IMG alt=情报信息 
                        src="jngaxxw.files/2009122521043531.gif" 
border=0></A></TD>
                      <TD style="HEIGHT: 46px" align=middle><A 
                        href="http://10.49.9.215/zhifa/" target=_blank><IMG 
                        alt=执法规范化 src="jngaxxw.files/201057175234362.gif" 
                        border=0></A></TD>
                      <TD style="HEIGHT: 46px" align=middle><A 
                        href="http://10.49.10.9/infolist/techlist.aspx?sid=75" 
                        target=_blank><IMG alt=明传电报 
                        src="jngaxxw.files/2010418102318609.gif" 
border=0></A></TD>
                      <TD style="HEIGHT: 46px" align=middle><A 
                        href="http://10.49.10.9/infolist/tech.aspx?sid=34" 
                        target=_blank><IMG alt=监督台 
                        src="jngaxxw.files/201231102652349.gif" 
                    border=0></A></TD></TR></TBODY></TABLE></TD></TR>
              <TR>
                <TD>
                  <TABLE cellSpacing=5 cellPadding=0 width="100%" border=0>
                    <TBODY>
                    <TR>
                      <TD vAlign=top>
                        <TABLE id=Table1 cellSpacing=0 cellPadding=0 width=293 
                        background=jngaxxw.files/info2.gif border=0>
                          <TBODY>
                          <TR>
                            <TD background=jngaxxw.files/info1.gif height=30>
                              <TABLE id=Info3_Table2 cellSpacing=0 cellPadding=0 
                              width="100%" border=0>
                                <TBODY>
                                <TR>
                                <TD vAlign=bottom align=middle width=110 
                                height=20><B><FONT 
                                color=#2e7bae>文件讲话</FONT></B></TD></TR></TBODY></TABLE></TD></TR>
                          <TR>
                            <TD vAlign=top align=right>
                              <TABLE id=Info3_datalist1 
                              style="WIDTH: 100%; BORDER-COLLAPSE: collapse" 
                              cellSpacing=0 cellPadding=0 border=0>
                                <TBODY>
                                <TR>
                                <TD style="HEIGHT: 21px" align=middle>
                                <TABLE cellSpacing=5 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD width=4><IMG height=5 
                                src="jngaxxw.files/button4.gif" width=4></TD>
                                <TD><A class=gray 
                                href="http://10.49.10.9/infolist/show.aspx?id=46612" 
                                target=_blank>关于印发《济南市第二届泉水节“船游第</A></TD>
                                <TD width=20><FONT 
                                color=#7b7b7b>(301)</FONT></TD></TR></TBODY></TABLE>
                                <TABLE cellSpacing=0 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD background=jngaxxw.files/line1.gif><IMG 
                                height=1 src="jngaxxw.files/line1.gif" 
                                width=3></TD></TR></TBODY></TABLE></TD></TR>
                                <TR>
                                <TD style="HEIGHT: 21px" align=middle>
                                <TABLE cellSpacing=5 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD width=4><IMG height=5 
                                src="jngaxxw.files/button4.gif" width=4></TD>
                                <TD><A class=gray 
                                href="http://10.49.10.9/infolist/show.aspx?id=46611" 
                                target=_blank>关于印发《“泉水叮咚舞动泉城“广场舞</A></TD>
                                <TD width=20><FONT 
                                color=#7b7b7b>(229)</FONT></TD></TR></TBODY></TABLE>
                                <TABLE cellSpacing=0 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD background=jngaxxw.files/line1.gif><IMG 
                                height=1 src="jngaxxw.files/line1.gif" 
                                width=3></TD></TR></TBODY></TABLE></TD></TR>
                                <TR>
                                <TD style="HEIGHT: 21px" align=middle>
                                <TABLE cellSpacing=5 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD width=4><IMG height=5 
                                src="jngaxxw.files/button4.gif" width=4></TD>
                                <TD><A class=gray 
                                href="http://10.49.10.9/infolist/show.aspx?id=46610" 
                                target=_blank>关于印发《济南市第二届泉水节“泉水情</A></TD>
                                <TD width=20><FONT 
                                color=#7b7b7b>(140)</FONT></TD></TR></TBODY></TABLE>
                                <TABLE cellSpacing=0 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD background=jngaxxw.files/line1.gif><IMG 
                                height=1 src="jngaxxw.files/line1.gif" 
                                width=3></TD></TR></TBODY></TABLE></TD></TR>
                                <TR>
                                <TD style="HEIGHT: 21px" align=middle>
                                <TABLE cellSpacing=5 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD width=4><IMG height=5 
                                src="jngaxxw.files/button4.gif" width=4></TD>
                                <TD><A class=gray 
                                href="http://10.49.10.9/infolist/show.aspx?id=46609" 
                                target=_blank>关于印发《济南市第二届泉水节启动仪式</A></TD>
                                <TD width=20><FONT 
                                color=#7b7b7b>(181)</FONT></TD></TR></TBODY></TABLE>
                                <TABLE cellSpacing=0 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD background=jngaxxw.files/line1.gif><IMG 
                                height=1 src="jngaxxw.files/line1.gif" 
                                width=3></TD></TR></TBODY></TABLE></TD></TR>
                                <TR>
                                <TD style="HEIGHT: 21px" align=middle>
                                <TABLE cellSpacing=5 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD width=4><IMG height=5 
                                src="jngaxxw.files/button4.gif" width=4></TD>
                                <TD><A class=gray 
                                href="http://10.49.10.9/infolist/show.aspx?id=46557" 
                                target=_blank>关于给张冲等同志记功的命令</A></TD>
                                <TD width=20><FONT 
                                color=#7b7b7b>(3663)</FONT></TD></TR></TBODY></TABLE>
                                <TABLE cellSpacing=0 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD background=jngaxxw.files/line1.gif><IMG 
                                height=1 src="jngaxxw.files/line1.gif" 
                                width=3></TD></TR></TBODY></TABLE></TD></TR>
                                <TR>
                                <TD style="HEIGHT: 21px" align=middle>
                                <TABLE cellSpacing=5 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD width=4><IMG height=5 
                                src="jngaxxw.files/button4.gif" width=4></TD>
                                <TD><A class=gray 
                                href="http://10.49.10.9/infolist/show.aspx?id=46556" 
                                target=_blank>关于给赵文广同志记功的命令</A></TD>
                                <TD width=20><FONT 
                                color=#7b7b7b>(2836)</FONT></TD></TR></TBODY></TABLE>
                                <TABLE cellSpacing=0 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD background=jngaxxw.files/line1.gif><IMG 
                                height=1 src="jngaxxw.files/line1.gif" 
                                width=3></TD></TR></TBODY></TABLE></TD></TR>
                                <TR>
                                <TD style="HEIGHT: 21px" align=middle>
                                <TABLE cellSpacing=5 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD width=4><IMG height=5 
                                src="jngaxxw.files/button4.gif" width=4></TD>
                                <TD><A class=gray 
                                href="http://10.49.10.9/infolist/show.aspx?id=46555" 
                                target=_blank>关于给陆斌同志记功的命令</A></TD>
                                <TD width=20><FONT 
                                color=#7b7b7b>(2657)</FONT></TD></TR></TBODY></TABLE>
                                <TABLE cellSpacing=0 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD background=jngaxxw.files/line1.gif><IMG 
                                height=1 src="jngaxxw.files/line1.gif" 
                                width=3></TD></TR></TBODY></TABLE></TD></TR>
                                <TR>
                                <TD style="HEIGHT: 21px" align=middle>
                                <TABLE cellSpacing=5 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD width=4><IMG height=5 
                                src="jngaxxw.files/button4.gif" width=4></TD>
                                <TD><A class=gray 
                                href="http://10.49.10.9/infolist/show.aspx?id=46513" 
                                target=_blank>转发公安部《关于2014年上半年公安</A></TD>
                                <TD width=20><FONT 
                                color=#7b7b7b>(1268)</FONT></TD></TR></TBODY></TABLE>
                                <TABLE cellSpacing=0 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD background=jngaxxw.files/line1.gif><IMG 
                                height=1 src="jngaxxw.files/line1.gif" 
                                width=3></TD></TR></TBODY></TABLE></TD></TR>
                                <TR>
                                <TD style="HEIGHT: 21px" align=middle>
                                <TABLE cellSpacing=5 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD width=4><IMG height=5 
                                src="jngaxxw.files/button4.gif" width=4></TD>
                                <TD><A class=gray 
                                href="http://10.49.10.9/infolist/show.aspx?id=46495" 
                                target=_blank>关于转发省厅《全省公安机关敏感案事件</A></TD>
                                <TD width=20><FONT 
                                color=#7b7b7b>(780)</FONT></TD></TR></TBODY></TABLE>
                                <TABLE cellSpacing=0 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD background=jngaxxw.files/line1.gif><IMG 
                                height=1 src="jngaxxw.files/line1.gif" 
                                width=3></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR>
                          <TR>
                            <TD vAlign=bottom align=right height=25><A 
                              id=Info3_HyperLink1 
                              href="http://10.49.10.9/infolist/techlist.aspx?sid=7401" 
                              target=_blank><IMG alt="" 
                              src="jngaxxw.files/more1.gif" 
                              border=0></A>&nbsp;&nbsp;&nbsp;</TD></TR>
                          <TR>
                            <TD><IMG 
                          src="jngaxxw.files/info3.gif"></TD></TR></TBODY></TABLE></TD>
                      <TD vAlign=top width="50%" height=258>
                        <TABLE id=Table1 cellSpacing=0 cellPadding=0 width=293 
                        background=jngaxxw.files/info2.gif border=0>
                          <TBODY>
                          <TR>
                            <TD background=jngaxxw.files/info1.gif height=30>
                              <TABLE id=Table3 cellSpacing=0 cellPadding=0 
                              width="100%" border=0>
                                <TBODY>
                                <TR>
                                <TD vAlign=bottom align=middle width=110 
                                height=20><B><FONT 
                                color=#2e7bae>部门工作</FONT></B></TD></TR></TBODY></TABLE></TD></TR>
                          <TR>
                            <TD vAlign=top align=middle><IFRAME marginWidth=0 
                              marginHeight=0 src="jngaxxw.files/bmjwlist.htm" 
                              frameBorder=0 width="99%" scrolling=no 
                              height=225></IFRAME></TD></TR>
                          <TR>
                            <TD vAlign=bottom align=right height=25><A 
                              href="http://10.49.10.9/sjzy/bmjw/" 
                              target=_blank><IMG src="jngaxxw.files/more1.gif" 
                              border=0></A>&nbsp;&nbsp;&nbsp;</TD></TR>
                          <TR>
                            <TD><IMG 
                          src="jngaxxw.files/info3.gif"></TD></TR></TBODY></TABLE></TD></TR>
                    <TR>
                      <TD vAlign=top>
                        <TABLE id=Table1 cellSpacing=0 cellPadding=0 width=293 
                        background=jngaxxw.files/info2.gif border=0>
                          <TBODY>
                          <TR>
                            <TD background=jngaxxw.files/info1.gif height=30>
                              <TABLE id=Info4_Table2 cellSpacing=0 cellPadding=0 
                              width="100%" border=0>
                                <TBODY>
                                <TR>
                                <TD vAlign=bottom align=middle width=110 
                                height=20><B><FONT 
                                color=#2e7bae>队伍建设</FONT></B></TD></TR></TBODY></TABLE></TD></TR>
                          <TR>
                            <TD vAlign=top align=right>
                              <TABLE id=Info4_datalist1 
                              style="WIDTH: 100%; BORDER-COLLAPSE: collapse" 
                              cellSpacing=0 cellPadding=0 border=0>
                                <TBODY>
                                <TR>
                                <TD style="HEIGHT: 21px" align=middle>
                                <TABLE cellSpacing=5 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD width=4><IMG height=5 
                                src="jngaxxw.files/button4.gif" width=4></TD>
                                <TD><A class=gray 
                                href="http://10.49.10.9/infolist/show.aspx?id=46593" 
                                target=_blank>市局召开推进青年民警读书学习活动调研</A></TD>
                                <TD width=20><FONT 
                                color=#7b7b7b>(226)</FONT></TD></TR></TBODY></TABLE>
                                <TABLE cellSpacing=0 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD background=jngaxxw.files/line1.gif><IMG 
                                height=1 src="jngaxxw.files/line1.gif" 
                                width=3></TD></TR></TBODY></TABLE></TD></TR>
                                <TR>
                                <TD style="HEIGHT: 21px" align=middle>
                                <TABLE cellSpacing=5 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD width=4><IMG height=5 
                                src="jngaxxw.files/button4.gif" width=4></TD>
                                <TD><A class=gray 
                                href="http://10.49.10.9/infolist/show.aspx?id=46539" 
                                target=_blank>槐荫分局举办政工信息报送工作培训班</A></TD>
                                <TD width=20><FONT 
                                color=#7b7b7b>(265)</FONT></TD></TR></TBODY></TABLE>
                                <TABLE cellSpacing=0 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD background=jngaxxw.files/line1.gif><IMG 
                                height=1 src="jngaxxw.files/line1.gif" 
                                width=3></TD></TR></TBODY></TABLE></TD></TR>
                                <TR>
                                <TD style="HEIGHT: 21px" align=middle>
                                <TABLE cellSpacing=5 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD width=4><IMG height=5 
                                src="jngaxxw.files/button4.gif" width=4></TD>
                                <TD><A class=gray 
                                href="http://10.49.10.9/infolist/show.aspx?id=46490" 
                                target=_blank>我局63名民警获取公安管理自考本科法</A></TD>
                                <TD width=20><FONT 
                                color=#7b7b7b>(1687)</FONT></TD></TR></TBODY></TABLE>
                                <TABLE cellSpacing=0 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD background=jngaxxw.files/line1.gif><IMG 
                                height=1 src="jngaxxw.files/line1.gif" 
                                width=3></TD></TR></TBODY></TABLE></TD></TR>
                                <TR>
                                <TD style="HEIGHT: 21px" align=middle>
                                <TABLE cellSpacing=5 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD width=4><IMG height=5 
                                src="jngaxxw.files/button4.gif" width=4></TD>
                                <TD><A class=gray 
                                href="http://10.49.10.9/infolist/show.aspx?id=46485" 
                                target=_blank>我局10名同志荣获全国心理咨询师资格</A></TD>
                                <TD width=20><FONT 
                                color=#7b7b7b>(1409)</FONT></TD></TR></TBODY></TABLE>
                                <TABLE cellSpacing=0 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD background=jngaxxw.files/line1.gif><IMG 
                                height=1 src="jngaxxw.files/line1.gif" 
                                width=3></TD></TR></TBODY></TABLE></TD></TR>
                                <TR>
                                <TD style="HEIGHT: 21px" align=middle>
                                <TABLE cellSpacing=5 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD width=4><IMG height=5 
                                src="jngaxxw.files/button4.gif" width=4></TD>
                                <TD><A class=gray 
                                href="http://10.49.10.9/infolist/show.aspx?id=46435" 
                                target=_blank>关于全市县级公安机关国保大队业务技能</A></TD>
                                <TD width=20><FONT 
                                color=#7b7b7b>(773)</FONT></TD></TR></TBODY></TABLE>
                                <TABLE cellSpacing=0 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD background=jngaxxw.files/line1.gif><IMG 
                                height=1 src="jngaxxw.files/line1.gif" 
                                width=3></TD></TR></TBODY></TABLE></TD></TR>
                                <TR>
                                <TD style="HEIGHT: 21px" align=middle>
                                <TABLE cellSpacing=5 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD width=4><IMG height=5 
                                src="jngaxxw.files/button4.gif" width=4></TD>
                                <TD><A class=gray 
                                href="http://10.49.10.9/infolist/show.aspx?id=46408" 
                                target=_blank>山东警察学院第一期转录警人员培训班来</A></TD>
                                <TD width=20><FONT 
                                color=#7b7b7b>(3902)</FONT></TD></TR></TBODY></TABLE>
                                <TABLE cellSpacing=0 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD background=jngaxxw.files/line1.gif><IMG 
                                height=1 src="jngaxxw.files/line1.gif" 
                                width=3></TD></TR></TBODY></TABLE></TD></TR>
                                <TR>
                                <TD style="HEIGHT: 21px" align=middle>
                                <TABLE cellSpacing=5 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD width=4><IMG height=5 
                                src="jngaxxw.files/button4.gif" width=4></TD>
                                <TD><A class=gray 
                                href="http://10.49.10.9/infolist/show.aspx?id=46381" 
                                target=_blank>我局吴颖同志和干部人事处受到省委省政</A></TD>
                                <TD width=20><FONT 
                                color=#7b7b7b>(2330)</FONT></TD></TR></TBODY></TABLE>
                                <TABLE cellSpacing=0 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD background=jngaxxw.files/line1.gif><IMG 
                                height=1 src="jngaxxw.files/line1.gif" 
                                width=3></TD></TR></TBODY></TABLE></TD></TR>
                                <TR>
                                <TD style="HEIGHT: 21px" align=middle>
                                <TABLE cellSpacing=5 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD width=4><IMG height=5 
                                src="jngaxxw.files/button4.gif" width=4></TD>
                                <TD><A class=gray 
                                href="http://10.49.10.9/infolist/show.aspx?id=46378" 
                                target=_blank>《公安政治工作》刊登我局民警教育训练</A></TD>
                                <TD width=20><FONT 
                                color=#7b7b7b>(527)</FONT></TD></TR></TBODY></TABLE>
                                <TABLE cellSpacing=0 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD background=jngaxxw.files/line1.gif><IMG 
                                height=1 src="jngaxxw.files/line1.gif" 
                                width=3></TD></TR></TBODY></TABLE></TD></TR>
                                <TR>
                                <TD style="HEIGHT: 21px" align=middle>
                                <TABLE cellSpacing=5 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD width=4><IMG height=5 
                                src="jngaxxw.files/button4.gif" width=4></TD>
                                <TD><A class=gray 
                                href="http://10.49.10.9/infolist/show.aspx?id=46343" 
                                target=_blank>巡警支队坚持“四个到位”圆满完成基层</A></TD>
                                <TD width=20><FONT 
                                color=#7b7b7b>(372)</FONT></TD></TR></TBODY></TABLE>
                                <TABLE cellSpacing=0 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD background=jngaxxw.files/line1.gif><IMG 
                                height=1 src="jngaxxw.files/line1.gif" 
                                width=3></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR>
                          <TR>
                            <TD vAlign=bottom align=right height=25><A 
                              id=Info4_HyperLink1 
                              href="http://10.49.10.9/infolist/techlist.aspx?sid=7801" 
                              target=_blank><IMG alt="" 
                              src="jngaxxw.files/more1.gif" 
                              border=0></A>&nbsp;&nbsp;&nbsp;</TD></TR>
                          <TR>
                            <TD><IMG 
                          src="jngaxxw.files/info3.gif"></TD></TR></TBODY></TABLE></TD>
                      <TD vAlign=top align=right>
                        <TABLE id=Table1 cellSpacing=0 cellPadding=0 width=293 
                        background=jngaxxw.files/info2.gif border=0>
                          <TBODY>
                          <TR>
                            <TD background=jngaxxw.files/info1.gif height=30>
                              <TABLE id=Table3 cellSpacing=0 cellPadding=0 
                              width="100%" border=0>
                                <TBODY>
                                <TR>
                                <TD vAlign=bottom align=middle width=110 
                                height=20><B><FONT 
                                color=#2e7bae>区县动态</FONT></B></TD></TR></TBODY></TABLE></TD></TR>
                          <TR>
                            <TD vAlign=top align=middle><IFRAME marginWidth=0 
                              marginHeight=0 src="jngaxxw.files/qxjwlist.htm" 
                              frameBorder=0 width="99%" scrolling=no 
                              height=225></IFRAME></TD></TR>
                          <TR>
                            <TD vAlign=bottom align=right height=25><A 
                              href="http://10.49.10.9/sjzy/qxjw/" 
                              target=_blank><IMG src="jngaxxw.files/more1.gif" 
                              border=0></A>&nbsp;&nbsp;&nbsp;</TD></TR>
                          <TR>
                            <TD><IMG 
                          src="jngaxxw.files/info3.gif"></TD></TR></TBODY></TABLE></TD></TR>
                    <TR>
                      <TD vAlign=top>
                        <TABLE id=Table1 cellSpacing=0 cellPadding=0 width=293 
                        background=jngaxxw.files/info2.gif border=0>
                          <TBODY>
                          <TR>
                            <TD background=jngaxxw.files/info1.gif height=30>
                              <TABLE id=Info1_Table2 cellSpacing=0 cellPadding=0 
                              width="100%" border=0>
                                <TBODY>
                                <TR>
                                <TD vAlign=bottom align=middle width=110 
                                height=20><B><FONT 
                                color=#2e7bae>警务视窗</FONT></B></TD></TR></TBODY></TABLE></TD></TR>
                          <TR>
                            <TD vAlign=top align=right>
                              <TABLE id=Info1_datalist1 
                              style="WIDTH: 100%; BORDER-COLLAPSE: collapse" 
                              cellSpacing=0 cellPadding=0 border=0>
                                <TBODY>
                                <TR>
                                <TD style="HEIGHT: 21px" align=middle>
                                <TABLE cellSpacing=5 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD width=4><IMG height=5 
                                src="jngaxxw.files/button4.gif" width=4></TD>
                                <TD><A class=gray 
                                href="http://10.49.10.9/infolist/show.aspx?id=46614" 
                                target=_blank>涉警舆情工作动态（第201430期</A></TD>
                                <TD width=20><FONT 
                                color=#7b7b7b>(83)</FONT></TD></TR></TBODY></TABLE>
                                <TABLE cellSpacing=0 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD background=jngaxxw.files/line1.gif><IMG 
                                height=1 src="jngaxxw.files/line1.gif" 
                                width=3></TD></TR></TBODY></TABLE></TD></TR>
                                <TR>
                                <TD style="HEIGHT: 21px" align=middle>
                                <TABLE cellSpacing=5 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD width=4><IMG height=5 
                                src="jngaxxw.files/button4.gif" width=4></TD>
                                <TD><A class=gray 
                                href="http://10.49.10.9/infolist/show.aspx?id=46605" 
                                target=_blank>我国将开展互联网领域侵权假冒专项整治</A></TD>
                                <TD width=20><FONT 
                                color=#7b7b7b>(43)</FONT></TD></TR></TBODY></TABLE>
                                <TABLE cellSpacing=0 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD background=jngaxxw.files/line1.gif><IMG 
                                height=1 src="jngaxxw.files/line1.gif" 
                                width=3></TD></TR></TBODY></TABLE></TD></TR>
                                <TR>
                                <TD style="HEIGHT: 21px" align=middle>
                                <TABLE cellSpacing=5 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD width=4><IMG height=5 
                                src="jngaxxw.files/button4.gif" width=4></TD>
                                <TD><A class=gray 
                                href="http://10.49.10.9/infolist/show.aspx?id=46535" 
                                target=_blank>涉警舆情工作动态（第201429期）</A></TD>
                                <TD width=20><FONT 
                                color=#7b7b7b>(603)</FONT></TD></TR></TBODY></TABLE>
                                <TABLE cellSpacing=0 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD background=jngaxxw.files/line1.gif><IMG 
                                height=1 src="jngaxxw.files/line1.gif" 
                                width=3></TD></TR></TBODY></TABLE></TD></TR>
                                <TR>
                                <TD style="HEIGHT: 21px" align=middle>
                                <TABLE cellSpacing=5 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD width=4><IMG height=5 
                                src="jngaxxw.files/button4.gif" width=4></TD>
                                <TD><A class=gray 
                                href="http://10.49.10.9/infolist/show.aspx?id=46507" 
                                target=_blank>网传闯红灯躲抓拍有四招 交警称纯属坑</A></TD>
                                <TD width=20><FONT 
                                color=#7b7b7b>(1824)</FONT></TD></TR></TBODY></TABLE>
                                <TABLE cellSpacing=0 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD background=jngaxxw.files/line1.gif><IMG 
                                height=1 src="jngaxxw.files/line1.gif" 
                                width=3></TD></TR></TBODY></TABLE></TD></TR>
                                <TR>
                                <TD style="HEIGHT: 21px" align=middle>
                                <TABLE cellSpacing=5 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD width=4><IMG height=5 
                                src="jngaxxw.files/button4.gif" width=4></TD>
                                <TD><A class=gray 
                                href="http://10.49.10.9/infolist/show.aspx?id=46471" 
                                target=_blank>国家邮政局发通告要求严格落实收寄验视</A></TD>
                                <TD width=20><FONT 
                                color=#7b7b7b>(317)</FONT></TD></TR></TBODY></TABLE>
                                <TABLE cellSpacing=0 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD background=jngaxxw.files/line1.gif><IMG 
                                height=1 src="jngaxxw.files/line1.gif" 
                                width=3></TD></TR></TBODY></TABLE></TD></TR>
                                <TR>
                                <TD style="HEIGHT: 21px" align=middle>
                                <TABLE cellSpacing=5 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD width=4><IMG height=5 
                                src="jngaxxw.files/button4.gif" width=4></TD>
                                <TD><A class=gray 
                                href="http://10.49.10.9/infolist/show.aspx?id=46444" 
                                target=_blank>公安部、央行联合行动打击整治假币违法</A></TD>
                                <TD width=20><FONT 
                                color=#7b7b7b>(238)</FONT></TD></TR></TBODY></TABLE>
                                <TABLE cellSpacing=0 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD background=jngaxxw.files/line1.gif><IMG 
                                height=1 src="jngaxxw.files/line1.gif" 
                                width=3></TD></TR></TBODY></TABLE></TD></TR>
                                <TR>
                                <TD style="HEIGHT: 21px" align=middle>
                                <TABLE cellSpacing=5 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD width=4><IMG height=5 
                                src="jngaxxw.files/button4.gif" width=4></TD>
                                <TD><A class=gray 
                                href="http://10.49.10.9/infolist/show.aspx?id=46436" 
                                target=_blank>涉警舆情工作动态（第201428期</A></TD>
                                <TD width=20><FONT 
                                color=#7b7b7b>(595)</FONT></TD></TR></TBODY></TABLE>
                                <TABLE cellSpacing=0 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD background=jngaxxw.files/line1.gif><IMG 
                                height=1 src="jngaxxw.files/line1.gif" 
                                width=3></TD></TR></TBODY></TABLE></TD></TR>
                                <TR>
                                <TD style="HEIGHT: 21px" align=middle>
                                <TABLE cellSpacing=5 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD width=4><IMG height=5 
                                src="jngaxxw.files/button4.gif" width=4></TD>
                                <TD><A class=gray 
                                href="http://10.49.10.9/infolist/show.aspx?id=46374" 
                                target=_blank>涉警舆情工作动态（第201427期）</A></TD>
                                <TD width=20><FONT 
                                color=#7b7b7b>(772)</FONT></TD></TR></TBODY></TABLE>
                                <TABLE cellSpacing=0 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD background=jngaxxw.files/line1.gif><IMG 
                                height=1 src="jngaxxw.files/line1.gif" 
                                width=3></TD></TR></TBODY></TABLE></TD></TR>
                                <TR>
                                <TD style="HEIGHT: 21px" align=middle>
                                <TABLE cellSpacing=5 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD width=4><IMG height=5 
                                src="jngaxxw.files/button4.gif" width=4></TD>
                                <TD><A class=gray 
                                href="http://10.49.10.9/infolist/show.aspx?id=46334" 
                                target=_blank>孟建柱：让见义勇为精神在中华大地上发</A></TD>
                                <TD width=20><FONT 
                                color=#7b7b7b>(641)</FONT></TD></TR></TBODY></TABLE>
                                <TABLE cellSpacing=0 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD background=jngaxxw.files/line1.gif><IMG 
                                height=1 src="jngaxxw.files/line1.gif" 
                                width=3></TD></TR></TBODY></TABLE></TD></TR>
                                <TR>
                                <TD style="HEIGHT: 21px" align=middle>
                                <TABLE cellSpacing=5 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD width=4><IMG height=5 
                                src="jngaxxw.files/button4.gif" width=4></TD>
                                <TD><A class=gray 
                                href="http://10.49.10.9/infolist/show.aspx?id=46317" 
                                target=_blank>《泉城警苑》2014年第七期编辑出版</A></TD>
                                <TD width=20><FONT 
                                color=#7b7b7b>(374)</FONT></TD></TR></TBODY></TABLE>
                                <TABLE cellSpacing=0 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD background=jngaxxw.files/line1.gif><IMG 
                                height=1 src="jngaxxw.files/line1.gif" 
                                width=3></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR>
                          <TR>
                            <TD vAlign=bottom align=right height=25><A 
                              id=Info1_HyperLink1 
                              href="http://10.49.10.9/infolist/techlist.aspx?sid=6701" 
                              target=_blank><IMG alt="" 
                              src="jngaxxw.files/more1.gif" 
                              border=0></A>&nbsp;&nbsp;&nbsp;</TD></TR>
                          <TR>
                            <TD><IMG 
                          src="jngaxxw.files/info3.gif"></TD></TR></TBODY></TABLE></TD>
                      <TD vAlign=top>
                        <TABLE id=Table1 cellSpacing=0 cellPadding=0 width=293 
                        background=jngaxxw.files/info2.gif border=0>
                          <TBODY>
                          <TR>
                            <TD background=jngaxxw.files/info1.gif height=30>
                              <TABLE id=Info2_Table2 cellSpacing=0 cellPadding=0 
                              width="100%" border=0>
                                <TBODY>
                                <TR>
                                <TD vAlign=bottom align=middle width=110 
                                height=20><B><FONT 
                                color=#2e7bae>时事要闻</FONT></B></TD></TR></TBODY></TABLE></TD></TR>
                          <TR>
                            <TD vAlign=top align=right>
                              <TABLE id=Info2_datalist1 
                              style="WIDTH: 100%; BORDER-COLLAPSE: collapse" 
                              cellSpacing=0 cellPadding=0 border=0>
                                <TBODY>
                                <TR>
                                <TD style="HEIGHT: 21px" align=middle>
                                <TABLE cellSpacing=5 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD width=4><IMG height=5 
                                src="jngaxxw.files/button4.gif" width=4></TD>
                                <TD><A class=gray 
                                href="http://10.49.10.9/infolist/show.aspx?id=46620" 
                                target=_blank>《习近平总书记系列重要讲话读本》深受</A></TD>
                                <TD width=20><FONT 
                                color=#7b7b7b>(93)</FONT></TD></TR></TBODY></TABLE>
                                <TABLE cellSpacing=0 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD background=jngaxxw.files/line1.gif><IMG 
                                height=1 src="jngaxxw.files/line1.gif" 
                                width=3></TD></TR></TBODY></TABLE></TD></TR>
                                <TR>
                                <TD style="HEIGHT: 21px" align=middle>
                                <TABLE cellSpacing=5 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD width=4><IMG height=5 
                                src="jngaxxw.files/button4.gif" width=4></TD>
                                <TD><A class=gray 
                                href="http://10.49.10.9/infolist/show.aspx?id=46619" 
                                target=_blank>中国首台千万亿次超算开始应用于“智慧</A></TD>
                                <TD width=20><FONT 
                                color=#7b7b7b>(114)</FONT></TD></TR></TBODY></TABLE>
                                <TABLE cellSpacing=0 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD background=jngaxxw.files/line1.gif><IMG 
                                height=1 src="jngaxxw.files/line1.gif" 
                                width=3></TD></TR></TBODY></TABLE></TD></TR>
                                <TR>
                                <TD style="HEIGHT: 21px" align=middle>
                                <TABLE cellSpacing=5 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD width=4><IMG height=5 
                                src="jngaxxw.files/button4.gif" width=4></TD>
                                <TD><A class=gray 
                                href="http://10.49.10.9/infolist/show.aspx?id=46618" 
                                target=_blank>苹果将中国用户信息转存中国电信服务器</A></TD>
                                <TD width=20><FONT 
                                color=#7b7b7b>(127)</FONT></TD></TR></TBODY></TABLE>
                                <TABLE cellSpacing=0 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD background=jngaxxw.files/line1.gif><IMG 
                                height=1 src="jngaxxw.files/line1.gif" 
                                width=3></TD></TR></TBODY></TABLE></TD></TR>
                                <TR>
                                <TD style="HEIGHT: 21px" align=middle>
                                <TABLE cellSpacing=5 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD width=4><IMG height=5 
                                src="jngaxxw.files/button4.gif" width=4></TD>
                                <TD><A class=gray 
                                href="http://10.49.10.9/infolist/show.aspx?id=46617" 
                                target=_blank>贵州：媒体发布违法广告情节严重将被纳</A></TD>
                                <TD width=20><FONT 
                                color=#7b7b7b>(61)</FONT></TD></TR></TBODY></TABLE>
                                <TABLE cellSpacing=0 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD background=jngaxxw.files/line1.gif><IMG 
                                height=1 src="jngaxxw.files/line1.gif" 
                                width=3></TD></TR></TBODY></TABLE></TD></TR>
                                <TR>
                                <TD style="HEIGHT: 21px" align=middle>
                                <TABLE cellSpacing=5 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD width=4><IMG height=5 
                                src="jngaxxw.files/button4.gif" width=4></TD>
                                <TD><A class=gray 
                                href="http://10.49.10.9/infolist/show.aspx?id=46616" 
                                target=_blank>南京警方查处9名网上散布谣言、发表极</A></TD>
                                <TD width=20><FONT 
                                color=#7b7b7b>(122)</FONT></TD></TR></TBODY></TABLE>
                                <TABLE cellSpacing=0 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD background=jngaxxw.files/line1.gif><IMG 
                                height=1 src="jngaxxw.files/line1.gif" 
                                width=3></TD></TR></TBODY></TABLE></TD></TR>
                                <TR>
                                <TD style="HEIGHT: 21px" align=middle>
                                <TABLE cellSpacing=5 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD width=4><IMG height=5 
                                src="jngaxxw.files/button4.gif" width=4></TD>
                                <TD><A class=gray 
                                href="http://10.49.10.9/infolist/show.aspx?id=46603" 
                                target=_blank>新华社评论员：为改革想招，为改革发力</A></TD>
                                <TD width=20><FONT 
                                color=#7b7b7b>(531)</FONT></TD></TR></TBODY></TABLE>
                                <TABLE cellSpacing=0 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD background=jngaxxw.files/line1.gif><IMG 
                                height=1 src="jngaxxw.files/line1.gif" 
                                width=3></TD></TR></TBODY></TABLE></TD></TR>
                                <TR>
                                <TD style="HEIGHT: 21px" align=middle>
                                <TABLE cellSpacing=5 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD width=4><IMG height=5 
                                src="jngaxxw.files/button4.gif" width=4></TD>
                                <TD><A class=gray 
                                href="http://10.49.10.9/infolist/show.aspx?id=46602" 
                                target=_blank>精华版“唐宋名篇”音乐朗诵会将巡演６</A></TD>
                                <TD width=20><FONT 
                                color=#7b7b7b>(552)</FONT></TD></TR></TBODY></TABLE>
                                <TABLE cellSpacing=0 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD background=jngaxxw.files/line1.gif><IMG 
                                height=1 src="jngaxxw.files/line1.gif" 
                                width=3></TD></TR></TBODY></TABLE></TD></TR>
                                <TR>
                                <TD style="HEIGHT: 21px" align=middle>
                                <TABLE cellSpacing=5 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD width=4><IMG height=5 
                                src="jngaxxw.files/button4.gif" width=4></TD>
                                <TD><A class=gray 
                                href="http://10.49.10.9/infolist/show.aspx?id=46601" 
                                target=_blank>擅用QQ企鹅形象 腾讯诉两商家侵权获</A></TD>
                                <TD width=20><FONT 
                                color=#7b7b7b>(437)</FONT></TD></TR></TBODY></TABLE>
                                <TABLE cellSpacing=0 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD background=jngaxxw.files/line1.gif><IMG 
                                height=1 src="jngaxxw.files/line1.gif" 
                                width=3></TD></TR></TBODY></TABLE></TD></TR>
                                <TR>
                                <TD style="HEIGHT: 21px" align=middle>
                                <TABLE cellSpacing=5 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD width=4><IMG height=5 
                                src="jngaxxw.files/button4.gif" width=4></TD>
                                <TD><A class=gray 
                                href="http://10.49.10.9/infolist/show.aspx?id=46600" 
                                target=_blank>Finnciti网站涉嫌网络传销应警</A></TD>
                                <TD width=20><FONT 
                                color=#7b7b7b>(206)</FONT></TD></TR></TBODY></TABLE>
                                <TABLE cellSpacing=0 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD background=jngaxxw.files/line1.gif><IMG 
                                height=1 src="jngaxxw.files/line1.gif" 
                                width=3></TD></TR></TBODY></TABLE></TD></TR>
                                <TR>
                                <TD style="HEIGHT: 21px" align=middle>
                                <TABLE cellSpacing=5 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD width=4><IMG height=5 
                                src="jngaxxw.files/button4.gif" width=4></TD>
                                <TD><A class=gray 
                                href="http://10.49.10.9/infolist/show.aspx?id=46599" 
                                target=_blank>云南发生灭门惨案六口人全部遇害 疑因</A></TD>
                                <TD width=20><FONT 
                                color=#7b7b7b>(1811)</FONT></TD></TR></TBODY></TABLE>
                                <TABLE cellSpacing=0 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD background=jngaxxw.files/line1.gif><IMG 
                                height=1 src="jngaxxw.files/line1.gif" 
                                width=3></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR>
                          <TR>
                            <TD vAlign=bottom align=right height=25><A 
                              id=Info2_HyperLink1 
                              href="http://10.49.10.9/infolist/techlist.aspx?sid=6801" 
                              target=_blank><IMG alt="" 
                              src="jngaxxw.files/more1.gif" 
                              border=0></A>&nbsp;&nbsp;&nbsp;</TD></TR>
                          <TR>
                            <TD><IMG 
                          src="jngaxxw.files/info3.gif"></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD>
          <TD vAlign=top width=180>
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD>
                  <TABLE id=Table1 cellSpacing=0 cellPadding=0 width=180 
                  border=0>
                    <TBODY>
                    <TR>
                      <TD align=right background=jngaxxw.files/right1.gif 
                      height=29><A 
                        href="http://10.49.10.9/infolist/techshow.aspx?sid=4401" 
                        target=_blank><IMG src="jngaxxw.files/more2.gif" 
                        border=0></A></TD></TR>
                    <TR>
                      <TD align=middle background=jngaxxw.files/right2.gif>
                        <TABLE id=datalist1_datalist1 
                        style="WIDTH: 80%; BORDER-COLLAPSE: collapse" 
                        cellSpacing=0 cellPadding=0 border=0>
                          <TBODY>
                          <TR>
                            <TD style="HEIGHT: 31px" align=middle><A 
                              href="http://10.49.6.37:3700/casserver/login" 
                              target=_blank><IMG 
                              src="jngaxxw.files/2010525163806193.gif" 
                              border=0></A></TD></TR>
                          <TR>
                            <TD style="HEIGHT: 31px" align=middle><A 
                              href="https://10.49.10.187/" target=_blank><IMG 
                              src="jngaxxw.files/2013717103413671.gif" 
                              border=0></A></TD></TR>
                          <TR>
                            <TD style="HEIGHT: 31px" align=middle><A 
                              href="http://10.49.10.186/pcp/login.htm" 
                              target=_blank><IMG 
                              src="jngaxxw.files/20131112143904884.gif" 
                              border=0></A></TD></TR>
                          <TR>
                            <TD style="HEIGHT: 31px" align=middle><A 
                              href="http://10.49.7.202/license!getExpireDateOfDays.action" 
                              target=_blank><IMG 
                              src="jngaxxw.files/201411430456540.gif" 
                              border=0></A></TD></TR>
                          <TR>
                            <TD style="HEIGHT: 31px" align=middle><A 
                              href="https://10.49.6.97/" target=_blank><IMG 
                              src="jngaxxw.files/20131122113423297.gif" 
                              border=0></A></TD></TR>
                          <TR>
                            <TD style="HEIGHT: 31px" align=middle><A 
                              href="http://10.49.6.91:9501/base/plugin/indexLogin.action" 
                              target=_blank><IMG 
                              src="jngaxxw.files/2013112119565122.gif" 
                              border=0></A></TD></TR>
                          <TR>
                            <TD style="HEIGHT: 31px" align=middle><A 
                              href="http://10.49.6.117/" target=_blank><IMG 
                              src="jngaxxw.files/2014114165210727.gif" 
                              border=0></A></TD></TR>
                          <TR>
                            <TD style="HEIGHT: 31px" align=middle><A 
                              href="http://10.49.10.66/PGIS_Portal/login.jsp" 
                              target=_blank><IMG 
                              src="jngaxxw.files/2009122605919875.gif" 
                              border=0></A></TD></TR>
                          <TR>
                            <TD style="HEIGHT: 31px" align=middle><A 
                              href="http://10.49.10.54/" target=_blank><IMG 
                              src="jngaxxw.files/2009122605951312.gif" 
                              border=0></A></TD></TR>
                          <TR>
                            <TD style="HEIGHT: 31px" align=middle><A 
                              href="https://10.49.8.81/gsweb/" 
                              target=_blank><IMG 
                              src="jngaxxw.files/200912261000546.gif" 
                              border=0></A></TD></TR>
                          <TR>
                            <TD style="HEIGHT: 31px" align=middle><A 
                              href="https://10.49.6.184/rybbxt" 
                              target=_blank><IMG 
                              src="jngaxxw.files/2010525142051365.gif" 
                              border=0></A></TD></TR>
                          <TR>
                            <TD style="HEIGHT: 31px" align=middle><A 
                              href="http://10.49.6.157:81/" target=_blank><IMG 
                              src="jngaxxw.files/20131122113328703.gif" 
                              border=0></A></TD></TR>
                          <TR>
                            <TD style="HEIGHT: 31px" align=middle><A 
                              href="http://10.49.7.22/ydhccj/" 
                              target=_blank><IMG 
                              src="jngaxxw.files/2012112115818625.gif" 
                              border=0></A></TD></TR>
                          <TR>
                            <TD style="HEIGHT: 31px" align=middle><A 
                              href="https://10.49.6.171/hotel/default.asp" 
                              target=_blank><IMG 
                              src="jngaxxw.files/2009122610142437.gif" 
                              border=0></A></TD></TR>
                          <TR>
                            <TD style="HEIGHT: 31px" align=middle><A 
                              href="http://10.231.10.10:8888/EHL_ITGS/" 
                              target=_blank><IMG 
                              src="jngaxxw.files/20131122113657703.gif" 
                              border=0></A></TD></TR>
                          <TR>
                            <TD style="HEIGHT: 31px" align=middle><A 
                              href="http://10.49.6.162/zjgl/" target=_blank><IMG 
                              src="jngaxxw.files/2013113180140235.jpg" 
                              border=0></A></TD></TR>
                          <TR>
                            <TD style="HEIGHT: 31px" align=middle><A 
                              href="http://10.231.3.64/jtglzc/" 
                              target=_blank><IMG 
                              src="jngaxxw.files/2014312145913421.gif" 
                              border=0></A></TD></TR>
                          <TR>
                            <TD style="HEIGHT: 31px" align=middle><A 
                              href="https://10.49.6.188/jwbm" target=_blank><IMG 
                              src="jngaxxw.files/201378142237390.gif" 
                              border=0></A></TD></TR>
                          <TR>
                            <TD style="HEIGHT: 31px" align=middle><A 
                              href="http://10.49.10.9/infolist/techshow.aspx?sid=4401" 
                              target=_blank><IMG 
                              src="jngaxxw.files/200912261035493.gif" 
                              border=0></A></TD></TR>
                          <TR>
                            <TD style="HEIGHT: 31px" align=middle><A 
                              href="http://10.49.10.9/infolist/techshow.aspx?sid=4401" 
                              target=_blank><IMG 
                              src="jngaxxw.files/2009122610439109.gif" 
                              border=0></A></TD></TR></TBODY></TABLE></TD></TR>
                    <TR>
                      <TD><IMG 
                  src="jngaxxw.files/right3.gif"></TD></TR></TBODY></TABLE></TD></TR>
              <TR>
                <TD><IMG height=7 src="jngaxxw.files/10.49.10.htm" 
              width=0></TD></TR>
              <TR>
                <TD>
                  <TABLE id=Table1 cellSpacing=0 cellPadding=0 width=180 
                  border=0>
                    <TBODY>
                    <TR>
                      <TD><IMG src="jngaxxw.files/right4.gif"></TD></TR>
                    <TR>
                      <TD background=jngaxxw.files/right2.gif>
                        <TABLE id=Netlist1_menulist style="WIDTH: 100%" 
                        cellSpacing=10 cellPadding=0 border=0>
                          <TBODY>
                          <TR>
                            <TD align=middle>
                              <TABLE height=26 cellSpacing=0 cellPadding=0 
                              width=72 align=center border=0>
                                <TBODY>
                                <TR>
                                <TD align=middle 
                                background=jngaxxw.files/button5.gif>&nbsp;&nbsp;<A 
                                href="http://10.49.10.9/infolist/techlist.aspx?sid=6401" 
                                target=_blank>安全通报</A></TD></TR></TBODY></TABLE></TD>
                            <TD align=middle>
                              <TABLE height=26 cellSpacing=0 cellPadding=0 
                              width=72 align=center border=0>
                                <TBODY>
                                <TR>
                                <TD align=middle 
                                background=jngaxxw.files/button5.gif>&nbsp;&nbsp;<A 
                                href="http://10.49.10.9/infolist/techlist.aspx?sid=6402" 
                                target=_blank>安全规定</A></TD></TR></TBODY></TABLE></TD></TR>
                          <TR>
                            <TD align=middle>
                              <TABLE height=26 cellSpacing=0 cellPadding=0 
                              width=72 align=center border=0>
                                <TBODY>
                                <TR>
                                <TD align=middle 
                                background=jngaxxw.files/button5.gif>&nbsp;&nbsp;<A 
                                href="http://10.49.10.110/vrveis/soft/index.asp" 
                                target=_blank>入网注册</A></TD></TR></TBODY></TABLE></TD>
                            <TD align=middle>
                              <TABLE height=26 cellSpacing=0 cellPadding=0 
                              width=72 align=center border=0>
                                <TBODY>
                                <TR>
                                <TD align=middle 
                                background=jngaxxw.files/button5.gif>&nbsp;&nbsp;<A 
                                href="http://10.49.10.110/vrveis/soft/patch.asp" 
                                target=_blank>补丁更新</A></TD></TR></TBODY></TABLE></TD></TR>
                          <TR>
                            <TD align=middle>
                              <TABLE height=26 cellSpacing=0 cellPadding=0 
                              width=72 align=center border=0>
                                <TBODY>
                                <TR>
                                <TD align=middle 
                                background=jngaxxw.files/button5.gif>&nbsp;&nbsp;<A 
                                href="http://10.49.10.9/infolist/techlist.aspx?sid=69" 
                                target=_blank>软件下载</A></TD></TR></TBODY></TABLE></TD>
                            <TD align=middle>
                              <TABLE height=26 cellSpacing=0 cellPadding=0 
                              width=72 align=center border=0>
                                <TBODY>
                                <TR>
                                <TD align=middle 
                                background=jngaxxw.files/button5.gif>&nbsp;&nbsp;<A 
                                href="http://10.49.10.9/infolist/techlist.aspx?sid=6406" 
                                target=_blank>运行管理</A></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR>
                    <TR>
                      <TD><IMG 
                  src="jngaxxw.files/right3.gif"></TD></TR></TBODY></TABLE></TD></TR>
              <TR>
                <TD><IMG height=7 src="jngaxxw.files/10.49.10.htm" 
              width=0></TD></TR>
              <TR>
                <TD>
                  <TABLE id=Table1 cellSpacing=0 cellPadding=0 width=180 
                  border=0>
                    <TBODY>
                    <TR>
                      <TD><IMG src="jngaxxw.files/right5.gif"></TD></TR>
                    <TR>
                      <TD background=jngaxxw.files/right2.gif>
                        <TABLE id=Serlist1_menulist style="WIDTH: 100%" 
                        cellSpacing=13 cellPadding=0 border=0>
                          <TBODY>
                          <TR>
                            <TD align=middle>
                              <TABLE height=26 cellSpacing=0 cellPadding=0 
                              width=72 align=center border=0>
                                <TBODY>
                                <TR>
                                <TD align=middle 
                                background=jngaxxw.files/button5.gif>&nbsp;&nbsp;<A 
                                href="http://10.49.10.9/tel.htm" 
                                target=_blank>电话号码</A></TD></TR></TBODY></TABLE></TD>
                            <TD align=middle>
                              <TABLE height=26 cellSpacing=0 cellPadding=0 
                              width=72 align=center border=0>
                                <TBODY>
                                <TR>
                                <TD align=middle 
                                background=jngaxxw.files/button5.gif>&nbsp;&nbsp;<A 
                                href="http://10.49.13.124:8090/sms" 
                                target=_blank>短信平台</A></TD></TR></TBODY></TABLE></TD></TR>
                          <TR>
                            <TD align=middle>
                              <TABLE height=26 cellSpacing=0 cellPadding=0 
                              width=72 align=center border=0>
                                <TBODY>
                                <TR>
                                <TD align=middle 
                                background=jngaxxw.files/button5.gif>&nbsp;&nbsp;<A 
                                href="http://10.49.9.213:8092/" 
                                target=_blank>心理在线</A></TD></TR></TBODY></TABLE></TD>
                            <TD align=middle>
                              <TABLE height=26 cellSpacing=0 cellPadding=0 
                              width=72 align=center border=0>
                                <TBODY>
                                <TR>
                                <TD align=middle 
                                background=jngaxxw.files/button5.gif>&nbsp;&nbsp;<A 
                                href="http://10.49.10.31/site" 
                                target=_blank>电子书屋</A></TD></TR></TBODY></TABLE></TD></TR>
                          <TR>
                            <TD align=middle>
                              <TABLE height=26 cellSpacing=0 cellPadding=0 
                              width=72 align=center border=0>
                                <TBODY>
                                <TR>
                                <TD align=middle 
                                background=jngaxxw.files/button5.gif>&nbsp;&nbsp;<A 
                                href="http://ssyq.zx.ga/keySearch.trs" 
                                target=_blank>公安部搜索</A></TD></TR></TBODY></TABLE></TD>
                            <TD align=middle>
                              <TABLE height=26 cellSpacing=0 cellPadding=0 
                              width=72 align=center border=0>
                                <TBODY>
                                <TR>
                                <TD align=middle 
                                background=jngaxxw.files/button5.gif>&nbsp;&nbsp;<A 
                                href="http://10.49.6.167:8090/" 
                                target=_blank>公车管理</A></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR>
                    <TR>
                      <TD><IMG 
                  src="jngaxxw.files/right3.gif"></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR>
  <TR>
    <TD><IMG height=5 src="jngaxxw.files/10.49.10.htm" width=0></TD></TR>
  <TR>
    <TD align=middle>
      <TABLE height=142 cellSpacing=0 cellPadding=0 width=992 
      background=jngaxxw.files/pic2.gif border=0>
        <TBODY>
        <TR>
          <TD width=5><IMG src="jngaxxw.files/pic1.gif"></TD>
          <TD align=middle width=982><IFRAME marginWidth=0 marginHeight=0 
            src="jngaxxw.files/js08.htm" frameBorder=0 width=980 scrolling=no 
            height=135></IFRAME></TD>
          <TD width=5><IMG 
  src="jngaxxw.files/pic3.gif"></TD></TR></TBODY></TABLE></TD></TR>
  <TR>
    <TD><IMG height=5 src="jngaxxw.files/10.49.10.htm" width=0></TD></TR>
  <TR>
    <TD><IMG src="jngaxxw.files/line2.gif"></TD></TR>
  <TR>
    <TD><IMG height=5 src="jngaxxw.files/10.49.10.htm" width=0></TD></TR>
  <TR>
    <TD height=30>
      <TABLE id=Botton1_TABLE1 cellSpacing=5 cellPadding=0 width="90%" 
      align=center border=0>
        <TBODY>
        <TR>
          <TD align=middle>济南市公安局版权所有 地址：济南市旅游路17777号 邮编:250001 指挥部主办 
            科技信息通信处技术支持</TD>
          <TD align=middle width=190>站点访问量：<FONT 
            color=red><B>44486778</B></FONT></TD>
          <TD><A class=blue href="http://10.49.10.9/manager/default.aspx" 
            target=_blank>信息发布</A>&nbsp;&nbsp;&nbsp;&nbsp;<A class=blue 
            href="http://10.49.7.209/admin/" 
      target=_blank>信息管理</A></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE><SPAN 
id=Label1></SPAN></FORM></TR></TBODY></TABLE></TR></TBODY></TABLE></TR></TBODY></TABLE></FORM></BODY>
 
</html>