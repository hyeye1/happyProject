package com.kh.admin.model.service;

import static com.kh.common.JDBCTemplate.*;


import java.sql.Connection;
import java.util.ArrayList;

import com.kh.admin.model.dao.Ad_BookDao;
import com.kh.admin.model.vo.Ad_Book;
import com.kh.common.model.vo.PageInfo;

public class Ad_BookService {
	public int selectListCount() {
		Connection conn = getConnection();
		int listCount = new Ad_BookDao().selectListCount(conn);
		
		close(conn);
		
		return listCount;
	}
	
	public ArrayList<Ad_Book> selectList(PageInfo pi){
		Connection conn = getConnection();
		ArrayList<Ad_Book> list = new Ad_BookDao().selectList(conn,pi);
		close(conn);
		return list;
	}
}
