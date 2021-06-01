package study.week2;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Login
 */
@WebServlet("/week2/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletContext application = request.getServletContext();
		Map<MemberInfo, String> memberList = (Map<MemberInfo, String>) application.getAttribute("members");
		
		request.setAttribute("members", memberList);
		
		String path = "/WEB-INF/study/week2/loginForm.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ServletContext application = request.getServletContext();
		Map<String, MemberInfo> memberList = (Map<String, MemberInfo>) application.getAttribute("members");
		
		String idCheck = request.getParameter("id");
		String pwCheck = request.getParameter("pw");
		
		//아이디에 맞는 비밀번호를 가져온다.
		MemberInfo member = (MemberInfo) memberList.get(idCheck);
		String pw = member.getPw();
		
		if(! pw.equals(pwCheck)) {//로그인 실패시
			request.getSession().setAttribute("loginCheck", false);
			
			//request.setCharacterEncoding("utf-8");
			//PrintWriter out = response.getWriter();
			//out.println("<script>alert(\"비밀번호가 다릅니다.\");\r\n" + 
			//		"history.go(-1);</script>");
			//글씨가 깨져서 나온다. 아마 여기서 setCharterEncoding을 안해서 그런거 같은데 테스트해보자.
			//아니네 그래도깨진다....
			
			//String path = "/WEB-INF/study/week2/loginForm.jsp";
			//RequestDispatcher dispatcher = request.getRequestDispatcher(path);
			response.sendRedirect(request.getContextPath()+"/week2/login");
			
		}else {//로그인 성공시
			request.getSession().setAttribute("loginCheck", true);

			//PrintWriter out = response.getWriter();
			//out.println("<script>alert(\"회원가입에 성공하였습니다.\");</script>");
			//작동을 안한다. 이유를 알거 같은데, redirect servlet 페이지로 가서 그런가보다.
			//실패할때는 되는데, jsp파일로 재요청하는 경우는 스크립트가 작동하나보다.
			
			response.sendRedirect(request.getContextPath()+"/week2/mainpage");
			
			
		}
	}

}
