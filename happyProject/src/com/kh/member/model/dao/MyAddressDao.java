package com.kh.member.model.dao;

import static com.kh.common.JDBCTemplate.*;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.member.model.vo.MyAddress;
import com.kh.member.model.dao.MyAddressDao;

public class MyAddressDao {

	private Properties prop = new Properties();
	
public MyAddressDao() {
		
		String fileName =MyAddressDao.class.getResource("/sql/member/MyAddress-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	
	}

	public ArrayList<MyAddress> selectMyAddress(Connection conn) {
			// select문 => ResultSet객체(여러행)
			ArrayList<MyAddress> list = new ArrayList<>();
			PreparedStatement pstmt = null;
			ResultSet rset = null;
			
			String sql = prop.getProperty("selectMyAddress");
			
			try {
				pstmt = conn.prepareStatement(sql);
				rset = pstmt.executeQuery();
				
				while(rset.next()) {
					
					list.add(new MyAddress( rset.getInt("ad_no"),
											rset.getString("ad_post"),
											rset.getString("ad_road"),
											rset.getString("ad_detail")));
					
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
