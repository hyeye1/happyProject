package com.kh.admin.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.admin.model.vo.Ad_Book;
import com.kh.common.model.vo.PageInfo;

import static com.kh.common.JDBCTemplate.*;

public class Ad_BookDao {
	
private Properties prop = new Properties();
	
	public Ad_BookDao() {
		
		String fileName = Ad_BookDao.class.getResource("/sql/book/book-mapper.xml").getPath(); 
		
		try {
			prop.loadFromXML(new FileInputStream(fileName)); 
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public int selectListCount(Connection conn) {
		// 총게시글 수
		int listCount = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectListCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				listCount = rset.getInt("LISTCOUNT");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return listCount; // 총 게시글 개수
	}
	
	public ArrayList<Ad_Book> selectList(Connection conn, PageInfo pi){
		ArrayList<Ad_Book> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1);
			pstmt.setInt(2, pi.getCurrentPage() * pi.getBoardLimit());
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Ad_Book(rset.getInt("bk_no"),
								   rset.getString("bk_name"),
								   rset.getString("author"),
								   rset.getString("publisher"),
								   rset.getString("bk_division"),
								   rset.getString("bk_genre"),
								   rset.getInt("bk_origin_price"),
								   rset.getInt("bk_price"),
								   rset.getInt("bk_stock")));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	public int insertBook(Connection conn, Ad_Book b) {
		// insert문 => 처리된행수
	
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertBook");
		
		try {
			pstmt = conn.prepareStatement(sql); // 미완성된 sql문
			pstmt.setString(1, b.getBkName());
			pstmt.setString(2, b.getAuthor());
			pstmt.setString(3, b.getAuthor());
			pstmt.setString(4, b.getPublisher());
			pstmt.setString(5, b.getBkPublishDate());
			pstmt.setString(6, b.getBkDivision());
			pstmt.setString(7, b.getBkGenre());
			pstmt.setInt(8, b.getBkOriginPrice());
			pstmt.setInt(9, b.getBkPrice());
			pstmt.setString(10, b.getIsbn());
			pstmt.setInt(11, b.getBkStock());
			pstmt.setInt(12, b.getBkPageNo());
			pstmt.setString(13, b.getBkDescription());
			pstmt.setString(14, b.getAtDescription());
			pstmt.setString(15, b.getBkContentList());
			pstmt.setInt(16, b.getBkStock());
			
			result = pstmt.executeUpdate();
			
			
		}catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
		
	}
	
}