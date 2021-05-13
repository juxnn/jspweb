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
<table class="table table-striped table-dark">
	<tr>
		<td>제품번호</td> <td>XXXX</td>
	</tr>
	<tr>
		<td>가격</td> <td>10,000원</td>
	</tr>
</table>

<jsp:include page="infoSub.jsp" flush="false">
	<jsp:param name="type" value="A"/>
</jsp:include>


</div>
</body>
</html>