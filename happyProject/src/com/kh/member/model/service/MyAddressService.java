package com.kh.member.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;

import com.kh.member.model.dao.MyAddressDao;
import com.kh.member.model.vo.MyAddress;

public class MyAddressService {

	public MyAddress selectMyAddress(int adNo, String adPost, String adRoad, String adDetail) {
		
		Connection conn = getConnection();
		
		MyAddress selectMyAddress = new MyAddressDao().selectMyAddress(conn, adNo, adPost, adRoad, adDetail);
		
		close(conn);
		
		return selectMyAddress;
	}
}
