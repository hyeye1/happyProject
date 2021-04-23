package com.kh.book.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.book.model.service.BookService;
import com.kh.book.model.vo.Book;

/**
 * Servlet implementation class bookDetailsServlet
 */
@WebServlet("/bkDetails.bk")
public class BookDetailsServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookDetailsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	   //int boardNo = Integer.parseInt(request.getParameter("bno"));
	   int bookNo = Integer.parseInt(request.getParameter("bookNo"));
	   Book b = new BookService().bookDetail(bookNo);
	   request.setAttribute("b", b);
	   
	   request.getRequestDispatcher("views/book/bookDetails.jsp").forward(request, response);
	   response.setContentType("application/json; charset=UTF-8");
      
   }

   /**
    * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      // TODO Auto-generated method stub
      doGet(request, response);
   }

}