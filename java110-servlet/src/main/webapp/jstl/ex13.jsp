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
<h1>JSTL - fmt:formatDate</h1>
<pre>
- java.util.Date 객체의 값을 문자열로 만들기
</pre>

<%
PageContext.setAttribute("today", new Date());
%>

<fmt:formatDate value="${pageScope.today}" 
        pattern="yyyy-MM-dd"/><br>
<fmt:formatDate value="${pageScope.today}" 
        pattern="MM/dd/yyyy"/><br>
<fmt:formatDate value="${pageScope.today}" 
        pattern="yyyyMM-dd hh:mm:ss"/><br>
        
<fmt:formatDate value="${pageScope.today}" 
        pattern="yyyyMM-dd hh:mm:ss"/><br>

<p>오늘 날짜는 '${pageScope.str1}'입니다.</p>

</body>
</html>












