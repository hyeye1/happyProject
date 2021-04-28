package com.kh.notice.model.dao;

import static com.kh.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.common.model.vo.PageInfo;
import com.kh.notice.model.vo.Notice;
import com.kh.notice.model.vo.Question;

public class QuestionDao {
private Properties prop = new Properties();
	
	public QuestionDao() {
		
		String fileName = QuestionDao.class.getResource("/sql/notice/question-mapper.xml").getPath();
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
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
	
	
	public ArrayList<Question> selectQuestionList(Connection conn, PageInfo pi){
		
		ArrayList<Question> list = new ArrayList<>();
		PreparedStatement pstmt =null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectQuestionList"); 
		
		try {
			pstmt = conn.prepareStatement(sql); // 
			
			
			pstmt.setInt(1, (pi.getCurrentPage()-1) * pi.getBoardLimit() +1);
			pstmt.setInt(2, pi.getCurrentPage() * pi.getBoardLimit());
			
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
	
				
				list.add(new Question(rset.getDate("Q_DATE"),
									rset.getString("Q_TITLE"),
									rset.getString("Q_FIELD"),
									rset.getString("Q_ANSWER_YN"),
									rset.getInt("OR_NO_FK")));
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
