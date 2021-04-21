<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.notice.model.vo.Notice, com.kh.common.model.vo.PageInfo"%>
<%
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<Notice> list = (ArrayList<Notice>)request.getAttribute("list");
 	String contextPath = request.getContextPath(); 
 	
 	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
	
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
    .outer2{margin-left: 700px;}
    #btn2{
            border: 1px solid lightgray;
            color: black;
            background-color: lightgray;
            border-radius: 5px;
            padding: 6px;
            }
    #btn2:hover{background-color: rgb(249, 219, 122); color:white;}
    .pageButton{font-size: medium; margin-left: 310px;}
    #top{height: 30px; background-color: rgb(249, 219, 122);}
</style>

</head>
<body>
	<div class="outer">
        <span id="text1">공지사항</span> &emsp;최신
        <span id="text2">해피북스데이</span>
        <span> 소식을 확인하실 수 있습니다.</span><hr>
        <!-- 로그인했고, 로그인한 사용자가 admin일 경우 보여지는 div -->
        <div class="outer2">
            <button id="btn" onclick="location.href='요청할 url';">글작성</button>
            <br>
        </div>
         
        <table class="listArea" align="center">
            <thead>
                <tr id="top">
                    <th>글번호</th>
                    <th width="370">글제목</th>
                    <th width="150">작성자</th>
                    <th>조회수</th>
                    <th width="130">작성일</th>
                </tr>
            </thead>
            <tbody>
            <% if(list.isEmpty()){ %>
             	<tr>
             		<td colspan="5">존재하는 공지사항이 없습니다. </td>
             	</tr>
            <%} else { %>
            	<% for(Notice n:list) { %>
	                <tr>
	                    <td><%= n.getNoNo() %></td>
	                    <td><%= n.getNoTitle() %></td>
	                    <td><%= n.getNoWriter() %></td>
	                    <td><%= n.getNoCount() %></td>
	                    <td><%= n.getNoDate() %></td>
	                </tr>
	            <%} %>
             <%} %>
          
            </tbody>
        </table>
        <script>
        	$(function(){
        		$(".listArea>tbody>tr").click(function(){
        			
        			// /jsp/detail.bo?bno=글번호
        					
        			location.href = '<%=contextPath%>/detail.bo?bno=' + $(this).children().eq(0).text();
        		})
        	})
        </script>
     

    
    
         <br><br>
	
        <div align="center" class="pagingArea">

			<% if(currentPage != 1) { %>
            	<button onclick="location.href='<%=contextPath%>/list.no?currentPage=<%=currentPage-1%>';">이전</button>
			<% } %>
			
			<% for(int p=startPage; p<=endPage; p++) { %>
				
				<% if(currentPage == p){ %>
            		<button disabled><%= p %></button>
            	<% }else{ %>
            		<button onclick="location.href='<%=contextPath%>/list.no?currentPage=<%= p %>';"><%= p %></button>
            	<% } %>
            	
			<% } %>
			
			<% if(currentPage != maxPage){ %>
            	<button onclick="location.href='<%=contextPath%>/list.no?currentPage=<%=currentPage+1%>';">다음</button>
			<% } %>
			
        </div>
    
    </div>
   
	
        
</body>
</html>