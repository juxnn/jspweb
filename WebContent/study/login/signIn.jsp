<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<meta charset="UTF-8">
<title>Sign In Page</title>

<script>
$(document).ready(function() {
	var pwCheck = function() {
		var pw1 = $("#input2").val();
		var pw2 = $("#input3").val();
		
		if (pw1 != pw2) {
			$("#message").text("암호가 다릅니다.");
		} else {
			$("#message").text("암호가 일치합니다.");
		}
	}
	$("#input2").keyup(pwCheck);
	$("#input3").keyup(pwCheck);
});
</script>
</head>
<body>
<div class="container">
	회원가입 페이지 입니다.
	<br>
	<form action="<%=request.getContextPath()%>/study/login/loginForm.jsp" method="post">
		아이디 <input id="input1" type="text" name="id" size="10"><br>
		암호 <input id="input2" type="password" name="password" size="10"><br>
		암호 재확인 <input id="input3" type="password" name="passwordCheck" size="10"><br>
		이름 <input id="input4" type="text" name="name" size="10"><br>
		나이 <input id="input5" type="number" name="age" size="10"><br>
		<span id="message"></span>
		<input type="submit" value="회원가입">	
	</form>
</div>
</body>
</html>


