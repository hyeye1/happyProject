package com.kh.admin.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.admin.model.vo.Ad_Member;
import com.kh.book.model.vo.Book;
import com.kh.member.model.vo.Member;

import static com.kh.common.JDBCTemplate.*;

public class Ad_MemberDao {
	private Properties prop = new Properties();
	public Ad_MemberDao() {
		String fileName = Ad_MemberDao.class.getResource("sql/ad_member/ad_member-mapper.xml").getPath(); // 절대경로 담음

		try {
			prop.loadFromXML(new FileInputStream(fileName)); // 물리적 경
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public int selectListCount(Connection conn) {
		// select문 => ResultSet객체 (총게시글갯수 == 정수)
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
		
		return listCount; // 총 게시글 반환 
		
		
	}

	public ArrayList<Ad_Member> selectList(Connection conn) {

		PreparedStatement pstmt = null;
		ArrayList<Ad_Member> list = new ArrayList<>();
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectList"); 
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				list.add(new Ad_Member(rset.getInt("mem_no"),
						   rset.getString("mem_id"),
						   rset.getString("mem_pwd"),
						   rset.getString("mem_name"),
						   rset.getString("mem_address"),
						   rset.getString("mem_phone"),
						   rset.getString("email"),
						   rset.getString("email_yn"),
						   rset.getString("enroll_route"),
						   rset.getDate("enroll_date"),
						   rset.getDate("recent_login"),
						   rset.getString("admin_yn")));
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
