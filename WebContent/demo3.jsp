<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page errorPage="error.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>demo3.jsp</title>
</head>
<body>
<% out.println(request.getAttribute("request")+"</br>") ;%>
<%= pageContext.getAttribute("pageContext")+"</br> "%>
<%= session.getAttribute("session")+"  " %>
<%= application.getAttribute("application")+" </br> " %>
<%= application.getAttribute("ServletContext")+"</br>" %>
</body>
</html>