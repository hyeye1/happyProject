package com.kh.order.model.vo;

import java.sql.Date;

public class Order {
	
	private int orNO;
	private int memNoOr;
	private int adNoOr;
	private String receiver;
	private int orSum;
	private Date orDate;
	private String orDelivery;
	private String orStatus;
	private String orRequest;
	private Date orHdDate;
	private int couMemNoOr;
	
	public Order() {}

	public Order(int orNO, int memNoOr, int adNoOr, String receiver, int orSum, Date orDate, String orDelivery,
			String orStatus, String orRequest, Date orHdDate, int couMemNoOr) {
		super();
		this.orNO = orNO;
		this.memNoOr = memNoOr;
		this.adNoOr = adNoOr;
		this.receiver = receiver;
		this.orSum = orSum;
		this.orDate = orDate;
		this.orDelivery = orDelivery;
		this.orStatus = orStatus;
		this.orRequest = orRequest;
		this.orHdDate = orHdDate;
		this.couMemNoOr = couMemNoOr;
	}

	public int getOrNO() {
		return orNO;
	}

	public void setOrNO(int orNO) {
		this.orNO = orNO;
	}

	public int getMemNoOr() {
		return memNoOr;
	}

	public void setMemNoOr(int memNoOr) {
		this.memNoOr = memNoOr;
	}

	public int getAdNoOr() {
		return adNoOr;
	}

	public void setAdNoOr(int adNoOr) {
		this.adNoOr = adNoOr;
	}

	public String getReceiver() {
		return receiver;
	}

	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}

	public int getOrSum() {
		return orSum;
	}

	public void setOrSum(int orSum) {
		this.orSum = orSum;
	}

	public Date getOrDate() {
		return orDate;
	}

	public void setOrDate(Date orDate) {
		this.orDate = orDate;
	}

	public String getOrDelivery() {
		return orDelivery;
	}

	public void setOrDelivery(String orDelivery) {
		this.orDelivery = orDelivery;
	}

	public String getOrStatus() {
		return orStatus;
	}

	public void setOrStatus(String orStatus) {
		this.orStatus = orStatus;
	}

	public String getOrRequest() {
		return orRequest;
	}

	public void setOrRequest(String orRequest) {
		this.orRequest = orRequest;
	}

	public Date getOrHdDate() {
		return orHdDate;
	}

	public void setOrHdDate(Date orHdDate) {
		this.orHdDate = orHdDate;
	}

	public int getCouMemNoOr() {
		return couMemNoOr;
	}

	public void setCouMemNoOr(int couMemNoOr) {
		this.couMemNoOr = couMemNoOr;
	}

	@Override
	public String toString() {
		return "Order [orNO=" + orNO + ", memNoOr=" + memNoOr + ", adNoOr=" + adNoOr + ", receiver=" + receiver
				+ ", orSum=" + orSum + ", orDate=" + orDate + ", orDelivery=" + orDelivery + ", orStatus=" + orStatus
				+ ", orRequest=" + orRequest + ", orHdDate=" + orHdDate + ", couMemNoOr=" + couMemNoOr + "]";
	}
	
	

}
