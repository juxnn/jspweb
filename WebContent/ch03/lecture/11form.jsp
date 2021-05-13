<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>form</h1>

<form>
<input name="q" type="text">
<br>
<input name="age" type="text">
<br>
<input type="submit" value="send">
</form>

<!-- form이라는 element 안에 같이 있어야 작동한다. -->
<!-- 톰캣은 query string을 잘 해석해서 분류해놓는다. -->

<hr>
<p><%= request.getParameter("q") %></p>
<p><%= request.getParameter("age") %></p>

<!-- 톰캣이 제공하는 메소드를 잘 쓰면 된다. -->

</body>
</html>