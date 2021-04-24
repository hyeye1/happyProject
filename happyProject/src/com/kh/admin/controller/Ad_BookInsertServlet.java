package com.kh.admin.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.kh.admin.model.vo.Ad_Book;
import com.kh.common.MyFileRenamePolicy;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class Ad_BookInsertServlet
 */
@WebServlet("/insert.bk")
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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("utf-8");
		
		// enctype이 multipart/form-data로 잘 전송 되었을 경우 
		if(ServletFileUpload.isMultipartContent(request)) {
			
			int maxSize = 10*1024*1024;
			
			String savePath = request.getSession().getServletContext().getRealPath("/resources/book_upfiles/"); 
			System.out.println(savePath);
			// 앞에/는웹컨텐트 뒤/는 업파일폴더안에
			
			// com.kh.common.MyFileRenamePolicy 클래스만들어서 rename재정의 
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
			
			// 카테고리번호, 제목, 내용, 회원번호
			String bkDivision = multiRequest.getParameter("bkDivision");
			String bkGenre = multiRequest.getParameter("bkGenre");
			String isbn = multiRequest.getParameter("isbn");
			String bkName = multiRequest.getParameter("bkName");
			String author = multiRequest.getParameter("author");
			String publisher = multiRequest.getParameter("publisher"); // 출판사
			String bkPublishDate = multiRequest.getParameter("bkPublishDate");
			int bkPageNo = Integer.parseInt(multiRequest.getParameter("bkPageNo"));
			int bkOriginPrice = Integer.parseInt(multiRequest.getParameter("bkOriginPrice"));
			int bkPrice = Integer.parseInt(multiRequest.getParameter("bkPrice"));
			String bkDescription = multiRequest.getParameter("bkDescription");
			String atDescription = multiRequest.getParameter("atDescription");
			String bkContentList = multiRequest.getParameter("bkContentList");
			String[] bkKeyword = multiRequest.getParameterValues("bkKeyword");
			int bkStock = Integer.parseInt(multiRequest.getParameter("bkstock"));
			
			Ad_Book b = new Ad_Book();
			b.setBkDivision(bkDivision);
			b.setBkGenre(bkGenre);
			b.setIsbn(isbn);
			b.setBkName(bkName);
			b.setAuthor(author);
			b.setPublisher(publisher);
			b.setBkPublishDate(bkPublishDate);
			b.setBkPageNo(bkPageNo);
			b.setBkOriginPrice(bkOriginPrice);
			b.setBkPrice(bkPrice);
			b.setBkDescription(bkDescription);
			b.setAtDescription(atDescription);
			b.setBkContentList(bkContentList);
			b.setBkKeyword(bkKeyword);
			b.setBkStock(bkStock);
			
			
		}
		

//		
//		// 3. 요청 처리를 위한 Service단의 메소드 호출 및 결과 받기
//		int result = new Ad_BookService().insertBook(b);
//		HttpSession session = request.getSession();
//		if(result > 0) {
//			session.setAttribute("alertMsg", "도서 등록이 완료되었습니다.");
//			response.sendRedirect(request.getContextPath());
//		}else {
//			request.setAttribute("errorMsg", "도서 등록을 실패했습니다.");
//			
//		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
