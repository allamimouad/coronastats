package pack.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pack.db.DB_Managment;



@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


    public Login() {
        super();

    }
    

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String logout = request.getParameter("logout");
		
		if(logout != null && logout.equals("yes")) {
			
			request.getSession().invalidate();
			response.sendRedirect(request.getContextPath() + "/login");
			return;
			
		}
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/login.jsp").forward( request , response );
	}



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		
		boolean connected = DB_Managment.check_admin( name , password );
		
		if(connected) {
			
			HttpSession session = request.getSession();
			
			session.setAttribute( "admin_conected", true );
			
			response.sendRedirect(request.getContextPath() + "/home");
		}
		else {
			
			response.sendRedirect(request.getContextPath() + "/login");
		}
		
	}
	

}
