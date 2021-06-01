<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">3nd Week Project</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="${pageContext.request.contextPath }/week3/main">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath }/week3/register">회원가입</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath }/week3/edit">회원정보변경</a>
      </li>
    </ul>
    <c:choose>
     <c:when test="${sessionScope.login == null }">
	     <a class="btn btn-primary" href="${pageContext.request.contextPath }/week3/login">Log In</a>
     </c:when>
     <c:otherwise>
    	<form class="form-inline my-2 my-lg-0" method="post">
	     	 <button class="btn btn-secondary" type="submit">Log Out</button>
    	</form>
     </c:otherwise>
    </c:choose>
  </div>
</nav>