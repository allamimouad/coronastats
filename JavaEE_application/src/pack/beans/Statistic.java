package pack.beans;

public class Statistic {
	
	private int c_confirmed ;
    private int c_deaths ;
    private int c_recovered ;
    
    
	public Statistic(int c_confirmed, int c_deaths, int c_recovered) {
		super();
		this.c_confirmed = c_confirmed;
		this.c_deaths = c_deaths;
		this.c_recovered = c_recovered;
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
