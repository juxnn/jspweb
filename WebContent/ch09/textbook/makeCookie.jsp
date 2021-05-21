<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.net.URLDecoder" %>

<% request.setCharacterEncoding("utf-8"); %>

<%
Cookie cookie = new Cookie("name", URLEncoder.encode("최범균", "utf-8"));
response.addCookie(cookie);
%>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<meta charset="UTF-8">
<title>make Cookie</title>
</head>
<body>
<div class="container">
	name 쿠키를 생성합니다.<br>
	<%=cookie.getName() %> 쿠키의 값 = "<%=URLDecoder.decode(cookie.getValue(), "utf-8") %>"<br> 
	<%=cookie.getName() %> 쿠키의 값 = "<%=cookie.getValue() %>"  

</div>
</body>
</html>