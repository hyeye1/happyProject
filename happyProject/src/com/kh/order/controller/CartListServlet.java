package com.kh.order.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.member.model.vo.Member;
import com.kh.order.model.service.CartService;
import com.kh.order.model.vo.Cart;

/**
 * Servlet implementation class cartListServlet
 */
@WebServlet("/cList.or")
public class CartListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		if (loginUser == null) {
			//response.sendRedirect(request.getContextPath());
		}
		
		int memNo = loginUser.getMemNo();
		
		ArrayList<Cart> list = new CartService().selectCartList(memNo);
		
		int orgTotal = 0;
		int total = 0;
		int discountTotal = 0;
		int totalAmount = 0;
		int amount =0;
		
		for (Cart c : list) {
			orgTotal += ((c.getOrgPrice()) * (c.getAmount())) ;
			total += c.getPrice()*c.getAmount();
			discountTotal += (c.getOrgPrice() - c.getPrice());
			totalAmount += c.getAmount();
		}
		
		request.setAttribute("orgTotal", orgTotal);
		request.setAttribute("list", list);
		request.setAttribute("total", total);
		request.setAttribute("discountTotal", discountTotal);
		request.setAttribute("totalAmount", totalAmount);
		
		request.getRequestDispatcher("views/order/cart.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
