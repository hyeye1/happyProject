package com.kh.admin.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.admin.model.service.Ad_BookService;
import com.kh.admin.model.vo.Ad_Book;
import com.kh.book.model.vo.Book;

/**
 * Servlet implementation class Ad_BookInsertServlet
 */
@WebServlet("/insert.bk")
public class Ad_BookInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ad_BookInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("utf-8");
				
		String bkDivision = request.getParameter("bkDivision"); // "카테고리"
		String bkGenre = request.getParameter("bkGenre"); // "장르"
		String isbn = request.getParameter("isbn"); // "isbn"
		String bkName = request.getParameter("bkName");// 도서명
		String author = request.getParameter("author");
		String publisher = request.getParameter("publisher"); // 출판사
		String bkPublishDate = request.getParameter("bkPublishDate");
		int bkPageNo = Integer.parseInt(request.getParameter("bkPageNo"));
		int bkOriginPrice = Integer.parseInt(request.getParameter("bkOriginPrice"));
		int bkPrice = Integer.parseInt(request.getParameter("bkPrice"));
		String bkDescription = request.getParameter("bkDescription");
		String atDescription = request.getParameter("atDescription");
		String bkContentList = request.getParameter("bkContentList");
		String[] bkKeywordArr = request.getParameterValues("bkKeyword");
		int bkStock = Integer.parseInt(request.getParameter("bkstock"));
		
		String bkKeyword="";
		if(bkKeywordArr != null) {
			bkKeyword = String.join(",", bkKeywordArr);
		}
		
		Ad_Book b = new Ad_Book(bkName, author, publisher, bkPublishDate,
				bkDivision, bkGenre, bkOriginPrice, bkPrice, isbn, bkStock,
							 bkPageNo, bkDescription, atDescription, bkContentList, bkKeyword);
		
		// 3. 요청 처리를 위한 Service단의 메소드 호출 및 결과 받기
		int result = new Ad_BookService().insertBook(b);
		HttpSession session = request.getSession();
		if(result > 0) {
			session.setAttribute("alertMsg", "도서 등록이 완료되었습니다.");
			response.sendRedirect(request.getContextPath());
		}else {
			request.setAttribute("errorMsg", "도서 등록을 실패했습니다.");
			
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
