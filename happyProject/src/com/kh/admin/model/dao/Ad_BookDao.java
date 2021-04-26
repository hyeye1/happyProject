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
import com.kh.admin.model.vo.Ad_Image;
import com.kh.common.model.vo.PageInfo;

import static com.kh.common.JDBCTemplate.*;

public class Ad_BookDao {
	
private Properties prop = new Properties();
	
	public Ad_BookDao() {

		String fileName = Ad_BookDao.class.getResource("/sql/ad_book/ad_book-mapper.xml").getPath(); 
		
		try {
			prop.loadFromXML(new FileInputStream(fileName)); 
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
	
	public int selectListCount(Connection conn, String searchType,String search) {
		// 총게시글 수
		int listCount = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectListCount");
		
		if(searchType != null && search != null){
			
			if(searchType.equals("bk_name")){

				sql += "AND bk_name LIKE '%'||?||'%'";
			}else if(searchType.equals("author")){
				
				sql += "AND author LIKE '%'||?||'%'";
			}else if(searchType.equals("publisher")){
				
				sql += "AND publisher LIKE '%'||?||'%'";
			}
			
		}
		
		
		try {
			pstmt = conn.prepareStatement(sql);

			if(searchType != null && search != null){
				
				pstmt.setString(1, search);
			}
			
			
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
	
	public ArrayList<Ad_Book> selectList(Connection conn, PageInfo pi,String searchType,String search){
		
		ArrayList<Ad_Book> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = "";// prop.getProperty("selectList");
		
		
		sql+= "SELECT *";
		sql+= " FROM (";
		sql+= "       SELECT";
		sql+= "              ROWNUM RNUM";
		sql+= "            , A.*";
		sql+= "         FROM (";
		sql+= "               SELECT";
        sql+= "                    BK_NO";
        sql+= "                  , BK_NAME";
        sql+= "                  , AUTHOR";
        sql+= "                  , PUBLISHER";
        sql+= "                  , BK_DIVISION";
        sql+= "                  , BK_GENRE";
        sql+= "                  , BK_ORIGIN_PRICE";
        sql+= "                  , BK_PRICE";
        sql+= "                  , BK_STOCK";
        sql+= "               FROM TB_BOOK ";
        sql+= "              WHERE BK_STATUS = 'Y'"; 
        if(searchType != null && search != null){
	        if(searchType.equals("bk_name")){
	
				sql += "AND bk_name LIKE '%'||?||'%'";
			}else if(searchType.equals("author")){
				
				sql += "AND author LIKE '%'||?||'%'";
			}else if(searchType.equals("publisher")){
				
				sql += "AND publisher LIKE '%'||?||'%'";
			}
        }
		sql+= "              ORDER";
        sql+= "                 BY BK_NO DESC";
		sql+= "              ) A";
		sql+= "      )";
		sql+= "WHERE RNUM BETWEEN ? AND ?";
				 
				 

		try {
			pstmt = conn.prepareStatement(sql);
			
			
			if(searchType != null && search != null){
				
				pstmt.setString(1, search);
				pstmt.setInt(2, (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1);
				pstmt.setInt(3, pi.getCurrentPage() * pi.getBoardLimit());
				
			}else{
				
				pstmt.setInt(1, (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1);
				pstmt.setInt(2, pi.getCurrentPage() * pi.getBoardLimit());
			}
			
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
	public Ad_Book selectBook(Connection conn, int bkNo) {
		// select문 => ResultSet객체(한행) 
		Ad_Book b = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectBook");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,  bkNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				b = new Ad_Book(rset.getDate("bk_enroll_date"),
						rset.getInt("bk_no"),
						rset.getString("bk_name"),
						rset.getString("isbn"),
						rset.getString("bk_publish_date"),
						rset.getInt("bk_page_no"),
						rset.getString("bk_keyword"),
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
	
	
	public Ad_Image selectImage(Connection conn, int bkNo) {
		// select문 => ResultSet객체 (한 행) 
		
		Ad_Image im = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectImage");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bkNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				im = new Ad_Image();
				im.setImgNo(rset.getInt("img_no"));
				im.setBkNoImg(rset.getInt("bk_no_img"));
				im.setImgPath(rset.getString("img_path"));
				im.setImgEnrollDate(rset.getDate("img_enroll_date"));
				
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return im;
		
	}
	
	public int deleteBook(Connection conn, int bkNo) {
		// update문 
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("deleteBook");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bkNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
		
	}



	public int insertBookAdmin(Connection conn, Ad_Book b) {
		int result = 1;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertBookAdmin");
		
		try {
			
			pstmt = conn.prepareStatement(sql); // 미완성된 sql문
			pstmt.setInt(1, b.getBkPrice());
			pstmt.setInt(2, b.getBkNo());
			pstmt.setInt(3, b.getBkPageNo());
			pstmt.setInt(4, b.getBkStock());
			pstmt.setInt(5, b.getBkOriginPrice());
			pstmt.setString(6, b.getAuthor());
			pstmt.setString(7, b.getBkName());
			pstmt.setString(8, b.getBkMainImg());
			pstmt.setString(9, b.getBkPublishDate());
			pstmt.setString(10, b.getBkGenre());
			pstmt.setString(11, b.getBkDivision());
			pstmt.setString(12, b.getIsbn());
			pstmt.setString(13, b.getPublisher());
			pstmt.setString(14, b.getAtDescription());
			pstmt.setString(15, b.getBkDescription());
			pstmt.setString(16, b.getBookContent());
			pstmt.setString(17, b.getBkKeyword());
			
			result = pstmt.executeUpdate();
			
			
		}catch (SQLException e) {
			e.printStackTrace();
			result = 0;
		} finally {
			close(pstmt);
		}
		return result;
	}



	public int selectSeqBook(Connection conn) {
		// 총게시글 수
		int listCount = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectSeqBook");
		
		
		try {
			pstmt = conn.prepareStatement(sql);

			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				listCount = rset.getInt("seq");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return listCount; // 총 게시글 개수
	}



	public int insertImageAdmin(Connection conn, Ad_Image image) {
		int result = 1;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertImageAdmin");
		
		try {
			
			pstmt = conn.prepareStatement(sql); // 미완성된 sql문
			pstmt.setInt(1, image.getBkNoImg());
			pstmt.setString(2, image.getImgPath());
			result = pstmt.executeUpdate();
			
			
		}catch (SQLException e) {
			e.printStackTrace();
			result = 0;
		} finally {
			close(pstmt);
		}
		return result;
	}

	
}