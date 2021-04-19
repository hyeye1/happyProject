package com.kh.member.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;

import com.kh.member.model.dao.MemberDao;
import com.kh.member.model.vo.Member;

public class MemberService {
	

	public Member loginMember(String userId, String userPwd) {
		
		Connection conn = getConnection();
		
		Member loginMember = new MemberDao().loginMember(conn, userId, userPwd);
		
		close(conn);
		
		return loginMember;
	}
	
	
}










