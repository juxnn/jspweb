<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
for(int i=0; i<5; i++){
%>
<%= i %><br>	
<%	
	out.print(i);
	out.print("<br>");
}
	/* 	몇번을 끊고 작성해도 작동된다. */
%>
<%
%>

</body>
</html>