package com.kh.common;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public class JDBCTemplate {
	
	// Connection 객체 생성(DB접속) 한 후 해당 Connection객체를 반환해주는 getConnection메소드
	public static Connection getConnection() {
		
		Properties prop = new Properties();
		
		// 읽어들이고자 하는 driver.properties 파일의 물리적인 경로
		String fileName = JDBCTemplate.class.getResource("/sql/driver/driver.properties").getPath();
		// "C:\\webserver-workspace2\jspProject\webContent\WEB-INF\sql\driver\driver.properties"
		
		try {
			prop.load(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
		Connection conn = null;
		
		try {
			// 1) jdbc driver등록
			Class.forName(prop.getProperty("driver"));
			// 2) Connection 생셩(DB와 접속)
			conn = DriverManager.getConnection(prop.getProperty("url"),
											   prop.getProperty("username"),
											   prop.getProperty("password"));
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	
	
	
	// 전달받은 JDBC 용 객체 반납 해주는 메소드
	public static void close(Connection conn) {
		
		try {
			if(conn != null && !conn.isClosed()) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void close(Statement stmt) {
		try {
			if(stmt != null && !stmt.isClosed()) {
				stmt.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void close(ResultSet rset) {
		try {
			if(rset != null && !rset.isClosed()) {
				rset.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	
	
	// 전달받은 Connection을 가지고 트랜잭션 처리 메소드
	
	public static void commit(Connection conn) {
		try {
			if(conn != null && !conn.isClosed()) {
				conn.commit();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void rollback(Connection conn) {
		try {
			if(conn != null && !conn.isClosed()) {
				conn.rollback();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
