package com.kh.book.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.commit;
import static com.kh.common.JDBCTemplate.getConnection;
import static com.kh.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.book.model.dao.ReviewDao;
import com.kh.book.model.vo.Review;


public class ReviewService {

	public ArrayList<Review> selectReviewList(){
		Connection conn = getConnection();
		
		ArrayList<Review> list = new ReviewDao().selectReviewList(conn);
		
		close(conn);
		
		return list;
		
	}
	
	
	public int insertReview(Review r) {
		Connection conn = getConnection();
		int result = new ReviewDao().insertReview(conn, r);
		
		close(conn);
		
		return result;
	}
	
	
	
	public int deleteReview(int reNo) {
		Connection conn = getConnection();
		int result = new ReviewDao().deleteReview(conn, reNo);
		
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
	
}
