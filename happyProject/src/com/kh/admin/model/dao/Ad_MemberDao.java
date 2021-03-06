package com.kh.admin.model.dao;

import static com.kh.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import com.kh.admin.model.vo.Ad_Member;
import com.kh.common.model.vo.PageInfo;

public class Ad_MemberDao {
	private Properties prop = new Properties();
	public Ad_MemberDao() {
		
		String fileName = Ad_MemberDao.class.getResource("/sql/ad_member/ad_member_mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(fileName)); // 물리적 경
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public int selectListCount(Connection conn, String searchType,String search) {
		// select문 => ResultSet객체 (총게시글갯수 == 정수)
		int listCount = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectListCount");
		
		if(searchType != null && search != null  ) {
			
			if(searchType.equals("") == false  && search.equals("") == false) {
			
				if(searchType.equals("mem_id")){
	
					sql += "AND mem_id LIKE '%'||?||'%'";
				}else if(searchType.equals("mem_name")){
					
					sql += "AND mem_name LIKE '%'||?||'%'";
				}else if(searchType.equals("mem_phone")){
					
					sql += "AND mem_phone LIKE '%'||?||'%'";
				}
			
			}
			
		}

		try {
			pstmt = conn.prepareStatement(sql);
			if(searchType != null && search != null  ) {
				
				if(searchType.equals("") == false  && search.equals("") == false) {
				
					pstmt.setString(1, search);
				
				}
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
		
		return listCount; // 총 게시글 반환 
		
		
	}

	public ArrayList<Ad_Member> selectList(Connection conn, PageInfo pi,String searchType,String search) {

		PreparedStatement pstmt = null;
		ArrayList<Ad_Member> list = new ArrayList<>();
		ResultSet rset = null;
		
		//String sql = prop.getProperty("selectList"); 
		String sql = "";
		sql +="SELECT *";
		sql +="  FROM (";
		sql +="        SELECT";
		sql +="               ROWNUM RNUM";
		sql +="             , A.*";
		sql +="          FROM (";
		sql +="                SELECT ";
		sql +="		            MEM_NO";
		sql +="		          , MEM_ID";
		sql +="		          , MEM_PWD";
		sql +="		          , MEM_NAME";
		sql +="		          , MEM_ADDRESS";
		sql +="		          , MEM_PHONE";
		sql +="		          , EMAIL";
		sql +="		          , EMAIL_YN";
		sql +="		          , ENROLL_ROUTE";
		sql +="		          , ENROLL_DATE";
		sql +="		          , RECENT_LOGIN";
		sql +="		          , ADMIN_YN";
		sql +="		          ,(SELECT COUNT(*) FROM TB_MEM_COUPON C WHERE C.COU_YN = 'N' AND C.MEM_NO_COU = MEM_NO) AS \"couCnt\"";
		sql +="				  ,(SELECT COUNT(*) FROM TB_ORDER O WHERE O.MEM_NO_OR = MEM_NO ) AS \"orderCnt\"";
		sql +="				  ,NVL((SELECT SUM(OR_SUM) FROM TB_ORDER O WHERE O.MEM_NO_OR = MEM_NO ),'0') AS \"orderTotalAmt\"";
		sql +="			  FROM TB_MEMBER";
	    sql+= "              WHERE 1 = 1";
	    sql+= "              AND MEM_STATUS = 'Y'";
		 if(searchType != null && search != null  ) {
				
				if(searchType.equals("") == false  && search.equals("") == false) {
					
					if(searchType.equals("mem_id")){
						
						sql += "AND mem_id LIKE '%'||?||'%'";
					}else if(searchType.equals("mem_name")){
						
						sql += "AND mem_name LIKE '%'||?||'%'";
					}else if(searchType.equals("mem_phone")){
						
						sql += "AND mem_phone LIKE '%'||?||'%'";
					}
			        
				}
	        }
		sql +="               ORDER";
        sql +="                  BY MEM_NO DESC";
		sql +="               ) A";
		sql +="       )";
		sql +=" WHERE RNUM BETWEEN ? AND ?";
		try {
			pstmt = conn.prepareStatement(sql);
			
			if(searchType != null && search != null  ) {
				
				if(searchType.equals("") == false  && search.equals("") == false) {
					
					pstmt.setString(1, search);
					pstmt.setInt(2, (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1);
					pstmt.setInt(3, pi.getCurrentPage() * pi.getBoardLimit());
					
				}else{
					
					pstmt.setInt(1, (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1);
					pstmt.setInt(2, pi.getCurrentPage() * pi.getBoardLimit());
				}
			}else{
				
				pstmt.setInt(1, (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1);
				pstmt.setInt(2, pi.getCurrentPage() * pi.getBoardLimit());
			}
			
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
						   rset.getString("admin_yn"),
						   rset.getString("orderCnt"),
						   rset.getString("orderTotalAmt"),
						   rset.getString("couCnt")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	
	public Ad_Member selectMember(Connection conn, int memNo) {
		Ad_Member adMember = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memNo);
			rset = pstmt.executeQuery();
			
			
			while(rset.next()) {
				adMember = new Ad_Member();
				adMember.setMemNo(rset.getInt("MEM_NO"));
				adMember.setMemId(rset.getString("MEM_ID"));
				adMember.setMemName(rset.getString("MEM_NAME"));
				adMember.setMemAddress(rset.getString("MEM_ADDRESS"));
				adMember.setEnrollDate(rset.getDate("ENROLL_DATE"));
				adMember.setRecentLogin(rset.getDate("RECENT_LOGIN"));
				adMember.setEnrollRoute(rset.getString("ENROLL_ROUTE"));
				adMember.setEmailYn(rset.getString("EMAIL_YN"));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return adMember;
	}

	public List<Integer> selectAllMemNo(Connection conn) {
		List<Integer> memNoList = new ArrayList();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectAllMemNo");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				memNoList.add(rset.getInt("MEM_NO"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		
		return memNoList;
	}

	public void deleteMem(Connection conn, String[] memNoList) {
		PreparedStatement pstmt = null;
		
		String sql = "UPDATE TB_MEMBER SET MEM_STATUS = 'N' WHERE MEM_NO IN (";
		
		String where = "";			
		for (int i = 0 ; i < memNoList.length ; i++) {
			where+=memNoList[i];
			if((memNoList.length-1)!=i) {
				where+=",";
			}
		}
		
		sql+=where;
		sql+=")";
		
		try {
			pstmt = conn.prepareStatement(sql);
			int cnt = pstmt.executeUpdate();
			
		
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
	}
	
	

}
