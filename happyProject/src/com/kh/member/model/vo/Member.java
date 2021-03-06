package com.kh.member.model.vo;

import java.sql.Date;

public class Member {
	
	private int memNo;
	private String memId;
	private String memId2;
	private String memPwd;
	private String memPwd2;
	private String memName;
	private String memAddress;
	private String memPhone;
	private String email;
	private String emailYN;
	private String enrollRoute;
	private Date enrollDate;
	private Date recentLogin;
	private String adminYN;
	private String memStatus;
	
	public Member() {}

	
	
	public Member(int memNo, String memId, String memPwd, String memName, String memAddress, String memPhone,
			String email, String emailYN, String enrollRoute, Date enrollDate, Date recentLogin,
			String adminYN, String memStatus) {
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
		this.memStatus = memStatus;
	}
	
	
public Member(int memNo, String memId, String memId2, String memPwd, String memName, String memAddress,
			String memPhone, String email, String emailYN, String enrollRoute, Date enrollDate, Date recentLogin,
			String adminYN, String memStatus) {
		super();
		this.memNo = memNo;
		this.memId = memId;
		this.memId2 = memId2;
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
		this.memStatus = memStatus;
	}



	public Member(int memNo, String memId, String memId2,String memPwd, String memPwd2, String memName, String email, String memStatus) {
		super();
		this.memNo = memNo;
		this.memId = memId;
		this.memId2 = memId2;
		this.memPwd2 = memPwd2;
		this.memPwd = memPwd;
		this.memName = memName;
		this.email = email;
		this.memStatus = memStatus;
	}
	
	

	public Member(int memNo, String memId, String memPwd, String memName, String email, String memStatus) {
		super();
		this.memNo = memNo;
		this.memId = memId;
		this.memPwd = memPwd;
		this.memName = memName;
		this.email = email;
		this.memStatus = memStatus;
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
	

	public String getMemStatus() {
		return memStatus;
	}

	public void setMemStatus(String memStatus) {
		this.memStatus = memStatus;
	}

	public String getMemId2() {
		return memId2;
	}



	public void setMemId2(String memId2) {
		this.memId2 = memId2;
	}



	public String getMemPwd2() {
		return memPwd2;
	}



	public void setMemPwd2(String memPwd2) {
		this.memPwd2 = memPwd2;
	}



	@Override
	public String toString() {
		return "Member [memNo=" + memNo + ", memId=" + memId + ", memId2=" + memId2 + ", memPwd=" + memPwd
				+ ", memPwd2=" + memPwd2 + ", memName=" + memName + ", memAddress=" + memAddress + ", memPhone="
				+ memPhone + ", email=" + email + ", emailYN=" + emailYN + ", enrollRoute=" + enrollRoute
				+ ", enrollDate=" + enrollDate + ", recentLogin=" + recentLogin + ", adminYN=" + adminYN
				+ ", memStatus=" + memStatus + "]";
	}








	
	

	

}
