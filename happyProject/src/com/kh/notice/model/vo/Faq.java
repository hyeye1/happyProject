package com.kh.notice.model.vo;

import java.sql.Date;

public class Faq {
	
	private int faNo; 
	private String faTitle;
	private String faContent;
	private Date faDate;
	private String faStatus;
	private int count;
	private String faWriter;

	public Faq(){}

	public Faq(int faNo, String faTitle, String faContent, Date faDate, String faStatus, int count, String faWriter) {
		super();
		this.faNo = faNo;
		this.faTitle = faTitle;
		this.faContent = faContent;
		this.faDate = faDate;
		this.faStatus = faStatus;
		this.count = count;
		this.faWriter = faWriter;
	}
	
	public Faq(int faNo, String faTitle, int count) {
		super();
		this.faNo = faNo;
		this.faTitle = faTitle;
		this.count = count;
	}
	

	public Faq(int faNo, String faTitle, String faContent, Date faDate, String faWriter) {
		super();
		this.faNo = faNo;
		this.faTitle = faTitle;
		this.faContent = faContent;
		this.faDate = faDate;
		this.faWriter = faWriter;
	}
	
	
	public Faq(String faTitle, String faContent) {
		super();
		this.faTitle = faTitle;
		this.faContent = faContent;
	}
	
	
	

	public int getFaNo() {
		return faNo;
	}

	public void setFaNo(int faNo) {
		this.faNo = faNo;
	}

	public String getFaTitle() {
		return faTitle;
	}

	public void setFaTitle(String faTitle) {
		this.faTitle = faTitle;
	}

	public String getFaContent() {
		return faContent;
	}

	public void setFaContent(String faContent) {
		this.faContent = faContent;
	}

	public Date getFaDate() {
		return faDate;
	}

	public void setFaDate(Date faDate) {
		this.faDate = faDate;
	}

	public String getFaStatus() {
		return faStatus;
	}

	public void setFaStatus(String faStatus) {
		this.faStatus = faStatus;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	
	public String getFaWriter() {
		return faWriter;
	}

	public void setFaWriter(String faWriter) {
		this.faWriter = faWriter;
	}

	@Override
	public String toString() {
		return "Faq [faNo=" + faNo + ", faTitle=" + faTitle + ", faContent=" + faContent + ", faDate=" + faDate
				+ ", faStatus=" + faStatus + ", count=" + count + ", faWriter=" + faWriter + "]";
	}

	
	
}
