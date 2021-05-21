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
	<h1>session2</h1>
	
	<%
	Object a = session.getAttribute("MEMBERID");
	String x = (String) a;
	Object b = session.getAttribute("NAME");
	String y = (String) b;
	%>
	
	MEMBERID : <%=x%><br>
	NAME : <%=y%>
	
</div>
</body>
</html>