package com.kh.admin.model.dao;

import static com.kh.common.JDBCTemplate.*;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.admin.model.vo.Ad_Coupon;

public class Ad_CouponDao {

		private Properties prop = new Properties();
		public Ad_CouponDao() {
			String fileName = Ad_CouponDao.class.getResource("/sql/ad_coupon/ad_coupon-mapper.xml").getPath();
			
			try {
				prop.loadFromXML(new FileInputStream(fileName));
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		public ArrayList<Ad_Coupon> selectCouponList(Connection conn){
			// select문 -> ResultSet객체 (여러행)
			
			ArrayList<Ad_Coupon> list = new ArrayList<>();
			PreparedStatement pstmt = null;
			ResultSet rset = null;
			
			String sql = prop.getProperty("selectCouponList");
			
			try {
				pstmt = conn.prepareStatement(sql);
				rset = pstmt.executeQuery();
				
				while(rset.next()) {
					list.add(new Ad_Coupon(rset.getInt("cou_no"),
							rset.getString("cou_name"),
							rset.getInt("discount"),
							rset.getDate("cou_start"),
							rset.getDate("cou_end"),
							rset.getInt("cou_condition")));
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(rset);
				close(pstmt);
			}
			return list;
		}
		
		public int deleteCoupon(Connection conn, int couNo) {
			int result = 0;
			PreparedStatement pstmt = null;
			
			String sql = prop.getProperty("deleteCoupon");
			
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, couNo);
				
				result = pstmt.executeUpdate();
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
			}
			
			return result;
	}
		

			
		
}
