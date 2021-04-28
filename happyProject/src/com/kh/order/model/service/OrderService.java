package com.kh.order.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.member.model.vo.Coupon;
import com.kh.member.model.vo.Member;
import com.kh.order.model.dao.OrderDao;

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

}
