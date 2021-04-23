package com.kh.notice.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.common.model.vo.PageInfo;
import com.kh.notice.model.vo.Faq;
import com.kh.notice.model.vo.Notice;

import static com.kh.common.JDBCTemplate.*;


public class FaqDao {

	private Properties prop = new Properties();
	
	public FaqDao() {
		
		String fileName = FaqDao.class.getResource("/sql/notice/faq-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<Faq> selectFaqList(Connection conn){
		// select문 => ResultSet객체(여러행)
		ArrayList<Faq> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectFaqList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				list.add(new Faq(rset.getInt("fa_no"),
								 rset.getString("fa_title"),
								 rset.getInt("count")));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			
			close(rset);
			close(pstmt);
		}
		
		return list;
		
	}
	
	
	public int insertFaq(Connection conn, Faq f) {
		// insert문 => 처리된 행수
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertFaq");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, f.getFaTitle());
			pstmt.setString(2, f.getFaContent());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
		
	}
	
	
	public int increaseCount(Connection conn, int faNo) {
		
		// update문 => 처리된 행수
			int result = 0;
			PreparedStatement pstmt = null;
				
			String sql = prop.getProperty("increaseCount");
			
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, faNo);
				
				result = pstmt.executeUpdate();
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				
				close(pstmt);
			}
				return result;
	}
	
	
	public Faq selectFaq(Connection conn, int faNo) {
		// select문 => ResultSet객체(한행)
		Faq f = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectFaq");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, faNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				f = new Faq(rset.getInt("fa_no"),
							rset.getString("fa_title"),
							rset.getString("fa_content"),
							rset.getDate("fa_date"),
							rset.getString("mem_id"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			
			close(rset);
			close(pstmt);
		}
		
			return f;
	}
	
	

	public int updateFaq(Connection conn, Faq f) {
		// update문 => 처리된 행수
			int result = 0;
			PreparedStatement pstmt = null;
						
			String sql = prop.getProperty("updateFaq");
					
			try {
				pstmt = conn.prepareStatement(sql); // 미완성
				pstmt.setString(1, f.getFaTitle());
				pstmt.setString(2, f.getFaContent());
				pstmt.setInt(3, f.getFaNo());
						
				result = pstmt.executeUpdate();
						
				} catch (SQLException e) {
					e.printStackTrace();
				} finally {
					
					close(pstmt);
				}
					return result;
			}
	
	
	public int deleteFaq(Connection conn, int faNo) {
		// update문 => 처리된 행수
		int result =0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteFaq");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, faNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	public int selectListCount(Connection conn) {
		// select문 => ResultSet객체(총게시글갯수 == 정수)
		int listCount =0;
		
		PreparedStatement pstmt =null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectListCount");
		try {
			pstmt=conn.prepareStatement(sql);
			rset=pstmt.executeQuery();
			
			if(rset.next()) {
				listCount = rset.getInt("LISTCOUNT");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return listCount;
	}
	
	public ArrayList<Faq> selectListPage(Connection conn, PageInfo pi){
		
		ArrayList<Faq> list = new ArrayList<>();
		PreparedStatement pstmt =null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectListPage"); 
		
		try {
			pstmt = conn.prepareStatement(sql); // 
			
			pstmt.setInt(1, (pi.getCurrentPage()-1) * pi.getBoardLimit() +1);
			pstmt.setInt(2, pi.getCurrentPage() * pi.getBoardLimit());
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				list.add(new Faq(rset.getInt("FA_NO"),
								 rset.getString("FA_TITLE"),
								 rset.getInt("COUNT")));
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
