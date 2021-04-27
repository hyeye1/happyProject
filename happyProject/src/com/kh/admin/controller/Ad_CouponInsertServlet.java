package com.kh.admin.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.admin.model.service.Ad_CouponService;
import com.kh.admin.model.vo.Ad_Coupon;

import oracle.sql.DATE;

/**
 * Servlet implementation class Ad_CouponInsertServlet
 */
@WebServlet("/insert.cou")
public class Ad_CouponInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ad_CouponInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String couName = request.getParameter("cName");
		int couDiscount = Integer.parseInt(request.getParameter("cDiscount"));
		String couStart = request.getParameter("cStart"); 
		String couEnd = request.getParameter("cEnd");
		int couCondition = Integer.parseInt(request.getParameter("cCondition"));
		
		HttpSession session = request.getSession();
		
		Ad_Coupon c = new Ad_Coupon();
		c.setCouName(couName);
		c.setDiscount(couDiscount);
		c.setCouStart(couStart);
		c.setCouEnd(couEnd);
		c.setCouCondition(couCondition);
		
		int result = new Ad_CouponService().insertCoupon(c);
		
		if(result > 0) {
			session.setAttribute("alertMsg", "성공적으로 쿠폰이 등록되었습니다.");
			response.sendRedirect(request.getContextPath() + "/list.cou?currentPage=1");
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