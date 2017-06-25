<%@ page language="java" contentType="text/html; utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%int scope = Integer.parseInt(request.getParameter("scope"));
		pageContext.setAttribute("scope", scope);
	%>
	<c:choose>
		<c:when test="${scope > 100 || scope<0} ">成绩输入错误</c:when>
		<c:when test="${scope >=90 }">A</c:when>
		<c:when test="${scope >=80 }">B</c:when>
		<c:when test="${scope >=70 }">C</c:when>
		<c:when test="${scope>=60 }">D</c:when>
		<c:otherwise>E</c:otherwise>
	</c:choose>
</body>
</html>