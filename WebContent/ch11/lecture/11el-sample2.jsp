<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<%
	

%>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
	이름: ${param.myname}<br>
	나이: ${param.myage}<br>
	이메일: ${param.myemail}<br>
</div>
</body>
</html>