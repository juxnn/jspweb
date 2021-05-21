<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<meta charset="UTF-8">
<title>Login Form</title>
</head>
<body>
<div class="container">
	<br>
	<h3>WJ PAGE에 오신걸 환영합니다.</h3><hr>
	
	session.getAttribute("MEMBER") : <%= session.getAttribute("MEMBER") %><br>

	
	<form action="<%=request.getContextPath()%>/study/login/mainPage.jsp" method="post">
		아이디 <input type="text" name="id" size="10">
		암호 <input type="password" name="password" size="10">
		<input type="submit" value="로그인">	
	</form>
	<br>
	<hr>
	<br>
	<form action="<%=request.getContextPath()%>/study/login/signIn.jsp" method="post">
	<input class="btn btn-primary" type="submit" value="회원가입">	
	</form>
	<br><hr>

</div>
</body>
</html>