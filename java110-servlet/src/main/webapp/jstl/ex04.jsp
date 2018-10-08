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
<h1>JSTL - c:remove</h1>
<pre>
- 보관소에 저장된 값을 제거한다.
</pre>
<%
pageContext.setAttribute("name1","홍길동");
request.setAttribute("name","임꺽정");
session.setAttribute("name","유관순");
application.setAttribute("name","김구");
%>

<c: remove var="name" scope="request"/>
1: ${pageScope.name }<br>
2: ${requestScope.name }<br>
3: ${sessionScope.name }<br>
4: ${applicationScope.name }<br>

<hr>
<c: remove var="name" scope="request"/>
1: &{requestScope.name}<br>
2:
3:
4:

<c:set var="request" scope="name1" value= "홍길동"/>
1: &{requestScope.name1}<br>
2: &{pageScope.name1}<br>

<c:set var="name2" value="임꺽정"/>
1: ${requestScope.name2}<br>
2: ${requestScope.name2}<br>

<c:set var="name3">유관순</c:set>
1: ${requestScope.name3}<br>
2: ${pageScope.name3}<br>

<h2>객체의 프로퍼티 값 설정하기</h2>
<jsp:useBean id="member" class=bitcamp.java110.Member"/>
<jsp:setProperty name="m1" property="no" value="100"/>
<c:set target="${m1}" property="email" value="hong@test.com"/>

${pageScope.m1.no}<br>
${pageScope.m1.email}<br>
</body>
</html>












