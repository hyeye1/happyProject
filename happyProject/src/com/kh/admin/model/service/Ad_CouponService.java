package com.kh.admin.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.admin.model.dao.Ad_CouponDao;
import com.kh.admin.model.vo.Ad_Coupon;

public class Ad_CouponService {
	
	public ArrayList<Ad_Coupon> selectCouponList(){
		
		Connection conn = getConnection();
		ArrayList<Ad_Coupon> list= new Ad_CouponDao().selectCouponList(conn);
		
		close(conn);
		
		return list;
	}
	
	public int deleteCoupon(int couNo) {
		Connection conn = getConnection();
		int result = new Ad_CouponDao().deleteCoupon(conn, couNo);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	


}
