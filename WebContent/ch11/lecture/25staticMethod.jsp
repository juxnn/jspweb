<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>
<%
	pageContext.setAttribute("myAttr", 2.14);
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
	\${Math.round(3.14) } : ${Math.round(3.14) } <br>
	\${Math.round(myAttr)} : ${Math.round(myAttr) }
	<!-- java.lang.Math 라서, 따로 import 해주지 않아도 되지만 잘 확인해서 쓰자. -->
</div>
</body>
</html>