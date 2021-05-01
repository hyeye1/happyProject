package com.kh.admin.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.kh.admin.model.service.Ad_MemberService;

/**
 * Servlet implementation class Ad_MemberDeleteChkServlet
 */
@WebServlet("/deleteChk.mem")
public class Ad_MemberDeleteChkServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ad_MemberDeleteChkServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String[] memNoList = request.getParameterValues("memNoList[]");
		new Ad_MemberService().deleteMem(memNoList);
		
		response.setContentType("application/json; charset=UTF-8");
		
		Gson gson = new GsonBuilder().create();
		
		Map<String,Object> resp = new HashMap<>();
		resp.put("ok", true);
		gson.toJson(resp, response.getWriter()); 
	
		
		
	}

}
