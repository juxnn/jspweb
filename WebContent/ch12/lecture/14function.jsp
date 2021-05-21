<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<% request.setCharacterEncoding("utf-8"); %>
<%
List<String> list = new ArrayList<>();
list.add("java");
list.add("css");
list.add("jstl");

pageContext.setAttribute("list", list);
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
	list 길이 : ${fn:length(list) }<br>
	
	list 길이 : ${list.size() }<br>
	<!-- 버전에 따라 안될수도 있다. -->
	
	list[0] 문자열 길이 : ${fn:length(list[0]) }<br>
	list[1] 문자열 길이 : ${fn:length(list[1]) }<br>
	
	list[2] 문자열 길이 : ${list[2].length() }<br>
	<!-- 버전에 따라 안될수도 있다. -->
</div>
</body>
</html>