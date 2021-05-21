<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import="study.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String passwordCheck = request.getParameter("passwordCheck");

	if(password.equals(passwordCheck)){
		
		Map<String, String> MEM = new HashMap<String, String>();
		MEM.put(id, password);
		
		session.setAttribute("MEMBER", MEM);

	%>
	
	<script>
	alert("회원가입에 성공하였습니다.");
	</script>
	

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<meta charset="UTF-8">
<title>메인페이지</title>
</head>
<body>
<div class="container">
	
	session.getAttribute("MEMBER") : <%= session.getAttribute("MEMBER") %><br>
	<br>
	비밀번호: <%= MEM.get(id)%>
	<br>
	<form action="<%=request.getContextPath()%>/study/login/loginForm.jsp" method="post">
		<input class="btn btn-primary" type="submit" value="Login">	
	</form>
	<br><hr>
	
	
</div>
</body>
</html>
<%
	}else{//비밀번호가 다를 시
%>
<script>
	alert("비밀번호가 다릅니다.");
	history.go(-1);
</script>
<%		
	}
%>