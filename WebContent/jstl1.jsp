<%@page import="practice.javaBean.Person"%>
<%@page import="java.util.LinkedHashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>for each</title>
</head>
<body>
	<h4>普通for循环</h4>
	<c:set var="sum" value="0" scope="request"></c:set>
	<% for(int i = 1; i <= 10; i+=2) {
		out.print(i);
	} %>
	<!-- step 代表步数,默认1 -->
	<c:forEach var="i" begin="1" end="10" step="2">
		<c:set var="sum" value="${sum +i}"></c:set>
	</c:forEach>
	<c:out value="${sum }"></c:out>
	<h4>遍历集合和数组</h4>
	<% String[] arr =  new String[]{"张三","赵四","王二麻子"};
	pageContext.setAttribute("arr", arr);
		List<String> list = new ArrayList<String>();
		list.add("张三");
		list.add("赵四");
		list.add("王二麻子");
		application.setAttribute("list", list);
	%>
	<%	
		for(String username : arr){
			out.write(username);
		}
	%>
	遍历数组:<br/>
	<c:forEach var="arr" items="${arr }">
		<c:out value="arr:${arr }"></c:out>
	</c:forEach>
	遍历List集合:<br/>
	<c:forEach var="list" items="${list }">
		<c:out value="list:${list }"></c:out>
	</c:forEach>
	<%Map<String,String> map = new LinkedHashMap<String,String>();
		map.put("str1", "str1");
		map.put("str2", "str2");
		map.put("str3", "str3");
		request.setAttribute("map", map);
	%>
	</br>
	遍历List集合:</br>
	<% List<Person> personList = new ArrayList<Person>();
	 personList.add(new Person("张三","男",25));
	 personList.add(new Person("李四","女",88));
	 personList.add(new Person("王五","男",23));
	 application.setAttribute("list", personList);
	%>
	<table width="50%" border="1" align="center">
  <tr>
    <th>姓名</th>
    <th>年龄</th>
    <th>性别</th>
  </tr>
  <c:forEach var="person" items="${list }" varStatus="per">
  	<c:choose >
  		<c:when test="${per.first }">
  			<c:set var="color" value="red"></c:set>
  		</c:when>
  		<c:when test="${per.last }">
  			<c:set var="color" value="blue"></c:set>
  		</c:when>
  		<c:otherwise>
  			<c:set var="color" value="write"></c:set>
  		</c:otherwise>
  	</c:choose>
  	<tr>
  		<td>${person.username }</td>
  		<td>${person.sex}</td>
  		<td>${person.age }</td>
  	</tr>
  	<tr>
  		<td><c:out value="${per.count }"></c:out></td>
  		<td><c:out value="${per.index }"></c:out></td>
  		<td><c:out  value="${per.current }"></c:out></td>
  	</tr>
  </c:forEach>
  </table>
  </br>
	遍历map集合:</br>
	<c:forEach var="map" items="${requestScope.map }">
		<c:out value="${map.key }:${map.value }"></c:out>
	</c:forEach>
</body>
</html>