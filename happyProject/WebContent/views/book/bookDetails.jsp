<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.book.model.vo.*" %>
<%
 	Book b = (Book)request.getAttribute("b");
 	Image i = (Image)request.getAttribute("i");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>상품상세</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        .bookDetailOuter{
            width:1000px;
            height:4000px;
            margin:auto;
        }
        /* HOME/국내or해외 페이지로 바로가기*/
        .bookDetailOuter .category a{
            text-decoration:none;
            color:darkgray;
            font-size:15px;
        }
        /* 책 표지이미지, 책 판매정보 */
        .bookDetailOuter .bookImg{
            width:300px;
            height:400px;
            float:left;
            margin-left:10px;
            margin-right:20px;
            box-shadow: 0px 0px 10px 10px rgba(230, 228, 228, 0.565);
        }
        .bookDetailOuter .bookInfo{
            width:300px;
            height:400px;
            display:table-cell;
        }
        /* 화살표 없애기 */
        input[type="number"]::-webkit-outer-spin-button,
        input[type="number"]::-webkit-inner-spin-button{
            -webkit-appearance: none;
            margin:0px;
        }
        /* 바로구매,장바구니,보관함버튼 */
        .bookDetailOuter .goToLink{
            background-color: rgb(249, 219, 122);
            color:white;
            border:none;
        }
        
        /*-- 책소개, 목차, 저자소개, 리뷰 a태그 --*/
        .bookDetailOuter .detail{
            width:180px;
            padding:20px 20px 20px 20px;
            display:table-cell;
        }
        .bookDetailOuter .detail a{
            text-decoration:none;
            color:black;
            font-size:30px;
            font-weight: bold;
            display:block;
            width:100%;
            height:100%;
        }
        .bookDetailOuter .detail a:hover{background: rgb(249, 219, 122);}
        
        /* 목차 */
        .bookDetailOuter .detailTitle{
            width:700px;
            color:rgb(55, 90, 194);
            margin-left:150px;
        }
        .bookDetailOuter .link{
            width:700px;
            margin-left:150px;
            font-size:16px;
            color:dimgray
        }
        .bookDetailOuter .link, pre, .detailImg{
            margin-bottom:200px;
        }
        .bookDetailOuter .detailImg{
        	width:100%;
        } 

        /* 리뷰 */
        .bookDetailOuter .inputReview{
            border:1px solid black;
            width:700px;
            height:300px;
            margin:auto;
        }
        .bookDetailOuter .inputReview .reviewBt{
            border:none;
            height:18%;
        }
        .bookDetailOuter .inputReview .reviewContent{
            border:none;
            height:82%;
            background:rgb(235, 235, 235);
        }
        .bookDetailOuter .reviewDetail{
            border:1px solid black;
            width:700px;
            height:400px;
            margin-left:150px;
        }
        .bookDetailOuter .reviewBt{
            border:1px solid black;
            height:15%;
        }
        .bookDetailOuter .reviewContent{
            border:1px solid black;
            height:85%;
        }
        .bookDetailOuter #reviewContent{
            width:100%; 
            height:100%; 
            background:transparent; 
            resize: none; 
            border:none; 
            font-size: 14px;
            padding:10px;
        }
        .bookDetailOuter .reviewArea{
            border-top:1px solid black;
            border-bottom: 1px solid black;
            margin:auto;
            width:700px;
            height:300px;
        }
        .bookDetailOuter .reviewArea table{
            margin:auto;
            width:600px;
            height:300px;
        }
        .bookDetailOuter .reviewArea>table tr:hover{
            background-color:wheat;
        }
        
    </style>
</head>
<body>

	<%@ include file = "../common/menubar.jsp" %>
	
	<div class="bookDetailOuter">
        <br>

        <!-- 바로가기 카테고리 -->
        <div class="category" align="left">
            <a href="" id="home">HOME</a>
            >
            <a href="" id="localBook"><%-- <%= b.getBkDivision() %> --%></a>
        </div>
        <br>
        <!-- 책 제목 -->
        <div class="bookTitle" align="left">
                <h2><b><%= b.getBkName() %></b></h2>
                <hr>
        </div>
		<br>
        <div style="margin-left:200px">
            <!-- 책 표지 이미지 -->
            <div class="bookImg">
                <img src="<%= b.getBkMainImg() %>" width="300" height="400">
            </div>
            <!-- 책 정보 -->
            <div class="bookInfo" align="left">
                <br>
                <p><b><%= b.getAuthor() %></b> 지음</p>
                <p><b><%= b.getPublisher() %></b></p>
                <p><%= b.getBkPubDate() %></p><br>
                <p>정가 : <%= b.getBkOrgPrice() %></p>
                <p style="display: inline;">판매가 : <h4 style="color:red; font-weight: bolder;; display:inline;"><%= b.getBkPrice() %>원</h4></p>
                <p>
                    <small>
                        구매금액의 1% 적립해드립니다. (배송완료 후) <br>
                        배송비 3,000원 (20,000원 이상 주문시 무료배송) <br><br>
                    </small>
                </p>
                <form>
                    <b>주문수량 </b> :
                    <input type=button value="-" onClick="javascript:this.form.amount.value--;" class="btn btn-primary btn-sm" style="background:lightgray; border:none;">
                    <input type=number name=amount value=1 min="1" max="10" readonly>
                    <input type=button value="+" onClick="javascript:this.form.amount.value++;" class="btn btn-primary btn-sm" style="background:lightgray; border:none;">
                </form>
            </div>
        </div>

        <br><br>
        
        <!-- 주문하기, 보관하기 버튼 -->
        <div align="center" >
            <button class="goToLink btn btn-warning btn-lg">바로구매</button>&nbsp;&nbsp;
            <button class="goToLink btn btn-warning btn-lg" data-toggle="modal" data-target="#goToCart" onclick="cart();">장바구니</button>&nbsp;&nbsp;
            <button class="goToLink btn btn-warning btn-lg">보관함</button>
        </div>
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
	                        장바구니에 담겼습니다.  <br>
	                        <a href="<%= contextPath %>/cList2.or" style="text-decoration:none; color:rgb(249, 219, 122);"><h6>장바구니로 이동</h6></a><br>
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
        <br><br>
        <hr>
        <br>

        <!-- 책소개, 목차, 저자소개, 리뷰 링크 -->
        <div class="bookDetail" align="center">
            <div class="detail"><a href="#infoLink">책소개</a></div>
            <div class="detail"><a href="#contentLink">목차</a></div>
            <div class="detail"><a href="#authorLink">저자소개</a></div>
            <div class="detail"><a href="#reviewLink">리뷰</a></div> 
        </div>
        <br>
        <hr><br><br>

        <!-- 책소개 -->
        <h5 class="detailTitle" id="infoLink">책소개</h5>
        <div class="link">
            <p><%= b.getBkDescription() %></p>
            <img class="detailImg" src="<%= contextPath %>/<%= i.getImgPath() %>" onerror="this.style.display='none'" >
        </div>
	   
       
        <!-- 목차 -->
        <h5  class="detailTitle" id="contentLink">목차</h5>
        <div class="link">
<pre>
<%= b.getBkContentList() %>
</pre>
        </div>

        <!-- 저자소개 -->
        <h5 class="detailTitle" id="authorLink">저자소개</h5>
        <div class="link">
            <p><%= b.getAtDescription() %></p>
        </div>

        <!-- 리뷰작성하기 -->
        <h5 class="detailTitle" id="reviewLink">리뷰</h5>
        <form action="">
            <div class="inputReview">
                <div class="reviewBt" align="right">
                
                	<% if(loginUser == null){ %>
                    <!-- 로그인 전 -->
                    <button type="submit" onclick="review();" class="btn btn-primary" style="width:80px; background:rgb(249, 219, 122); color:black; border:none; margin-top:8px; margin-right:8px;">등록</button>
                	<% }else { %>
                	<!-- 로그인 후 -->
                	 <button type="submit" id="inputReview" class="btn btn-primary" style="width:80px; background:rgb(249, 219, 122); color:black; border:none; margin-top:8px; margin-right:8px;">등록</button>
               		<% } %>
               		
                </div>
                <div class="reviewContent">
                    <textarea name="content" id="reviewContent" placeholder="작품과 무관한 광고,욕설, 및 비방,청소년보호정책에 위배되는 내용은 사전 동의 없이 비공개 처리 될 수 있습니다." required></textarea>
                </div>
            </div>
        </form>
        <br><br>
	
		
        <!-- 리뷰 없을 때 list -->
        <h6 class="detailTitle">전체</h6>
        <div class="reviewArea">
            <h6 style="color:rgb(249, 219, 122); margin:15px;">최신순</h6>
            <hr>
            <p align="center" style="font-size:16px;">회원님께서 첫 리뷰의 주인공이 되어주세요.</p>
        </div>
        <br><br>
        <!-- 리뷰 있을 때 list -->
        <h6 class="detailTitle">전체</h6>
        <div class="reviewArea" id="reviewList">
            <h6 style="color:rgb(249, 219, 122); margin:15px;">최신순</h6>
            <hr>
            <table>
                <thead>
                    <tr>
                        <th>user1</th>
                        <td>진짜 재밌었어요~!</td>
                        <td>2020-07-20</td>
                    </tr>
                    <tr>
                        <th>user2</th>
                        <td>추천합니다</td>
                        <td>2020-07-01</td>
                    </tr>
                    <tr>
                        <th>user3</th>
                        <td>친구가 추천해줘서 봤는데 별로에요ㅠㅠ핵노잼</td>
                        <td>2020-06-18</td>
                    </tr>

                </thead>
                <tbody>

                </tbody>
            </table>
        </div>
        
        
    </div>

</body>
</html>