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
<%	
	String[] fruits = request.getParameterValues("fruit");

	for(int i=0; i<fruits.length; i++){
		pageContext.setAttribute("i", i);
%>		
		${paramValues.fruit[i] }<br>
		<!-- ie에서 i가 들어가는 공간은 attribute 로만 찾기 때문에 위에 같은 설정이 필요하다. -->
<%
	}
%>
	
</div>
</body>
</html>