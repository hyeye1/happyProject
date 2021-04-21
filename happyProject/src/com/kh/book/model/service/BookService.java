package com.kh.book.model.service;

import static com.kh.common.JDBCTemplate.getConnection;
import static com.kh.common.JDBCTemplate.close;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.book.model.dao.BookDao;
import com.kh.book.model.vo.Review;

public class BookService {

	public ArrayList<Review> selectReviewList(int bookNo){
		
		Connection conn = getConnection();
		ArrayList<Review> list = new BookDao().selectReviewList(conn, bookNo);
		
		close(conn);
		return list;
	}
	
	
	
	
}
