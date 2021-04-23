package com.kh.notice.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.commit;
import static com.kh.common.JDBCTemplate.getConnection;
import static com.kh.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.common.model.vo.PageInfo;
import com.kh.notice.model.dao.NoticeDao;
import com.kh.notice.model.dao.QuestionDao;
import com.kh.notice.model.vo.Notice;
import com.kh.notice.model.vo.Question;


public class QuestionService {
	public int selectListCount() {
		Connection conn = getConnection();
		int listCount = new QuestionDao().selectListCount(conn);
		
		if(listCount>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return listCount;
	}
	
	public ArrayList<Question> selectQuestionList(PageInfo pi){
		Connection conn = getConnection();
		
		ArrayList<Question> list = new QuestionDao().selectQuestionList(conn, pi);
		
		close(conn);
		return list;
	}
	

}
