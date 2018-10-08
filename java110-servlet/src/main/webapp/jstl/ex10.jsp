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
<h1>JSTL - c:import</h1>
<pre>
- Http 요청을 수행하는 코드를 만든다.
</pre>

<h2>네이버 검색 요청하기</h2>
<c:url value="https://search.naver.com/search.naverUrl">
   <c:param name="where" value="nexearch"/>
   <c:param name="sm" value="nexearch"/>
   <c:param name="fbm" value="1"/>
   <c:param name="age" value=""/>
   <c:param name="gender" value="man"/>
</c:url>

<%-- 지정된 URL을 요청하고 서버로부터받은 콘텐트를 contents라는 이름으로
    PageContext 보관소에 저장한다 --%>
<c:import url="${url1}" var="contents"/>

<textarea cols="120" rows="20">${pageScope.contents}</textarea>

<pre>${naverUrl}</pre>

</body>
</html>












