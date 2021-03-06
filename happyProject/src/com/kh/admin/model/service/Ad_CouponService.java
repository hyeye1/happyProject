package com.kh.admin.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import com.kh.admin.model.dao.Ad_CouponDao;
import com.kh.admin.model.dao.Ad_MemberDao;
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
	
	public int insertCoupon(Ad_Coupon c) {
		Connection conn = getConnection();
		int result = new Ad_CouponDao().insertCoupon(conn, c);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		return result;
	}

	public int insertCouponAllMember(int couNo) {
		Connection conn = getConnection();
		
		List<Integer> memNoList = new Ad_MemberDao().selectAllMemNo(conn);
		
		int count = new Ad_CouponDao().insertCouponAllMember(conn, couNo, memNoList);
		
		close(conn);
		
		return count;
	}

	public List<Ad_Coupon> selectMemCouponList(int memNo) {
		Connection conn = getConnection();
		List<Ad_Coupon> adCouponList = new Ad_CouponDao().selectMemCouponList(conn, memNo);
		
		close(conn);
		
		return adCouponList;
	}

	public void deleteChk(String[] couNoList) {
		Connection conn = getConnection();
		new Ad_CouponDao().deleteChk(conn, couNoList);
		
		close(conn);		
	}
	
	
	public List<Ad_Coupon> selectEndCouList() {
		
		Connection conn = getConnection();
		ArrayList<Ad_Coupon> list= new Ad_CouponDao().selectEndCouList(conn);
		
		close(conn);
		
		return list;
	}
	


}
