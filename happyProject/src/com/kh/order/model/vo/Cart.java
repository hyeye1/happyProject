package com.kh.order.model.vo;

public class Cart {
	
	private int cartNo;
	private int bookNo;
	private int memNo;
	private int amount;
	private int ttPrice;	// 총 금액
	private String status;	// 주문성공, 책삭제'n'
	private String title;
	private String author;
	private int orgPrice;
	private int price;
	private String mainImg;
	
	public Cart () {}

	public Cart(int cartNo, int bookNo, int memNo, int amount, int ttPrice, String status, String title, String author,
			int orgPrice, int price, String mainImg) {
		super();
		this.cartNo = cartNo;
		this.bookNo = bookNo;
		this.memNo = memNo;
		this.amount = amount;
		this.ttPrice = ttPrice;
		this.status = status;
		this.title = title;
		this.author = author;
		this.orgPrice = orgPrice;
		this.price = price;
		this.mainImg = mainImg;
	}

	public int getCartNo() {
		return cartNo;
	}

	public void setCartNo(int cartNo) {
		this.cartNo = cartNo;
	}

	public int getBookNo() {
		return bookNo;
	}

	public void setBookNo(int bookNo) {
		this.bookNo = bookNo;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public int getTtPrice() {
		return ttPrice;
	}

	public void setTtPrice(int ttPrice) {
		this.ttPrice = ttPrice;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public int getOrgPrice() {
		return orgPrice;
	}

	public void setOrgPrice(int orgPrice) {
		this.orgPrice = orgPrice;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getMainImg() {
		return mainImg;
	}

	public void setMainImg(String mainImg) {
		this.mainImg = mainImg;
	}

	@Override
	public String toString() {
		return "Cart [cartNo=" + cartNo + ", bookNo=" + bookNo + ", memNo=" + memNo + ", amount=" + amount
				+ ", ttPrice=" + ttPrice + ", status=" + status + ", title=" + title + ", author=" + author
				+ ", orgPrice=" + orgPrice + ", price=" + price + ", mainImg=" + mainImg + "]";
	}

	
	
	
	
	
	

}
