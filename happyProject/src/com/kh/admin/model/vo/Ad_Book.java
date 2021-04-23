package com.kh.admin.model.vo;

import java.sql.Date;

public class Ad_Book {
	
	private int bkNo;
	private String bkName;
	private String author;
	private String publisher;
	private String bkPublishDate;
	private String bkDivision;
	private String bkGenre;
	private int bkOriginPrice;
	private int bkPrice;
	private String isbn;
	private int bkStock;
	private int bkPageNo;
	private String bkDescription;
	private String atDescription;
	private String bkContentList;
	private String bkKeyword;
	private Date bkEnrollDate;
	private String bkMainImg;
	private int bkHits;
	private String status;
	
	public Ad_Book() {}


	public Ad_Book(int bkNo, String bkName, String author, String publisher, String bkPublishDate, String bkDivision,
			String bkGenre, int bkOriginPrice, int bkPrice, String isbn, int bkStock, int bkPageNo,
			String bkDescription, String atDescription, String bkContentList, String bkKeyword, Date bkEnrollDate,
			String bkMainImg, int bkHits, String status) {
		super();
		this.bkNo = bkNo;
		this.bkName = bkName;
		this.author = author;
		this.publisher = publisher;
		this.bkPublishDate = bkPublishDate;
		this.bkDivision = bkDivision;
		this.bkGenre = bkGenre;
		this.bkOriginPrice = bkOriginPrice;
		this.bkPrice = bkPrice;
		this.isbn = isbn;
		this.bkStock = bkStock;
		this.bkPageNo = bkPageNo;
		this.bkDescription = bkDescription;
		this.atDescription = atDescription;
		this.bkContentList = bkContentList;
		this.bkKeyword = bkKeyword;
		this.bkEnrollDate = bkEnrollDate;
		this.bkMainImg = bkMainImg;
		this.bkHits = bkHits;
		this.status = status;
	}





	public Ad_Book(int bkNo, String bkName, String author, String publisher, String bkDivision, String bkGenre,
			int bkOriginPrice, int bkPrice, int bkStock) {
		super();
		this.bkNo = bkNo;
		this.bkName = bkName;
		this.author = author;
		this.publisher = publisher;
		this.bkDivision = bkDivision;
		this.bkGenre = bkGenre;
		this.bkOriginPrice = bkOriginPrice;
		this.bkPrice = bkPrice;
		this.bkStock = bkStock;
	}
	
	

	public Ad_Book(String bkName, String author, String publisher, String bkPublishDate, String bkDivision,
			String bkGenre, int bkOriginPrice, int bkPrice, String isbn, int bkStock, int bkPageNo,
			String bkDescription, String atDescription, String bkContentList, String bkKeyword) {
		super();
		this.bkName = bkName;
		this.author = author;
		this.publisher = publisher;
		this.bkPublishDate = bkPublishDate;
		this.bkDivision = bkDivision;
		this.bkGenre = bkGenre;
		this.bkOriginPrice = bkOriginPrice;
		this.bkPrice = bkPrice;
		this.isbn = isbn;
		this.bkStock = bkStock;
		this.bkPageNo = bkPageNo;
		this.bkDescription = bkDescription;
		this.atDescription = atDescription;
		this.bkContentList = bkContentList;
		this.bkKeyword = bkKeyword;

	}
	
	

	public Ad_Book(Date bkEnrollDate, int bkNo, String bkName, String isbn, int bkPageNo, 
			String bkKeyword, String bkDescription, String atDescription,
			String bkContentList, String bkMainImg) {
		super();
		this.bkEnrollDate = bkEnrollDate;
		this.bkNo = bkNo;
		this.bkName = bkName;
		this.isbn = isbn;
		this.bkPageNo = bkPageNo;
		this.bkKeyword = bkKeyword;
		this.bkDescription = bkDescription;
		this.atDescription = atDescription;
		this.bkContentList = bkContentList;
		this.bkMainImg = bkMainImg;
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

	public String getBkPublishDate() {
		return bkPublishDate;
	}

	public void setBkPublishDate(String bkPublishDate) {
		this.bkPublishDate = bkPublishDate;
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

	public int getBkOriginPrice() {
		return bkOriginPrice;
	}

	public void setBkOriginPrice(int bkOriginPrice) {
		this.bkOriginPrice = bkOriginPrice;
	}

	public int getBkPrice() {
		return bkPrice;
	}

	public void setBkPrice(int bkPrice) {
		this.bkPrice = bkPrice;
	}

	public String getIsbn() {
		return isbn;
	}

	public void setIsbn(String isbn) {
		this.isbn = isbn;
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

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Ad_Book [bkNo=" + bkNo + ", bkName=" + bkName + ", author=" + author + ", publisher=" + publisher
				+ ", bkPublishDate=" + bkPublishDate + ", bkDivision=" + bkDivision + ", bkGenre=" + bkGenre
				+ ", bkOriginPrice=" + bkOriginPrice + ", bkPrice=" + bkPrice + ", isbn=" + isbn + ", bkStock="
				+ bkStock + ", bkPageNo=" + bkPageNo + ", bkDescription=" + bkDescription + ", atDescription="
				+ atDescription + ", bkContentList=" + bkContentList + ", bkKeyword=" + bkKeyword + ", bkEnrollDate="
				+ bkEnrollDate + ", bkMainImg=" + bkMainImg + ", bkHits=" + bkHits + ", status=" + status + "]";
	}
	
	
}
