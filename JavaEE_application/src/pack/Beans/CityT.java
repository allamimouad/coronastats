package pack.Beans;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import oracle.jdbc.OracleTypes;

public class CityT {

public static ResultSet city_cunction(String name) {
		
		ResultSet cursor = null; // the cursor that the function will return

        try (Connection conn = DriverManager.getConnection(
                "jdbc:oracle:thin:@localhost:1521/partie2.stockage.ma", "mouad", "Mm123")) {

            if (conn != null) {
                
                CallableStatement cstmt = conn.prepareCall("{? = call show_city(?)}");
                cstmt.registerOutParameter(1, OracleTypes.CURSOR);
                cstmt.setString(2, name);
                cstmt.executeUpdate();
                
                cursor = (ResultSet) cstmt.getObject(1);
                
                //return cursor;
                
                while (cursor.next())
                {
                	
                	System.out.println("=======================================");
                	
                	System.out.println("date : " + cursor.getObject(1).toString());
                	System.out.println("confirmed : " + cursor.getObject(2).toString());
                	System.out.println("deaths : " + cursor.getObject(3).toString());
                	System.out.println("recovered : " + cursor.getObject(4).toString());
                	
                   
                }
                
                
            }

        } catch (SQLException e) {
            System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
        } catch (Exception e) {
            e.printStackTrace();
        }
        
		return cursor;
		
		
	}
	
}
