package pack.servlet;

import java.io.IOException;
import java.util.Date;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pack.beans.Corona_case;
import pack.beans.Statistic;
import pack.db.DB_Managment;



@WebServlet("/City")
public class City extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


    public City() {
        super();
        
    }



	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		List<Statistic> cities_stats = DB_Managment.cities_statistics();
		request.setAttribute("cities_stats", cities_stats);
		
			// for the right bar graph
		
		Statistic morroco_statistic = DB_Managment.morroco_statistics();
		request.setAttribute("morroco_statistic", morroco_statistic);
				
				
			// for the left menu
		
		List<String> regions_name = DB_Managment.all_regions();
		request.setAttribute("regions_name", regions_name);
		
		
		// for the search
		List<String> cities_name = DB_Managment.all_cities();
		request.setAttribute("cities_name", cities_name);
		
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/city.jsp").forward( request , response );
	}



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
