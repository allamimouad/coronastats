package pack.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/City")
public class City extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


    public City() {
        super();
        
    }



	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String str = "default";
		
		// register JDBC driver, optional since java 1.6
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
		
		try (Connection conn = DriverManager.getConnection(
                "jdbc:oracle:thin:@localhost:1521/partie2.stockage.ma", "mouad", "Mm123")) {

            if (conn != null) {
            	
            	str = "Yes";
                
                
            } else {
            	str = "No";
            }

        } catch (SQLException e) {
            System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
        } catch (Exception e) {
            e.printStackTrace();
        }
		
		request.setAttribute("str", str);
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/city.jsp").forward( request , response );
	}



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
