package ch14;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ch14.bean.Employee;
import ch14.dao.EmployeeDAO;

/**
 * Servlet implementation class JDBC17UpdateServlet
 */
@WebServlet("/JDBC17UpdateServlet")
public class JDBC17UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC17UpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		
		EmployeeDAO employeeDao = new EmployeeDAO();
		Employee employee = employeeDao.getEmployee(Integer.parseInt(id));
		
		request.setAttribute("employee", employee);
		String path = "/ch14/jdbc17.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		String lastName = request.getParameter("lastName");
		String firstName = request.getParameter("firstName");
		String notes = request.getParameter("notes");
		//Employee 객체 만들기
		
		Employee employee = new Employee();
		employee.setId(Integer.parseInt(id));
		employee.setLastName(lastName);
		employee.setFirstName(firstName);
		employee.setNotes(notes);
		
		EmployeeDAO employeeDao = new EmployeeDAO();
		employeeDao.updateEmployee(employee);
		
		doGet(request, response);
	}

	
	
	
}
