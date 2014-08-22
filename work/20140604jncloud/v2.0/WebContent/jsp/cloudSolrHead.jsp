<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@page import="com.inspur.pcs.web.data.GcqUserInfo"%>
<%
GcqUserInfo gcqUserInfo = (GcqUserInfo)session.getAttribute("gcqUserInfo");
if(gcqUserInfo!=null){
%>
<p>
        山东省济南市公安局科技信息通讯处有线通讯科 &nbsp;&nbsp;周建平 &nbsp;&nbsp;<a id="adv_user">高级用户</a>
    </p>
<%}%>