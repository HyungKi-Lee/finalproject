package xyz.itwill.dto;

import java.util.Date;

/*
QNO      NOT NULL NUMBER(5)      
ID                VARCHAR2(20)   
QWRITER  NOT NULL VARCHAR2(20)   
QTITLE   NOT NULL VARCHAR2(100)  
QCONTENT NOT NULL VARCHAR2(2000) 
QDATE             DATE           
QCOUNT            NUMBER         
QSTATE            NUMBER(1) 
 */
public class Qna {
	private int qno;
	private String id;
	private String qwriter;
	private String qtitle;
	private String qcontent;
	private Date qdate;
	private int qcount;
	private int qstate;	
	
	public Qna() {
		// TODO Auto-generated constructor stub
	}


	public int getQno() {
		return qno;
	}

	public void setQno(int qno) {
		this.qno = qno;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getQwriter() {
		return qwriter;
	}

	public void setQwriter(String qwriter) {
		this.qwriter = qwriter;
	}

	public String getQtitle() {
		return qtitle;
	}

	public void setQtitle(String qtitle) {
		this.qtitle = qtitle;
	}

	public String getQcontent() {
		return qcontent;
	}

	public void setQcontent(String qcontent) {
		this.qcontent = qcontent;
	}

	public Date getQdate() {
		return qdate;
	}

	public void setQdate(Date qdate) {
		this.qdate = qdate;
	}

	public int getQcount() {
		return qcount;
	}

	public void setQcount(int qcount) {
		this.qcount = qcount;
	}
	
	public int getQstate() {
		return qstate;
	}

	public void setQstate(int qstate) {
		this.qstate = qstate;
	}

}
