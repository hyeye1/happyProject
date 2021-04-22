<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.notice.model.vo.Faq, com.kh.member.model.vo.Member"%>
<%
	String contextPath = request.getContextPath();
	Member loginUser = (Member)session.getAttribute("loginUser");
	Faq f = (Faq)request.getAttribute("f");
	// 번호, 제목, 내용, 작성일, 작성자
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .outer{
            margin-top: 50px;
            margin-left: 250px;
            margin-bottom: 20px;
            border: 1px solid white;
            width:800px;
    }
    #text1{font-size:x-large; font-weight: bold;}
    #text2{color:rgb(241, 196, 15); font-weight: bold;}
    .button{margin-right: 150px;}
    #btn{
            width: 70px;
            height: 30px;
            font-size: small;
            font-weight: bold;
            color: gray;
            border: 1px solid lightgrey;
            background-color: rgb(249, 219, 122);
            border-radius: 4px;
            padding: 5px;
            cursor: pointer;
        }
    #btn:hover{background-color: rgb(249, 219, 122); color:white;}
    #writeForm>table{
        border: 1px solid gray; 
        padding: 10px;
        }
    #detailArea{border: 1px solid black; background-color: rgb(249, 219, 122); margin-top: 20px;}
    #detailArea p{height: auto;}
    #detailArea td{background-color: white;}
    #detailArea th{background-color: rgba(253, 240, 198, 0.993);}
</style>

</head>
<body>
	<div class="outer">
        <span id="text1">FAQ</span>&nbsp;
        <span id="text1"style="color:rgb(241, 196, 15)">상세보기</span>
        <hr>
        <form id="writeForm" action="" method="POST">
        	<input type="hidden" name="nno" value="">
            <table id="detailArea" border="1">
                <tr>
                    <th width="80">제목</th>
                    <td colspan="3" width="500"><%= f.getFaTitle() %></td>
                </tr>
                <tr>
                    <th width="70">작성자</th>
                    <td width="250"><%= f.getFaWriter() %></td>
                    <th width="70">작성일</th>
                    <td width="250"><%= f.getFaDate()%></td>
                </tr>
                <tr>
                    <th>내용</th>
                    <td colspan="3" width="550">
                        <p><%= f.getFaContent()%></p>
                    </td>
                </tr>
            </table>
            <br>
            <div class="button" align="center">
            
                <button id="btn" type="button" onClick="location.href='<%= contextPath %>/list.faq'">목록가기</button>
                <!-- 로그인했고, 로그인한 사용자가 admin일 경우 보여지는 div -->
        		<% if(loginUser != null && loginUser.getMemId().equals("admin")) { %>
                <button id="btn" type="button" onClick="location.href='<%= contextPath %>/updateForm.faq?fno=<%=f.getFaNo() %>'">수정하기</button>
                <button id="btn" type="button" onClick="location.href='<%= contextPath %>/delete.faq?fno=<%= f.getFaNo() %>'">삭제하기</button>
            	<% } %>
            </div>
        </form>

    </div>
        
</body>
</html>