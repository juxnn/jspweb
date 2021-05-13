<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import="ch07.User"%>


<%
User member = (User) request.getAttribute("member"); //코드 수정
/* getAttribute는 object type으로 return 하기 때문에 형변환을 해줘야 한다. */
/* (User) 붙여줘야 한다는 말 */
		
%>

<div>
	이름: <%=member.getName() %> <br>
	나이: <%=member.getAge() %> <br>
	주소: <%=member.getAddress() %> <br>

</div>