<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import="ch07.User" %>

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
	User user = new User("donald", 22, "us");
	//작성...
	request.setAttribute("member", user);
	/* 	member라는 이름으로 user 객체를 집어넣어줌. */
	%>
	
	<h1>유저 정보</h1>
	<jsp:include page="08request-attribute-sub.jsp"></jsp:include>
	
</div>
</body>
</html>