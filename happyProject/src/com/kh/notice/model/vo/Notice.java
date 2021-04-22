package com.kh.notice.model.vo;

import java.sql.Date;

public class Notice {
	
	private int noNo;
	private String noTitle;
	private String noWriter;
	private String noContent;
	private int noCount;
	private Date noDate;
	private String noStatus;
	
	public Notice() {}

	

	public Notice(int noNo, String noTitle, String noWriter, String noContent,  int noCount, Date noDate,
			String noStatus) {
		super();
		this.noNo = noNo;
		this.noTitle = noTitle;
		this.noWriter = noWriter;
		this.noContent = noContent;
		this.noCount = noCount;
		this.noDate = noDate;
		this.noStatus = noStatus;
	}
	
	
	
	



	public Notice(int noNo, String noTitle, String noWriter, int noCount, Date noDate) {
		super();
		this.noNo = noNo;
		this.noTitle = noTitle;
		this.noWriter = noWriter;
		this.noCount = noCount;
		this.noDate = noDate;
	}
	



	public Notice(int noNo, String noTitle, String noWriter, String noContent, Date noDate) {
		super();
		this.noNo = noNo;
		this.noTitle = noTitle;
		this.noWriter = noWriter;
		this.noContent = noContent;
		this.noDate = noDate;
	}

	






	public Notice(String noTitle, Date noDate) {
		super();
		this.noTitle = noTitle;
		this.noDate = noDate;
	}
	
	
	
	



	public Notice(int noNo, String noTitle, Date noDate) {
		super();
		this.noNo = noNo;
		this.noTitle = noTitle;
		this.noDate = noDate;
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



	public String getNoWriter() {
		return noWriter;
	}



	public void setNoWriter(String noWriter) {
		this.noWriter = noWriter;
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



	public int getNoCount() {
		return noCount;
	}



	public void setNoCount(int noCount) {
		this.noCount = noCount;
	}



	public String getNoStatus() {
		return noStatus;
	}



	public void setNoStatus(String noStatus) {
		this.noStatus = noStatus;
	}



	@Override
	public String toString() {
		return "Notice [noNo=" + noNo + ", noTitle=" + noTitle + ", noWriter=" + noWriter + ", noContent=" + noContent
				+ ", noDate=" + noDate + ", noCount=" + noCount + ", noStatus=" + noStatus + "]";
	}
	
	
}