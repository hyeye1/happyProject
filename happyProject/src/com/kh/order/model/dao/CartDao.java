package com.kh.order.model.dao;

import static com.kh.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

import com.kh.notice.model.dao.NoticeDao;
import com.kh.order.model.vo.Cart;




public class CartDao {
	
	private Properties prop = new Properties();
	
	public CartDao() {
	
		String fileName = NoticeDao.class.getResource("/sql/order/order-mapper.xml").getPath();
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public int insertCart(Connection conn, Cart c) {
		
		// Insert문 => 처리된 행 수
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertCart");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, c.getBookNo());
			pstmt.setInt(2, c.getMemNo());
			pstmt.setInt(3, c.getAmount());
			pstmt.setInt(4, c.getTtPrice());
			pstmt.setString(5, c.getTitle());
			pstmt.setString(6, c.getAuthor());
			pstmt.setInt(7, c.getOrgPrice());
			pstmt.setInt(8, c.getPrice());
			pstmt.setString(9, c.getMainImg());
			
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
