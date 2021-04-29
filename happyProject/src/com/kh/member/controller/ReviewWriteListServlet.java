package com.kh.member.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.book.model.service.ReviewService;
import com.kh.book.model.vo.Review;
import com.kh.member.model.service.MyReviewService;
import com.kh.member.model.vo.MyReview;

/**
 * Servlet implementation class reviewWriteListViewServlet
 */
@WebServlet("/reviewWrite.me")
public class ReviewWriteListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReviewWriteListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ArrayList<MyReview> list = new MyReviewService().selectMyReview();
		request.setAttribute("list", list);
		//System.out.println(list);
		
		
		request.getRequestDispatcher("views/member/reviewWriteListView.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
