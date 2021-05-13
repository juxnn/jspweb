<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>절대 경로</title>
</head>
<body>

<h3>절대 경로</h3>

<h5>같은 경로</h5>
<a href="/jsp-web/ch03/lecture/15form-method.jsp">15파일</a>

<h5>상위 경로</h5>
<a href="/jsp-web/ch03/17path.jsp">17파일</a>

<h5>하위 경로</h5>
<a href="/jsp-web/ch03/lecture/sub/18path.jsp">18파일</a>

<h5>viewHeaderList.jsp</h5>
<a href="/jsp-web/ch03/textbook/viewHeaderList.jsp">viewHeaderList</a>
<br>
<br>
<br>
작성한 저 위치의 jsp-web은 바뀔 수 있다. (그냥 폴더 명)<br>
개발할때의 환경과, 실행할 때의 환경이 다를 수 있기 때문이다.<br>
개발할 때는 놓칠 수 있다. (운용할 때 일어나는 문제이기 때문)<br><br>
문제가 생겼을 때 일일히 찾아서 고쳐줘야되는데 그러지 않는 방법을 20번에서...

</body>
</html>