<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>
<%
Cookie cookie = new Cookie("my-cookie", "my-value");
cookie.setMaxAge(0);
response.addCookie(cookie);

%>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<h1>쿠키 삭제</h1>
</div>
</body>
</html>