package xyz.itwill.dto;

/*
이름          널?       유형            
----------- -------- ------------- 
R_NO        NOT NULL NUMBER(5)     
R_DATE      NOT NULL VARCHAR2(20)  
NAME        NOT NULL VARCHAR2(20)  
R_SEX                VARCHAR2(10)  
PHONE       NOT NULL VARCHAR2(40)  
EMAIL                VARCHAR2(100) 
R_REQUEST            VARCHAR2(300) 
R_PATH      NOT NULL VARCHAR2(40)  
P_NAME      NOT NULL VARCHAR2(80)  
PD_GRADE    NOT NULL VARCHAR2(20)  
PD_HIGH     NOT NULL NUMBER(3)     
R_STATE     NOT NULL NUMBER(1)     
P_DEPARTURE NOT NULL VARCHAR2(20) 
ID          NOT NULL VARCHAR2(20)   
 * 
 * 
 */
public class Reservation {
	private int rNo;
	private String rDate;
	private String name;
	private String rSex;
	private String phone;
	private String email;
	private String rRequest;
	private String rPath;
	private String pName;
	private String pDeparture;
	private String pdGrade;
	private int pdHigh;
	private int rState;
	private String id;
	
	private Product product;
	
	public Reservation() {
		// TODO Auto-generated constructor stub
	}

	public int getrNo() {
		return rNo;
	}

	public void setrNo(int rNo) {
		this.rNo = rNo;
	}

	public String getrDate() {
		return rDate;
	}

	public void setrDate(String rDate) {
		this.rDate = rDate;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getrSex() {
		return rSex;
	}

	public void setrSex(String rSex) {
		this.rSex = rSex;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getrRequest() {
		return rRequest;
	}

	public void setrRequest(String rRequest) {
		this.rRequest = rRequest;
	}

	public String getrPath() {
		return rPath;
	}

	public void setrPath(String rPath) {
		this.rPath = rPath;
	}
	
	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}
	
	public String getpDeparture() {
		return pDeparture;
	}

	public void setpDeparture(String pDeparture) {
		this.pDeparture = pDeparture;
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

	public int getrState() {
		return rState;
	}

	public void setrState(int rState) {
		this.rState = rState;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	
	
}
