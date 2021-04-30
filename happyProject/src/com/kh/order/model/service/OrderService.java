package com.kh.order.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.commit;
import static com.kh.common.JDBCTemplate.getConnection;
import static com.kh.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.member.model.vo.Coupon;
import com.kh.order.model.dao.OrderDao;
import com.kh.order.model.vo.Cart;
import com.kh.order.model.vo.Order;
import com.kh.order.model.vo.Pay;

public class OrderService {
	
	public ArrayList<Coupon> selectCouponList(int userNo){
		Connection conn = getConnection();
		
		ArrayList<Coupon> cou = new OrderDao().selectCouponList(conn, userNo);
		close(conn);
		return cou;
		
	}
	
	public Coupon selectCoupon(int userNo) {
		Connection conn = getConnection();
		Coupon cp = new OrderDao().selectCoupon(conn, userNo);
		
		close(conn);
		return cp;
	}
	
	public ArrayList<Cart> selectCartList(int userNo){
		Connection conn = getConnection();
		
		ArrayList<Cart> ca = new OrderDao().selectCartList(conn, userNo);
		close(conn);
		return ca;
		
	}
	
	public int insertOrder(Order or) {
		Connection conn = getConnection();
		int result = new OrderDao().insertOrder(conn, or);
	
		
		if(result>0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		return result;
	}
	
	public int insertPay(Pay p) {
		Connection conn = getConnection();
		int result = new OrderDao().insertPay(conn, p);
	
		
		if(result>0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		return result;
	}
	
	
	
	public Order selectOrder() {
		Connection conn = getConnection();
		Order r = new OrderDao().selectOrder(conn);
		
		close(conn);
		return r;
	}

}
