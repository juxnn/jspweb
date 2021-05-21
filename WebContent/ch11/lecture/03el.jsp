<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<%
pageContext.setAttribute("attr1", "pageVal1");
request.setAttribute("attr1", "reqVal2");
session.setAttribute("attr1", "sesVal3");
application.setAttribute("attr1", "appVal4");

%>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<p>중복되는 경우 page 영역부터 순서대로 찾는다.</p><br>
	${attr1 }
</div>
</body>
</html>