<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%--
其中pattern="#.##"：
  > 表示保留两位小数，这会自动四舍五入
  > 如果要格式化的小数不足两位，那么正常显示，不会补位！
其中pattern="0.00"：
  > 表示保留两位小数，这会自动四舍五入
  > 如果要格式化的小数不足两位，那么补足到两位  
--%>
	<% Date date = new Date();
		session.setAttribute("date", date);
		double d1 = 3.576;
		double d2 = 4.4; 
		double d3 = 4.5;
		pageContext.setAttribute("d1", d1);
		pageContext.setAttribute("d2", d2);
		pageContext.setAttribute("d3", d3);
	%>
	<fmt:formatDate value="${sessionScope.date }"  pattern="yyyy-MM-dd HH:mm:ss"/></br>
	<fmt:formatNumber value="${d1 }" pattern="0.00"></fmt:formatNumber></br>
	<fmt:formatNumber value="${d2 }" pattern="0.00"></fmt:formatNumber></br>
	<fmt:formatNumber value="${d3 }" pattern="#.##"/>
	
</body>
</html>