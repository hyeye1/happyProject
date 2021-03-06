package com.kh.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.member.model.service.MemberService;

/**
 * Servlet implementation class DeleteMemberServlet
 */
@WebServlet("/delete.me")
public class DeleteMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteMemberServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String memId = request.getParameter("memId");
		String memPwd = request.getParameter("memPwd");
		
		int result = new MemberService().deleteMember(memId, memPwd);
		HttpSession session = request.getSession();
		
		if(result > 0) { //탈퇴성공
			session.removeAttribute("loginUser");
			// 응답페이지 => 탈퇴완료 페이지
			
			request.getRequestDispatcher("views/member/deleteCompletionView.jsp").forward(request, response);
			
			
		}else { //탈퇴실패
			
			session.setAttribute("alertMsg", "탈퇴가 실패되었습니다..");
			request.getRequestDispatcher("views/member/my_memberInfo.jsp").forward(request, response);
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
