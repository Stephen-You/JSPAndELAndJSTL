<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>test.jsp</title>
</head>
<body>
	<% String path = request.getContextPath(); %>
	<% String basePath = request.getScheme()+request.getServerName()+request.getServerPort()+path+"/" ;%>
	<% request.setAttribute("age", "27") ;%>
	<% out.write("测试动作标签forward是否会携带request和response!"); %>
	<%=path+"</br>" %>
	<%=basePath+"</br>" %>
	<jsp:include page="test1.jsp" />
	<jsp:forward page="/WEB-INF/test2.jsp">
		<jsp:param value="path" name="path"/>
		<jsp:param value="basePath" name="basePath"/>
	</jsp:forward>
	
</body>
</html>