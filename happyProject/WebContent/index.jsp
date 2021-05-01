<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String loginOn = request.getParameter("loginOn");
String memId = request.getParameter("memId");
//System.out.println("loginOn: " + loginOn + ", memId: " + memId);

if(loginOn != null && memId != null) {
	// 쿠키처리
	if(loginOn.equals("true")){
		// 쿠키생성  ( 최상위 루트인 index.jsp에서 )
		Cookie cookie = new Cookie("memId", memId);
		cookie.setMaxAge(60*60*24*14); // 최대 2주일간 로그인 상태 유지
		response.addCookie(cookie);
		System.out.println("id 쿠키 생성");
	} else if (loginOn.equals("false")){
		// 쿠키 아이디 삭제
		Cookie[] cookies = request.getCookies();
		if(cookies != null){
			for(Cookie cookie : cookies){
				if(cookie.getName().equals("memId")){
					// 삭제 : 시간 설정 0
					cookie.setMaxAge(0);
					response.addCookie(cookie);
				}
			}
		}
		
	}
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Happy Books Day</title>
</head>
<body>
	
	<%@ include file="views/common/menubar.jsp" %>

	<%@ include file="views/common/main.jsp" %> 

	<%@ include file="views/common/footer.jsp" %>

</body>
</html>