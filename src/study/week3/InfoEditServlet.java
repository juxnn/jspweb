package study.week3;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class InfoEditServlet
 */
@WebServlet("/week3/edit")
public class InfoEditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InfoEditServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String id = (String) request.getSession().getAttribute("login");
		
		MemberInfo member = Week3Functions.getMemberInfo(id);
		
		request.setAttribute("member", member);
		String path = "/WEB-INF/study/week3/editForm.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}
	


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String email = request.getParameter("email");
		
		MemberInfo member = new MemberInfo();
		member.setId(id);
		member.setPassword(password);
		member.setName(name);
		member.setAge(age);
		member.setEmail(email);
		
		Week3Functions.editMemberInfo(member);
		
		doGet(request, response);
		
	}

	

}
