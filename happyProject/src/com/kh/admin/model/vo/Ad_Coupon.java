package com.kh.admin.model.vo;

import java.sql.Date;

public class Ad_Coupon {
	
	private int couNo; // 쿠폰 번호
	private String couName; // 쿠폰명
	private int discount; // 할인액
	private Date couStart; // 유효기간 시작일
	private Date couEnd; // 유효기간 만료일
	private int couCondition; // 사용조건금액
	
	private Ad_Coupon() {}

	public Ad_Coupon(int couNo, String couName, int discount, Date couStart, Date couEnd, int couCondition) {
		super();
		this.couNo = couNo;
		this.couName = couName;
		this.discount = discount;
		this.couStart = couStart;
		this.couEnd = couEnd;
		this.couCondition = couCondition;
	}

	public int getCouNo() {
		return couNo;
	}

	public void setCouNo(int couNo) {
		this.couNo = couNo;
	}

	public String getCouName() {
		return couName;
	}

	public void setCouName(String couName) {
		this.couName = couName;
	}

	public int getDiscount() {
		return discount;
	}

	public void setDiscount(int discount) {
		this.discount = discount;
	}

	public Date getCouStart() {
		return couStart;
	}

	public void setCouStart(Date couStart) {
		this.couStart = couStart;
	}

	public Date getCouEnd() {
		return couEnd;
	}

	public void setCouEnd(Date couEnd) {
		this.couEnd = couEnd;
	}

	public int getCouCondition() {
		return couCondition;
	}

	public void setCouCondition(int couCondition) {
		this.couCondition = couCondition;
	}

	@Override
	public String toString() {
		return "Ad_Coupon [couNo=" + couNo + ", couName=" + couName + ", discount=" + discount + ", couStart="
				+ couStart + ", couEnd=" + couEnd + ", couCondition=" + couCondition + "]";
	}
	
	
}
