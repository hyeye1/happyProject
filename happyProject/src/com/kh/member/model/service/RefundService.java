package com.kh.member.model.service;
import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;

import com.kh.member.model.dao.RefundDao;

public class RefundService {


	public Refund refundList(String memId, String memPwd) {
		
		Connection conn = getConnection();
		
		Member loginMember = new RefundDao().refundList(conn, memId, memPwd);
		
		close(conn);
		
		return loginMember;
	}
	
}
