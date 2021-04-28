package com.kh.order.model.vo;

import java.sql.Date;

public class MemberCoupon {

	private int couMemNo;
	private int memNoCou;
	private int couNoCou;
	private Date couDate;
	private String couYn;
	
	public MemberCoupon() {}

	public MemberCoupon(int couMemNo, int memNoCou, int couNoCou, Date couDate, String couYn) {
		super();
		this.couMemNo = couMemNo;
		this.memNoCou = memNoCou;
		this.couNoCou = couNoCou;
		this.couDate = couDate;
		this.couYn = couYn;
	}

	public int getCouMemNo() {
		return couMemNo;
	}

	public void setCouMemNo(int couMemNo) {
		this.couMemNo = couMemNo;
	}

	public int getMemNoCou() {
		return memNoCou;
	}

	public void setMemNoCou(int memNoCou) {
		this.memNoCou = memNoCou;
	}

	public int getCouNoCou() {
		return couNoCou;
	}

	public void setCouNoCou(int couNoCou) {
		this.couNoCou = couNoCou;
	}

	public Date getCouDate() {
		return couDate;
	}

	public void setCouDate(Date couDate) {
		this.couDate = couDate;
	}

	public String getCouYn() {
		return couYn;
	}

	public void setCouYn(String couYn) {
		this.couYn = couYn;
	}

	@Override
	public String toString() {
		return "MemberCoupon [couMemNo=" + couMemNo + ", memNoCou=" + memNoCou + ", couNoCou=" + couNoCou + ", couDate="
				+ couDate + ", couYn=" + couYn + "]";
	}
	
	
}
