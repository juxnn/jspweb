<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import= "util.Cookies" %>
<%
	response.addCookie(Cookies.createCookie("name", "최범균"));
	response.addCookie(Cookies.createCookie("id", "madvirus", request.getContextPath(), -1));

%>

<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<meta charset="UTF-8">
<title>사용 예</title>
</head>
<body>
<div class="container">
	Cookies를 사용해서 쿠키 생성
	
</div>
</body>
</html>