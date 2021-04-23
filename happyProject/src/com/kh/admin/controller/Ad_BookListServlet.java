package com.kh.admin.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.admin.model.service.Ad_BookService;
import com.kh.admin.model.vo.Ad_Book;
import com.kh.common.model.vo.PageInfo;
 
/**
 * Servlet implementation class Ad_BookListServlet
 */
@WebServlet("/list.bk")
public class Ad_BookListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ad_BookListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		// --------------- 페이징 처리 ----------------
		int listCount;		
		int currentPage = 1;	
		int pageLimit;		
		int boardLimit;		
		
		int maxPage; 		
		int startPage;		
		int endPage;		
		 
		if(request.getParameter("currentPage")!=null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		listCount = new Ad_BookService().selectListCount();
		
		pageLimit = 5;
		boardLimit = 10;
		
		maxPage = (int)Math.ceil((double)listCount / boardLimit);
		startPage = (currentPage - 1) / pageLimit * pageLimit + 1;
		endPage = startPage + pageLimit - 1;
		
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		// 페이징정보 담기 
		PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, boardLimit, maxPage, startPage, endPage);
		
		//System.out.println(pi);
		
		// 현재 요청한 페이지에 보여질 도서 리스트 조회해오기
		ArrayList<Ad_Book> list = new Ad_BookService().selectList(pi);
		
//			for(Ad_Book b : list){
//				  System.out.println(b);
//				}
//			System.out.println("===========");
		
		
			request.setAttribute("pi", pi);
			request.setAttribute("list", list);
			
			request.getRequestDispatcher("views/admin/ad_book.jsp").forward(request, response);
			
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}