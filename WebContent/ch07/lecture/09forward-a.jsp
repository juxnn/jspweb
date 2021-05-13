<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

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
	<h1>a.jsp</h1>
	<jsp:forward page="09forward-b.jsp"></jsp:forward>
	<!-- forward 액션태그가 실행되면 이전에 작성했던 내용들은 무시되고,
	다음 코드는 실행되지 않는다. -->
</div>
</body>
</html>