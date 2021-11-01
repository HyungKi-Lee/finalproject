package xyz.itwill.dto;

import org.springframework.stereotype.Component;

/*
 * 
  이름          널?       유형            
----------- -------- ------------- 
P_NO        NOT NULL NUMBER(5)     
P_NAME      NOT NULL VARCHAR2(30)  
P_DEPARTURE NOT NULL VARCHAR2(20)  
P_COURSE    NOT NULL VARCHAR2(80)  
P_IMG       NOT NULL VARCHAR2(20)  
P_URL       NOT NULL VARCHAR2(100) 
 * 
 */
@Component
public class Product {
	private int pNo;
	private String pName;
	private String pDeparture;
	private String pCourse;
	private String pImg;
	private String pUrl;
	
	private ProductDetail productDetail;
	
	public Product() {
		// TODO Auto-generated constructor stub
	}

	public int getpNo() {
		return pNo;
	}

	public void setpNo(int pNo) {
		this.pNo = pNo;
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

	public String getpCourse() {
		return pCourse;
	}

	public void setpCourse(String pCourse) {
		this.pCourse = pCourse;
	}

	public String getpImg() {
		return pImg;
	}

	public void setpImg(String pImg) {
		this.pImg = pImg;
	}

	public String getpUrl() {
		return pUrl;
	}

	public void setpUrl(String pUrl) {
		this.pUrl = pUrl;
	}

	public ProductDetail getProductDetail() {
		return productDetail;
	}

	public void setProductDetail(ProductDetail productDetail) {
		this.productDetail = productDetail;
	}
	
	
	
}
