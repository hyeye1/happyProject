package com.kh.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.member.model.service.MyAddressService;
import com.kh.member.model.vo.MyAddress;

/**
 * Servlet implementation class MyAddressServlet
 */
@WebServlet("/myaddress.me")
public class MyAddressServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyAddressServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		

		int adNo  = Integer.parseInt(request.getParameter("adNo")); 
		String adPost = request.getParameter("adPost");
		String adRoad = request.getParameter("adRoad");
		String adDetail = request.getParameter("adDetail");
		
		MyAddress a = new MyAddressService().selectMyAddress(adNo, adPost, adRoad, adDetail);
		
		
		RequestDispatcher view = request.getRequestDispatcher("views/member/my_myAddress.jsp");
		view.forward(request, response);
		
		
		
		HttpSession session = request.getSession();
		session.setAttribute("selectMyAddress" , a);
		
		
		
		
		
	}
	


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
