<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>jstl标签练习</title>
</head>
<body>
<pre>JSTL是apache对EL表达式的扩展（也就是说JSTL依赖EL{其实EL原来是JSTL的一部分，
	现在是JSP的一部分了。}），JSTL是标签语言！JSTL标签使用以来非常方便，它与JSP动作标签一定，
	只不过它不是JSP内置的标签，需要我们自己导包，以及指定标签库而已！</pre>
	<h3>core标签库--核心标签库</h3>
	<h4>out&&set</h4>
	<% request.setAttribute("aaa", "域对象aaa");
	pageContext.setAttribute("js", "<script>while(true) alert('你死定了！');</script>");
	%>
	输出字符串aaa:<c:out value="aaa"></c:out></br>
	输出域对象aaa,从page域开始查找,从小域到大域:<c:out value="${aaa}" /></br>
	输出测试,没有此域对象,也没有设置default:<c:out value="${aaaa}"></c:out></br>
	输出域对象aaa,从page域开始查找,从小域到大域,查找到输出,查找不到输出default:<c:out value="${aaaa}" default="默认"></c:out></br>
	<c:out value="${js }" escapeXml="true"/></br>
	<c:out value="${js }" /></br>
	<c:set var="a" value="域对象a" scope="session"></c:set>
	<c:set var="a" value="域对象a,添加到pageContext域中;"></c:set>
	<c:set var="aaa" value="域对象a,添加到pageContext域中;"></c:set>
	<c:out value="${a }"></c:out>
	<h4>remove</h4>
	删除pageContext域中名称为a的对象:<c:remove var="a" scope="page"/></br>
	<c:out value="${a }"></c:out></br>
	删除所有域中名称为aaa的对象:<c:remove var="aaa"/></br>
	<c:out value="${aaa }" default="没有此对象"></c:out></br>
	<h4>url</h4>
	<!-- 输出 -->
	<c:url value="/"></c:url>
	<!-- 不输出 -->
	<c:url value="/" var="contextPath" scope="request"></c:url></br>
	<c:url value="/RegistServlet" var="path" scope="session"></c:url>
	<c:url value="/RegistServlet" var="path1" scope="application">
		<c:param name="username" value="username"></c:param>
		<c:param name="password" value="password"></c:param>
	</c:url>
	<c:out value="${contextPath }" default="不能正常显示"></c:out></br>
	<c:out value="${path }" default="不能正常显示"></c:out></br>
	${applicationScope.path1 }</br>
	<!-- 通常和链接及表单放在一起使用 -->
	<a href="${path1 }">点击链接RegistServlet</a>
	<h4>if标签</h4>
	<c:if test="${5>4 }">
		<c:out value="对了!"></c:out>
	</c:if>
	<h4>choose</h4>
	<c:set var="scope" value="${param.scope }"></c:set>
	<c:out value=""></c:out>
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