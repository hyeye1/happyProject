package com.kh.member.model.dao;

import static com.kh.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.book.model.vo.Book;
import com.kh.member.model.vo.Member;
import com.kh.member.model.vo.Refund;

public class RefundDao {

	private Properties prop = new Properties();
	
	public RefundDao() {
		String fileName = MemberDao.class.getResource("/sql/member/refund-mapper.xml").getPath();
	
	
	
	}
	

}
