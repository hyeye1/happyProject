package com.kh.book.model.vo;

import java.sql.Date;

public class Review {

	private int reNo;
	private String memNoRe;
	private int  bkNoRe;
	private Date reDate;
	private String reContent;
	private String reStatus;
	
	public Review() {}

	public Review(int reNo, String memNoRe, int bkNoRe, Date reDate, String reContent, String reStatus) {
		super();
		this.reNo = reNo;
		this.memNoRe = memNoRe;
		this.bkNoRe = bkNoRe;
		this.reDate = reDate;
		this.reContent = reContent;
		this.reStatus = reStatus;
	}
	
	
	
	
	public Review(Date reDate, String reContent) {
		super();
		this.reDate = reDate;
		this.reContent = reContent;
	}

	
	


	public Review(String memNoRe, Date reDate, String reContent) {
		super();
		this.memNoRe = memNoRe;
		this.reDate = reDate;
		this.reContent = reContent;
	}
	
	
	

	public int getReNo() {
		return reNo;
	}

	public void setReNo(int reNo) {
		this.reNo = reNo;
	}

	public String getMemNoRe() {
		return memNoRe;
	}

	public void setMemNoRe(String memNoRe) {
		this.memNoRe = memNoRe;
	}

	public int getBkNoRe() {
		return bkNoRe;
	}

	public void setBkNoRe(int bkNoRe) {
		this.bkNoRe = bkNoRe;
	}

	public Date getReDate() {
		return reDate;
	}

	public void setReDate(Date reDate) {
		this.reDate = reDate;
	}

	public String getReContent() {
		return reContent;
	}

	public void setReContent(String reContent) {
		this.reContent = reContent;
	}

	public String getReStatus() {
		return reStatus;
	}

	public void setReStatus(String reStatus) {
		this.reStatus = reStatus;
	}

	@Override
	public String toString() {
		return "Review [reNo=" + reNo + ", memNoRe=" + memNoRe + ", bkNoRe=" + bkNoRe + ", reDate=" + reDate
				+ ", reContent=" + reContent + ", reStatus=" + reStatus + "]";
	}

	
}