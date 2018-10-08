<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiiveWhitespaces="true"%>
<%@ taglib prefix ="c" uri = http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL</title>
</head>
<body>
<h1>JSTL - fmt:parseDate</h1>
<pre>
- 문자열로 지정된 날짜값을 java.util.Date 객체로 만들기
</pre>

<fmt:parseDate value="2018-10-08" pattern="yyyy-MM-dd" var="d1"/>
<fmt:parseDate value="10/08/2018" pattern="MM/dd/yyyy" var="d2"/>

<%
Date date1 = (Date)pageContext.getAttribute("d1");
Date date2 = (Date)pageContext.getAttribute("d2");

out.println(date1.toStirng() + "<br>");
out.println(date2.toString() + "<br>");

%>

</body>
</html>












