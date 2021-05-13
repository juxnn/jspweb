<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<p><%=request.getContextPath() %></p>
<!-- 경로를 이런 메소드로 얻을 수 있다. -->

<h3>절대 경로</h3>

<h5>같은 경로</h5>
<a href="<%=request.getContextPath() %>/ch03/lecture/15form-method.jsp">15파일</a>

<h5>상위 경로</h5>
<a href="<%=request.getContextPath() %>/ch03/17path.jsp">17파일</a>

<h5>하위 경로</h5>
<a href="<%=request.getContextPath() %>/ch03/lecture/sub/18path.jsp">18파일</a>

<h5>viewHeaderList.jsp</h5>
<a href="<%=request.getContextPath() %>/ch03/textbook/viewHeaderList.jsp">viewHeaderList</a>

</body>
</html>