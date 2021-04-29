package com.kh.order.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.member.model.vo.Coupon;
import com.kh.member.model.vo.Member;
import com.kh.order.model.service.OrderService;
import com.kh.order.model.vo.Cart;

/**
 * Servlet implementation class OrderServlet
 */
@WebServlet("/order.or")
public class OrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		Member loginUser = (Member)session.getAttribute("loginUser");
		int userNo = loginUser.getMemNo();
		
		
		ArrayList<Cart> ca = new OrderService().selectCartList(userNo);
		request.setAttribute("ca", ca);
		
		
		
		ArrayList<Coupon> cou = new OrderService().selectCouponList(userNo);
		request.setAttribute("cou", cou);
		
		Coupon cp = new OrderService().selectCoupon(userNo);
		request.setAttribute("cp", cp);
		
		int total = 0;
		int discountTotal = 0;
		for (Cart c : ca) {
			total += c.getTtPrice();
			discountTotal += (c.getOrgPrice() - c.getPrice());
		}
		

		request.setAttribute("total", total);
		request.setAttribute("discountTotal", discountTotal);
		

		request.getRequestDispatcher("views/order/order.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
