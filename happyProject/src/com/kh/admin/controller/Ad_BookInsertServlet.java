package com.kh.admin.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

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
		
		
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String currentTime = sdf.format(new Date());
		int ranNum = (int)(Math.random() * 90000 + 10000);
		
		//파일확장자추출
		Part bkMainImg = request.getPart("bkMainImg");
		String mfn = bkMainImg.getSubmittedFileName();
		String mainExt = mfn.substring(mfn.lastIndexOf("."));
		
		Part bkDetailImg = request.getPart("bkDetailImg");
		String dfn = bkDetailImg.getSubmittedFileName();
		String detailExt = dfn.substring(dfn.lastIndexOf("."));
		
		String newMainFileName = currentTime + ranNum + mainExt;
		String newDetailFileName = currentTime + ranNum + detailExt;
		
		
		
		
		
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
		book.setBkMainImg("resources/books/"+book.getBkGenre()+"/"+newMainFileName);
		
		Ad_Image image = new Ad_Image();
		image.setBkNoImg(bk_no);
		image.setImgPath("resources/books/"+book.getBkGenre()+"/bookDetails/"+newDetailFileName);
		
		
		// /Users/yoojean/happyProject/happyProject/WebContent/
		String path = getServletContext().getRealPath("/");
       
        new Ad_BookService().insertBookAdmin(book);
        new Ad_BookService().insertImageAdmin(image);
        
        bkMainImg.write(path+book.getBkMainImg());
        bkDetailImg.write(path+image.getImgPath());
        
        response.sendRedirect("/happyProject/list.bk");
        
	}

}
