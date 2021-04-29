package com.kh.member.controller;

import java.io.IOException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
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
			response.getWriter().println("<script>alert('비밀번호 찾기에 실패하였습니다. 입력한 아이디 또는 이메일을 확인해주세요.');"+"history.back();</script>");
			
		}else if(m.getMemStatus().equals("N")) { // 탈퇴한 회원 로그인
			response.getWriter().println("<script>alert('탈퇴한 회원입니다. 회원가입을 다시 진행해주세요.');"+"history.back();</script>");
			
		}else { // 비번찾기 성공
			
			String memPwd = m.getMemPwd2();
			String to_email = m.getEmail();
			// mail server 설정
			String host = "smtp.gmail.com";
			String user = "happybookreader123@gmail.com";
			String password = "book!123";
			
			// 메일 받을 주소
			System.out.println(to_email);
			// SMTP 서버 정보를 설정한다.
			Properties props = new Properties();
			props.put("mail.smtp.host", host);
			props.put("mail.smtp.port", "465");
			props.put("mail.smtp.auth", "true");
			props.put("mail.smtp.ssl.enable", "true");
			props.put("mail.smtp.starttls.enable", "true");
			props.put("mail.debug", "true");
			props.put("mail.smtp.socketFactory.port","465");
			props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
	        props.put("mail.smtp.socketFactory.fallback","false");

			
			Session session1 = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(user, password);
				}
			});
			
			// email 전송
			try {
					MimeMessage msg = new MimeMessage(session1);
					msg.setFrom(new InternetAddress(user, "해피북스데이"));
					msg.setRecipient(Message.RecipientType.TO, new InternetAddress(to_email));
					
					// 메일 제목
					msg.setSubject("해피북스데이 아이디 찾기 결과 메일입니다.");
					// 메일 내용
					msg.setText("비밀번호는 " + memPwd + " 입니다.");
					
					Transport.send(msg);
					System.out.println("이메일 전송");
					
			} catch (Exception e) {
					e.printStackTrace();
			}

			
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
