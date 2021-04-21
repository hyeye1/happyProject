package com.kh.book.model.vo;

import java.sql.Date;

public class Review {

	private int reviewNo;
	private int memberNo;
	private int bookNo;
	private Date reviewDate;
	private String rieviewContent;
	
	
	public Review() {}


	public Review(int reviewNo, int memberNo, int bookNo, Date reviewDate, String rieviewContent) {
		super();
		this.reviewNo = reviewNo;
		this.memberNo = memberNo;
		this.bookNo = bookNo;
		this.reviewDate = reviewDate;
		this.rieviewContent = rieviewContent;
	}
	
	

	public Review(int reviewNo, String rieviewContent, int memberNo, Date reviewDate) {
		super();
		this.reviewNo = reviewNo;
		this.rieviewContent = rieviewContent;
		this.memberNo = memberNo;
		this.reviewDate = reviewDate;
		
	}


	public int getReviewNo() {
		return reviewNo;
	}


	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}


	public int getMemberNo() {
		return memberNo;
	}


	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}


	public int getBookNo() {
		return bookNo;
	}


	public void setBookNo(int bookNo) {
		this.bookNo = bookNo;
	}


	public Date getReviewDate() {
		return reviewDate;
	}


	public void setReviewDate(Date reviewDate) {
		this.reviewDate = reviewDate;
	}


	public String getRieviewContent() {
		return rieviewContent;
	}


	public void setRieviewContent(String rieviewContent) {
		this.rieviewContent = rieviewContent;
	}


	@Override
	public String toString() {
		return "Review [reviewNo=" + reviewNo + ", memberNo=" + memberNo + ", bookNo=" + bookNo + ", reviewDate="
				+ reviewDate + ", rieviewContent=" + rieviewContent + "]";
	}
	
	
	
	
}
