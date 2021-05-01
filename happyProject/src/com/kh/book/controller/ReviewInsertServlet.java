package com.kh.book.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.book.model.service.ReviewService;
import com.kh.book.model.vo.Review;
import com.kh.member.model.vo.Member;


/**
 * Servlet implementation class ReviewInsertServlet
 */
@WebServlet("/insert.re")
public class ReviewInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReviewInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String reviewContent = request.getParameter("content");
		int bookNo = Integer.parseInt(request.getParameter("bno"));
		
		int memNo = ((Member)request.getSession().getAttribute("loginUser")).getMemNo();
		
		Review r = new Review();
		r.setReContent(reviewContent);
		r.setBkNoRe(bookNo);
		r.setMemNoRe(String.valueOf(memNo));
		
		int result = new ReviewService().insertReview(r);
		response.getWriter().print(result);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
