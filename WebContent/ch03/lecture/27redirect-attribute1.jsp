<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<%

Calendar c = Calendar.getInstance();
request.setAttribute("date", c);

response.sendRedirect("27redirect-attribute2.jsp");
// attribute를 넣어봤자, 2번 jsp에서는 전달이 되지 않는다.
// 우리가 넣은 c 객체를 jsp2는 꺼내지 못한다.
// 다른 request 가 적용되기 때문에.
// 10장에서 그 방법을 해결할 수 있다. 10장에서 이어서 공부해보자.

%>