<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.net.URLDecoder" %>

<% request.setCharacterEncoding("utf-8"); %>

<%
Cookie[] cookies = request.getCookies();
if(cookies != null && cookies.length>0){
	for(int i=0; i<cookies.length; i++){
		if(cookies[i].getName().equals("name")){
			Cookie cookie = new Cookie("name", URLEncoder.encode("JSP프로그래밍", "utf-8"));
			cookies[i] = cookie;
			response.addCookie(cookie);
		}
	}
}

%>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<meta charset="UTF-8">
<title>값 변경</title>
</head>
<body>
<div class="container">
	name 쿠키의 값을 변경합니다.<br>
	<%=cookies[0].getName() %> 쿠키의 값 = <%=URLDecoder.decode(cookies[0].getValue(), "utf-8") %>
	<br>
	<%=cookies[0].getName() %> 쿠키의 값 = <%=cookies[0].getValue() %> 
	

</div>
</body>
</html>