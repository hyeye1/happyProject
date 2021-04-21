package com.kh.book.model.vo;

import java.sql.Date;

public class Book {
	
	private int bkNo;
	private String bkName;
	private String author;
	private String publisher;
	private String bkPubDate;
	private String bkDivision;
	private String bkGenre;
	private int bkOrgPrice;
	private int bkPrice;
	private String ISBN;
	private int bkStock;
	private int bkPageNo;
	private String bkDescription;
	private String atDescription;
	private String bkContentList;
	private String bkKeyword;
	private Date bkEnrollDate;
	private String bkMainImg;
	private int bkHits;
	
	public Book() {}

	public Book(int bkNo, String bkName, String author, String publisher, String bkPubDate, String bkDivision,
			String bkGenre, int bkOrgPrice, int bkPrice, String iSBN, int bkStock, int bkPageNo, String bkDescription,
			String atDescription, String bkContentList, String bkKeyword, Date bkEnrollDate, String bkMainImg,
			int bkHits) {
		super();
		this.bkNo = bkNo;
		this.bkName = bkName;
		this.author = author;
		this.publisher = publisher;
		this.bkPubDate = bkPubDate;
		this.bkDivision = bkDivision;
		this.bkGenre = bkGenre;
		this.bkOrgPrice = bkOrgPrice;
		this.bkPrice = bkPrice;
		this.ISBN = iSBN;
		this.bkStock = bkStock;
		this.bkPageNo = bkPageNo;
		this.bkDescription = bkDescription;
		this.atDescription = atDescription;
		this.bkContentList = bkContentList;
		this.bkKeyword = bkKeyword;
		this.bkEnrollDate = bkEnrollDate;
		this.bkMainImg = bkMainImg;
		this.bkHits = bkHits;
	}

	public int getBkNo() {
		return bkNo;
	}

	public void setBkNo(int bkNo) {
		this.bkNo = bkNo;
	}

	public String getBkName() {
		return bkName;
	}

	public void setBkName(String bkName) {
		this.bkName = bkName;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public String getBkPubDate() {
		return bkPubDate;
	}

	public void setBkPubDate(String bkPubDate) {
		this.bkPubDate = bkPubDate;
	}

	public String getBkDivision() {
		return bkDivision;
	}

	public void setBkDivision(String bkDivision) {
		this.bkDivision = bkDivision;
	}

	public String getBkGenre() {
		return bkGenre;
	}

	public void setBkGenre(String bkGenre) {
		this.bkGenre = bkGenre;
	}

	public int getBkOrgPrice() {
		return bkOrgPrice;
	}

	public void setBkOrgPrice(int bkOrgPrice) {
		this.bkOrgPrice = bkOrgPrice;
	}

	public int getBkPrice() {
		return bkPrice;
	}

	public void setBkPrice(int bkPrice) {
		this.bkPrice = bkPrice;
	}

	public String getISBN() {
		return ISBN;
	}

	public void setISBN(String iSBN) {
		ISBN = iSBN;
	}

	public int getBkStock() {
		return bkStock;
	}

	public void setBkStock(int bkStock) {
		this.bkStock = bkStock;
	}

	public int getBkPageNo() {
		return bkPageNo;
	}

	public void setBkPageNo(int bkPageNo) {
		this.bkPageNo = bkPageNo;
	}

	public String getBkDescription() {
		return bkDescription;
	}

	public void setBkDescription(String bkDescription) {
		this.bkDescription = bkDescription;
	}

	public String getAtDescription() {
		return atDescription;
	}

	public void setAtDescription(String atDescription) {
		this.atDescription = atDescription;
	}

	public String getBkContentList() {
		return bkContentList;
	}

	public void setBkContentList(String bkContentList) {
		this.bkContentList = bkContentList;
	}

	public String getBkKeyword() {
		return bkKeyword;
	}

	public void setBkKeyword(String bkKeyword) {
		this.bkKeyword = bkKeyword;
	}

	public Date getBkEnrollDate() {
		return bkEnrollDate;
	}

	public void setBkEnrollDate(Date bkEnrollDate) {
		this.bkEnrollDate = bkEnrollDate;
	}

	public String getBkMainImg() {
		return bkMainImg;
	}

	public void setBkMainImg(String bkMainImg) {
		this.bkMainImg = bkMainImg;
	}

	public int getBkHits() {
		return bkHits;
	}

	public void setBkHits(int bkHits) {
		this.bkHits = bkHits;
	}

	@Override
	public String toString() {
		return "Book [bkNo=" + bkNo + ", bkName=" + bkName + ", author=" + author + ", publisher=" + publisher
				+ ", bkPubDate=" + bkPubDate + ", bkDivision=" + bkDivision + ", bkGenre=" + bkGenre + ", bkOrgPrice="
				+ bkOrgPrice + ", bkPrice=" + bkPrice + ", ISBN=" + ISBN + ", bkStock=" + bkStock + ", bkPageNo="
				+ bkPageNo + ", bkDescription=" + bkDescription + ", atDescription=" + atDescription
				+ ", bkContentList=" + bkContentList + ", bkKeyword=" + bkKeyword + ", bkEnrollDate=" + bkEnrollDate
				+ ", bkMainImg=" + bkMainImg + ", bkHits=" + bkHits + "]";
	}
	
	
	
	
	
}
