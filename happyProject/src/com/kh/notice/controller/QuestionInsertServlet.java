package com.kh.notice.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.kh.common.MyFileRenamePolicy;
import com.kh.notice.model.service.QuestionService;
import com.kh.notice.model.vo.Question;
import com.oreilly.servlet.MultipartRequest;
import com.sun.xml.internal.ws.api.message.Attachment;

/**
 * Servlet implementation class QuestionInsertServlet
 */
@WebServlet("/insert.q")
public class QuestionInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QuestionInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(ServletFileUpload.isMultipartContent(request)) {
			// 파일업로드를 위한 외부 라이브러리 : cos.jar
			//							http://www.servlets.com
			
			// 1. 전송되는 파일을 처리할 작업 내용 (전송되는 파일의 용량제한, 전달된 파일을 저장할 폴더 경로)
			// 1_1. 전달되는 파일의 용량제한 (int maxSize => byte단위) : 10Mbyte로 제한
			/*
			 * byte => kbyte => mbyte => gbyte => tbyte
			 * 
			 * 1kbyte == 1024byte
			 * 1mbyte == 1024kbyte == 1024*1024byte
			 * 10mbyte			   == 10*1024*1024byte 
			 */
			int maxSize = 10*1024*1024;
			
			// 1_2. 전달된 파일을 저장할 서버의 폴더 경로 알아내기 (String savePath)
			String savePath = request.getSession().getServletContext().getRealPath("/resources/question_upfiles/");
			
			// 2. 전달된 파일명 수정 후 서버에 업로드 작업 (MutipartRequest 객체 생성)
			/*
			 *  HttpServletRequest request => MutipartRequest multiRequest 변환
			 *  
			 *  MutipartRequest multiRequest = new MultipartRequest(request, 저장할폴더경로, 용량제한값, 인코딩값, 파일명수정시켜주는객체);
			 *  
			 *  위의 구문 한줄 실행시 MultipartRequest 객체 생성과 동시에 넘어온 첨부파일이 해당 폴더에 무조건 업로드 됨
			 *  
			 *  원본파일명을 그대로 해당 폴더에 업로드 하지 않는게 일반적임
			 *  - 같은 파일명이 있을 경우 덮어씌워질 수 있고, 한글/특수문자/띄어쓰기가 포함된 파일명일 경우 서버에 따라 문제가 발생됨
			 *  
			 *  기본적으로 수정명 작업을 해주는 객체 (DefaultFileRenamePolicy 객체 (cos라이브러리))
			 *  => 내부적으로 해당 객체 내의 rename() 메소드가 실행되면서 파일명 수정진행됨
			 *  => 기존에 동일한 파일명이 존재할 경우 뒤에 카운팅 된 숫자를 붙여줌
			 *  	ex) aaa.jpg, aaa1.jpg, aaa2.jpg, ...
			 *  
			 *  하지만 내 입맛대로 절대 안겹치게끔 rename할것
			 *  나만의 MyFileRenamePolicy 클래스 만들어서 rename메소드 재정의 할것
			 */
MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
			
			// 3. 요청시 전달된 값들 뽑아서 vo에 주섬주섬 담기 (DB에 기록할 데이터들뽑기)
			// 3_1. Board테이블 insert할 카테고리번호, 게시판제목, 게시판내용, 작성자회원번호를 Board객체에담기
			String category = multiRequest.getParameter("field"); //"10"
			String qTitle = multiRequest.getParameter("title");
			String qContent = multiRequest.getParameter("content");
			String qWriter = multiRequest.getParameter("userNo"); // "2"
			
			Question q = new Question();
			q.setqField(category);
			q.setqTitle(qTitle);
			q.setqContent(qContent);
			q.setMemNoFk(qWriter);
			
		
			// 3_2. 첨부파일이 있다면 Attachment테이블에 Insert할 원본명, 수정명, 저장폴더경로를 Attachment객체에 담기
			//System.out.println(multiRequest.getOriginalFileName("upfile"));
			
			Attachment at = null; // 처음엔 null로 초기화, 넘어온 첨부파일이 있다면 그 때 생성
			
			if(multiRequest.getOriginalFileName("upfile") != null) { // 넘어온 첨부파일이 존재할 경우
				
				at = new Attachment();
				// 원본명, 수정명(실제서버에업로드된파일명), 저장된폴더경로
				at.setOriginName(multiRequest.getOriginalFileName("upfile"));
				at.setChangeName(multiRequest.getFilesystemName("upfile"));
				at.setFilePath("resources/board_upfiles/");
				
			}
			
			// 4. 게시판 작성용 서비스 요청 및 결과 받기
			int result = new QuestionService().insertQuestion(q, at);
			// case1 : 첨부파일이 있었을 경우  => insertBoard(생성된Board객체, 생성된Attachment객체)
			// case2 : 첨부파일이 없었을 경우  => insertBoard(생성된Board객체, null)
			
			if(result > 0) { // 성공 => list.bo?currentPage=1  url재요청 => 게시판리스트페이지
				
				request.getSession().setAttribute("alertMsg", "게시글 등록 성공!!");
				response.sendRedirect(request.getContextPath() + "/list.bo?currentPage=1");
				
			}else { // 실패
				
				request.setAttribute("errorMsg", "게시글 등록 실패");
				request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
				
			}
			
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
