<%@page import="java.util.ArrayList"%>
<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"
    isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP액션태그</title>
</head>
<body>
<h1>jsp:useBean - scope을 지정하지 않으면?</h1>
<pre>
- page ===> request ===> session => application 보
</pre>

<%
session.invalidate();
application.setAttribute("name", "홍길동");//ServletContext 보관소


session.setAttribute("name", "임꺽정");//HttpSession 보관소


//ServletRequest 보관소
request.setAttribute("name", "유관순");

//PageContext 보관소
pageContext.setAttribute("name", "안중근");

%>

<jsp:useBean
   scope="application"
   id="name"
   class="java.lang.String"/>
      
<p>이름: <%=name %></p>


</body>
</html>