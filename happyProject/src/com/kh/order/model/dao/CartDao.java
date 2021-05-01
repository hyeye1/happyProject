package com.kh.order.model.dao;

import static com.kh.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
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
	
	public ArrayList<Cart> selectCartList(Connection conn, int memNo){
		
		// SELECT문 -> resultSet객체로 (여러행)
		ArrayList<Cart> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectCartList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memNo);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				Cart c = new Cart();
				c.setCartNo(rset.getInt("ca_no"));
				c.setBookNo(rset.getInt("bk_no_ca"));
				c.setMemNo(rset.getInt("mem_no_ca"));
				c.setAmount(rset.getInt("amount"));
				c.setTtPrice(rset.getInt("total_price"));
				c.setStatus(rset.getString("author"));
				c.setTitle(rset.getString("bk_title"));
				c.setAuthor(rset.getString("author"));
				c.setOrgPrice(rset.getInt("origin_price"));
				c.setPrice(rset.getInt("price"));
				c.setMainImg(rset.getString("main_img"));
				
				list.add(c);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	public int cartDeleteAll(Connection conn, int memNo) {
		
		int result = 0; // 여러행 삭제
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("cartDeleteAll");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memNo);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	public int cartDeleteOne(Connection conn, int memNo, int bookNo) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("cartDeleteOne");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bookNo);
			pstmt.setInt(2, memNo);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	

}
