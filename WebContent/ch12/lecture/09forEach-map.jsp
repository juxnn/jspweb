<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<% request.setCharacterEncoding("utf-8"); %>
<%
Map<String, String> map = new HashMap<>();
map.put("java", "spring");
map.put("python", "django");
map.put("c", ".net");
map.put("js", "react");
map.put("css", "bootstrap");

request.setAttribute("map1", map);
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
	<ul>
		<c:forEach items="${map1 }" var="entry">
			<li>${entry.key }: ${entry.value }</li>
		</c:forEach>
	
	</ul>
	
</div>
</body>
</html>