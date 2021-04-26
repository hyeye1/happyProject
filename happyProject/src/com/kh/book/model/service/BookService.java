package com.kh.book.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.book.model.dao.BookDao;
import com.kh.book.model.vo.Book;
import com.kh.book.model.vo.Image;
import com.kh.member.model.vo.Member;

public class BookService {
	
	public ArrayList<Book> selectBookList(int bookNo){
		
		Connection conn = getConnection();
		
		ArrayList<Book> list = new BookDao().selectBookList(conn, bookNo);
		
		close(conn);
		
		return list;
	}
	
	public Book bookDetail(int bookNo) {
		
		Connection conn = getConnection();
		Book b = new BookDao().bookDetail(conn, bookNo);
		
		close(conn);
		return b;
		
	}
	
	public Image bookInfoImg(int bookNo) {
		
		Connection conn = getConnection();
		Image i = new BookDao().bookInfoImg(conn, bookNo);
		
		close(conn);
		return i;
		
	}

	public Member loginMem(int memNo) {
		
		// 장바구니에 책을 담는 로그인한회원의 번호넘기기
		Connection conn = getConnection();
		Member m = new BookDao().loginMem(conn, memNo);
		
		close(conn);
		return m;
		

	public ArrayList<Book> bestBookList(int rNum){
		Connection conn = getConnection();
		ArrayList<Book> list = new BookDao().bestBookList(conn, rNum);
		close(conn);
		return list;

	}

	
	
}
