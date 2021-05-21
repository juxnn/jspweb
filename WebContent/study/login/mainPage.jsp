<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	Map<String, String> MEM = new HashMap<String, String>();
	MEM = (HashMap) session.getAttribute("MEMBER");
	String check = MEM.get(id);

	if(password.equals(check)){
			
%>


<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<meta charset="UTF-8">
<title>메인 페이지</title>
</head>
<body>
<div class="container">


	로그인에 성공했습니다.
	<br><hr>
	
	<!-- 로그아웃 버튼, loginForm 페이지로 이동-->
	<form action="<%=request.getContextPath()%>/study/login/loginForm.jsp" method="post">
		<input class="btn btn-primary" type="submit" value="로그아웃">	
	</form>
	<br><hr>


</div>
</body>
</html>

<%
	}else{ //로그인 실패시
%>
<script>
	alert("로그인에 실패하였습니다.");
	history.go(-1);
</script>
<%
	}	

	
%>