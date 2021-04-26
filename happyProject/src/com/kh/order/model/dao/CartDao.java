package com.kh.order.model.dao;

import static com.kh.common.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

import com.kh.order.model.vo.Cart;

public class CartDao {
	
	private Properties prop = new Properties();
	
	public int insertCart(Connection conn, Cart c) {
		
		// Insert문 => 처리된 행 수
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, c.getCartNo());
			pstmt.setInt(2, c.getBookNo());
			pstmt.setInt(3, c.getMemNo());
			pstmt.setInt(4, c.getAmount());
			pstmt.setInt(5, c.getTtPrice());
			pstmt.setString(6, c.getTitle());
			pstmt.setString(7, c.getTitle());
			pstmt.setString(8, c.getAuthor());
			pstmt.setInt(9, c.getOrgPrice());
			pstmt.setInt(10, c.getPrice());
			pstmt.setString(11, c.getMainImg());
			
			result = pstmt.executeUpdate();
			// insert했을 때 성공하면1 실패하면 0
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	

}
