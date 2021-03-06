package com.kh.member.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import static com.kh.common.JDBCTemplate.*;
import com.kh.member.model.vo.Member;

public class MemberDao {
	
	private Properties prop = new Properties();
	
	// 기본생성자
	public MemberDao() {
		
		String fileName = MemberDao.class.getResource("/sql/member/member-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
	public Member loginMember(Connection conn, String memId, String memPwd) {
		// select문 => ResultSet객체 (한행) => Member객체
		Member m = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("loginMember"); // 미완성된 sql문
		
		try {
			pstmt = conn.prepareStatement(sql); // 미완성된sql문 담음
			pstmt.setString(1, memId);
			pstmt.setString(2, memPwd);
			
			// 실행
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				m = new Member(rset.getInt("mem_no"),
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
							   rset.getString("admin_yn"),
							   rset.getString("mem_status"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return m;
	}
	
	public int insertMember(Connection conn, Member m) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertMember");
		
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, m.getMemId());
			pstmt.setString(2, m.getMemPwd());
			pstmt.setString(3, m.getMemName());
			pstmt.setString(4, m.getMemAddress());
			pstmt.setString(5, m.getMemPhone());
			pstmt.setString(6, m.getEmail());
			pstmt.setString(7, m.getEmailYN());
			
			result = pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
			
		
		
	}
	
	public int idCheck(Connection conn, String checkId) {
 
		int count = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("idCheck");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, checkId);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				count = rset.getInt("count");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return count;
	}
	
	public int updateMember(Connection conn, Member m) {
		// Update문 => 처리된 행수
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("updateMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, m.getMemName());
			pstmt.setString(2, m.getMemAddress());
			pstmt.setString(3, m.getMemPhone());
			pstmt.setString(4, m.getEmail());
			pstmt.setString(5, m.getMemId());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			
			close(pstmt);
		}
		
		return result;
	}
	
	
	
	public Member selectMember(Connection conn, String memId) {
		// select문 => ResultSet객체(한행)
		Member m = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memId);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				m = new Member(rset.getInt("mem_no"),
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
							   rset.getString("admin_yn"),
							   rset.getString("mem_status"));
		}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return m;
	}
	
	
	public int deleteMember(Connection conn, String memId, String memPwd) {
		// update문 => 처리된 행수
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("deleteMember");
		
		try {
			pstmt = conn.prepareStatement(sql); // 미완성된 sql문
			pstmt.setString(1, memId);
			pstmt.setString(2, memPwd);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
				
		return result;
		
	}
		
	public int updatePwdMember(Connection conn, String memId, String memPwd, String updatePwd) {
		// update문 => 처리된 행수
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("updatePwdMember");
		
		try {
			pstmt = conn.prepareStatement(sql); // 미완성된 sql문
			pstmt.setString(1, updatePwd);
			pstmt.setString(2, memId);
			pstmt.setString(3, memPwd);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
		
	public Member findIdMember(Connection conn, String memName, String email) {
		// select문 => ResultSet객체 (한행) => Member객체
		Member m = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("findIdMember"); // 미완성된 sql문
		
		try {
			pstmt = conn.prepareStatement(sql); // 미완성된sql문 담음
			pstmt.setString(1, memName);
			pstmt.setString(2, email);
			
			// 실행
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				m = new Member(rset.getInt("mem_no"),
							   rset.getString("mem_id"),
							   rset.getString("mem_id2"),
							   rset.getString("mem_pwd2"),
							   rset.getString("mem_pwd"),
							   rset.getString("mem_name"),
							   rset.getString("email"),
							   rset.getString("mem_status"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return m;
	}
	
	public Member findPwdMember(Connection conn, String memId, String email) {
		// select문 => ResultSet객체 (한행) => Member객체
		Member m = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("findPwdMember"); // 미완성된 sql문
		
		try {
			pstmt = conn.prepareStatement(sql); // 미완성된sql문 담음
			pstmt.setString(1, memId);
			pstmt.setString(2, email);
			
			// 실행
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				m = new Member(rset.getInt("mem_no"),
							   rset.getString("mem_id"),
							   rset.getString("mem_id2"),
							   rset.getString("mem_pwd2"),
							   rset.getString("mem_pwd"),
							   rset.getString("mem_name"),
							   rset.getString("email"),
							   rset.getString("mem_status"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return m;
	}
		
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	}













