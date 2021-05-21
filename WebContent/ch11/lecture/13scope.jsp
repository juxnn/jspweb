<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<%
pageContext.setAttribute("pageAttr1", "pageVal1");
request.setAttribute("reqAttr1", "reqVal1");

pageContext.setAttribute("comAttr1", "pageVal2");
request.setAttribute("comAttr1", "reqVal2");
%>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
	pageAttr1 : ${pageAttr1 } <br>
	reqAttr1 : ${reqAttr1 } <br>
	comAttr1 : ${comAttr1 }<br>
	
	<hr>
	특정 영역에서 뽑고 싶을때는... 어떻게 하는가 <br>	
	comAttr1(page) : ${pageScope.comAttr1 } <br>
	comAttr1(req) : ${requestScope.comAttr1 } <br>
	
</div>
</body>
</html>