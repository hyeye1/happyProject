package com.kh.admin.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.admin.model.service.Ad_BookService;
import com.kh.admin.model.vo.Ad_Book;
import com.kh.admin.model.vo.Ad_Image;

/**
 * Servlet implementation class Ad_BoookDetailServlet
 */
@WebServlet("/detail.bk")
public class Ad_BoookDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ad_BoookDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int bkNo = Integer.parseInt(request.getParameter("bkno"));
		
		
			Ad_Book b = new Ad_BookService().selectBook(bkNo);
			Ad_Image im = new Ad_BookService().selectImage(bkNo);
		
//			System.out.println(b);
//			System.out.println(im);
			
			request.setAttribute("b", b);
			request.setAttribute("im", im);
			
			request.getRequestDispatcher("views/admin/ad_detailBook.jsp").forward(request, response);
			
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
