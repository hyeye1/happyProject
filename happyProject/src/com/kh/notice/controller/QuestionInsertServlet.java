package com.kh.notice.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.kh.common.MyFileRenamePolicy;
import com.kh.member.model.vo.Member;
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
		String category = request.getParameter("field");
		String qTitle = request.getParameter("title");
		String qContent = request.getParameter("content");
		String qEmail = request.getParameter("email");
		String qEmailYn = request.getParameter("emailYn");
		String qPhone = request.getParameter("phone");
		String qSmsYn = request.getParameter("smsYn");
		
		Question q= new Question();
		q.setqField(category);
		q.setqTitle(qTitle);
		q.setqContent(qContent);
		q.set
		
		
		HttpSession session = request.getSession();
		Member loginUser = (Member)session.getAttribute("loginUser");
		int userNo = loginUser.getMemNo();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
