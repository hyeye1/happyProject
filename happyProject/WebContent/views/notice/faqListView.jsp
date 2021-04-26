<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.notice.model.vo.Faq, com.kh.member.model.vo.Member, com.kh.common.model.vo.PageInfo"%>
<%
	String contextPath = request.getContextPath();
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<Faq> list = (ArrayList<Faq>)request.getAttribute("list");
	Member loginUser = (Member)session.getAttribute("loginUser");
	
	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title><script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <!-- Popper JS -->
         <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
         <!-- Latest compiled JavaScript -->
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
		
         
<style>
    .outer{
            margin-top: 50px;
            margin-left: 250px;
            margin-bottom: 20px;
            border: 1px solid white;
            width:800px;
    }
    .listArea{
        border: 1px solid black;
        text-align: center;
    }
    .listArea>tbody>tr:hover{
        cursor:pointer;
        background: rgb(249, 219, 122);
        color: white;
    }
    #text1{font-size:x-large; font-weight: bold;}
    #text2{color:rgb(241, 196, 15); font-weight: bold;}
    #btn{
            width: 60px;
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
    .outer2{margin-right: 45px; padding-top: 10px; padding-bottom: 2px;}
    #btn2{
            border: 1px solid lightgray;
            color: black;
            background-color: lightgray;
            border-radius: 5px;
            padding: 10px;
            
            }
    #btn2:hover{background-color: rgb(249, 219, 122); color:white;}
    .page{font-size: medium; margin-right: 40px;}
    #top{height: 30px; background-color: rgb(249, 219, 122);}
    #btn3{
            width: 150px;
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
        #btn3:hover{background-color: rgb(249, 219, 122); color:white;}
        .bottom{
            border: 1px solid grey;
            width: 735px;
            height: 35px;
            padding-top: 5px;
            padding-left: 20px;
            }
        
</style>

</head>
<body>
	
	<div class="outer">
        <span id="text1">FAQ</span>
        <span>&nbsp;고객님의</span>
        <span id="text2">궁금한 점</span>에 대해 정성을 다해 알려드리겠습니다.<hr>


        <!-- 로그인했고, 로그인한 사용자가 admin일 경우 보여지는 div -->
        <% if(loginUser != null && loginUser.getMemId().equals("admin")) { %>
        <div class="outer2" align="right">
            <button id="btn" onClick="location.href='<%= contextPath %>/enrollForm.faq'">글작성</button>
        </div>
        <% } %>
        
        <table class="listArea">
            <thead>
                <tr id="top">
                    <th width="70">글번호</th>
                    <th width="600">글제목</th>
                    <th width="70">조회수</th>
                </tr>
            </thead>
            <tbody>
            	<% if(list.isEmpty()) { %>
            		<tr>
            			<td colspan="3">존재하는 FAQ가 없습니다.</td>
            		</tr>
            	<% }else { %>
            		<% for(Faq f:list) { %>
                <tr>
                    <td><%= f.getFaNo() %></td>
                    <td><%= f.getFaTitle() %></td>
                    <td><%= f.getCount() %></td>
                </tr>
                <% } %>
                
              <% } %>
            </tbody>
        </table>
        
        <script>
        	$(function(){
        		$(".listArea>tbody>tr").click(function(){
        			// 쿼리스트링으로 url요청
        			location.href = '<%=contextPath%>/detail.faq?fno=' + $(this).children().eq(0).text();
        			
        		})
        	})
        </script>
        
        <br>
        
        <div align="center" class="pagingArea">

			<% if(currentPage != 1) { %>
            	<button id="btn2" onclick="location.href='<%=contextPath%>/list.faq?currentPage=<%=currentPage-1%>';">이전</button>
			<% } %>
			
			<% for(int p=startPage; p<=endPage; p++) { %>
				
				<% if(currentPage == p){ %>
            		<button id="btn2" disabled><%= p %></button>
            	<% }else{ %>
            		<button id="btn2" onclick="location.href='<%=contextPath%>/list.faq?currentPage=<%= p %>';"><%= p %></button>
            	<% } %>
            	
			<% } %>
			
			<% if(currentPage != maxPage){ %>
            	<button id="btn2" onclick="location.href='<%=contextPath%>/list.faq?currentPage=<%=currentPage+1%>';">다음</button>
			<% } %>
			
        </div>

        <br>
        <div class="bottom">
            <span>찾으시는 질문이 없으신가요? 1:1로 문의해주세요.</span>&emsp;
            <button id="btn3" onClick="location.href='<%= contextPath %>/list.q?currentPage=1'">1:1 상담요청하기</button>
        </div>

    </div>
    


        
</body>
</html>