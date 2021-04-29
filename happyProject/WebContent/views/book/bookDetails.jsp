<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.book.model.vo.*, com.kh.member.model.vo.Member, com.kh.order.model.vo.Cart" %>
<%
 	Book b = (Book)request.getAttribute("b");
 	Image i = (Image)request.getAttribute("i");
 	ArrayList<Review> list = (ArrayList<Review>)request.getAttribute("list");
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
            width:400px;
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
        .bookDetailOuter .inputReview .reviewBtDiv{
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
        /* 리뷰 버튼 */
        .bookDetailOuter .insertRvBt{
            width:80px; 
            background:rgb(249, 219, 122); 
            color:black; 
            border:none; 
            margin-top:8px; 
            margin-right:8px;
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
            border-bottom:1px solid black;
            margin:auto;
            margin-bottom:200px;
            width:700px;
            height:220px;
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
<body onload="init();">

	<%@ include file = "../common/menubar.jsp" %>
	
	<div class="bookDetailOuter">
        <br>

        <!-- 바로가기 카테고리 -->
        <div class="category" align="left">
            <a href="<%= contextPath %>" id="home">HOME</a>
            >
            <a href="" id="localBook"> <%= b.getBkDivision() %> </a>
        </div>
        <br>
        
        <!-- 책 제목 -->
        <div class="bookTitle" align="left">
                <h2><b><%= b.getBkName() %></b></h2>
                <hr>
        </div>
		<br><br>
		<!-- 장바구니에 넘길 값의 폼 -->
        <form style="margin-left:200px" name="form" mehod="get" action="<%= contextPath %>/insertCart.or">
            
            <!-- 책 표지 이미지 -->
            <div class="bookImg">
                <img src="<%= b.getBkMainImg() %>" width="300" height="400">
            </div>
            <!-- 도서정보 -->
            <div class="bookInfo" align="left">
                <br>
                <p><b><%= b.getAuthor() %></b> 지음</p>
                <p><b><%= b.getPublisher() %></b></p>
                <p><%= b.getBkPubDate() %> 발매</p>
                <p>정가 : <%= b.getBkOrgPrice() %>원</p>
                <p style="display: inline;">판매가 : <h4 style="color:red; font-weight: bolder;; display:inline;"><%= b.getBkPrice() %>원</h4></p>
                <p>
                    <small>
                        구매금액의 1% 적립해드립니다. (배송완료 후) <br>
                        배송비 3,000원 (20,000원 이상 주문시 무료배송) <br>
                    </small>
                </p>
                <div>
                	<div style="margin-bottom:10px;">
	                    주문수량 :
	                    <input type="hidden" name="price" value="<%= b.getBkPrice() %>">
	                    <input type=button value="-" onclick="del();" class="btn btn-primary btn-sm" style="background:lightgray; border:none;">
	                    <input type=number name=amount value="1" min="1" max="10" readonly onchange="change();" style="text-align: center;">
	                    <input type=button value="+" onclick="add();" class="btn btn-primary btn-sm" style="background:lightgray; border:none;"> <br>
	                    <!-- 회원이 선택한 수량만큼의 값 -->
	                    <input type="hidden" name="sum" size="10" readonly> 
                	</div>
                	<!-- 주문하기, 보관하기 버튼 -->
			        <div>
			            <button type="button" class="goToLink btn btn-warning btn-lg">바로구매</button>&nbsp;&nbsp;
			            <button onclick="cart();" id="goCart" type="button" class="goToLink btn btn-warning btn-lg" data-toggle="modal" data-target="#goToCart">장바구니</button>&nbsp;&nbsp;
			            <button type="button" class="goToLink btn btn-warning btn-lg">보관함</button>
			        </div>
                </div>
                <!-- 사용자가 담은 수량만큼의 가격 계산하는 script -->
                <script>
	                    var price;
	                    var amount;
	                    function init () {
	                        price = document.form.price.value;
	                        amount = document.form.amount.value;
	                        document.form.sum.value = price;
	                        change();
	                    }
	                    function add () {
	                        hm = document.form.amount;
	                        sum = document.form.sum;
	                        hm.value ++ ;
	                        sum.value = parseInt(hm.value) * price;
	                    }
	                    function del () {
	                        hm = document.form.amount;
	                        sum = document.form.sum;
	                            if (hm.value > 1) {
	                                hm.value -- ;
	                                sum.value = parseInt(hm.value) * price;
	                            }
	                    }
	                    function change () {
	                        hm = document.form.amount;
	                        sum = document.form.sum;
	                    
	                            if (hm.value < 0) {
	                                hm.value = 0;
	                            }
	                        sum.value = parseInt(hm.value) * price;
	                    }  
                   </script>
            </div>
            <input type="hidden" id="bkNo" value="<%= b.getBookNo() %>">
        </form>
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
	            	<input type="hidden" value="${loginUser}" name="loginUser">
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
        	//$("#inputCart").click(function(){
        		function cart() {
	        		var bkNo = $("#bkNo").val();
	        		//var memNo = $("#memNo").val();
	        		var amount = $('input[name=amount]').val();
	        		var sum = $('input[name=sum]').val();
	        		$.ajax({
	        			url:"<%= contextPath %>/insertCart.or",
	        			type:"get",
	        			data: {
	        				bookNo: bkNo,
	        				amount: amount,
	        				totalPrice: sum
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
        	//});
        </script>
		
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
        	<% if(i.getBookNo() == b.getBookNo()){ %>    
            	<img class="detailImg" src="<%= contextPath %>/<%= i.getImgPath() %>" onerror="this.style.display='none'">
        	<% } %>
        </div>
	   
        <!-- 목차 -->
        <h5  class="detailTitle" id="contentLink">목차</h5>
        <div class="link">
<pre style="font-size: 16px; color:dimgray; letter-spacing: -1px;">
<%= b.getBkContentList() %>
</pre>
        </div>

        <!-- 저자소개 -->
        <h5 class="detailTitle" id="authorLink">저자소개</h5>
        <div class="link">
            <p><%= b.getAtDescription() %></p>
        </div>


        <% if(loginUser == null){ %>  
            <!-- 로그인 전 리뷰작성하기  -->
            <h5 class="detailTitle" id="reviewLink">리뷰</h5>
            <div action="">
                <div class="inputReview">
                    <div class="reviewBtDiv" align="right">
                        <button class="insertRvBt btn btn-primary"  data-toggle="modal" data-target="#insertReview">등록</button>
                    </div>
                    <div class="reviewContent">
                        <textarea name="content" id="reviewContent" placeholder="작품과 무관한 광고,욕설, 및 비방,청소년보호정책에 위배되는 내용은 사전 동의 없이 비공개 처리 될 수 있습니다."></textarea>
                    </div>
                </div>
            </div>
            <!-- The Modal -->
            <div class="modal" id="insertReview">
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
        <% }else { %>
            <!-- 로그인 후 리뷰내용 입력했을 때  -->
            <h5 class="detailTitle" id="reviewLink">리뷰</h5>
            <form action="<%= contextPath %>/insert.re" method="post">
                <div class="inputReview">
                    <div class="reviewBtDiv" align="right">
                        <button class="insertRvBt btn btn-primary"  data-toggle="modal" data-target="#insertReview">등록</button>
                    </div>
                    <div class="reviewContent">
                        <textarea name="content" id="reviewContent" placeholder="작품과 무관한 광고,욕설, 및 비방,청소년보호정책에 위배되는 내용은 사전 동의 없이 비공개 처리 될 수 있습니다." required></textarea>
                    </div>
                </div>
            </form>
            <!-- The Modal -->
            <div class="modal" id="insertReview">
                <div class="modal-dialog">
                    <div class="modal-content">
                            
                        <!-- Modal Header -->
                        <div class="modal-body" align="center">
                        <h6 class="modal-title" style="text-align: center;"><br><br> 리뷰가 성공적으로 등록되었습니다. <br><br> </h6>
                        </div>
                            
                        <!-- Modal footer -->
                        <div class="modal-footer">
                        <button type="button" class="btn btn-warning btn-lg" data-dismiss="modal" style="width:500px; background: rgb(249, 219, 122); border:none">OK</button>
                        </div>
                                
                    </div>
                </div>
            </div>
        <% } %>
        <br><br>
	
		<% if(list.isEmpty()) { %>
        <!-- 리뷰 없을 때 list -->
        <h6 class="detailTitle">전체</h6>
        <div class="reviewArea">
            <h6 style="color:rgb(249, 219, 122); margin:15px; float:left;">최신순</h6>
            <hr>
            <p align="center" style="font-size:16px;">회원님께서 첫 리뷰의 주인공이 되어주세요.</p>
        </div>
        <br><br>
        <% }else { %>
        <!-- 리뷰 있을 때 list -->
        <h6 class="detailTitle">전체</h6>
        <div class="reviewArea" id="reviewList">
            <h6 align="right" style="margin:15px;"><b>최신순</b></h6>
            <hr>
            <% for(Review r:list) { %>
            <table style="width:100%;">
                <thead>
                    <tr>
                    	 <td align="center" style="color:rgb(249, 219, 5);"><b><%= r.getMemNoRe() %></b></td>
                    	 <td align="center" style="width:550px;"><%= r.getReContent() %></td>
                    	 <td><%= r.getReDate() %></td>
                    </tr>
					<% } %>
                
              <% } %>
                </thead>
                <tbody>

                </tbody>
            </table>
        </div>
        <br><br><br><br><br><br><br><br>
        
    </div>

</body>
</html>