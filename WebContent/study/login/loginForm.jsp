<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import="study.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<%

String id = request.getParameter("id");
String password = request.getParameter("password");
String passwordCheck = request.getParameter("passwordCheck");
String name = request.getParameter("name");
String age = request.getParameter("age");

/* NullPointerException */

if( !(password == null) && !(password.equals(passwordCheck))){
%>
<script>
	alert("비밀번호가 다릅니다.");
	history.go(-1);
</script>
<%		
}else if( !(password == null) && password.equals(passwordCheck) ){
		
	MemberInfo Member = new MemberInfo();
	Member.setId(id);
	Member.setPassword(password);
	Member.setName(name);
	Member.setAge(age);
	session.setAttribute("Member", Member);
%>
	<script>
	alert("회원가입에 성공하였습니다.");
	</script>
<%	
	}else{
		
	}
%>	
	
	
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<meta charset="UTF-8">
<title>Login Form</title>
</head>
<body>
<div class="container">
	
	<h3>WJ PAGE에 오신걸 환영합니다.</h3><hr>
	
	session.getAttribute("Member") : <%= session.getAttribute("Member") %><br>
<%-- 	아이디: <%= Member.getId()%>
	비밀번호: <%= Member.getPassword()%>
	이름: <%= Member.getName()%>
	나이: <%= Member.getAge()%> --%> --%>
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
