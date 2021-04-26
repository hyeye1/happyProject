package com.kh.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.member.model.service.MemberService;
import com.kh.member.model.vo.Member;

/**
 * Servlet implementation class FindPwdServlet
 */
@WebServlet("/findPwd.me")
public class FindPwdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindPwdServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		String memId = request.getParameter("memId");
		String email = request.getParameter("email");
		
		Member m = new MemberService().findPwdMember(memId, email);
		
		if(m == null) {
			//  비번찾기실패
			response.getWriter().println("<script>alert('비밀번호 찾기에 실패하였습니다. 입력한 아이디 또는 이메일을 확인해주세요.');</script>");
			
		}else if(m.getMemStatus().equals("N")) { // 탈퇴한 회원 로그인
			response.getWriter().println("<script>alert('탈퇴한 회원입니다. 회원가입을 다시 진행해주세요.');"+"history.back();</script>");
			
		}else { // 비번찾기 성공
			
			HttpSession session = request.getSession();
			session.setAttribute("findPwd", m);
			
			RequestDispatcher view = request.getRequestDispatcher("views/member/findPwdSuccess.jsp");
			view.forward(request, response);
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
