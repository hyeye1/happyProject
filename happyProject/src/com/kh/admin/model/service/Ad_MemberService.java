package com.kh.admin.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;

import com.kh.admin.model.dao.Ad_MemberDao;

public class Ad_MemberService {
	
	public int selectListCount() {
		Connection conn = getConnection();
		int listCount = new Ad_MemberDao().selectListCount(conn);
		
		close(conn);
		
		return listCount;
	}

}
