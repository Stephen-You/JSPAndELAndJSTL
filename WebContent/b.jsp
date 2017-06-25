<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'b.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
<h1>演示JSTL</h1>
<h3>out标签</h3>
<%
// 向域中添加数据
pageContext.setAttribute("xxx", "XXX");
pageContext.setAttribute("js", "<script>while(true) alert('你死定了！');</script>");
%>
<c:out value="${xxxx }" default="没有"/><br/>
<c:out value="${js }" escapeXml="true"/>

<h3>set标签</h3>
<%
pageContext.setAttribute("xxx", "XXXX");
%>
<c:set var="h" value="${xxx }" scope="request"/>
${requestScope.h }

<h3>remove标签</h3>
<c:remove var="h"/>
${h }

<h3>url标签</h3>
<%-- 只是输出url，没有使用其他标签！ 自动添加项目名！！！--%>
<c:url value="/xxx"/><br/>
<%-- 不输出，而是把生成的url保存到变量 --%>
<c:url value="/xxx.jsp?username=zhangSan&password=liSi" var="url"/>
${url }<br/>
<%-- 给url添加参数 （如果参数值为中文，会自动URL编码！）--%>
<c:url value="/xxx.jsp" var="u1">
  <c:param name="username">张三</c:param>
  <c:param name="password">李四</c:param>
</c:url>
<%--通常与链接和表单一起使用 --%>

<a href="${u1 }">点击这里</a>

<a href="<c:url value='/LoginServlet'/>">登录</a>
  </body>
</html>
