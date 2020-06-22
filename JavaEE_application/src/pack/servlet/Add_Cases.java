package pack.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pack.beans.Statistic;
import pack.db.DB_Managment;



@WebServlet("/Add_Cases")
public class Add_Cases extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


    public Add_Cases() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(false);
		
		if( session == null || session.getAttribute("admin_conected") == null) {
			
			response.sendRedirect(request.getContextPath() + "/login");
			return;
		}
		
		
		
		// for the right bar graph
		
		Statistic morroco_statistic = DB_Managment.morroco_statistics();
		request.setAttribute("morroco_statistic", morroco_statistic);
						
						
		// for the left menu
				
		List<String> regions_name = DB_Managment.all_regions();
		request.setAttribute("regions_name", regions_name);
				
				
		// for the search
		List<String> cities_name = DB_Managment.all_cities();
		request.setAttribute("cities_name", cities_name);
		
		
			// for rancked cities in the right bar
		List<Statistic> cities_ranked = DB_Managment.cities_statistics_with_limit(5);
		request.setAttribute("cities_ranked", cities_ranked);

		this.getServletContext().getRequestDispatcher("/WEB-INF/add_cases.jsp").forward( request , response );
	}



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		// get the name of all cities
		
		List<String> cities_name = DB_Managment.all_cities();
		request.setAttribute("cities_name", cities_name);
		
		String rer = "";
		
		String confirmed ;
		String deaths ;
		String recovred ;
		
		int int_confirmed ;
		int int_deaths ;
		int int_recovred ;
		
		
		for (int i = 0; i < cities_name.size(); i++) {
			
			
			confirmed = request.getParameter(cities_name.get(i) + "_confirmed");
			deaths = request.getParameter(cities_name.get(i) + "_deaths");
			recovred = request.getParameter(cities_name.get(i) + "_recovered");
			
			if( confirmed != null && deaths != null && recovred != null ) {

				int_confirmed = Integer.parseInt(confirmed);
				int_deaths = Integer.parseInt(deaths);
				int_recovred = Integer.parseInt(recovred);
				
				DB_Managment.insert_corona_case_to_a_city( cities_name.get(i) , int_confirmed , int_deaths , int_recovred );
				rer = rer + cities_name.get(i) + confirmed + deaths + recovred + "<br>";
			}
            
			
        }
		

		response.getWriter().append("Served at: " + rer);
	}

}
