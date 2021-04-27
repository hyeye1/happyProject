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
   
   public ArrayList<Book> bestBookList(){
      Connection conn = getConnection();
      ArrayList<Book> list = new BookDao().bestBookList(conn);
      close(conn);
      return list;
   }
   
   public Member loginMem(int memNo) {
	
	   // 상세페이지에서 장바구니 이용하는 회원 번호
	   Connection conn = getConnection();
	   Member m = new BookDao().loginMem(conn, memNo);
	   
	   close(conn);
	   return m;
	   
   }
   
   



	
}

