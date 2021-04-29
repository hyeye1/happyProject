package com.kh.order.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.kh.book.model.service.BookService;
import com.kh.book.model.vo.Book;
import com.kh.member.model.vo.Member;
import com.kh.order.model.service.CartService;
import com.kh.order.model.vo.Cart;

/**
 * Servlet implementation class InsertCartFromCategoryServlet
 */
@WebServlet("/insertCart2.or")
public class CartInseretFromCategoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartInseretFromCategoryServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		int bkNo = Integer.parseInt(request.getParameter("bookNo"));
		int amount = Integer.parseInt(request.getParameter("amount"));
		int sum = Integer.parseInt(request.getParameter("totalPrice"));
		String title = request.getParameter("title");
		String author = request.getParameter("author");
		int orgPrice = Integer.parseInt(request.getParameter("orgPrice"));
		int price = Integer.parseInt(request.getParameter("price"));
		String mainImg = request.getParameter("mainImg");
	
		HttpSession session = request.getSession();
		Member loginUser = (Member)session.getAttribute("loginUser");
		int memNo = loginUser.getMemNo();
		
		Book b = new BookService().bookDetail(bkNo);
		
		Cart c = new Cart();
		c.setBookNo(bkNo);
		c.setAmount(amount);
		c.setTtPrice(sum);
		c.setTitle(title);
		c.setAuthor(author);
		c.setOrgPrice(orgPrice);
		c.setPrice(price);
		c.setMainImg(mainImg);
		c.setMemNo(memNo);
		
		if(c.getMemNo() < 1) { // 카트에 회원번호가 존재하지 않으면 카트에 전체 인설트 
		
		int result = new CartService().insertCartFromCategory(c);
		
		}else { // 카트에 회원번호가 존재하면 update문 실행
			
			int result2 = new
			
		}
		
		response.setContentType("application/json; charset=UTF-8");
		Gson gson = new Gson();
		gson.toJson(result, response.getWriter());
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
