package com.kh.member.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

public class RefundDao {

	private Properties prop = new Properties();
	
	public RefundDao() {
		String fileName = MemberDao.class.getResource("/sql/member/refund-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
	
	
	
	
	
}
