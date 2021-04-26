package com.kh.member.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.member.model.dao.CouponDao;
import com.kh.member.model.vo.Coupon;

public class CouponService {

	public ArrayList<Coupon> selectCouponList(){
		Connection conn = getConnection();
		
		ArrayList<Coupon> list = new CouponDao().selectCouponList(conn);
		
		close(conn);
		
		return list;
		
	}
	
		public ArrayList<Coupon> selectCouponEnd(){
			Connection conn = getConnection();
			
			ArrayList<Coupon> list1 = new CouponDao().selectCouponEnd(conn);
			
			close(conn);
			
			return list1;
			
		}
	
	
	
	
}
