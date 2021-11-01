package xyz.itwill.dto;

import java.util.Date;

public class Qreply {
	private int qrno; 
	private int qno;
	private String qrwriter;
	private String qrcontent;
	private Date qrdate;
	
	public Qreply() {
		// TODO Auto-generated constructor stub
	}

	public int getQrno() {
		return qrno;
	}

	public void setQrno(int qrno) {
		this.qrno = qrno;
	}

	public int getQno() {
		return qno;
	}

	public void setQno(int qno) {
		this.qno = qno;
	}

	public String getQrwriter() {
		return qrwriter;
	}

	public void setQrwriter(String qrwriter) {
		this.qrwriter = qrwriter;
	}

	public String getQrcontent() {
		return qrcontent;
	}

	public void setQrcontent(String qrcontent) {
		this.qrcontent = qrcontent;
	}

	public Date getQrdate() {
		return qrdate;
	}

	public void setQrdate(Date qrdate) {
		this.qrdate = qrdate;
	}
	
	
}
