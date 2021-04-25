package com.kh.admin.controller;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ad_BookEnrollFormServlet
 */
@WebServlet("/enrollForm.bk")
public class Ad_BookEnrollFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ad_BookEnrollFormServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 응답페이지 => 회원가입페이지 
				RequestDispatcher view = request.getRequestDispatcher("views/admin/ad_enrollBook.jsp");
				view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		Enumeration e = request.getParameterNames();
		while ( e.hasMoreElements() ){
			String name = (String) e.nextElement();
			String[] values = request.getParameterValues(name);		
			for (String value : values) {
				System.out.println("name=" + name + ",value=" + value);
			}   
		}
		//doGet(request, response);
	}

}
