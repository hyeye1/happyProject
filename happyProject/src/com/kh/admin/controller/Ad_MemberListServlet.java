package com.kh.admin.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.admin.model.service.Ad_BookService;
import com.kh.admin.model.service.Ad_MemberService;
import com.kh.admin.model.vo.Ad_Book;
import com.kh.admin.model.vo.Ad_Member;
import com.kh.common.model.vo.PageInfo;

/**
 * Servlet implementation class MemberListServlet
 */
@WebServlet("/list.mem")
public class Ad_MemberListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ad_MemberListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// --------- 페이징 처리 -----------
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
		
		// 검색 조건 가져오기
		String searchType = (String)request.getParameter("searchType");
		String search = (String)request.getParameter("search");
		
		listCount = new Ad_MemberService().selectListCount(searchType,search);
		
		pageLimit = 5;
		boardLimit = 10;
		
		maxPage = (int)Math.ceil((double)listCount / boardLimit);
		startPage = (currentPage - 1) / pageLimit * pageLimit + 1;
		endPage = startPage + pageLimit - 1;
		
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		// 페이징정보들을 어딘가의 한 공간에 담자!!
		PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, boardLimit, maxPage, startPage, endPage);
		System.out.println(pi);
		
		ArrayList<Ad_Member> list = new Ad_MemberService().selectList(pi,searchType,search);
	
		request.setAttribute("pi", pi);
		request.setAttribute("list", list);
		request.setAttribute("listCount", listCount);
		request.setAttribute("search", search);
		request.setAttribute("searchType", searchType);
		request.getRequestDispatcher("views/admin/ad_member.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
