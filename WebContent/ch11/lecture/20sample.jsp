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
	<form>
		수1: <input type="text" name="number1" /><br>
		수2: <input type="text" name="number2" /><br>
		<input type="submit" value="계산">
	</form>
	<hr>
	더한 결과: ${param.number1 + param.number2 } <br>
	뺀 결과: ${param.number1 - param.number2 }<br>
	곱한 결과: ${param.number1 * param.number2 }<br>
	나눈 결과: ${param.number1 / param.number2 }<br>
	
</div>
</body>
</html>