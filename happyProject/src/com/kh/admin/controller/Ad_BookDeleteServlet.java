package com.kh.admin.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.admin.model.service.Ad_BookService;

/**
 * Servlet implementation class BookDeleteServlet
 */
@WebServlet("/delete.bk")
public class Ad_BookDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ad_BookDeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int bkNo = Integer.parseInt(request.getParameter("bkno")); // 삭제요청값 1
		
		int result = new Ad_BookService().deleteBook(bkNo);
		
		
		if(result > 0) { // 성공하면 /jsp/list.bk 재요청 => 도서리스트페이지
			//request.getSession().setAttribute("alertMsg", "도서 삭제 완료");
			response.sendRedirect(request.getContextPath()+"/list.bk");
			
		}else { // 실패하면 에러페이지 포워딩
			//request.setAttribute("errorMsg", "삭제 실패");
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
