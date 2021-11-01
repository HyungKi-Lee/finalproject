package xyz.itwill.dto;

import java.util.Date;

/*
이름       널?       유형             
-------- -------- -------------- 
RNO      NOT NULL NUMBER(5)      
ID                VARCHAR2(20)   
RWRITER  NOT NULL VARCHAR2(20)   
RTITLE   NOT NULL VARCHAR2(100)  
RCONTENT NOT NULL VARCHAR2(2000) 
RDATE             DATE           
RIMG              VARCHAR2(20)   
RCOUNT            NUMBER         
RSTATE            NUMBER(1)     
 */
public class Review {
	private int rno;
	private String id;
	private String rwriter;
	private String rtitle;
	private String rcontent;
	private Date rdate;
	private int rcount;
	private String rimg;
	private int rstate;
	
	public Review() {
		// TODO Auto-generated constructor stub
	}

	public int getRno() {
		return rno;
	}

	public void setRno(int rno) {
		this.rno = rno;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getRwriter() {
		return rwriter;
	}

	public void setRwriter(String rwriter) {
		this.rwriter = rwriter;
	}

	public String getRtitle() {
		return rtitle;
	}

	public void setRtitle(String rtitle) {
		this.rtitle = rtitle;
	}

	public String getRcontent() {
		return rcontent;
	}

	public void setRcontent(String rcontent) {
		this.rcontent = rcontent;
	}

	public Date getRdate() {
		return rdate;
	}

	public void setRdate(Date rdate) {
		this.rdate = rdate;
	}

	public int getRcount() {
		return rcount;
	}

	public void setRcount(int rcount) {
		this.rcount = rcount;
	}

	public String getRimg() {
		return rimg;
	}

	public void setRimg(String rimg) {
		this.rimg = rimg;
	}

	public int getRstate() {
		return rstate;
	}

	public void setRstate(int rstate) {
		this.rstate = rstate;
	}
	
	
}
