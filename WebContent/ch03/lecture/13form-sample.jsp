<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<form>
			<input type="checkbox" name="fruit" value="100"> 사과 <br>
			<input type="checkbox" name="fruit" value="150"> 바나나 <br>
			<input type="checkbox" name="fruit" value="200"> 딸기 <br>
			<input type="checkbox" name="fruit" value="300"> 키위 <br>
			<input type="checkbox" name="fruit" value="500"> 망고 <br>
			<input type="checkbox" name="fruit" value="700"> 수박 <br>
			
			<input type="submit" value="합계">
		</form>
	</div>
	<hr>
	
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-6">
				<%
				String[] fruits = request.getParameterValues("fruit");
				int result = 0;
				if(fruits != null && fruits.length>0){
					/* 향상된 for문을 써버릇 하자. */
					/* for(String value : fruits){ */
					for(int i=0; i<fruits.length; i++){
						result +=  Integer.parseInt(fruits[i]);
						/* String타입이므로 int 타입으로 형변환 되어야 한다. */
						/* Integer.parseInt 를 쓰든 Integer.valueOF를 쓰든 뭘 쓰든 잘 쓰면 된다. */
					}
					out.print("<p>");
					out.print("고른 과일의 갯수는 " + fruits.length);
					out.print("<br>");
					out.print("<br>");
					out.print("합계는 :" + result);
					out.print("</p>");
				}
				%>
				<%= result %>
			</div>
		</div>
	</div>

</body>
</html>