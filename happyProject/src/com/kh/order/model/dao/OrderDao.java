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

}
