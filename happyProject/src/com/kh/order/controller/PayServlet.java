package com.kh.order.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.member.model.vo.Member;
import com.kh.order.model.service.OrderService;
import com.kh.order.model.vo.Order;
import com.kh.order.model.vo.Pay;

/**
 * Servlet implementation class PayServlet
 */
@WebServlet("/orderConf.pay")
public class PayServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PayServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("userName");
		String hDate = request.getParameter("happyDate");
		int sum = Integer.parseInt(request.getParameter("total"));
		String dvDemand = request.getParameter("dvDemand");
		String happyDelivery = request.getParameter("happyDelivery");
		
		HttpSession session = request.getSession();
		Member loginUser = (Member)session.getAttribute("loginUser");
		int userNo = loginUser.getMemNo();
	
		/*
		Order r= new OrderService().selectOrder();
		int rNO = r.getOrNO();
		*/
		Order or = new Order();
		or.setReceiver(name);
		or.setMemNoOr(userNo);
		or.setOrSum(sum);
		or.setOrDelivery(happyDelivery);
		or.setOrRequest(dvDemand);
		or.setOrHdDate(hDate);
		
		
		int result1 = new OrderService().insertOrder(or);
		
		Pay p = new Pay();
		p.setOrNoPay(result1);
		p.setPaySum(sum);
		
		int result2 = new OrderService().insertPay(p);
		
		if(result1>0 && result2>0) { 
			request.getRequestDispatcher("views/order/orderConfirmation.jsp").forward(request, response);
			
		}else {
			
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
