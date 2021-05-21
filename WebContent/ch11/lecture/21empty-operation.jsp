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

<%
application.removeAttribute("attr1");
pageContext.setAttribute("pageAttr1", "");
pageContext.setAttribute("pageAttr2", new int[]{});
pageContext.setAttribute("pageAttr3", new ArrayList());
pageContext.setAttribute("pageAttr4", new HashMap());
%>
	<h1>empty 연산자</h1>
	<p>비어있는지 확인하는 연산자이다 </p>
	\${empty attr } null  : ${empty attr1 } <br>
	\${empty pageAttr1 } 빈 스트링: ${empty pageAttr1 } <br>
	\${empty pageAttr2 } 길이가 0인 배열(x): ${empty pageAttr2 } <br>
	\${empty pageAttr3 } 길이가 0인 리스트: ${empty pageAttr3 } <br>
	\${empty pageAttr4 } 길이가 0인 리스트: ${empty pageAttr4 } <br>
	
	<hr>
	<%-- false가 나왔다면 확인을 해보려고 짠 소스
	${pageScope.pageAttr2 } <br>
	${requestScope.pageAttr2 } <br>
	${sessionScope.pageAttr2 } <br>
	${applicationScope.pageAttr2 } <br>
 --%>
 
 </div>
</body>
</html>