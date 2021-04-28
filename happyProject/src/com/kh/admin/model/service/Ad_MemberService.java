package com.kh.admin.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.admin.model.dao.Ad_MemberDao;
import com.kh.admin.model.vo.Ad_Member;
import com.kh.common.model.vo.PageInfo;

public class Ad_MemberService {
	
	public int selectListCount(String searchType,String search) {
		Connection conn = getConnection();
		int listCount = new Ad_MemberDao().selectListCount(conn,searchType,search);
		
		close(conn);
		
		return listCount;
	}

	public ArrayList<Ad_Member> selectList(PageInfo pi,String searchType,String search){
		Connection conn = getConnection();
		ArrayList<Ad_Member> list = new Ad_MemberDao().selectList(conn,pi,searchType,search);
		
		close(conn);
		
		return list;
	}

}
