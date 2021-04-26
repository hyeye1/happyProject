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
 * Servlet implementation class FindPwdFormServlet
 */
@WebServlet("/findPwdForm.me")
public class FindPwdFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindPwdFormServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher view = request.getRequestDispatcher("views/member/findPwd.jsp");
		view.forward(request, response);
		
		request.setCharacterEncoding("utf-8");
		
		String memId = request.getParameter("memId");
		String email = request.getParameter("email");
		
		Member m = new MemberService().findPwdMember(memId, email);
		
		if(m == null) {
			// 비번찾기실패
			
		}else { // 비번찾기 성공
			
			HttpSession session = request.getSession();
			session.setAttribute("findPwd", m);
			
			response.sendRedirect(request.getContextPath()+"/findPwd.me");
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
