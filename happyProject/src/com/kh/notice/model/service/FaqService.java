package com.kh.notice.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.notice.model.dao.FaqDao;
import com.kh.notice.model.vo.Faq;
import static com.kh.common.JDBCTemplate.*;

public class FaqService {
	
	public ArrayList<Faq> selectFaqList(){
		Connection conn = getConnection();
		
		ArrayList<Faq> list = new FaqDao().selectFaqList(conn);
		
		close(conn);
		
		return list;
		
	}

}
