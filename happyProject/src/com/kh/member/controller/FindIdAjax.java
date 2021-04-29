package com.kh.member.controller;

import java.io.IOException;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class FindIdAjax
 */
@WebServlet("/sendId.me")
public class FindIdAjax extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindIdAjax() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String memId2 = request.getParameter("memId2");
		String memId = request.getParameter("memId");
		String to_email = request.getParameter("email");
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

		
		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(user, password);
			}
		});
		
		// email 전송
		try {
				MimeMessage msg = new MimeMessage(session);
				msg.setFrom(new InternetAddress(user, "해피북스데이"));
				msg.setRecipient(Message.RecipientType.TO, new InternetAddress(to_email));
				
				// 메일 제목
				msg.setSubject("해피북스데이 아이디 찾기 결과 메일입니다.");
				// 메일 내용
				msg.setText("아이디는 " + memId2 + " 입니다.");
				
				Transport.send(msg);
				System.out.println("이메일 전송");
				
		} catch (Exception e) {
				e.printStackTrace();
		}
		HttpSession saveKey = request.getSession();
		saveKey.setAttribute("memId2", memId2);
		
		response.getWriter().print(saveKey);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
