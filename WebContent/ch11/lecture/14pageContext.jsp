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
	pageContext: ${pageContext }
	<br>
	request : ${pageContext.request }
	<br>
	session : ${pageContext.session }
	<br>
	application : ${pageContext.servletContext }
	<br>
	contextPath : ${pageContext.request.contextPath }
	
	
</div>
</body>
</html>