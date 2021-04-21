package com.kh.book.model.dao;

import static com.kh.common.JDBCTemplate.close;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.book.model.vo.Review;

public class BookDao {
	
	public ArrayList<Review> selectReviewList(Connection conn, int bookNo){
		
		// select문 -> ResultSet객체 (여러행)
		ArrayList<Review> list = new ArrayList<>();
		
		close(conn);
		return list;
		
		
	}
	
	

}
