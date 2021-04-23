package com.kh.book.model.vo;

import java.sql.Date;

public class Book {
	
	private int bookNo;				// 책 번호
	private String bkName;			// 책 이름
	private String author;			// 작가
	private String publisher;		// 출판사
	private String bkPubDate;		// 출간일
	private String bkDivision;		// 국내or국외 구분
	private String bkGenre;			// 장르
	private int bkOrgPrice;			// 정가
	private int bkPrice;			// 판매가
	private String isbn;			// ISBN
	private int bkStock;			// 재고
	private int bkPageNo;			// 페이지수
	private String bkDescription;	// 책소개
	private String atDescription;	// 작가소개
	private String bkContentList;	// 목차
	private String bkKeyword;		// 키워드
	private Date bkEnrollDate;		// 책 등록일
	private String bkMainImg;		// 표지이미지
	private int bkHits;				// 조회수
	
	public Book() {}

	public Book(int bookNo, String bkName, String author, String publisher, String bkPubDate, String bkDivision,
			String bkGenre, int bkOrgPrice, int bkPrice, String isbn, int bkStock, int bkPageNo, String bkDescription,
			String atDescription, String bkContentList, String bkKeyword, Date bkEnrollDate, String bkMainImg,
			int bkHits) {
		super();
		this.bookNo = bookNo;
		this.bkName = bkName;
		this.author = author;
		this.publisher = publisher;
		this.bkPubDate = bkPubDate;
		this.bkDivision = bkDivision;
		this.bkGenre = bkGenre;
		this.bkOrgPrice = bkOrgPrice;
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
	}
	

	public Book(String bkName, String author, String bkMainImg) {
		super();
		this.bkName = bkName;
		this.author = author;
		this.bkMainImg = bkMainImg;
	}


	public int getBookNo() {
		return bookNo;
	}

	public void setBookNo(int bookNo) {
		this.bookNo = bookNo;
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

	@Override
	public String toString() {
		return "Book [bookNo=" + bookNo + ", bkName=" + bkName + ", author=" + author + ", publisher=" + publisher
				+ ", bkPubDate=" + bkPubDate + ", bkDivision=" + bkDivision + ", bkGenre=" + bkGenre + ", bkOrgPrice="
				+ bkOrgPrice + ", bkPrice=" + bkPrice + ", isbn=" + isbn + ", bkStock=" + bkStock + ", bkPageNo="
				+ bkPageNo + ", bkDescription=" + bkDescription + ", atDescription=" + atDescription
				+ ", bkContentList=" + bkContentList + ", bkKeyword=" + bkKeyword + ", bkEnrollDate=" + bkEnrollDate
				+ ", bkMainImg=" + bkMainImg + ", bkHits=" + bkHits + "]";
	}
	
	
	
}