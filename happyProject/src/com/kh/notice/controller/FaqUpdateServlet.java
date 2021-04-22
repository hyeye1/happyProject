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
 * Servlet implementation class FaqUpdateServlet
 */
@WebServlet("/update.faq")
public class FaqUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FaqUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		int faNo = Integer.parseInt(request.getParameter("fno"));
		String faTitle = request.getParameter("title");
		String faContent = request.getParameter("content");
		
		Faq f = new Faq();
		f.setFaNo(faNo);
		f.setFaTitle(faTitle);
		f.setFaContent(faContent);
		
		int result = new FaqService().updateFaq(f);
		
		if(result > 0) { //수정성공 => /detail.faq?fno=글번호  => 상세보기 페이지로 넘어가게
			
			response.sendRedirect(request.getContextPath() + "/detail.faq?fno=" + faNo);
			
		}else { // 수정 실패
			
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
