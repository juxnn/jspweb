<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/ch16/lecture" %>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags/ch16/textbook" %>
<%@ taglib prefix="w2" tagdir="/WEB-INF/tags/study/week2" %>

<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<w2:loginNavbar />
<div class="container">
	<div class="row justify-content-center">
		<div class="dol-8">
			<h1>메인페이지입니다.</h1>
			<p>테이블이 잘 안된다...</p>
			
<%-- 			<table class="table">
				<thead>
					<tr>
						<th>#</th>
						<th>아이디</th>
						<th>이름</th>
					</tr>	
				</thead>
				<tbody>
					<c:forEach items="${members }" var="member" varStatus="status">
						<tr>
							<td>${status.count }</td>
							<td>
									${members.id }
							</td>
							<td>${members.name }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table> --%>
		</div>
	</div>
</div>
</body>
</html>