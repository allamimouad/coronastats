package pack.db;

import java.math.BigDecimal;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;

import oracle.jdbc.OracleTypes;
import pack.beans.Corona_case;

public class DB_Managment {
	
	private static Connection conn = null;
	
	static { 
		connect_DB();
    }
	
	public static void connect_DB() {
		
		try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
		
		try {

			conn = DriverManager.getConnection( "jdbc:oracle:thin:@localhost:1521/partie2.stockage.ma", "mouad", "Mm123");
					
            if (conn != null) {
            	
            }
            
        } catch (SQLException e) {
            System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
        } catch (Exception e) {
            e.printStackTrace();
        }
		
	}
	
	public static Connection getConn() {
		return conn;
	}
	
	
	// return corona cases of specific city
	
	public static List city_show(String city_name) {
		
		List<Corona_case> corona_cases = new ArrayList<Corona_case>();
		
		Date v_date;
	    int v_confirmed ;
	    int v_deaths ;
	    int v_recovered ;
		
		try {
			
				CallableStatement cstmt;
				cstmt = conn.prepareCall("{? = call show_city(?)}");
				cstmt.registerOutParameter(1, OracleTypes.CURSOR);
		        cstmt.setString(2, city_name);
		        cstmt.executeUpdate();
		        
		        ResultSet cursor = (ResultSet) cstmt.getObject(1);
		        
		        
		        //Date date = (Date) c_c.getC_date();
				
				Calendar calendar = new GregorianCalendar();
				
				int year ;
				//Add one to month {0 - 11}
				int month ;
				int day ;
				pack.types.Date date;
		        
		        
		        while(cursor.next()) {

		        	v_date = new  Date(((Date) cursor.getObject(1)).getTime());
		        	
		        	calendar.setTime(v_date);
		        	
		        	year = calendar.get(Calendar.YEAR);
		        	month = calendar.get(Calendar.MONTH) + 1;
					day = calendar.get(Calendar.DAY_OF_MONTH);
					
					date = new pack.types.Date(year,month,day);
		        	
		        	
		        	v_confirmed = ((BigDecimal)cursor.getObject(2)).intValue();
		        	v_deaths = ((BigDecimal)cursor.getObject(3)).intValue();
		        	v_recovered = ((BigDecimal)cursor.getObject(4)).intValue();
		        	
		        	corona_cases.add(new Corona_case(date,v_confirmed,v_deaths,v_recovered));
		        	
		        }
	        
		} catch (SQLException e) {

			e.printStackTrace();
		}
        
		return corona_cases;
	}
	
	
	
	// return corona cases of specific region 
	// if null is given it will return corona cases of all region ( morroco )
	
public static List region_show(String region_name) {
		
		List<Corona_case> corona_cases = new ArrayList<Corona_case>();
		
		Date v_date;
	    int v_confirmed = 0 ;
	    int v_deaths = 0 ;
	    int v_recovered = 0 ;
		
		try {
			
			CallableStatement cstmt;
			
			if( region_name != null ) {
				
				
				cstmt = conn.prepareCall("{? = call show_region(?)}");
				cstmt.registerOutParameter(1, OracleTypes.CURSOR);
		        cstmt.setString(2, region_name);
		        
			}
			else {

				cstmt = conn.prepareCall("{? = call show_region()}");
				cstmt.registerOutParameter(1, OracleTypes.CURSOR);
				
			}
		        cstmt.executeUpdate();

		        ResultSet cursor = (ResultSet) cstmt.getObject(1);
		        
		        
		        //Date date = (Date) c_c.getC_date();
				
				Calendar calendar = new GregorianCalendar();
				
				int year ;
				//Add one to month {0 - 11}
				int month ;
				int day ;
				pack.types.Date date;
		        
		        
		        while(cursor.next()) {

		        	v_date = new  Date(((Date) cursor.getObject(1)).getTime());
		        	
		        	calendar.setTime(v_date);
		        	
		        	year = calendar.get(Calendar.YEAR);
		        	month = calendar.get(Calendar.MONTH) + 1;
					day = calendar.get(Calendar.DAY_OF_MONTH);
					
					date = new pack.types.Date(year,month,day);
		        	
		        	
		        	v_confirmed = ((BigDecimal)cursor.getObject(2)).intValue();
		        	v_deaths = ((BigDecimal)cursor.getObject(3)).intValue();
		        	v_recovered = ((BigDecimal)cursor.getObject(4)).intValue();
		        	
		        	corona_cases.add(new Corona_case(date,v_confirmed,v_deaths,v_recovered));
		        	
		        }
	        
		} catch (SQLException e) {

			e.printStackTrace();
		}
        
		return corona_cases;
	}
	
	

}
