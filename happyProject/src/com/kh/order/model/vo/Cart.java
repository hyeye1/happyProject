package com.kh.order.model.vo;

public class Cart {
	
	private int cartNo;
	private int bookNo;
	private int memNo;
	private int amount;
	private int ttPrice;	// 총 금액
	private String status;	// 주문성공, 책삭제'n'

	public Cart () {}

	public Cart(int cartNo, int bookNo, int memNo, int amount, int ttPrice, String status) {
		super();
		this.cartNo = cartNo;
		this.bookNo = bookNo;
		this.memNo = memNo;
		this.amount = amount;
		this.ttPrice = ttPrice;
		this.status = status;
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

	@Override
	public String toString() {
		return "Cart [cartNo=" + cartNo + ", bookNo=" + bookNo + ", memNo=" + memNo + ", amount=" + amount
				+ ", ttPrice=" + ttPrice + ", status=" + status + "]";
	}
	
	
	
	
}
