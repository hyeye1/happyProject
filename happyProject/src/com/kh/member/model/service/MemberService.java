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
	
	public int idCheck(String checkId) {
		Connection conn = getConnection();
		int count = new MemberDao().idCheck(conn, checkId);
		
		close(conn);
		return count;
		
	}
	
	public int deleteMember(String memId, String memPwd) {
		Connection conn = getConnection();
		
		int result = new MemberDao().deleteMember(conn, memId, memPwd);
		
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
		
	
	public Member updateMember(Member m) {
		
		Connection conn = getConnection();
		int result = new MemberDao().updateMember(conn, m);
		
		Member updateMem = null;
		if(result > 0) { // update 성공 했을 경우 => 갱신된 회원 객체 다시 조회해야됨
			commit(conn);
			
			updateMem = new MemberDao().selectMember(conn, m.getMemId());
			
		}else { // update 실패 했을 경우
			rollback(conn);
		}
		
		close(conn);
		
		return updateMem;
	}
	
	public Member updatePwdMember(String memId, String memPwd, String updatePwd) {
		
		Connection conn = getConnection();
		int result = new MemberDao().updatePwdMember(conn, memId, memPwd, updatePwd);
		
			Member updateMem = null;
			if(result > 0) { // 성공 => 갱신된 회원객체 다시 조회
				commit(conn);
				updateMem = new MemberDao().selectMember(conn, memId);
			}else {
				rollback(conn);
			}
			
			close(conn);
			
			return updateMem;
			
	}
	
	public Member findIdMember(String memName, String email) {
		
		Connection conn = getConnection();
		
		Member findId = new MemberDao().findIdMember(conn, memName, email);
		
		close(conn);
		
		return findId;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}










