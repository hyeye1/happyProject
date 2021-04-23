package com.kh.admin.model.vo;

import java.sql.Date;

public class Ad_Image {
	
	private int imgNo;			// 이미지 번호
	private int bkNo;			// 책 번호
	private String imgPath;		// 이미지 경로
	private Date imgEnrollDate;	// 이미지 등록일
	
	public Ad_Image () {}

	public int getImgNo() {
		return imgNo;
	}

	public void setImgNo(int imgNo) {
		this.imgNo = imgNo;
	}

	public int getBkNo() {
		return bkNo;
	}

	public void setBkNo(int bkNo) {
		this.bkNo = bkNo;
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
		return "Ad_Image [imgNo=" + imgNo + ", bkNo=" + bkNo + ", imgPath=" + imgPath + ", imgEnrollDate="
				+ imgEnrollDate + "]";
	}

	
	
}
