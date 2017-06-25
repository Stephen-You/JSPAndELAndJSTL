<%@page import="org.omg.PortableServer.REQUEST_PROCESSING_POLICY_ID"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page errorPage="error.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>demo1.jsp</title>
</head>
<body>
	<% pageContext.setAttribute("pageContext", "作用域当前页面"); %>
	<% pageContext.setAttribute("request", "代理request域功能对象",pageContext.REQUEST_SCOPE); %>
	<% pageContext.setAttribute("session", "代理Session域功能对象",pageContext.SESSION_SCOPE); %>
	<% pageContext.setAttribute("application","代理ServletContext域功能对象",pageContext.APPLICATION_SCOPE); %>
	<% application.setAttribute("ServletContext", "servletContext域功能对象"); %>
	<% pageContext.getOut().println(pageContext.getAttribute("pageContext")+"  代理内置对象!"); %>
	<%="请求跳转到demo2.jsp!" %>
	
	<% request.getRequestDispatcher("/demo2.jsp").forward(request, response); %>
</body>
</html>