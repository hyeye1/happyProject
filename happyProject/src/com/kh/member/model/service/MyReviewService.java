package com.kh.member.model.service;

import static com.kh.common.JDBCTemplate.*;
import static com.kh.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.member.model.dao.MyReviewDao;
import com.kh.member.model.vo.MyReview;


public class MyReviewService {

	public ArrayList<MyReview> selectMyReview(){
		Connection conn = getConnection();
		
		ArrayList<MyReview> list = new MyReviewDao().selectMyReview(conn);
		
		close(conn);
		
		return list;
		
	}
	
	
	
	
}
