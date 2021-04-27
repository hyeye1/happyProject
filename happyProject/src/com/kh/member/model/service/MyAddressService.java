package com.kh.member.model.service;

import static com.kh.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.member.model.dao.MyAddressDao;
import com.kh.member.model.vo.MyAddress;

public class MyAddressService {

	public ArrayList<MyAddress> selectMyAddress(){
		Connection conn = getConnection();
		ArrayList<MyAddress> list = new MyAddressDao().selectMyAddress(conn);
		
		return null;
	
}
}
