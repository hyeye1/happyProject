package com.kh.order.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.book.model.service.BookService;
import com.kh.book.model.vo.Book;
import com.kh.member.model.vo.Member;
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
		
		int bkNo = Integer.parseInt(request.getParameter("bookNo"));
		int amount = Integer.parseInt(request.getParameter("amount"));
		int sum = Integer.parseInt(request.getParameter("totalPrice"));
		
		HttpSession session = request.getSession();
		Member loginUser = (Member)session.getAttribute("loginUser");
		int memNo = loginUser.getMemNo();
		
		Book b = new BookService().bookDetail(bkNo);
		
		Cart c = new Cart();
		c.setBookNo(bkNo);
		c.setAmount(amount);
		c.setTtPrice(sum);
		c.setTitle(b.getBkName());
		c.setAuthor(b.getAuthor());
		c.setOrgPrice(b.getBkOrgPrice());
		c.setPrice(b.getBkPrice());
		c.setMainImg(b.getBkMainImg());
		c.setMemNo(memNo);
		
		int result = new CartService().insertCart(c);
		
		if(result > 0) { // 장바구니 담기 성공!
			request.getRequestDispatcher("views/order/cart.jsp");
		} else {		// 장바구니 담기 실패 -> 상세페이지로 돌아가기
			response.sendRedirect(request.getContextPath() + "/bkDetails.bk"); 
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
