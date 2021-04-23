package com.kh.admin.model.vo;

import java.sql.Date;

public class Ad_Image {
	
	private int imgNo;			// 이미지 번호
	private int bookNo;			// 책 번호
	private String imgPath;		// 이미지 경로
	private Date imgEnrollDate;	// 이미지 등록일
	
	public Ad_Image () {}

	public Ad_Image(int imgNo, int bookNo, String imgPath, Date imgEnrollDate) {
		super();
		this.imgNo = imgNo;
		this.bookNo = bookNo;
		this.imgPath = imgPath;
		this.imgEnrollDate = imgEnrollDate;
	}

	public int getImgNo() {
		return imgNo;
	}

	public void setImgNo(int imgNo) {
		this.imgNo = imgNo;
	}

	public int getBookNo() {
		return bookNo;
	}

	public void setBookNo(int bookNo) {
		this.bookNo = bookNo;
	}

	public String getImgPath() {
		return imgPath;
	}

	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}

	public Date getImgEnrollDate() {
		return imgEnrollDate;
	}

	public void setImgEnrollDate(Date imgEnrollDate) {
		this.imgEnrollDate = imgEnrollDate;
	}

	@Override
	public String toString() {
		return "Image [imgNo=" + imgNo + ", bookNo=" + bookNo + ", imgPath=" + imgPath + ", imgEnrollDate="
				+ imgEnrollDate + "]";
	}
	
	
	
	
}
