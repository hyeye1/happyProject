package com.kh.member.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.member.model.service.CouponService;
import com.kh.member.model.vo.Coupon;

/**
 * Servlet implementation class CouponListViewServlet
 */
@WebServlet("/coupon.me")
public class CouponListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CouponListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ArrayList<Coupon> list = new CouponService().selectCouponList();
		request.setAttribute("list", list);
		// 응답페이지 => 쿠폰조회 페이지
		
		ArrayList<Coupon> list1 = new CouponService().selectCouponEnd();
		request.setAttribute("list1", list1);
		
		// 응답페이지 => 쿠폰조회 페이지
		request.getRequestDispatcher("views/member/couponDetailView.jsp").forward(request, response);
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
