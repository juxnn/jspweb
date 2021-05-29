<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import="study.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<%

	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	MemberInfo Member = new MemberInfo();
	/* Map<String, String> MEM = new HashMap<String, String>(); */

	Member = (MemberInfo) session.getAttribute("Member");
	String check = Member.getPassword();
	/* 로그인 실패 */
	if( !(password ==null) && !(password.equals(check)) ){
%>
<script>`
	alert("로그인에 실패하였습니다.");
	history.go(-1);
</script>
<%
	}else if(  !(password == null) && password.equals(check) ) { //로그인 성공
%>
<script>
	alert("로그인에 성공하였습니다.");
</script>
<%

	}else{
%>
<script>
	alert("로그인 해주세요.");
</script>
		<%		
	}
	
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


