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
import com.kh.order.model.vo.Order;
import com.kh.order.model.vo.Pay;


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
	
	public int insertOrder(Connection conn, Order or) {
			
			int result =0;
			PreparedStatement pstmt =null;
			String sql = prop.getProperty("insertOrder");
			
			try {
				pstmt=conn.prepareStatement(sql); 
				pstmt.setInt(1, or.getMemNoOr());
				pstmt.setString(2, or.getReceiver());
				pstmt.setInt(3, or.getOrSum());
				pstmt.setString(4, or.getOrDelivery());
				pstmt.setString(5, or.getOrRequest());
				pstmt.setString(6, or.getOrHdDate());
				
				
				result=pstmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
			}
			return result;
		}
	
	
	public int insertPay(Connection conn, Pay p) {
		int result =0;
		PreparedStatement pstmt =null;
		String sql = prop.getProperty("insertPay");
		
		try {
			pstmt=conn.prepareStatement(sql); 
			pstmt.setInt(1, p.getOrNoPay());
			pstmt.setInt(2, p.getPaySum());
			
			
			
			result=pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	
	
	public Order selectOrder(Connection conn, int orNo) {
		Order or = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectOrder");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, orNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				or= new Order(rset.getInt("OR_NO"),
						    rset.getInt("MEM_NO_OR"),
						    rset.getInt("AD_NO_OR"),
						    rset.getString("RECEIVER"),
						    rset.getInt("OR_SUM"),
						    rset.getDate("OR_DATE"),
						    rset.getString("OR_DELIVERY"),
						    rset.getString("OR_STATUS"),
						    rset.getString("OR_REQUEST"),
						    rset.getString("OR_HD_DATE"),
						    rset.getInt("COU_MEM_NO_OR")
						  	 
							 );
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return or;
	}
	
	public Order orderNo(Connection conn) {
		Order or = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("orderNo");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				or= new Order(rset.getInt("OR_NO"),
						    rset.getInt("MEM_NO_OR"),
						    rset.getInt("AD_NO_OR"),
						    rset.getString("RECEIVER"),
						    rset.getInt("OR_SUM"),
						    rset.getDate("OR_DATE"),
						    rset.getString("OR_DELIVERY"),
						    rset.getString("OR_STATUS"),
						    rset.getString("OR_REQUEST"),
						    rset.getString("OR_HD_DATE"),
						    rset.getInt("COU_MEM_NO_OR")

						  	 
							 );
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return or;
	}
	
		
	

}
