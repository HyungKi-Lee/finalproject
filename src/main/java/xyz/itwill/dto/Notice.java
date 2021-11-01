package xyz.itwill.dto;

import java.util.Date;

public class Notice {
	private int nno;
	private String ntitle;
	private String ncontent;
	private Date ndate;
	
	public Notice() {
		// TODO Auto-generated constructor stub
	}

	public int getNno() {
		return nno;
	}

	public void setNno(int nno) {
		this.nno = nno;
	}

	public String getNtitle() {
		return ntitle;
	}

	public void setNtitle(String ntitle) {
		this.ntitle = ntitle;
	}

	public String getNcontent() {
		return ncontent;
	}

	public void setNcontent(String ncontent) {
		this.ncontent = ncontent;
	}

	public Date getNdate() {
		return ndate;
	}

	public void setNdate(Date ndate) {
		this.ndate = ndate;
	}
	
	
	

}
