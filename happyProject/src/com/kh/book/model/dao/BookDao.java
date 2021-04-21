package com.kh.book.model.dao;

import static com.kh.common.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.book.model.vo.Review;

public class BookDao {
	
	private Properties prop = new Properties();
	
	public ArrayList<Review> selectReviewList(Connection conn, int bookNo){
		
		// select문 -> ResultSet객체 (여러행)
		
		ArrayList<Review> list = new ArrayList<>();
		// 조회된리뷰가 없으면 비어있는 list 반환됨
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql= prop.getProperty("selectReviewList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bookNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Review(rset.getInt("re_no"),
						rset.getString("re_content"),
						rset.getInt("mem_no"),
						rset.getDate("re_date")));
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
