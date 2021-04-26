package com.kh.member.model.vo;

import java.sql.Date;

public class Coupon {
	
	private int couNo;
	private String couName;
	private int discount;
	private Date couStart;
	private Date couEnd;
	private int couCondition;
	private String couStatus;
	
	
	public Coupon() {}


	public Coupon(int couNo, String couName, int discount, Date couStart, Date couEnd, int couCondition,
			String couStatus) {
		super();
		this.couNo = couNo;
		this.couName = couName;
		this.discount = discount;
		this.couStart = couStart;
		this.couEnd = couEnd;
		this.couCondition = couCondition;
		this.couStatus = couStatus;
	}
	
	

	public Coupon(int couNo, String couName, int discount, Date couStart, Date couEnd) {
		super();
		this.couNo = couNo;
		this.couName = couName;
		this.discount = discount;
		this.couStart = couStart;
		this.couEnd = couEnd;
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


	public String getCouStatus() {
		return couStatus;
	}


	public void setCouStatus(String couStatus) {
		this.couStatus = couStatus;
	}


	@Override
	public String toString() {
		return "Coupon [couNo=" + couNo + ", couName=" + couName + ", discount=" + discount + ", couStart=" + couStart
				+ ", couEnd=" + couEnd + ", couCondition=" + couCondition + ", couStatus=" + couStatus + "]";
	}
	
	

}
