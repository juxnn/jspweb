<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<%
Cookie[] cookies = request.getCookies();
%>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<h1>cookie 2</h1>
	<h3>cookies size: <%=cookies.length %></h3>
	<%
	for(Cookie cookie: cookies){
		out.print("<p>");
		out.print(cookie.getName());
		out.print(":");
		out.print(cookie.getValue());
		out.print("</p>");
	}
	
	%>
</div>
</body>
</html>