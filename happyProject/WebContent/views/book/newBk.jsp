<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.book.model.vo.*"%>
<%
	ArrayList<Book> list = (ArrayList<Book>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

   <style>
        .newOuter{
            margin: auto;
            width: 1000px;
            height: 1850px;
        }
        .addCartImage{
            width: 35px;
            height: 33px;
            float: right;
            margin-top: -44px;
            margin-right: 25px;
        }
        .newCat{margin: 20px;}
        .newOuter a{text-decoration: none; color: gray; font-size: 12px;}
        .newBody td {
            width: 180px;
            text-align: center;
            }

        .newBody p { 
            text-align: left;
            margin-left: 25px;
        }
        .bkName{
            color: black;
            font-size: 14px;
            font-weight: 600;
            vertical-align: top;
        }
        .bkPrice{
            color: rgb(52, 152, 219);
            font-size: 14px;
            font-weight: 600;
            vertical-align: bottom;
        }
        .coverImg{
            width: 130px;
            height: 180px;
            border-radius: 3px;
            box-shadow: 2px 0px 20px -2px gray;
            border: 1px solid darkgray;
        }
        .newBody tr{height: 400px;}
        .addCartWrap{
            position:absolute;
            top: 50%;
            left: 50%;
            box-sizing: border-box;
            width: 290px;
            height: 153px;
            margin-top: -75px;
            margin-left: -150px;
            font-size: 13px;
            box-shadow: 0px 0px 50px 1500px rgba(196, 196, 196, 0.455), 5px 5px 10px 1px rgba(35, 35, 35, 0.565);
            display: none;
        }
        .addCartWrap div{
            box-sizing: border-box;
        }
        #addCartTitle{
            height: 40px;
            background-color: rgb(249, 219, 122);
            border-bottom: none;
        }
        #addCartContent{
            background-color: white;
        }
        #addCartTitleName{
            display: inline-block;
            text-align: center;
            margin-top: 8px;
            border-top-left-radius: 15px;
        }
        #addCartContent button{
            margin-top: -20px;
            margin-bottom: 15px;
        }

    </style>
</head>
<body>

	<%@ include file="../common/menubar.jsp" %>


    <div class="newOuter" align="center">
        
        <div class="newHeader">
            <p align="left" style="color: gray; font-size:11px; font-weight: bolder;">HOME > 신간도서</p>
            <br>
            <h2>신간도서</h2>
        </div>

        <br>

        <div>
            <table class="newBody">
           		 <% for(int j=0; j<4; j++) {%>
                <tr>
            		<%for(int i = 0; i<5; i++) {%>
	                    <td>
		                    <div class="bkD">
		                        <h1><%= (i+1)+j*5 %></h1>
		                            <a href="<%= request.getContextPath()%>/bkDetails.bk?bookNo=<%= list.get(i+(j*5)).getBookNo() %>">
				                        <input class="coverImg" type="image" src="<%= list.get(i+(j*5)).getBkMainImg() %>">
				                        <p>
				                            <span class="bkName"><%= list.get(i+(j*5)).getBkName() %></span><br>
				                            <span class="bkAuthor"><%= list.get(i+(j*5)).getAuthor() %></span><br>
				                            <span class="bkPrice"><%= list.get(i+(j*5)).getBkPrice() + "원" %></span>
				                        </p>
		                            </a>
		                            <a type="button" onclick="cart(<%= list.get(i+(j*5)).getBookNo() %>, <%= list.get(i+(j*5)).getBkPrice() %>);">
		                        		<input type="image" src="resources/images/addCart.png" data-toggle="modal" data-target="#goToCart">
		                    		</a>
		                    </div>
	                    </td>
	                    
                	<% } %>
                </tr>
                <% } %>
            </table>

        <!-- 로그인 전 -->
        <% if(loginUser == null) { %>
	        <!-- The Modal for 로그인전 장바구니버튼 클릭 -->
	        <div class="modal" id="goToCart">
	            <div class="modal-dialog">
		            <div class="modal-content">
		                <!-- Modal Header -->
		                <div class="modal-body" align="center">
		                <h6 class="modal-title" style="text-align: center;"><br><br> 로그인 후 서비스 이용 가능합니다. <br><br> </h6>
		                </div>
		                <!-- Modal footer -->
		                <div class="modal-footer">
		                <button type="button" class="btn btn-warning btn-lg" data-dismiss="modal" style="width:500px; background: rgb(249, 219, 122); border:none">OK</button>
		                </div>
		            </div>
	            </div>
	        </div>
        <!-- 로그인 후  -->
		<% }else { %>
			<!-- The Modal for 로그인후 장바구니버튼 클릭 -->
	        <div class="modal" id="goToCart">
	            <div class="modal-dialog">
	                <div class="modal-content">
	                <!-- Modal Header -->
	                <div class="modal-body" align="center">
	                    <h5 class="modal-title" style="text-align: center;"><br><br>                     
	                        <span id="result"></span>  <br>
	                        <a href="<%= contextPath %>/cList.or" style="text-decoration:none; color:rgb(249, 219, 122);"><h6>장바구니로 이동</h6></a><br>
	                    </h5>
	                </div>
	                    <!-- Modal footer -->
	                <div class="modal-footer">
	                    <button type="button" class="btn btn-warning btn-lg" data-dismiss="modal" style="width:500px; background: rgb(249, 219, 122); border:none">
	                    	<h6 style="margin-top:10px;"> 쇼핑 계속하기 </h6>
	                    </button>
	                </div>
	                </div>
	            </div>
	        </div>
	        <!-- //Modal -->
        <% } %>
         <script>
        		function cart(bkNo, price) {        		        		
	        		$.ajax({
	        			url:"<%= contextPath %>/insertCart.or",
	        			type:"get",
	        			data: {
	        				bookNo: bkNo,
	        				amount: 1,
	        				totalPrice: price
	        			},
	        			success:function(result){
	        				if (result > 0) {
	        					// 성공 모달 띄우기
	        					$('#goToCart #result').text('장바구니에 담겼습니다.');
	        				} else {
	        					// 실패 모달 띄우기
	        					$('#goToCart #result').text('장바구니 추가에 실패하였습니다.');
	        				}
	        			},error:function(){
	        			}
	        		});
        		}
        </script>   
        </div>
    </div>


	<%@ include file="../common/footer.jsp" %>


</body>
</html>