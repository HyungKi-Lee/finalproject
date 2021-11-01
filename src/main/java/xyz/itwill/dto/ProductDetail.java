package xyz.itwill.dto;

import org.springframework.stereotype.Component;

/*
 * 이름       널?       유형           
-------- -------- ------------ 
PD_NO    NOT NULL NUMBER(2)    
P_COURSE NOT NULL VARCHAR2(80) 
PD_GRADE NOT NULL VARCHAR2(50) 
PD_HIGH  NOT NULL NUMBER(3)    
PD_LOW   NOT NULL NUMBER(3)    
PD_SEATS NOT NULL NUMBER(3) 
 * 
 * 
 */
@Component
public class ProductDetail {
	private int pdNo;
	private String pCourse;
	private String pdGrade;
	private int pdHigh;
	private int pdLow;
	private int pdSeats;
	
	public ProductDetail() {
		// TODO Auto-generated constructor stub
	}

	public int getPdNo() {
		return pdNo;
	}

	public void setPdNo(int pdNo) {
		this.pdNo = pdNo;
	}

	public String getpCourse() {
		return pCourse;
	}

	public void setpCourse(String pCourse) {
		this.pCourse = pCourse;
	}

	public String getPdGrade() {
		return pdGrade;
	}

	public void setPdGrade(String pdGrade) {
		this.pdGrade = pdGrade;
	}

	public int getPdHigh() {
		return pdHigh;
	}

	public void setPdHigh(int pdHigh) {
		this.pdHigh = pdHigh;
	}

	public int getPdLow() {
		return pdLow;
	}

	public void setPdLow(int pdLow) {
		this.pdLow = pdLow;
	}

	public int getPdSeats() {
		return pdSeats;
	}

	public void setPdSeats(int pdSeats) {
		this.pdSeats = pdSeats;
	}
	
	
}
