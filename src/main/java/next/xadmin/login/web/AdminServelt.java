package next.xadmin.login.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import next.xadmin.login.bean.AdminBean;
import next.xadmin.login.database.AdminDao;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/admin")
public class AdminServelt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminServelt() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AdminDao adminDao = new AdminDao();
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		AdminBean adminBean = new AdminBean();
		adminBean.setUsername(username);
		adminBean.setPassword(password);
		
		if (adminDao.validate(adminBean))
		{
			response.sendRedirect("adminsuccess.jsp");
			
		}
		else 
		{
			//HttpSession session = request.getSession();
			response.sendRedirect("adminUnsuccess.jsp");
			
		}
		
	}

}