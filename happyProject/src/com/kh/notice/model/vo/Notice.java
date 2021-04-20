package com.kh.notice.model.vo;

import java.sql.Date;

public class Notice {
	
	private int noNo;
	private String noTitle;
	private String noContent;
	private Date noDate;
	private String noStatus;
	
	public Notice() {}

	public Notice(int noNo, String noTitle, String noContent, Date noDate, String noStatus) {
		super();
		this.noNo = noNo;
		this.noTitle = noTitle;
		this.noContent = noContent;
		this.noDate = noDate;
		this.noStatus = noStatus;
	}

	public int getNoNo() {
		return noNo;
	}

	public void setNoNo(int noNo) {
		this.noNo = noNo;
	}

	public String getNoTitle() {
		return noTitle;
	}

	public void setNoTitle(String noTitle) {
		this.noTitle = noTitle;
	}

	public String getNoContent() {
		return noContent;
	}

	public void setNoContent(String noContent) {
		this.noContent = noContent;
	}

	public Date getNoDate() {
		return noDate;
	}

	public void setNoDate(Date noDate) {
		this.noDate = noDate;
	}

	public String getNoStatus() {
		return noStatus;
	}

	public void setNoStatus(String noStatus) {
		this.noStatus = noStatus;
	}

	@Override
	public String toString() {
		return "Notice [noNo=" + noNo + ", noTitle=" + noTitle + ", noContent=" + noContent + ", noDate=" + noDate
				+ ", noStatus=" + noStatus + "]";
	}
	
	
	

}
