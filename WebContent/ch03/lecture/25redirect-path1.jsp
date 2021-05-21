<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<%
//상대경로	response.sendRedirect("25redirect-path2.jsp");

//절대경로 작성
// 슬래시(/)로 쓰면 client(브라우저)는 포트번호 다음으로 해석
// 서버에서 해석하는 관점은 servlet context 다음으로 해석

	//response.sendRedirect("/ch03/lecture/25redirect-pahth2.jsp");
	//틀린 소스이다.
	response.sendRedirect(request.getContextPath() + "/ch03/lecture/25redirect-path2.jsp");
%>