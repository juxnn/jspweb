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
			<form action="" method="post">
			<div class="form-group">
				<label for="input1">아이디</label>
				<input type="text" readonly name="id" value="${member.id}" id="input1" class="form-control"><br>
			</div>
			<div class="form-group">
				<label for="input2">비밀번호</label>
				<input type="password" name="password"  value="${member.password}"id="input2" class="form-control" ><br>
			</div>
			<div class="form-group">
				<label for="input4">이름</label>
				<input type="text" name="name"  value="${member.name}"id="input4" class="form-control" ><br>
			</div>
			<div class="form-group">
				<label for="input5">나이</label>
				<input type="number" name="age"  value="${member.age}"id="input5" class="form-control" ><br>
			</div>
			<div class="form-group">
				<label for="input6">이메일</label>
				<input type="text" name="email"  value="${member.email}"id="input6" class="form-control" placeholder="name@example.com"><br>
			</div>
			 <a class="btn btn-primary" href="${pageContext.request.contextPath }/week3/delete">회원탈퇴</a>
		<input type="submit" class="form-control" value="변경">	
	</form>
</div>
</body>
</html>