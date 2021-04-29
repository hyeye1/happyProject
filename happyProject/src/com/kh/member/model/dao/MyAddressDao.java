package com.kh.member.model.dao;

import static com.kh.common.JDBCTemplate.*;

import java.util.Properties;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.kh.member.model.vo.Member;
import com.kh.member.model.vo.MyAddress;
import com.kh.member.model.dao.MyAddressDao;

public class MyAddressDao {
	
	private static final String adLocation = null;
	private Properties prop = new Properties();

	public MyAddressDao() { //실시간으로 파일로딩해오는것 
		
		String fileName = MyAddressDao.class.getResource("/sql/member/MyAdddress-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}	
	}	
		
	
	/*MyAddress객체에 담아서 반환해줄 메소드*/
	public MyAddress selectMyAddress(Connection conn, int adNo, String adPost, String adRoad, String adDetail){
	    
	     
		MyAddress a =null;	
		PreparedStatement pstmt = null;
		ResultSet rset = null;  //이유=> 바로 객체에 안담긴다. 일단 rset으로 받아준다!
	
		//내가 실행할sql문 적어주기!
		String sql = prop.getProperty("selectMyAddress"); // =>미완성된sql문, 실행불가! -> sql이라는 변수에 담기게되는 과정.!
		
		//sql실행하기 위해서 + 예외처리도 하기!
		try{
		           pstmt = conn.prepareStatement(sql);// 미완성된sql문을 담음
		           pstmt. setInt (1,adNo);  // 사용자가 입력했던 값
		           pstmt. setString(2, adPost); 
		           pstmt. setString(3, adRoad);
		           pstmt. setString(4, adDetail);
		       
		           
		           
			//이제, select문 실행되어진다!
			//실행
			rset = pstmt.executeQuery();
	
			//만약 조회된게 있다면 저 객체를 실행한다! -> 처음에 초기화했던 a	
			if(rset.next()){
			    a = new MyAddress(  	
			    		rset.getInt("ad_no"),
					    rset.getInt("mem_no_ad"),
						rset.getString("ad_location"),
						rset.getString("ad_name"),
						rset.getString("ad_phone"),
						rset.getString("ad_post"),
						rset.getString("ad_road"),
						rset.getString("ad_detail"));			
			

			}		

		} catch(SQLException e) {
		    e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);  
		}
		return a;


	}	
	
	
	
	//update
	public int updateMyAddress(Connection conn, MyAddress a) {
		// Update문 => 처리된 행수
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("updateMyAddress");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, a.getAdName());
			pstmt.setString(2, a.getAdLocation());
			pstmt.setString(3, a.getAdPost());
			pstmt.setString(4, a.getAdRoad());
			pstmt.setString(5, a.getAdDetail());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			
			close(pstmt);
		}
		
		return result;
	}


	public Member selectMyAddress(Connection conn, String adPost, String adRoad, String adDetail) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
	
		
	
}
