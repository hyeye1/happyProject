package com.kh.member.model.dao;

import static com.kh.common.JDBCTemplate.*;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.member.model.vo.Coupon;
import com.kh.member.model.dao.CouponDao;

public class CouponDao {

private Properties prop = new Properties();
	
	public CouponDao() {
		
		String fileName = CouponDao.class.getResource("/sql/member/coupon-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	
	}
	
	
	public ArrayList<Coupon> selectCouponList(Connection conn){
		// select문 => ResultSet객체(여러행)
		ArrayList<Coupon> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectCouponList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				list.add(new Coupon(rset.getInt("cou_no"),
									rset.getString("cou_name"),
									rset.getInt("discount"),
									rset.getDate("cou_start"),
									rset.getDate("cou_end")));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			
			close(rset);
			close(pstmt);
		}
		
		return list;
		
	}
	
	
	public ArrayList<Coupon> selectCouponEnd(Connection conn){
		// select문 => ResultSet객체(여러행)
		ArrayList<Coupon> list1 = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectCouponEnd");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				list1.add(new Coupon(rset.getInt("cou_no"),
									rset.getString("cou_name"),
									rset.getInt("discount"),
									rset.getDate("cou_start"),
									rset.getDate("cou_end")));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			
			close(rset);
			close(pstmt);
		}
		
		return list1;
		
	}
	
	
	
	
	
	
}