<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<%
pageContext.setAttribute("pageAttr1", "pageVal1");
request.setAttribute("reqAttr1", "reqVal1");
session.setAttribute("sesAttr1", "sesVal1");
application.setAttribute("appAttr1", "appVal1");
%>


<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">


	<%
	out.print(pageContext.getAttribute("pageAttr1"));
	%> <br>
	${pageAttr1 }
	
	<hr>
	<%
	out.print(request.getAttribute("reqAttr1"));
	%> <br>
	<%=request.getAttribute("reqAttr1") %> <br>
	${reqAttr1 }

	
	
	<hr>
	<%
	out.print(session.getAttribute("sesAttr1"));
	%> <br>
	<%=session.getAttribute("sesAttr1") %> <br>
	${sesAttr1 }
	
	
	<hr>
	<%
	out.print(application.getAttribute("appAttr1"));
	%> <br>
	<%=application.getAttribute("appAttr1") %> <br>
	${appAttr1 }
			
	<hr>		
	<!-- 차이점은 표현언어는 null값을 빈칸으로 출력한다. -->
	expression: <%=request.getAttribute("reqAttr0") %><br>
	expression language: ${reqAttr0 }		
	
	
</div>
</body>
</html>