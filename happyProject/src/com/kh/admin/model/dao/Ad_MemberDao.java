package com.kh.admin.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import static com.kh.common.JDBCTemplate.*;

public class Ad_MemberDao {
	private Properties prop = new Properties();
	public Ad_MemberDao() {
		String fileName = Ad_MemberDao.class.getResource("sql/member/member-mapper.xml").getPath(); // 절대경로 담음
		
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

}
