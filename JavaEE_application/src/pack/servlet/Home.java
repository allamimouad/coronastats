package pack.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pack.beans.Corona_case;
import pack.beans.Statistic;
import pack.db.DB_Managment;



@WebServlet("/Morroco")
public class Home extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


    public Home() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String type = request.getParameter("type");
		String name = request.getParameter("name") ;
		
		List<Corona_case> corona_cases = null;
		
		if( type == null || name == null ) {
			
			corona_cases = DB_Managment.region_show(null);
			
		}
		else if(type.equals("region")) {
			
			
			corona_cases = DB_Managment.region_show(name);
			
		}
		else if(type.equals("city")) {
			
			
			corona_cases = DB_Managment.city_show(name);
			
		}
		
		// for the main graph
		
		request.setAttribute("corona_cases", corona_cases);
		
		
		// for the right bar graph
		Statistic morroco_statistic = DB_Managment.morroco_statistics();
		request.setAttribute("morroco_statistic", morroco_statistic);
		
		
		// for the left menu
		List<String> regions_name = DB_Managment.all_regions();
		request.setAttribute("regions_name", regions_name);
		
		// for the search
		List<String> cities_name = DB_Managment.all_cities();
		request.setAttribute("cities_name", cities_name);
		
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/home.jsp").forward( request , response );
	}



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
