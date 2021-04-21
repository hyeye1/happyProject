package com.kh.member.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;

import com.kh.member.model.dao.MemberDao;
import com.kh.member.model.vo.Member;

public class MemberService {
	

	public Member loginMember(String memId, String memPwd) {
		
		Connection conn = getConnection();
		
		Member loginMember = new MemberDao().loginMember(conn, memId, memPwd);
		
		close(conn);
		
		return loginMember;
	}
	
	/**
	 * 회원가입용
	 * @param m 회원가입폼에 사용자가 입력한 값
	 * @return 처리된 행 수 
	 */
	public int insertMember(Member m) {
		
		Connection conn = getConnection();
		int result = new MemberDao().insertMember(conn, m);
		
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
	
	
}










