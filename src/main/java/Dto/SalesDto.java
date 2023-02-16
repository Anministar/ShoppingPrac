package Dto;

public class SalesDto {
	private String custno;
	private String custname;
	private String grade;
	private String sales;
	
	public SalesDto() {
		
	}
	
	//Getter and Setter
	public String getCustno() {
		return custno;
	}
	public void setCustno(String custno) {
		this.custno = custno;
	}
	public String getCustname() {
		return custname;
	}
	public void setCustname(String custname) {
		this.custname = custname;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getSales() {
		return sales;
	}
	public void setSales(String sales) {
		this.sales = sales;
	}
	

	//toString() 재정의
	@Override
	public String toString() {
		return "SalesDto [custno=" + custno + ", custname=" + custname + ", grade=" + grade + ", sales=" + sales + "]";
	}
	
	
	
	

}
