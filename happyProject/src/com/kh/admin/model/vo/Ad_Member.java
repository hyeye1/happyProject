package com.kh.admin.model.vo;

import java.sql.Date;

public class Ad_Member {

	private int memNo;
	private String memId;
	private String memPwd;
	private String memName;
	private String memAddress;
	private String memPhone;
	private String email;
	private String emailYn;
	private String enrollRoute;
	private Date enrollDate;
	private Date recentLogin;
	private String adminYn;
	
	public Ad_Member() {}

	public Ad_Member(int memNo, String memId, String memPwd, String memName, String memAddress, String memPhone,
			String email, String emailYn, String enrollRoute, Date enrollDate, Date recentLogin, String adminYn) {
		super();
		this.memNo = memNo;
		this.memId = memId;
		this.memPwd = memPwd;
		this.memName = memName;
		this.memAddress = memAddress;
		this.memPhone = memPhone;
		this.email = email;
		this.emailYn = emailYn;
		this.enrollRoute = enrollRoute;
		this.enrollDate = enrollDate;
		this.recentLogin = recentLogin;
		this.adminYn = adminYn;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getMemPwd() {
		return memPwd;
	}

	public void setMemPwd(String memPwd) {
		this.memPwd = memPwd;
	}

	public String getMemName() {
		return memName;
	}

	public void setMemName(String memName) {
		this.memName = memName;
	}

	public String getMemAddress() {
		return memAddress;
	}

	public void setMemAddress(String memAddress) {
		this.memAddress = memAddress;
	}

	public String getMemPhone() {
		return memPhone;
	}

	public void setMemPhone(String memPhone) {
		this.memPhone = memPhone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEmailYn() {
		return emailYn;
	}

	public void setEmailYn(String emailYn) {
		this.emailYn = emailYn;
	}

	public String getEnrollRoute() {
		return enrollRoute;
	}

	public void setEnrollRoute(String enrollRoute) {
		this.enrollRoute = enrollRoute;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public Date getRecentLogin() {
		return recentLogin;
	}

	public void setRecentLogin(Date recentLogin) {
		this.recentLogin = recentLogin;
	}

	public String getAdminYn() {
		return adminYn;
	}

	public void setAdminYn(String adminYn) {
		this.adminYn = adminYn;
	}

	@Override
	public String toString() {
		return "Ad_Member [memNo=" + memNo + ", memId=" + memId + ", memPwd=" + memPwd + ", memName=" + memName
				+ ", memAddress=" + memAddress + ", memPhone=" + memPhone + ", email=" + email + ", emailYn=" + emailYn
				+ ", enrollRoute=" + enrollRoute + ", enrollDate=" + enrollDate + ", recentLogin=" + recentLogin
				+ ", adminYn=" + adminYn + "]";
	}
	
	
	
}
