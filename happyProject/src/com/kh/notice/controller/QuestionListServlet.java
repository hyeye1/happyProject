package com.kh.notice.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.common.model.vo.PageInfo;
import com.kh.notice.model.service.QuestionService;
import com.kh.notice.model.vo.Question;

/**
 * Servlet implementation class QquestionListServlet
 */
@WebServlet("/list.q")
public class QuestionListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QuestionListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int listCount;		
		int currentPage;	
		int pageLimit;		
		int boardLimit;		
		
		int maxPage;		
		int startPage;		
		int endPage;		
		
		
		listCount = new QuestionService().selectListCount();
		

		
		
		currentPage = Integer.parseInt(request.getParameter("currentPage"));
		
		
		pageLimit =5;
		
		
		boardLimit= 3;
		

		
		maxPage = (int)Math.ceil((double)listCount / boardLimit);
		

		startPage = (currentPage -1) / pageLimit * pageLimit +1;
		
	
		endPage = startPage + pageLimit -1;
		
	
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		
		
		PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, boardLimit,maxPage, startPage, endPage);

		ArrayList<Question> list = new QuestionService().selectQuestionList(pi);
		request.setAttribute("pi", pi);
		request.setAttribute("list", list);
		HttpSession session = request.getSession();
				
				// 로그인 전에 해당 url 요청됐을 경우 => 메인페이지 출력 / alert "로그인 후 이용가능한 서비스입니다."
				if(session.getAttribute("loginUser") == null) {
					
					session.setAttribute("alertMsg", "로그인 후 이용가능한 서비스입니다.");
					
					response.sendRedirect(request.getContextPath()+"/Service.me");
					
				}else {
			
		request.getRequestDispatcher("views/notice/questionListView.jsp").forward(request, response);
				}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
