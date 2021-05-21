<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page session="false"%>

<% request.setCharacterEncoding("utf-8"); %>
<%
/* session.setAttribute("a","b"); */
/* 세션이 없으니까 사용이 되지 않는다. */
HttpSession session = request.getSession();
session.setAttribute("a","b");

/* JSP는 세션이 자동으로 만들어지니까 사용하고있지 않았는데
자동으로 만들어지지 않은 경우 request 메소드를 통해 세션을 꺼내서 쓸 수 있다. */

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
	
</div>
</body>
</html>