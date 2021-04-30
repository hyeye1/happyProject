<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.order.model.vo.Order"%>
 <% %>

<!DOCTYPE html>
<html>
<head>
	 <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>결제완료페이지</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        .orderCompleteOuter{
            width:1000px;
            height:600px;
            margin:auto;
        }

        /* 주문 단계 */
        .orderCompleteOuter .text{
            float:left;
        }
        .orderCompleteOuter .step{
            text-align: right;
        }
        .orderCompleteOuter .showStep{
            border:none;
            border-radius: 20px;
            padding:10px;
            background: rgb(250, 211, 81);
        }
        .orderCompleteOuter .step1{
            background: rgb(248, 229, 165);
        }

        /* 주문내역 상세보기 버튼 */
        #detailButton{
            background:rgb(249, 219, 122);
            width:300px;
            height:40px;
            font-size:15px;
            border:0px;
        }
    </style>
</head>
<body>
	
	<%@ include file = "../common/menubar.jsp" %>
	

	<div class="orderCompleteOuter">
        <br><br>
        <!-- 결제완료 타이틀, 단계-->
        <div>
            <div class="text">
                <h2 style="display:inline;">결제완료</h2>
            </div>
            <div class="step">
                <button class="showStep step1 btn btn-primary" disabled>01 장바구니 ></button>
                <button class="showStep step1 btn btn-primary" disabled>02 주문하기 ></button>
                <button class="showStep btn btn-primary" disabled>03 결제완료 </button>
            </div>
        </div>
        <hr>
        <br><br>
        
        <div align="center">
            <br><br>
            <img src="resources/images/cart/check.png" alt="">
            <h2>주문이 성공적으로 접수되었습니다.</h2>
            <br>
            <div>
                <span>주무번호()</span>
                <span>|</span>
                <span>안소은 고객님 감사합니다.</span>
            </div>
            <p>
                주문 및 배송조회는 <a href="views/member/my_mypageMain.jsp">마이페이지</a> > <a href="">주문/배송조회</a> 에서 확인 가능합니다.
            </p>
            <br>
            <button id="detailButton" class="btn btn-warning btn-lg" onclick="orderDetails();">주문내역 상세보기</button>
        </div>
		<script type="text/javascript">
			function orderDetails(){
				location.href = "<%= contextPath %>/orderDet.or";
			}
		</script>
        


    </div>
	
</body>
</html>