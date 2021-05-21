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
	<h1>attribute 꺼내보기</h1>
	<h3><%=request.getAttribute("req-attr1") %></h3>
	<h3><%=session.getAttribute("session-attr1") %></h3>
	<h3><%=application.getAttribute("app-attr1") %></h3>
	
	같은 요청이 아니므로 requst는 null<br>
	같은 브라우저에서 나온 요청이므로 session은 꺼내졌고<br>
	(크롬 시크릿탭에서 하면 session은 꺼내지지 않는다.)<br>
	application은 세션보다 넓은 영역이니까 꺼내졌다. 어느 브라우저에서 왔든 공유가 된다.<br>
</div>
</body>
</html>