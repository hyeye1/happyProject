package com.kh.admin.controller;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.kh.admin.model.service.Ad_BookService;
import com.kh.admin.model.vo.Ad_Book;
import com.kh.admin.model.vo.Ad_Image;

/**
 * Servlet implementation class Ad_BookInsertServlet
 */
@WebServlet("/insert.bk")
@MultipartConfig
public class Ad_BookInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ad_BookInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		request.setCharacterEncoding("utf-8");
		
		// enctype이 multipart/form-data로 잘 전송 되었을 경우 
			
		request.setCharacterEncoding("utf-8");
		Enumeration e = request.getParameterNames();
		while ( e.hasMoreElements() ){
			String name = (String) e.nextElement();
			String[] values = request.getParameterValues(name);		
			for (String value : values) {
				System.out.println(value);
			}   
		}
		
		Ad_Book book = new Ad_Book();
		
		int bk_no = new Ad_BookService().selectSeqBook();
		book.setBkNo(bk_no);
		book.setBkDivision((String)request.getParameter("bkDivision"));
		
		book.setBkGenre((String)request.getParameter("bkGenre"));
		book.setBkName((String)request.getParameter("bkName"));
		book.setAuthor((String)request.getParameter("author"));
		book.setPublisher((String)request.getParameter("publisher"));
		book.setBkPublishDate((String)request.getParameter("bkPublishDate"));
		book.setBkPageNo(Integer.valueOf(request.getParameter("bkPageNo") == null ? "0" :request.getParameter("bkPageNo")));
		book.setBkPrice(Integer.valueOf(request.getParameter("bkPrice") == null ? "0" :request.getParameter("bkPrice")));
		book.setBkOriginPrice(Integer.valueOf(request.getParameter("bkOriginPrice") == null ? "0" :request.getParameter("bkOriginPrice")));
		book.setBkStock(Integer.valueOf(request.getParameter("bkStock") == null ? "0" :request.getParameter("bkStock")));
		book.setBookContent((String)request.getParameter("bookContent"));
		book.setIsbn((String)request.getParameter("isbn"));
		book.setBkKeyword(request.getParameter("keyword"));
		book.setAtDescription(request.getParameter("authorDescription"));
		book.setBkDescription(request.getParameter("bookDescrription"));
		book.setBkMainImg("resources/books/"+book.getBkGenre()+"/"+book.getBkName());
		
		Ad_Image image = new Ad_Image();
		image.setBkNo(bk_no);
		image.setImgPath("resources/books/"+book.getBkGenre()+"/bookDetails/"+book.getBkName()+"_상세");
		
		Part bkMainImg = request.getPart("bkMainImg");
		Part bkDetailImg = request.getPart("bkDetailImg");
		
		String url = this.getClass().getResource("").getPath(); 
		String path = url.substring(1,url.indexOf(".metadata"))+"happyProject/WebContent/";
        String ext = ".png";
       
        new Ad_BookService().insertBookAdmin(book);
        new Ad_BookService().insertImageAdmin(image);
        
        bkMainImg.write(path+book.getBkMainImg()+ext);
        bkDetailImg.write(path+book.getBkMainImg()+ext);
        
        response.sendRedirect("/list.bk");
	}

}
