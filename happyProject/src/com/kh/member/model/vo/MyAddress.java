package com.kh.member.model.vo;

public class MyAddress {

	private int adNo;
	private int memNoAd;
	private String adLocation;
	private String adName;
	private String adPhone;
	private String adPost;
	private String adRoad;
	private String adDetail;
	
	public MyAddress(int adNo, int memNoAd, String adLocation, String adName, String adPhone, String adPost,
			String adRoad, String adDetail) {
		super();
		this.adNo = adNo;
		this.memNoAd = memNoAd;
		this.adLocation = adLocation;
		this.adName = adName;
		this.adPhone = adPhone;
		this.adPost = adPost;
		this.adRoad = adRoad;
		this.adDetail = adDetail;
	}

	

	public MyAddress(int int1, String string, String string2, String string3) {
		// TODO Auto-generated constructor stub
	}



	public int getAdNo() {
		return adNo;
	}

	public void setAdNo(int adNo) {
		this.adNo = adNo;
	}

	public int getMemNoAd() {
		return memNoAd;
	}

	public void setMemNoAd(int memNoAd) {
		this.memNoAd = memNoAd;
	}

	public String getAdLocation() {
		return adLocation;
	}

	public void setAdLocation(String adLocation) {
		this.adLocation = adLocation;
	}

	public String getAdName() {
		return adName;
	}

	public void setAdName(String adName) {
		this.adName = adName;
	}

	public String getAdPhone() {
		return adPhone;
	}

	public void setAdPhone(String adPhone) {
		this.adPhone = adPhone;
	}

	public String getAdPost() {
		return adPost;
	}

	public void setAdPost(String adPost) {
		this.adPost = adPost;
	}

	public String getAdRoad() {
		return adRoad;
	}

	public void setAdRoad(String adRoad) {
		this.adRoad = adRoad;
	}

	public String getAdDetail() {
		return adDetail;
	}

	public void setAdDetail(String adDetail) {
		this.adDetail = adDetail;
	}

	@Override
	public String toString() {
		return "MyAddress [adNo=" + adNo + ", memNoAd=" + memNoAd + ", adLocation=" + adLocation + ", adName=" + adName
				+ ", adPhone=" + adPhone + ", adPost=" + adPost + ", adRoad=" + adRoad + ", adDetail=" + adDetail + "]";
	}
	
	
	
	
	
}
