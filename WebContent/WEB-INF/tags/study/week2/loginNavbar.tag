<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">2nd Week Project</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath }/week2/register">회원가입</a>
      </li>
  	  <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath }/week2/mainpage">메인페이지</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath }/week2/login">로그인</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath }/week2/logout">로그아웃</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath }/week2/edit">회원정보변경</a>
      </li>
  
 
    </ul>
  </div>
</nav>