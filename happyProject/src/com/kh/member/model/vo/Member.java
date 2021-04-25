package com.kh.member.model.vo;

import java.sql.Date;

public class Member {
	
	private int memNo;
	private String memId;
	private String memPwd;
	private String memName;
	private String memAddress;
	private String memPhone;
	private String email;
	private String emailYN;
	private String enrollRoute;
	private Date enrollDate;
	private Date recentLogin;
	private String adminYN;
	
	public Member() {}

	public Member(int memNo, String memId, String memPwd, String memName, String memAddress, String memPhone,
			String email, String emailYN, String enrollRoute, Date enrollDate, Date recentLogin,
			String adminYN) {
		super();
		this.memNo = memNo;
		this.memId = memId;
		this.memPwd = memPwd;
		this.memName = memName;
		this.memAddress = memAddress;
		this.memPhone = memPhone;
		this.email = email;
		this.emailYN = emailYN;
		this.enrollRoute = enrollRoute;
		this.enrollDate = enrollDate;
		this.recentLogin = recentLogin;
		this.adminYN = adminYN;
	}
	
	

	public Member(String memId, String memName, String email) {
		super();
		this.memId = memId;
		this.memName = memName;
		this.email = email;
	}

	public Member(String memId, String memPwd, String memName, String memAddress, String memPhone, String email, String emailYN) {
		super();
		this.memId = memId;
		this.memPwd = memPwd;
		this.memName = memName;
		this.memAddress = memAddress;
		this.memPhone = memPhone;
		this.email = email;
		this.emailYN = emailYN;
	}

	public Member(int memNo, String memId, String memPwd, String memName, String email) {
		super();
		this.memNo = memNo;
		this.memId = memId;
		this.memPwd = memPwd;
		this.memName = memName;
		this.email = email;
	}
	

	public Member(String memId, String memName, String memAddress, String memPhone, String email) {
		super();
		this.memId = memId;
		this.memName = memName;
		this.memAddress = memAddress;
		this.memPhone = memPhone;
		this.email = email;
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

	public String getEmailYN() {
		return emailYN;
	}

	public void setEmailYN(String emailYN) {
		this.emailYN = emailYN;
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

	public String getAdminYN() {
		return adminYN;
	}

	public void setAdminYN(String adminYN) {
		this.adminYN = adminYN;
	}

	@Override
	public String toString() {
		return "Member [memNo=" + memNo + ", memId=" + memId + ", memPwd=" + memPwd + ", memName=" + memName
				+ ", memAddress=" + memAddress + ", memPhone=" + memPhone + ", email="
				+ email + ", emailYN=" + emailYN + ", enrollRoute=" + enrollRoute + ", enrollDate=" + enrollDate
				+ ", recentLogin=" + recentLogin + ", adminYN=" + adminYN + "]";
	}

	

	

}
