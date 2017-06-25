<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>test1.jsp</title>
</head>
<body>
	<table border="1" width="50%">
		<tr>
			<th>序号</th>
			<th>用户名</th>
			<th>密码</th>
		</tr>
	<% String username="username"; %>
	<%=username %>
	<% out.println(username); %>
	<% for(int i=0;i<10;i++){ %>
		<tr>
			<td><%=i+1 %></td>
			<td>user<%=i %></td>
			<td><% out.println(100+1); %></td>
		</tr>
	<%} %>
	</table>
</body>
</html>