<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

 	<style>
			a:link{ text-decoration:none; } 
        	a:active{ text-decoration:none;  color:#F9DB7A; }

			.outer{  
			margin: auto;
            border: 1px;
            width: 1000px;
            height: 1140px;

			}
			.sideBar01{
				border: 1px solid black;
				width: 280px;
				height: 1100px;
			}
			#sideBar02{
				width: 250px;
				height: 1100;
				border: 1px solid black;
			
			}
			#myTitle{
			
				font-size:x-large;
				font-weight: bold;
				background-color: #F9DB7A;
				height: 50px;
				padding-top: 10px;
			}
			#myTitle02{
				padding-bottom: 15px;
				font-size: 18px;;
				font-weight: bold;
				color:#F9DB7A;
				padding-left: 20px;

			}
			td{	
				padding-left: 20px;
				font-size: medium;
			}
    	</style>
 
</head>
<body>


<aside>
	<div class="outer">
			<div class="sideBar01">
					<div class="sideBar02">
					
					<div id="myTitle" style="text-align: center;">마이페이지 </div>
					<hr style="margin-top: 0%;">
					<form action="<%= request.getContextPath() %>" method="POST" >
					<table id="sideBar03" >
						<tr>
							<td id="myTitle02"style="padding-top: 30px;">주문내역</td>
						</tr>
						<tr>
							<td><a href="<%=contextPath%>/myTracking.me" style="color: lightslategrey">주문/ 배송조회</a></td>										
						</tr>
						<tr>
							<td><a href ="<%=contextPath%>/cancelrefund.me" style="color: lightslategrey">취소/반품조회</a></td>
						</tr>
						<tr>
							<td><a href="<%=contextPath%>/myaddress.me" style="color: lightslategrey">나의 배송지 관리</a></td>
						</tr>
					</table>
					<table id="sideBar04"style="margin-top: 70px;" >
						<tr>
							<td id="myTitle02">나의 책갈피</td>
						</tr>
						<tr>
							<td><a href="<%=contextPath%>/todaylsit.me" style="color: lightslategrey">오늘 본 상품</a></td>
						</tr>
						<tr>
							<td><a href="<%=contextPath%>/like.me" style="color: lightslategrey">보관함</a></td>
						</tr>
						<tr>
							<td><a href="http://localhost:8880/happyProject/reviewWrite.me" style="color: lightslategrey">나의 리뷰</a></td>
						</tr>
					</table>
					<table id="sideBar05"style="margin-top: 70px;">
						<tr>
							<td id="myTitle02">나의혜택</td>
						</tr>
						<tr>
							<td><a href="http://localhost:8880/happyProject/coupon.me" style="color: lightslategrey">쿠폰</a></td>
						</tr>
					
					</table>
					<table id="sideBar06" style="margin-top: 70px;">
						<tr>
							<td id="myTitle02">나의 상담</td>
						</tr>
						<tr>
							<td><a href="http://localhost:8880/happyProject/enrollForm.q" style="color: lightslategrey">1:1 상담하기</a></td>
						</tr>
						<tr>
							<td><a href="http://localhost:8880/happyProject/list.q?currentPage=1" style="color: lightslategrey">나의 문의내역</a></td>
						</tr>
					
					</table>
					<table id="sideBar07"style="margin-top: 70px;">
						<tr>
							<td id="myTitle02">회원정보관리</td>
						</tr>
						<tr>
							<td><a href="http://localhost:8880/happyProject/myPage.info" style="color: lightslategrey">회원정보 수정</a></td>
						</tr>
						
						
					</table>
					</form>
				</div>

			</div>

		</div>
	</aside>
</body>
</html>