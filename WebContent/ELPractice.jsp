<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
El:${"EL的书写格式,用于替代JSP脚本<%= %>"}</br>
EL:${"EL表达式里边为null时,不显示null,显示一个空的字符串!" }El:${null }</br>
<% List<String> list = new ArrayList<String>(); 
	list.add("list1");
	list.add("list2");
   String[] arr = {"arr1","arr2","arr3"};
   Map<String,String> map = new HashMap<String,String>();
   map.put("name", "肖涵");
   map.put("sex", "男");
%>
<jsp:useBean id="person1" class="practice.javaBean.Person" scope="application"></jsp:useBean>
<jsp:setProperty property="username" name="person1" value="刘磊"/>
<jsp:setProperty property="sex" name="person1" value="男"/>
<jsp:setProperty property="age" name="person1" value="36"/>
EL:${"使用EL操作list集合:"}${list[0]}</br>
EL:${"使用EL操作arr数组:"}${arr[1]  }</br>
El:${"使用EL操作Map集合:"}${map.name}${"  "}${map["sex"]}</br>
EL:${"使用EL操作bean属性:"}${ person1.username}${"  "}${person1["sex"]}</br>
EL:${"域相关的内置对象  :"}${applicationScope.person1.username }</br>
<jsp:useBean id="person2" class="practice.javaBean.Person" scope="session"></jsp:useBean>
<jsp:setProperty property="username" name="person2" value="肖涵"/>
<jsp:setProperty property="sex" name="person2" value="男"/>
<jsp:setProperty property="age" name="person2" value="35"/>
EL:${"域相关的内置对象  :" }${sessionScope.person2.username }</br>
EL:${"域相关的内置对象 ,不存在返回空字符串,不会报错 :" }${sessionScope.person.username }</br>
EL:${"域相关的内置对象 ,不存在返回空字符串,不会报错  :" }${sessionScope.username }</br>
<h3>请求参数相关内置对象</h3>
<p>param和paramValues这两个内置对象是用来获取请求参数的。</p></br>
EL:${param.username }</br>
EL:${param["username"]}</br>
El:${paramValues.password }</br>
El:${paramValues["password"][0]} }</br>
<h3>header和headerValues</h3>
<p>header和headerValues是与请求头相关的内置对象：</p></br>
EL:${header['User-Agent'] }</br>
<h3>演示initParam</h3>
${"initParam是Map<String,String>类型。它对应web.xml文件中的<context-param>参数。"}</br>
${initParam.cxtParamName1 }<br/>
${initParam.cxtParamName2 }<br/>
<h3>演示cookie</h3>
<p>cookie是Map String,Cookie 类型，其中key是Cookie的名字，而值是Cookie对象本身。</p></br>
${cookie.JSESSIONID.value }</br>
<h3>演示pageContext</h3>
queryString:${pageContext.request.queryString }</br>
requestURL:${pageContext.request.requestURI }</br>
contextPath:${pageContext.request.contextPath }</br>
method:${pageContext.request.method }</br>
protocol:${pageContext.request.protocol }</br>
remoteUser:${pageContext.request.remoteUser }</br>
RemoteAddr():${pageContext.request.remoteAddr }</br>
getId():${pageContext.session.id }</br>

</body>
</html>