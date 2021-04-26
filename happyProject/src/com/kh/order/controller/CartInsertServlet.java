package com.kh.order.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.order.model.service.CartService;
import com.kh.order.model.vo.Cart;

/**
 * Servlet implementation class InsertCartServlet
 */
@WebServlet("/insertCart.or")
public class CartInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		request.setCharacterEncoding("utf-8");
		
		/*
		   Book b = CartDao.selectedBook(bookNo);
		   
		   Cart c = new Cart(); 
		   c.setBookDetail(b); 
			
		   CartDao.insert(c);
		*/
		
		// 요청된값들 뽑아서 Cart에 넣기
		// Cart에 Insert할 주문정보
		int cartNo = Integer.parseInt(request.getParameter("cartNo"));
		int bkNo = Integer.parseInt(request.getParameter("bookNo"));
		int memNo = Integer.parseInt(request.getParameter("memNo")); 
		int amount = Integer.parseInt(request.getParameter("amount")); 
		int total = Integer.parseInt(request.getParameter("ttprice")); 
		//String status = request.getParameter("status"); 
		String title = request.getParameter("title");
		String author = request.getParameter("author");
		int orgPrice = Integer.parseInt(request.getParameter("orgPrice"));
		int price = Integer.parseInt(request.getParameter("price"));
		String mainImg = request.getParameter("mainImg");
		
		Cart c = new Cart();
		c.setCartNo(cartNo);
		c.setBookNo(bkNo);
		c.setMemNo(memNo);
		c.setAmount(amount);
		c.setTtPrice(total);
		//c.setStatus(status);
		c.setTitle(title);
		c.setAuthor(author);
		c.setOrgPrice(orgPrice);
		c.setPrice(price);
		c.setMainImg(mainImg);
		
		int result = new CartService().insertCart(c);
		
		request.getSession().setAttribute("c", "성공적으로 장바구니에 담겼습니다.");
		response.sendRedirect(request.getContextPath() + "/bkDetails.bk"); 

	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
