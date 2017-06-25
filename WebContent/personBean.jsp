<%@page import="practice.javaBean.Person"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<!-- 演示usebean标签 -->
	<jsp:useBean id="person1" class="practice.javaBean.Person"></jsp:useBean>
	<jsp:setProperty property="username" name="person1" value="28"/>
	<jsp:useBean id="person2" class="practice.javaBean.Person" scope="application"></jsp:useBean>
	<jsp:useBean id="person3" class="practice.javaBean.Person" scope="page"></jsp:useBean>
	<% practice.javaBean.Person person = (practice.javaBean.Person)application.getAttribute("person2");
		if(person ==null){
			person = new practice.javaBean.Person();
			application.setAttribute("person", person);
		} 
	%>
	<jsp:getProperty property="username" name="person1"/>
</body>
</html>