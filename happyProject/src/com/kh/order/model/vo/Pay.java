package com.kh.order.model.vo;

import java.sql.Date;

public class Pay {
	
	private int payNo;
	private int orNoPay;
	private String payWay;
	private Date payDate;
	private int paySum;
	private Date payTime;
	private String dvCompany;
	private String dvNo;
	private String dvStatus;
	
	public Pay(){}

	public Pay(int payNo, int orNoPay, String payWay, Date payDate, int paySum, Date payTime, String dvCompany,
			String dvNo, String dvStatus) {
		super();
		this.payNo = payNo;
		this.orNoPay = orNoPay;
		this.payWay = payWay;
		this.payDate = payDate;
		this.paySum = paySum;
		this.payTime = payTime;
		this.dvCompany = dvCompany;
		this.dvNo = dvNo;
		this.dvStatus = dvStatus;
	}

	public int getPayNo() {
		return payNo;
	}

	public void setPayNo(int payNo) {
		this.payNo = payNo;
	}

	public int getOrNoPay() {
		return orNoPay;
	}

	public void setOrNoPay(int orNoPay) {
		this.orNoPay = orNoPay;
	}

	public String getPayWay() {
		return payWay;
	}

	public void setPayWay(String payWay) {
		this.payWay = payWay;
	}

	public Date getPayDate() {
		return payDate;
	}

	public void setPayDate(Date payDate) {
		this.payDate = payDate;
	}

	public int getPaySum() {
		return paySum;
	}

	public void setPaySum(int paySum) {
		this.paySum = paySum;
	}

	public Date getPayTime() {
		return payTime;
	}

	public void setPayTime(Date payTime) {
		this.payTime = payTime;
	}

	public String getDvCompany() {
		return dvCompany;
	}

	public void setDvCompany(String dvCompany) {
		this.dvCompany = dvCompany;
	}

	public String getDvNo() {
		return dvNo;
	}

	public void setDvNo(String dvNo) {
		this.dvNo = dvNo;
	}

	public String getDvStatus() {
		return dvStatus;
	}

	public void setDvStatus(String dvStatus) {
		this.dvStatus = dvStatus;
	}

	@Override
	public String toString() {
		return "Pay [payNo=" + payNo + ", orNoPay=" + orNoPay + ", payWay=" + payWay + ", payDate=" + payDate
				+ ", paySum=" + paySum + ", payTime=" + payTime + ", dvCompany=" + dvCompany + ", dvNo=" + dvNo
				+ ", dvStatus=" + dvStatus + "]";
	}
	
	
	

}
