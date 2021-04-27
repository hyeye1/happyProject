package com.kh.book.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.book.model.dao.ReviewDao;
import com.kh.book.model.vo.Review;

public class ReviewService {

	public ArrayList<Review> selectReviewList(int reNo){
	      
	      Connection conn = getConnection();
	      
	      ArrayList<Review> list = new ReviewDao().selectReviewList(conn, reNo);
	      
	      close(conn);
	      
	      return list;
	   }
	   
}
