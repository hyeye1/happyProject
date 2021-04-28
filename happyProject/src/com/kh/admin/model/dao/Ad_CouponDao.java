package com.kh.admin.model.dao;

import static com.kh.common.JDBCTemplate.*;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
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
							rset.getString("cou_start"),
							rset.getString("cou_end"),
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
		public int insertCoupon(Connection conn, Ad_Coupon c) {
			 int result = 0;
			 PreparedStatement pstmt = null;
			 
			 String sql = prop.getProperty("insertCoupon");
			 
			 try {
				pstmt = conn.prepareStatement(sql);//미완성된 sql
				pstmt.setString(1, c.getCouName());
				pstmt.setInt(2, c.getDiscount());
				pstmt.setString(3, c.getCouStart());
				pstmt.setString(4, c.getCouEnd());
				pstmt.setInt(5, c.getCouCondition());
				
				result = pstmt.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				close(pstmt);
			}
			 return result;
		}

		public int insertCouponAllMember(Connection conn, int couNo, List<Integer> memNoList) {
			int result = 0;
			 PreparedStatement pstmt = null;
			 
			 String sql = prop.getProperty("insertCouponAllMember");
			 
			 try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(2, couNo);
				for(int memNo: memNoList) {
					pstmt.setInt(1, memNo);
					result += pstmt.executeUpdate();
				}
				
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				close(pstmt);
			}
			 
			return result;
			
		}

			
		
}
