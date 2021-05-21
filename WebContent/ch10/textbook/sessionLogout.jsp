<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<%
	session.invalidate();
%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>


<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>
<div class="container">
	로그아웃 하셨습니다.
</div>
</body>
</html>