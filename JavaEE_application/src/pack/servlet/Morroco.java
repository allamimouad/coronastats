package pack.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pack.beans.Corona_case;
import pack.db.DB_Managment;



@WebServlet("/Morroco")
public class Morroco extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


    public Morroco() {
        super();

    }



	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		//List<Corona_case> corona_cases = DB_Managment.city_show("El Jadida");
		
		List<Corona_case> corona_cases = DB_Managment.region_show(null);
		
		request.setAttribute("corona_cases", corona_cases);
		

		this.getServletContext().getRequestDispatcher("/WEB-INF/morroco.jsp").forward( request , response );
	}



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
