<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<% request.setCharacterEncoding("utf-8"); %>

<c:set var ="attr1" value="value1" />
<%
	pageContext.setAttribute("attr1", "value1");
	/* 위 set 태그와 같은 의미이다. */
%>
<c:set var="attr1" value="value2" scope="request"/>
<!-- scope attribute의 default 값은 page인데, 바꾸려면 따로 설정해줘야 한다. -->

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
	${attr1  }<br>
	${pageScope.attr1 }<br>
	${requestScope.attr1 }<br>
</div>
</body>
</html>