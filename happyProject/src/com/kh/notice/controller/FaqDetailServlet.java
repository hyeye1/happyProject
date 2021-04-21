package com.kh.notice.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.notice.model.service.FaqService;
import com.kh.notice.model.vo.Faq;

/**
 * Servlet implementation class FaqDetailServlet
 */
@WebServlet("/detail.faq")
public class FaqDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FaqDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int faNo = Integer.parseInt(request.getParameter("fno"));
		 
		int result = new FaqService().increaseCount(faNo);
	
		if(result > 0) { // 조회수 증가 성공
			
			Faq f = new FaqService().selectFaq(faNo);
			
			request.setAttribute("f", f);
			request.getRequestDispatcher("views/notice/faqDetailView.jsp").forward(request, response);
			
		}else { // 조회수 증가 실패 , 에러페이지
			
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
