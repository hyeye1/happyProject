<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import=" com.kh.member.model.vo.Member, com.kh.notice.model.vo.Notice" %>
<%
	String contextPath = request.getContextPath(); 
	Member loginUser = (Member)session.getAttribute("loginUser");
	Notice n =(Notice)request.getAttribute("n");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .outer{
            margin-top: 50px;
            margin: auto;
            margin-bottom: 20px;
            border: 1px solid white;
            width:800px;
    }
    #text1{font-size:x-large; font-weight: bold;}
    #text2{color:rgb(241, 196, 15); font-weight: bold;}
    .button> a{
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
    .button> a:hover{background-color: rgb(249, 219, 122); color:white; }
    .button > a{ text-decoration: none;}
    .button{margin: auto;
    		margin-left:300px;}
    table{
        border: 1px solid gray; 
        padding: 10px;
        }
    #detailArea{border: 1px solid black; background-color: rgb(249, 219, 122);}
    #detailArea p{height: 200px;}
    #detailArea td{background-color: white;}
    #detailArea th{background-color: rgba(253, 240, 198, 0.993);}
</style>

</head>
<body>
	<div class="outer">
        <span id="text1">공지사항</span>
        <span id="text1"style="color:rgb(241, 196, 15)">상세보기</span>
        <hr>
       
        	
            <table id="detailArea" align="center" border="1">
                <tr>
                    <th width="70">제목</th>
                    <td colspan="3" width="500"><%= n.getNoTitle() %></td>
                </tr>
                <tr>
                    <th>작성자</th>
                    <td width="200"><%= n.getNoWriter() %></td>
                    <th>작성일</th>
                    <td><%= n.getNoDate() %></td>
                </tr>
                <tr>
                    <th>내용</th>
                    <td colspan="3">
                        <p><%= n.getNoContent() %></p>
                    </td>
                </tr>
            </table>
            <br>
            <div class="button">
                <a href="<%= contextPath %>/list.no?currentPage=1" class="btn btn-secondary btn-sm">목록가기</a>

                <!-- 현재 로그인한 사용자가 해당 글을 작성한 작성자일 경우 보여지는 버튼 -->
                <% if(loginUser != null && loginUser.getMemId().equals(n.getNoWriter())) {%>
                <a href="<%= contextPath %>/updateForm.no?nno=<%=n.getNoNo()%> "class="btn btn-warning btn-sm" >수정하기</a>
                <a href="<%= contextPath %>/delete.no?nno=<%= n.getNoNo() %>" class="btn btn-danger btn-sm">삭제하기</a>
                <% } %>
            </div>
       
    </div>
        
</body>
</html>