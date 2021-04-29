package com.kh.member.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;

import com.kh.member.model.dao.MemberDao;
import com.kh.member.model.dao.MyAddressDao;
import com.kh.member.model.vo.Member;
import com.kh.member.model.vo.MyAddress;

public class MyAddressService {

	//select
	public MyAddress selectMyAddress(int adNo, String adPost, String adRoad, String adDetail) {
		
		Connection conn = getConnection();
		
		MyAddress selectMyAddress = new MyAddressDao().selectMyAddress(conn, adNo, adPost, adRoad, adDetail);
		
		close(conn);
		
		return selectMyAddress;
	}
	
	//update
	public Member updateMyAddress(MyAddress a) {
		
		Connection conn = getConnection();
		int result = new MyAddressDao().updateMyAddress(conn, a);
		
		Member updateAdd = null;
		if(result > 0) { // update 성공 했을 경우 => 갱신된 회원 객체 다시 조회해야됨
			commit(conn);
			
			updateAdd = new MyAddressDao().selectMyAddress(conn, a.getAdPost(), a.getAdRoad(), a.getAdDetail());
			
		}else { // update 실패 했을 경우
			rollback(conn);
		}
		
		close(conn);
		
		return updateAdd;
	}
	
	
	
}
