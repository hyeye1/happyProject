package com.kh.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.member.model.service.MemberService;
import com.kh.member.model.vo.Member;

/**
 * Servlet implementation class MemberUpdateServlet
 */
@WebServlet("/update.me")
public class MemberUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	// 1. 인코딩	
	request.setCharacterEncoding("utf-8");	
	
	// 2. 전달값 뽑아서 변수 및 객체 담기
	String memId = request.getParameter("memId");
	String memName = request.getParameter("memName");
	String Email = request.getParameter("Email");
	String memPhone = request.getParameter("memPhone");	
	String memAddress = request.getParameter("memAddress");	
		
	Member m = new Member(memId, memName, Email, memPhone, memAddress);
		
	// 3. 요청처리를 위한 Service 메소드 호출 및 결과 돌려받기
	Member updateMem = new MemberService().updateMember(m);
	HttpSession session = request.getSession();
	
	// 4. 돌려받은 결과를 가지고 사용자가 보게될 화면 지정해주기
	if(updateMem == null) { // 실패시 에러페이지 보이기
		
	}else { // 성공 => 회원수정페이지 다시 보여지게하기
		
		// session에 담겨있는 loginUser갱신
		session.setAttribute("loginUser", updateMem); // 수정된 내용으로 보이게하기
		session.setAttribute("alertMsg", "변경이 성공되었습니다.");
		response.sendRedirect(request.getContextPath() + "/myPage.info");
		
		
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
