<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>주문내역상세보기페이지</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        .orderDetailsOuter{
            width:1000px;
            height:1800px;
            margin:auto;
        }

        /* 주문상품 테이블 */
        .orderDetailsOuter .odTable{
            border-top:1px solid darkgray;
            border-bottom:1px solid darkgray;
            font-size:14px;
        }
        .orderDetailsOuter .odTable td{
            border-top:1px solid darkgray;
            text-align: center;;
        }
        .orderDetailsOuter .odTable .bookInfo{
            text-align: left;
        }
        .orderDetailsOuter .odButton1{
            color:black;
            background:rgb(44, 149, 253);
            border:none;
            font-size:12px;
        }
        .orderDetailsOuter .odButton2{
            color:black;
            background:floralwhite;
            border:none;
            font-size:12px;
        }
        
        /* 결제정보 */
        .orderDetailsOuter .paymentInfo{
            width:1000px;
            height:250px;
        }
        .orderDetailsOuter .paymentInfo tr td{
            padding: 30px;
            width:332px;
            border:1px solid lightgray;
        }
        .orderDetailsOuter .paymentInfo .infoTitile{
            text-align: left;
        }
        .orderDetailsOuter .paymentInfo .infoContent{
            float:right;
        }
        .orderDetailsOuter .paymentInfo .firstInfo{
            height:50%;
        }
        .orderDetailsOuter .paymentInfo .secondInfo{
            height:50%;
        }
        .orderDetailsOuter .paymentInfo .firstInfo .ifnoTitle{
            font-size: 18px;
            font-weight: bolder;
        }
        .orderDetailsOuter .paymentInfo .firstInfo .infoContent{
            font-size: 20px;
        }
        .orderDetailsOuter .paymentInfo .secondInfo td{
            font-size: small;
            line-height: 2;
        }

        /* 배송정보 */
        .orderDetailsOuter .dvInfo{
            width:1000px;
            height:200px;
            text-align: center;
            font-size: 14px;
        }
        .orderDetailsOuter .dvInfo td{
            border:1px solid lightgray;
        }
        .orderDetailsOuter .dvInfo .infoTitile{
            width:20%;
            background: rgb(248, 240, 211);
        }
        .orderDetailsOuter .dvInfo .infoContent{
            width:80%;
        }
    </style>
</head>
<body>
	
	<%@ include file = "../common/menubar.jsp" %>

	<div class="orderDetailsOuter">
        <br><br>
        <h2>주문내역 상세보기</h2>
        <hr>
        <div style="line-height:0.5;">
            <p>주문일자 <b>2021.03.27</b> </p>
            <p>주문번호 <b>BOOK01</b>는 <span style="color:rgb(249, 219, 122)">HAPPY배송</span> 으로 <span style="color:red; font-weight: bolder; font-size:26px;">4월 13일</span>에 도착할 예정입니다.</p>
        </div>
        <br><br><br><br>

        <!-- 주문상품 폼 -->
        <form class="orderForm" action="" style="width:1000px;">
            <fieldset style="border:none;">
                <legend><h4 style="font-weight: bolder;">주문상품(3종3개)</h4></legend>
                <br>
                <table class="odTable">
                    <tr>
                        <th colspan="2" style="width:500px; text-align: center;">상품정보</th>
                        <th style="width:200px; text-align: center; ">배송비</th>
                        <th algin="center" style="width:300px; text-align: center;">배송상태</th>
                    </tr>
                    <tr>
                        <td style="width:100px; height:100px;">
                            <img src="../화면구현/img/달러구트_표지.png" id="" style="width:80px; height:100px;">
                        </td>
                        <td class="bookInfo">
                            <b>달러구트 꿈 백화점|잠들어야만 입장 가능합니다</b> <br>
                            <small>이미예</small> <br><br>
                            <span>9,000원 | 수량 1개</span>
                        </td>
                        <td>0원</td>
                        <td>주문 접수 중</td>
                    </tr>
                    <tr>
                        <td style="width:100px; height:100px;">
                            <img src="../화면구현/img/돈의심리학.png" id="" style="width:80px; height:100px;">
                        </td>
                        <td class="bookInfo">
                            <b>돈의심리학</b> <br>
                            <small>모건 하우절</small> <br><br>
                            <span>13,000원 | 수량 1개</span>
                        </td>
                        <td>0원</td>
                        <td>주문 접수 중</td>
                    </tr>
                    <tr>
                        <td style="width:100px; height:100px;">
                            <img src="../화면구현/img/해리포터.png" id="" style="width:80px; height:100px;">
                        </td>
                        <td class="bookInfo">
                            <b>해리포터시리즈 개정번역판</b> <br>
                            <small>조앤.k.롤링</small> <br><br>
                            <span>20,000원 | 수량 1개</span>
                        </td>
                        <td>0원</td>
                        <td>주문 접수 중</td>
                    </tr>
                </table>
            </fieldset>
        </form>

        <br><br>
        <hr>
        <br><br>

        <!-- 결제정보 테이블 -->
        <h4 style="font-weight: bolder;">결제정보</h4>
        <br>
        <table class="paymentInfo">
            <tr class="firstInfo">
                <td>
                    <span class="ifnoTitle">주문금액</span>
                    <span class="infoContent"><b>42,000원</b></span>
                </td>
                <td>
                    <span class="ifnoTitle">할인금액</span>
                    <span class="infoContent"><b>0원</b></span>
                </td>
                <td>
                    <span class="ifnoTitle" style="line-height: 3; color:red;">결제금액</span>
                    <span class="infoContent"><b style="font-size: 30px; color:red;">42,000원</b></span>
                </td>
            </tr>
            <tr class="secondInfo">
                <td>
                    <div>
                        <span class="ifnoTitle">상품금액</span>
                        <span class="infoContent">42,000원</span>
                    </div>
                    <div>
                        <span class="ifnoTitle">배송비</span>
                        <span class="infoContent">0원</span>
                    </div>
                </td>
                <td>
                    <div>
                        <span class="ifnoTitle">쿠폰할인</span>
                        <span class="infoContent">0원</span>
                    </div>
                    <div>
                        <span class="ifnoTitle">적립금사용</span>
                        <span class="infoContent">0원</span>
                    </div>
                </td>
                <td>
                    <div>
                        <span class="ifnoTitle">신용/체크 카드</span>
                        <span class="infoContent">42,000원</span>
                    </div>
                    <div style="color:lightgray;">결제일시 2021.03.25 18:03</div>
                </td>
            </tr>
        </table>
        
        <br><br><hr><br><br>

        <!-- 배송정보 -->
        <h4 style="font-weight: bolder;">배송정보</h4>
        <br>
        <table class="dvInfo">
            <tr>
                <td class="infoTitile">받는사람</td>
                <td class="infoContent">안소은</td>
            </tr>
            <tr>
                <td class="infoTitile">휴대폰</td>
                <td class="infoContent">010-1234-9876</td>
            </tr>
            <tr>
                <td class="infoTitile">주소</td>
                <td class="infoContent">서울시 용산구 녹사평대로 132 1102호</td>
            </tr>
            <tr>
                <td class="infoTitile">배송시 요청사항</td>
                <td class="infoContent">경비실에 맡겨주세요^ㅇ^</td>
            </tr>
        </table>

    </div>

</body>
</html>