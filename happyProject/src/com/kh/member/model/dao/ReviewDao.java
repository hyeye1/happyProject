package com.kh.member.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

public class ReviewDao {

private Properties prop = new Properties();
	
	// 기본생성자
	public ReviewDao() {
		
		String fileName = ReviewDao.class.getResource("/sql/member/review-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
}
