package com.kh.member.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.commit;
import static com.kh.common.JDBCTemplate.getConnection;
import static com.kh.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.member.model.dao.MemberDao;
import com.kh.member.model.dao.MyAddressDao;
import com.kh.member.model.vo.Member;
import com.kh.member.model.vo.MyAddress;

public class MyAddressService {

	public ArrayList<MyAddress> selectMyAddress(){
		Connection conn = getConnection();
		
		ArrayList<MyAddress> list = new MyAddressDao().selectMyAddress(conn);
		
		close(conn);
		
		return list;
	}
	
	public Member updateMember(Member m) {
		
		Connection conn = getConnection();
		int result = new MemberDao().updateMember(conn, m);
		
		Member updateMem = null;
		if(result > 0) { // update 성공 했을 경우 => 갱신된 회원 객체 다시 조회해야됨
			commit(conn);
			
			updateMem = new MemberDao().selectMember(conn, m.getMemAddress());
			
		}else { // update 실패 했을 경우
			rollback(conn);
		}
		
		close(conn);
		
		return updateMem;
	}
	
	
}
