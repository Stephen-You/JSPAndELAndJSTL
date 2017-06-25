<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% String path = request.getContextPath(); %>
	<% String basePath = request.getScheme()+request.getServerName()+request.getServerPort()+path+"/" ;%>
	<%=path+"</br>" %>
	<%=basePath+"</br>" %>
	<%=request.getAttribute("age")+"</br>" %>
	<%="  测试结果!"+"</br>"  %>
	<%out.write("  测试结果!"+"</br>"); %>
	<%=request.getAttribute("path")+"</br>"  %>
	<%=request.getAttribute("basePath")+"</br>"  %>
	<%=request.getParameter("path") %>
	<%=request.getParameter("basePath") %>
	
</body>
</html>