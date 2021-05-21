<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>
<%
request.setAttribute("name", "최범균");
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
	요청 URI: ${pageContext.request.requestURI }<br>
	request의 name 속성: ${requestScope.name }<br>
	<br>
	페이지 영역에 name 속성이 없으므로 request로 넘어가서 name속성으로 찾는다.<br>
	request의 name 속성: ${name }<br>
	
	code 파라미터: ${param.code }
</div>
</body>
</html>