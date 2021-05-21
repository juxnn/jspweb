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
	<h1>and</h1>
	\${true && true } : ${true && true }<br>
	\${true && false } : ${true && false }<br>
	\${false && true } : ${false && true }<br>
	\${false && false } : ${false && false }<br>
	
	<hr>
	\${true and true } : ${true and true }<br>
	\${true and false } : ${true and false }<br>
	\${false and true } : ${false and true }<br>
	\${false and false } : ${false and false }<br>
	
	<hr>
	<h1>or</h1>
	
	\${true || true } : ${true || true }<br>
	\${true || false } : ${true || false }<br>
	\${false || true } : ${false || true }<br>
	\${false || false } : ${false || false }<br>
	
	<hr>
	
	\${true or true } : ${true or true }<br>
	\${true or false } : ${true or false }<br>
	\${false or true } : ${false or true }<br>
	\${false or false } : ${false or false }<br>
	
	<hr>
	<h1>not</h1>
	\${! true } : ${! true }<br>
	\${! false } : ${! false }<br>
	<br>
	\${not true } : ${not true }<br>
	\${not false } : ${not false }<br>
	
	<hr>
	<h1>empty 연산자</h1>
	\${empty attr } null  : ${empty attr1 } <br>
	\${empty pageAttr1 } 빈 스트링: ${empty pageAttr1 } <br>
	\${empty pageAttr2 } 길이가 0인 배열(x): ${empty pageAttr2 } <br>
	\${empty pageAttr3 } 길이가 0인 리스트: ${empty pageAttr3 } <br>
	\${empty pageAttr4 } 길이가 0인 리스트: ${empty pageAttr4 } <br>

	<hr>
	<h1>not empty 연산자</h1>
	<h1>empty 연산자</h1>
	\${not empty attr } null  : ${not empty attr1 } <br>
	\${not empty pageAttr1 } 빈 스트링: ${not empty pageAttr1 } <br>
	\${not empty pageAttr2 } 길이가 0인 배열(x): ${not empty pageAttr2 } <br>
	\${not empty pageAttr3 } 길이가 0인 리스트: ${not empty pageAttr3 } <br>
	\${not empty pageAttr4 } 길이가 0인 리스트: ${not empty pageAttr4 } <br>
	
	<hr>
	\${! empty attr } null  : ${empty attr1 } <br>
	\${! empty pageAttr1 } 빈 스트링: ${empty pageAttr1 } <br>
	\${! empty pageAttr2 } 길이가 0인 배열(x): ${empty pageAttr2 } <br>
	\${! empty pageAttr3 } 길이가 0인 리스트: ${empty pageAttr3 } <br>
	\${! empty pageAttr4 } 길이가 0인 리스트: ${empty pageAttr4 } <br>
	
		
</div>
</body>
</html>