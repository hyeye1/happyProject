package com.kh.member.model.vo;

import java.sql.Date;

public class MyReview {

	private int reNo;
	private String memNoRe;
	private String  bkNoRe;
	private Date reDate;
	private String reContent;
	private String reStatus;
	
	public MyReview() {}

	public MyReview(int reNo, String memNoRe, String bkNoRe, Date reDate, String reContent, String reStatus) {
		super();
		this.reNo = reNo;
		this.memNoRe = memNoRe;
		this.bkNoRe = bkNoRe;
		this.reDate = reDate;
		this.reContent = reContent;
		this.reStatus = reStatus;
	}
	
	

	public MyReview(String bkNoRe, String reContent) {
		super();
		this.bkNoRe = bkNoRe;
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

	public String getBkNoRe() {
		return bkNoRe;
	}

	public void setBkNoRe(String bkNoRe) {
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
		return "MyReview [reNo=" + reNo + ", memNoRe=" + memNoRe + ", bkNoRe=" + bkNoRe + ", reDate=" + reDate
				+ ", reContent=" + reContent + ", reStatus=" + reStatus + "]";
	}
	
	
	
	
}
