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
	
	/**
	 * 2. 도서등록 서비스
	 * @param b		도서등록폼에 사용자가 입력한 값들이 담겨있는 book객체
	 * @return		처리된 행 수
	 */
	public int insertBook(Ad_Book b) {
		Connection conn = getConnection();
		int result = new Ad_BookDao().insertBook(conn, b);
		
		if(result >0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		return result;
	}
}
