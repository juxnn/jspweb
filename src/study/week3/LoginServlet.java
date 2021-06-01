package study.week3;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import study.week3.Week3Functions;
/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/week3/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = "/WEB-INF/study/week3/loginForm.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String pwCheck = request.getParameter("pwCheck");
		String userPw = Week3Functions.checkPassword(id);
		
		if(! userPw.equals(pwCheck)) {
			response.sendRedirect(request.getContextPath()+"/week3/login");
			//다시 로그인 페이지로
		}else {//로그인 성공시
			request.getSession().setAttribute("login", id);
			response.sendRedirect(request.getContextPath()+"/week3/main");
			
		}
		
		
	}

}
