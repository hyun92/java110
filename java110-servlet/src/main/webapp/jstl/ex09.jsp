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
<h1>JSTL - c:url</h1>
<pre>
- 복잡한 형식의 URL을 만들 수 있다.
</pre>

<h2>네이버 검색 URL 만들기</h2>
<pre>
https://search.naver.com/search.naver?where=nexearch&sm=top_hty&fbm=1&ie=u
</pre>

<c:url value="https://search.naver.com/search.naverUrl">
   <c:param name="where" value="nexearch"/>
   <c:param name="sm" value="nexearch"/>
   <c:param name="fbm" value="1"/>
   <c:param name="ie" value=""/>
   <c:param name="query" value="홍길동"/>
</c:url>

<pre>${naverUrl}</pre>

</body>
</html>












