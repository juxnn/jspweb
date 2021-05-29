<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/ch16/lecture" %>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags/ch16/textbook" %>
<%@ taglib prefix="w2" tagdir="/WEB-INF/tags/study/week2" %>

<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<w2:loginNavbar />
<div class="container">
	<form action="" method="post">
		아이디 <input type="text" name="id" size="10"><br>
		비밀번호 <input type="password" name="pw" size="10"><br>
		비밀번호 확인 <input type="password" name="pwcheck" size="10"><br>
		이름 <input type="text" name="name" size="10"><br>
		나이 <input type="number" name="age" size="10"><br>
		이메일 <input type="text" name="email" size="10"><br>
		<input type="submit" value="로그인">	
	</form>
	
</div>
</body>
</html>