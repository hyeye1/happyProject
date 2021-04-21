package com.kh.notice.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.member.model.vo.Member;
import com.kh.notice.model.service.FaqService;
import com.kh.notice.model.vo.Faq;

/**
 * Servlet implementation class FaqInsertServlet
 */
@WebServlet("/insert.faq")
public class FaqInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FaqInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String faTitle = request.getParameter("title");
		String faContent = request.getParameter("content");
		/* 사용자 관리자 구분하는 구문
		HttpSession session = request.getSession();
		Member loginUser = (Member)session.getAttribute("loginUser");
		int memNo = loginUser.getMemNo();
		*/
		Faq f = new Faq();
		f.setFaTitle(faTitle);
		f.setFaContent(faContent);
		
		int result = new FaqService().insertFaq(f);
		
		if(result > 0) { // 성공 => /list.faq (다시 리스트 페이지로 돌아감)
			response.sendRedirect(request.getContextPath() + "/list.faq");
			
		}else { // 실패 => 에러페이지
			
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
