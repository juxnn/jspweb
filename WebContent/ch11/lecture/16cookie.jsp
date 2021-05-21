<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
	cookie는 Map 이다.<br>
	<hr>
	cookie1: ${cookie["my-cookie"] }<br>
	cookie2: ${cookie.JSESSIONID }<br>
	cookie value 1: ${cookie["my-cookie"].value }<br>
	cookie value 2: ${cookie.JSESSIONID.value }<br>
	
	<hr>
	cookie httpOnly 1: ${cookie["my-cookie"].httpOnly }<br>
	cookie httpOnly 2: ${cookie.JSESSIONID.httpOnly }<br>
</div>
</body>
</html>