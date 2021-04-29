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

import com.kh.member.model.vo.Coupon;
import com.kh.order.model.vo.Cart;


public class OrderDao {
	
private Properties prop = new Properties();
	
	public OrderDao() {
		
		String fileName = OrderDao.class.getResource("/sql/order/order-mapper.xml").getPath();
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
	public ArrayList<Coupon> selectCouponList(Connection conn, int userNo) {
		ArrayList<Coupon> cou = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectCouponList");		
		
		try {
			pstmt = conn.prepareStatement(sql);
				
				pstmt.setInt(1, userNo);

			
			rset = pstmt.executeQuery();
			while(rset.next()) {
				
				cou.add(new Coupon(rset.getString("COU_NAME"),
								   rset.getInt("DISCOUNT")));
		
							 
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return cou;
		
	}
	
	public Coupon selectCoupon(Connection conn, int userNo) {
		Coupon cp =null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectCoupon");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, userNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				cp= new Coupon(rset.getString("COU_NAME"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return cp;
	}
	
	public ArrayList<Cart> selectCartList(Connection conn, int userNo) {
		ArrayList<Cart> ca = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectCartList");		
		
		try {
			pstmt = conn.prepareStatement(sql);
				
				pstmt.setInt(1, userNo);

			
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
				
				ca.add(c);
			
		}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return ca;
		
	}

}
