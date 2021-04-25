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
 * Servlet implementation class MemberUpdatePwdServlet
 */
@WebServlet("/updatePwd.me")
public class MemberUpdatePwdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberUpdatePwdServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String memId = request.getParameter("memId");
		String memPwd = request.getParameter("memPwd");
		
		String updatePwd = request.getParameter("updatePwd");
		
		Member updateMem = new MemberService().updatePwdMember(memId, memPwd, updatePwd);
		
		HttpSession session = request.getSession();
		
		if(updateMem == null) { // 비밀번호 변경실패 => alert 비밀번호 변경 실패했습니다.
			session.setAttribute("alertMsg", "비밀번호 변경 실패했습니다.");
			
		}else { // 성공 => alert 성공적으로 비밀번호 변경됐습니다.
			session.setAttribute("alertMsg", "성공적으로 비밀번호 변경됐습니다.");
			session.setAttribute("loginUser", updateMem);
		}
		
		// 성공했든 실패했든 결국 마이페이지 볼꺼임
		response.sendRedirect(request.getContextPath() + "/myPage.info");
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
