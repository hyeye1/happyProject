package com.kh.member.model.vo;

import java.sql.Date;

public class Refund {
	
	private int rfNo;
	private int orNoRf;
	private String rfContent;
	private Date rfApDate;
	private String rfResult;
	private int rfPrice;
	private Date rfDate;

	public Refund() {}

	public Refund(int rfNo, int orNoRf, String rfContent, Date rfApDate, String rfResult, int rfPrice, Date rfDate) {
		super();
		this.rfNo = rfNo;
		this.orNoRf = orNoRf;
		this.rfContent = rfContent;
		this.rfApDate = rfApDate;
		this.rfResult = rfResult;
		this.rfPrice = rfPrice;
		this.rfDate = rfDate;
	}

	public int getRfNo() {
		return rfNo;
	}

	public void setRfNo(int rfNo) {
		this.rfNo = rfNo;
	}

	public int getOrNoRf() {
		return orNoRf;
	}

	public void setOrNoRf(int orNoRf) {
		this.orNoRf = orNoRf;
	}

	public String getRfContent() {
		return rfContent;
	}

	public void setRfContent(String rfContent) {
		this.rfContent = rfContent;
	}

	public Date getRfApDate() {
		return rfApDate;
	}

	public void setRfApDate(Date rfApDate) {
		this.rfApDate = rfApDate;
	}

	public String getRfResult() {
		return rfResult;
	}

	public void setRfResult(String rfResult) {
		this.rfResult = rfResult;
	}

	public int getRfPrice() {
		return rfPrice;
	}

	public void setRfPrice(int rfPrice) {
		this.rfPrice = rfPrice;
	}

	public Date getRfDate() {
		return rfDate;
	}

	public void setRfDate(Date rfDate) {
		this.rfDate = rfDate;
	}

	@Override
	public String toString() {
		return "Refund [rfNo=" + rfNo + ", orNoRf=" + orNoRf + ", rfContent=" + rfContent + ", rfApDate=" + rfApDate
				+ ", rfResult=" + rfResult + ", rfPrice=" + rfPrice + ", rfDate=" + rfDate + "]";
	}

	
	
	
	
}
