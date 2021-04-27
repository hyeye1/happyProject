package com.kh.book.model.dao;

import static com.kh.common.JDBCTemplate.*;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.book.model.dao.ReviewDao;
import com.kh.book.model.vo.Review;

public class ReviewDao {
	
private Properties prop = new Properties();
	
	public ReviewDao() {
		
		String fileName = ReviewDao.class.getResource("/sql/book/review-mapper.xml").getPath();
		
			try {
				prop.loadFromXML(new FileInputStream(fileName));
			} catch (IOException e) {
				e.printStackTrace();
			}
		
	}
	
	public ArrayList<Review> selectReviewList(Connection conn, int reNo){
		// select문 => ResultSet객체 (여러행)
		
		ArrayList<Review> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectReviewList"); 
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, reNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				list.add(new Review(rset.getInt("re_no"),
								  	rset.getInt("mem_no_re"),
								  	rset.getInt("bk_no_re"),
								  	rset.getDate("reDate"),
								  	rset.getString("reContent"),
								  	rset.getString("reStatus")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	

}
