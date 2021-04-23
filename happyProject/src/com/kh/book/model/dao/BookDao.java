package com.kh.book.model.dao;

import static com.kh.common.JDBCTemplate.*;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Array;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import com.kh.book.model.vo.Book;
import com.kh.book.model.vo.Review;
import com.kh.notice.model.dao.NoticeDao;

public class BookDao {
	
	private Properties prop = new Properties();
	
	public BookDao() {
		
		String fileName = NoticeDao.class.getResource("/sql/book/book-mapper.xml").getPath();
		
			try {
				prop.loadFromXML(new FileInputStream(fileName));
			} catch (IOException e) {
				e.printStackTrace();
			}
		
	}
	
	public ArrayList<Book> selectBookList(Connection conn, int bookNo){
		// select문 => ResultSet객체 (여러행)
		
		ArrayList<Book> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectBookList"); 
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			//Array bookNoArray = conn.createArrayOf("integer", bookNoList.toArray());
		
			//pstmt.setArray(1, bookNoArray);
			pstmt.setInt(1, bookNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				list.add(new Book(rset.getInt("bk_no"),
								  rset.getString("bk_name"),
								  rset.getString("author"),
								  rset.getString("bk_main_img")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	public Book bookDetail(Connection conn, int bookNo) {
		
		// SELECT문 - 한 행 조회
		
		Book b = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("bookDetail");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bookNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				b = new Book(rset.getInt("bk_no"),
							 rset.getString("bk_name"),
							 rset.getString("author"),
							 rset.getString("publisher"),
							 rset.getString("bk_publish_date"),
							 rset.getString("bk_division"),
							 rset.getString("bk_genre"),
							 rset.getInt("bk_origin_price"),
							 rset.getInt("bk_price"),
							 rset.getString("bk_description"),
							 rset.getString("at_description"),
							 rset.getString("bk_content_list"),
							 rset.getString("bk_main_img"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return b;
		
	}

	
	public ArrayList<Review> selectReviewList(Connection conn, int bookNo){
		
		// select문 -> ResultSet객체 (여러행)
		
		ArrayList<Review> list = new ArrayList<>();
		// 조회된리뷰가 없으면 비어있는 list 반환됨
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql= prop.getProperty("selectReviewList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bookNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Review(rset.getInt("re_no"),
						rset.getString("re_content"),
						rset.getInt("mem_no"),
						rset.getDate("re_date")));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	

}
