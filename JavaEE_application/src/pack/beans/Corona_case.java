package pack.beans;

import pack.types.Date;

//import java.util.Date;

public class Corona_case {

	private Date c_date;
    private int c_confirmed ;
    private int c_deaths ;
    private int c_recovered ;
    
    
	public Corona_case(Date c_date, int c_confirmed, int c_deaths, int c_recovered) {
		super();
		this.c_date = c_date;
		this.c_confirmed = c_confirmed;
		this.c_deaths = c_deaths;
		this.c_recovered = c_recovered;
	}


	public Date getC_date() {
		return c_date;
	}


	public void setC_date(Date c_date) {
		this.c_date = c_date;
	}


	public int getC_confirmed() {
		return c_confirmed;
	}


	public void setC_confirmed(int c_confirmed) {
		this.c_confirmed = c_confirmed;
	}


	public int getC_deaths() {
		return c_deaths;
	}


	public void setC_deaths(int c_deaths) {
		this.c_deaths = c_deaths;
	}


	public int getC_recovered() {
		return c_recovered;
	}


	public void setC_recovered(int c_recovered) {
		this.c_recovered = c_recovered;
	}
    
	
	
}
