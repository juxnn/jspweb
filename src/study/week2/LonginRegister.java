package study.week2;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sample1.Board;

/**
 * Servlet implementation class LonginSignIn
 */
@WebServlet("/week2/register")
public class LonginRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LonginRegister() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//String path = "/WEB-INF/sample1/boardForm.jsp";
		String path = "/WEB-INF/study/week2/loginRegisterForm.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//request.setCharacterEncoding("utf-8");
		
		ServletContext application = request.getServletContext();
		Map<String, MemberInfo> memberList = (Map<String, MemberInfo>) application.getAttribute("members");
		
		//1. 요청 정보 분석
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String pwcheck = request.getParameter("pwcheck");
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String email = request.getParameter("email");
		
		// 2. 비지니스 로직 실행
		if(! pw.equals(pwcheck)) { // 비밀번호가 다르면
			String path = "/WEB-INF/study/week2/loginRegisterForm.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(path);
			//request.setAttribute(name, o); 로그인 실패시 스크립트를 띄우고 싶은데. 일단 고민해보자.
		}else { //비밀번호가 같으면 계정 생성
			MemberInfo member = new MemberInfo(); 
			member.setId(id);
			member.setPw(pw);
			member.setName(name);
			member.setAge(age);
			member.setEmail(email);
			
			memberList.put(id, member);
			
			//3. forward to redirect
			response.sendRedirect(request.getContextPath()+"/week2/mainpage");
		}
	}

}
