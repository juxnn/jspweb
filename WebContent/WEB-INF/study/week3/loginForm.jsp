<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/ch16/lecture" %>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags/ch16/textbook" %>
<%@ taglib prefix="w3" tagdir="/WEB-INF/tags/study/week3" %>

<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<w3:navbar />
<div class="container">
	<h1>로그인 페이지 입니다.</h1>
		<form action="" method="post">
			<div class="form-group">
				<label for="input1">아이디</label>
				<input type="text" name="id" id="input1" class="form-control"><br>
			</div>
			<div class="form-group">
				<label for="input2">비밀번호</label>
				<input type="password" name="pwCheck" id="input2" class="form-control" ><br>
			</div>
		<input type="submit" value="로그인">	
	</form>
	
</div>
</body>
</html>