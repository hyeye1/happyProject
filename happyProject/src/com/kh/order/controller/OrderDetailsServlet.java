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
import com.kh.order.model.service.OrderService;
import com.kh.order.model.vo.Cart;
import com.kh.order.model.vo.Order;

/**
 * Servlet implementation class OrderDetails
 */
@WebServlet("/orderDet.or")
public class OrderDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderDetailsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession();
		Member loginUser = (Member)session.getAttribute("loginUser");
		int userNo = loginUser.getMemNo();
		
		int orNo = Integer.parseInt(request.getParameter("orNo"));
		
		Order or = new OrderService().selectOrder(orNo);
		request.setAttribute("or", or);
		
		ArrayList<Cart> ca = new OrderService().selectCartList(userNo);
		request.setAttribute("ca", ca);
		
		int totalAmount = 0;
		int total = 0;
		int discountTotal = 0;
		for (Cart c : ca) {
			total += c.getTtPrice();
			discountTotal += (c.getOrgPrice() - c.getPrice());
			totalAmount += c.getAmount();
		
		}
		

		request.setAttribute("total", total);
		request.setAttribute("discountTotal", discountTotal);
		request.setAttribute("totalAmount", totalAmount);
		
		
		

		request.getRequestDispatcher("views/order/orderDetails.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
