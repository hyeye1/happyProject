package com.kh.notice.model.vo;

import java.sql.Date;

public class Faq {
	
	private int faNo; 
	private String faTitle;
	private String Content;
	private Date faDate;
	private String faStatus;
	private int count;

	public Faq(){}

	public Faq(int faNo, String faTitle, String content, Date faDate, String faStatus, int count) {
		super();
		this.faNo = faNo;
		this.faTitle = faTitle;
		Content = content;
		this.faDate = faDate;
		this.faStatus = faStatus;
		this.count = count;
	}
	
	

	public Faq(int faNo, String faTitle, int count) {
		super();
		this.faNo = faNo;
		this.faTitle = faTitle;
		this.count = count;
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

	public String getContent() {
		return Content;
	}

	public void setContent(String content) {
		Content = content;
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

	@Override
	public String toString() {
		return "Faq [faNo=" + faNo + ", faTitle=" + faTitle + ", Content=" + Content + ", faDate=" + faDate
				+ ", faStatus=" + faStatus + ", count=" + count + "]";
	}
	
	
}
