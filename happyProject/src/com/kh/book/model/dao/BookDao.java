package com.kh.book.model.dao;

import static com.kh.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.book.model.vo.Book;
import com.kh.book.model.vo.Image;
import com.kh.member.model.vo.Member;


public class BookDao {
	
	private Properties prop = new Properties();
	
	public BookDao() {
		
		String fileName = BookDao.class.getResource("/sql/book/book-mapper.xml").getPath();
		
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
	
	public Image bookInfoImg(Connection conn, int bookNo) {
		
		Image i = null;	// 상세이미지가 없을 수 있으니 null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("bookInfoImg");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bookNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				i = new Image(rset.getInt("img_no"),
							  rset.getInt("bk_no_img"),
							  rset.getString("img_path"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return i;
	}
	
	public Member loginMem(Connection conn, int memNo) {
		
		Member m = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("loginMem");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memNo);
			
			rset = pstmt.executeQuery();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return m;
		
	}
	
	public ArrayList<Book> bestBookList(Connection conn) {
		// select문 => ResultSet객체 (한행) => book객체
		ArrayList<Book> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("bestBookList"); // 미완성된 sql문
		
		try {
			pstmt = conn.prepareStatement(sql); // 미완성된sql문 담음
			// 실행
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				list.add(new Book(rset.getInt("bk_no"),
					      rset.getString("bk_name"),
					      rset.getString("author"),
					      rset.getString("bk_division"),
					      rset.getString("bk_genre"),
					      rset.getInt("bk_price"),
					      rset.getDate("bk_enroll_date"),
					      rset.getString("bk_main_img"),
					      rset.getInt("bk_hits")));
							 
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}
	
	public ArrayList<Book> newBookList(Connection conn) {
		// select문 => ResultSet객체 (한행) => book객체
		ArrayList<Book> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("newBookList"); // 미완성된 sql문
		
		try {
			pstmt = conn.prepareStatement(sql); // 미완성된sql문 담음
			// 실행
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				list.add(new Book(rset.getInt("bk_no"),
							      rset.getString("bk_name"),
							      rset.getString("author"),
							      rset.getString("bk_division"),
							      rset.getString("bk_genre"),
							      rset.getInt("bk_price"),
							      rset.getDate("bk_enroll_date"),
							      rset.getString("bk_main_img"),
							      rset.getInt("bk_hits")));
							 
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}
	
	public ArrayList<Book> bestKrBookList(Connection conn) {
		// select문 => ResultSet객체 (한행) => book객체
		ArrayList<Book> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("bestKrBookList"); // 미완성된 sql문
		
		try {
			pstmt = conn.prepareStatement(sql); // 미완성된sql문 담음
			// 실행
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				list.add(new Book(rset.getInt("bk_no"),
							      rset.getString("bk_name"),
							      rset.getString("author"),
							      rset.getString("bk_division"),
							      rset.getString("bk_genre"),
							      rset.getInt("bk_price"),
							      rset.getDate("bk_enroll_date"),
							      rset.getString("bk_main_img"),
							      rset.getInt("bk_hits")));
							 
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}

	public ArrayList<Book> newKrBookList(Connection conn) {
		// select문 => ResultSet객체 (한행) => book객체
		ArrayList<Book> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("newKrBookList"); // 미완성된 sql문
		
		try {
			pstmt = conn.prepareStatement(sql); // 미완성된sql문 담음
			// 실행
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				list.add(new Book(rset.getInt("bk_no"),
							      rset.getString("bk_name"),
							      rset.getString("author"),
							      rset.getString("bk_division"),
							      rset.getString("bk_genre"),
							      rset.getInt("bk_price"),
							      rset.getDate("bk_enroll_date"),
							      rset.getString("bk_main_img"),
							      rset.getInt("bk_hits")));
							 
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}
	
	
	public ArrayList<Book> bestFoBookList(Connection conn) {
		// select문 => ResultSet객체 (한행) => book객체
		ArrayList<Book> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("bestFoBookList"); // 미완성된 sql문
		
		try {
			pstmt = conn.prepareStatement(sql); // 미완성된sql문 담음
			// 실행
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				list.add(new Book(rset.getInt("bk_no"),
							      rset.getString("bk_name"),
							      rset.getString("author"),
							      rset.getString("bk_division"),
							      rset.getString("bk_genre"),
							      rset.getInt("bk_price"),
							      rset.getDate("bk_enroll_date"),
							      rset.getString("bk_main_img"),
							      rset.getInt("bk_hits")));
							 
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}
	
	public ArrayList<Book> newFoBookList(Connection conn) {
		// select문 => ResultSet객체 (한행) => book객체
		ArrayList<Book> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("newFoBookList"); // 미완성된 sql문
		
		try {
			pstmt = conn.prepareStatement(sql); // 미완성된sql문 담음
			// 실행
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				list.add(new Book(rset.getInt("bk_no"),
							      rset.getString("bk_name"),
							      rset.getString("author"),
							      rset.getString("bk_division"),
							      rset.getString("bk_genre"),
							      rset.getInt("bk_price"),
							      rset.getDate("bk_enroll_date"),
							      rset.getString("bk_main_img"),
							      rset.getInt("bk_hits")));
							 
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}
	
	public ArrayList<Book> hashSearchList(Connection conn, String hashkey) {
		// select문 => ResultSet객체 (한행) => book객체
		ArrayList<Book> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("hashSearchList"); // 미완성된 sql문
		
		try {
			pstmt = conn.prepareStatement(sql); // 미완성된sql문 담음
			// 실행
			pstmt.setString(1, hashkey);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				list.add(new Book(rset.getInt("bk_no"),
							      rset.getString("bk_name"),
							      rset.getString("author"),
							      rset.getString("bk_division"),
							      rset.getString("bk_genre"),
							      rset.getInt("bk_price"),
							      rset.getDate("bk_enroll_date"),
							      rset.getString("bk_main_img"),
							      rset.getInt("bk_hits")));
							 
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}

	public ArrayList<Book> searchBookList(Connection conn, String hashkey) {
		// select문 => ResultSet객체 (한행) => book객체
		ArrayList<Book> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("searchBookList"); // 미완성된 sql문
		
		try {
			pstmt = conn.prepareStatement(sql); // 미완성된sql문 담음
			// 실행
			pstmt.setString(1, hashkey);
			pstmt.setString(2, hashkey);
			pstmt.setString(3, hashkey);
			pstmt.setString(4, hashkey);
			pstmt.setString(5, hashkey);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				list.add(new Book(rset.getInt("bk_no"),
							      rset.getString("bk_name"),
							      rset.getString("author"),
							      rset.getString("bk_division"),
							      rset.getString("bk_genre"),
							      rset.getInt("bk_price"),
							      rset.getDate("bk_enroll_date"),
							      rset.getString("bk_main_img"),
							      rset.getInt("bk_hits")));
							 
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
