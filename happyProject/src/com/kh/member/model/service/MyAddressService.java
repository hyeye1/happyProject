package com.kh.member.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;

import com.kh.member.model.dao.MemberDao;
import com.kh.member.model.dao.MyAddressDao;
import com.kh.member.model.vo.Member;
import com.kh.member.model.vo.MyAddress;

public class MyAddressService {

	//select
	public MyAddress selectMyAddress(int memNo, String memName, String memAddress) {
		
		Connection conn = getConnection();
		
		MyAddress selectMyAddress = new MyAddressDao().selectMyAddress(conn, memNo, memName,memAddress);
		
		close(conn);
		
		return selectMyAddress;
	}
	
	//Insert
	public Member updateMyAddress(MyAddress a) {
		
		Connection conn = getConnection();
		int result = new MyAddressDao().insertMyAddress(conn, a);
		
		Member insertAdd = null;
		if(result > 0) { // update 성공 했을 경우 => 갱신된 회원 객체 다시 조회해야됨
			commit(conn);
			
			insertAdd = new MyAddressDao().insertMyAddress(conn, a.getAdPost(), a.getAdRoad(), a.getAdDetail());
			
		}else { // update 실패 했을 경우
			rollback(conn);
		}
		
		close(conn);
		
		return insertAdd;
	}

	public MyAddress insertMyAddress1(int adNo, String adPost, String adRoad, String adDetail) {
		// TODO Auto-generated method stub
		return null;
	}

	public MyAddress insertMyAddress(int adNo, String adPost, String adRoad, String adDetail) {
		// TODO Auto-generated method stub
		return null;
	}

	
	
}
