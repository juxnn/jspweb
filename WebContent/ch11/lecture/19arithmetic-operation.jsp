<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<%
pageContext.setAttribute("a", "50");
pageContext.setAttribute("b", "30");

pageContext.setAttribute("d", "abc");

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

	18이랑은 다르게 value 값을 String 으로 넣었다.<br>
	단 숫자로 변할 수 있는 String 이다.<br>
	<hr>
	\${a + b } = ${a + b }<br>
	\${a - b } = ${a - b }<br>
	\${a * b } = ${a * b }<br>
	\${a / b } = ${a / b }<br>
	\${a % b } = ${a % b }<br>
	\${a mod b } = ${a mod b }<br>
	
	<hr>
	
	없는 값으로 연산을 하려고 하면 그 값은 0이다. ( c = 0 )<br>
	\${a + c } = ${a + c }<br>
	\${a - c } = ${a - c }<br>
	\${a * c } = ${a * c }<br>
	\${a / c } = ${a / c }<br>
	<%-- 
	\${a % c } = ${a % c }<br>
	\${a mod c } = ${a mod c }<br>
	 --%>
	<hr>
	숫자로 변환이 불가능하면 익셉션이 발생한다.<br>
	<%-- \${a + d } = ${a + d }<br> --%>
	
</div>
</body>
</html>