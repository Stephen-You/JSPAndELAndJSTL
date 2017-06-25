<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
  <!-- 如果存在汉字那么两个值都要设置为utf-8,或者只设置一个另一个不设置 -->>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<pre>
	pageEncoding指定当前JSP页面的编码！这个编码是给服务器看的，服务器需要知道当前JSP使
用的编码，不然服务器无法正确把JSP编译成java文件。所以这个编码只需要与真实的页面编码一致
即可！在MyEclipse中，在JSP文件上点击右键，选择属性就可以看到当前JSP页面的编码了。
	contentType属性与response.setContentType()方法的作用相同！它会完成
两项工作，一是设置响应字符流的编码，二是设置content-type响应头。例如：
	<!--contentType=”text/html;charset=utf-8  -->
它会使“真身”中出现response.setContentType(“text/html;charset=utf-8”)。
	无论是page指令的pageEncoding还是contentType，它们的默认值都是ISO-8859-1，
我们知道ISO-8859-1是无法显示中文的，所以JSP页面中存在中文的话，一定要设置这两个属性。
	其实pageEncoding和contentType这两个属性的关系很“暧昧”：
	当设置了pageEncoding，而没设置contentType时： contentType的默认值为pageEncoding；
	当设置了contentType，而没设置pageEncoding时： pageEncoding的默认值与contentType；
也就是说，当pageEncoding和contentType只出现一个时，那么另一个的值与出现的值相同。如果两个都不出现，那么两个属性的值都是ISO-8859-1。所以通过我们至少设置它们两个其中一个！
	</pre>
</body>
</html>