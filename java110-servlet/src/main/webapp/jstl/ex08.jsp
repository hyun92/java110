<%@page import="java.util.ArrayList"%>
<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    trimDirectiive
<%@ taglib prefix ="c" uri = http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL</title>
</head>
<body>
<h1>JSTL - c:forTokens</h1>
<pre>
- 반복문을 만든다.
</pre>


<h2>Query String 문자열</h2>
<%
pageContext.setAttribute("qs", "name=홍길동&page=20&tel=1111-2222");
%>

<ul>
<c:forTokens items="${pageScope.names4}" var="n" delims="&">
   <li>${n}</li>
</c:forTokens>   
</ul>




</body>
</html>












