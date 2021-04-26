<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.member.model.vo.Coupon"%>
<%
	String contextPath = request.getContextPath();
	ArrayList<Coupon> list = (ArrayList<Coupon>)request.getAttribute("list");
	ArrayList<Coupon> list1 = (ArrayList<Coupon>)request.getAttribute("list1");
%>    

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insert title here</title>
    <style>
        .outer{
            margin-top: 50px;
            margin-left: 250px;
            margin-bottom: 20px;
            border: 1px solid white;
            width:800px;
        }
        .topinfo{
            width: 800px;
            height: 100px; 
            border: 1px solid gray;
            text-align: left;
            padding-top: 10px;
            padding-bottom: 35px;
        }
        .couponList{
            width: 800px;
            text-align: center;
            margin-top: 10px;
        }
        .couponList1{
        	width: 800px;
            text-align: center;
            margin-top: 10px;
            margin-bottom: 50px;
        }
        #text1{font-size:x-large; font-weight: bold;}
        #text2{font-size:large; font-weight: bold;}
        #btn{
            border: 1px solid lightgray;
            color: gray;
            background-color: rgb(249, 219, 122);
            border-radius: 5px;
            padding: 5px;
            font-size: medium;
            cursor: pointer;
        }
        #btn:hover{background-color: rgb(249, 219, 122); color:white;}
        #back{background-color: rgba(249, 219, 122, 0.86); height: 40px;}
        .checkbox{zoom: 1.5; cursor: pointer;}
    </style>
</head>
<body>
    <div class="outer">
            <span id="text1">쿠폰조회</span><hr><br>
        <div class="topinfo">
            <span id="text2">&emsp;쿠폰 안내</span><hr>
            <ul>
                <li>주문시 쿠폰 금액만큼 할인하여 구매하실 수 있습니다.</li>
                <li>유효기간이 지난 쿠폰은 자동으로 내 쿠폰함에서 삭제됩니다.</li>
                <li>쿠폰은 중복사용이 불가합니다.</li>
            </ul>
        </div>
        <br><br>
        <span id="text2">사용 가능한 쿠폰</span>
        <table class="couponList">
      
            <tr id="back">
                <th>번호</th>
                <th>쿠폰명</th>
                <th>할인액</th>
                <th>발급일</th>
                <th>유효기간</th>
            </tr>
       
         
            <% if(list.isEmpty()) { %>
            		<tr>
            			<td colspan="5">존재하는 쿠폰이 없습니다.</td>
            		</tr>
            	<% }else{ %>
            	
            	<% for(Coupon c:list){ %>
		            <tr>
		                <td><%= c.getCouNo() %></td>
		                <td><%= c.getCouName() %></td>
		                <td><%= c.getDiscount() %></td>
		                <td><%= c.getCouStart() %></td>
		                <td><%= c.getCouEnd() %></td>
		            </tr>
            	<% } %>
            	
            <% } %>
          
        </table>

        <br><br><br>
        <span id="text2">사용 완료 및 만료 쿠폰</span>
        

        <table class="couponList1">
            <tr id="back">
                <th>번호</th>
                <th>쿠폰명</th>
                <th>할인액</th>
                <th>발급일</th>
                <th>유효기간</th>
            </tr>
            
            <% if(list1.isEmpty()) { %>
            		<tr>
            			<td colspan="5">존재하는 쿠폰이 없습니다.</td>
            		</tr>
            	<% }else{ %>
            	
            	<% for(Coupon c:list1){ %>
		            <tr>
		                <td><%= c.getCouNo() %></td>
		                <td><%= c.getCouName() %></td>
		                <td><%= c.getDiscount() %></td>
		                <td><%= c.getCouStart() %></td>
		                <td><%= c.getCouEnd() %></td>
		            </tr>
            	<% } %>
            	
            <% } %>
        </table>
    </div>
</body>
</html>