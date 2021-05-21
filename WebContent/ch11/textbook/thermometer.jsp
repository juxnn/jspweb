<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import= "ch11.Thermometer" %>

<%
	Thermometer thermometer = new Thermometer();
	request.setAttribute("t", thermometer);
%>

<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<meta charset="UTF-8">
<title>온도 변환 예제</title>
</head>
<body>
<div class="container">
	${t.setCelsius('서울', 27.3)}
	서울온도: 섭씨 ${t.getCelsius('서울') }도 /화씨 ${t.getFahrenheit('서울') }
	<br>
	
	정보: ${t.info}
	
	
	
</div>
</body>
</html>