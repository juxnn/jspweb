package study.week3;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import study.week3.MemberInfo;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/week3/register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = "/WEB-INF/study/week3/registerForm.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String pwcheck = request.getParameter("pwcheck");
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String email = request.getParameter("email");
		
		
		// 2. 비지니스 로직 실행
				if(! password.equals(pwcheck)) { // 비밀번호가 다르면
					String path = "/WEB-INF/study/week3/registerForm.jsp";
					RequestDispatcher dispatcher = request.getRequestDispatcher(path);
					//request.setAttribute(name, o); 로그인 실패시 스크립트를 띄우고 싶은데. 일단 고민해보자.
				}else { //비밀번호가 같으면 계정 생성
					MemberInfo member = new MemberInfo();
					member.setId(id);
					member.setPassword(password);
					member.setName(name);
					member.setAge(age);
					member.setEmail(email);
					
					Week3Functions.register(member);
					
					//3. forward to redirect
					response.sendRedirect(request.getContextPath()+"/week3/main");
				}
	}
	


}
