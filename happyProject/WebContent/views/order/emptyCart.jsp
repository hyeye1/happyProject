<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>빈장바구니</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        .emptyCartOuter{
            width:1000px;
            height:700px;
            margin:auto;
        }
        .emptyCartOuter .text{
            float:left;
        }
        
        /* 주문 단계 */
        .emptyCartOuter .step{
            text-align: right;
        }
        .emptyCartOuter .showStep{
            border:none;
            border-radius: 20px;
            padding:10px;
            background: rgb(250, 211, 81);
        }
        .emptyCartOuter .step1{
            background: rgb(248, 229, 165);
        }

        /* 빈 카트 창 */
        .emptyCartOuter .emptyCart{
            border:1px solid darkgray;
            width:680px;
            height:500px;
            float:left;
            margin-top: 20px;
        }
        .emptyCartOuter .emptyCart p{
            color:darkgray;
        }
        .emptyCartOuter #cartImg{
            margin-top:120px;
        }

        /* 써머리 창 */
        .emptyCartOuter .summaryBox{
            border:1px solid darkgray;
            width:300px;
            height:200px;
            display:table-cell;
            float:right;
            margin-top:20px;
        }
        .emptyCartOuter .priceInfo{
            height:65%;
        }
        .emptyCartOuter .priceInfo table{
            margin:auto;
            width:250px;
            height:100%;
            color:grey;
            line-height:1px;
            letter-spacing: -1px;
        }
        .emptyCartOuter .priceInfo .price{
            color:black;
        }
        .emptyCartOuter .totalInfo{
            height:35%;
            background:rgb(252, 233, 170);
        }
        .emptyCartOuter .totalInfo table{
            margin:auto;
            width:250px;
            height:100%;
            font-size:18px
        }
        /* 버튼 */
        .emptyCartOuter #selectBuy{
            width:300px;
            height:60px;
            float:right;
            margin-top:10px;
            background: lightgray;
            border:none;
            font-size:16px;
            font-weight: bolder;
        }

    </style>
</head>
<body>

	<%@ include file = "../common/menubar.jsp" %>
	
	 <div class="emptyCartOuter">
        <br><br><br>

        <!-- 장바구니타이틀, 단계-->
        <div>
            <div class="text">
                <h2 style="display:inline;">장바구니</h2>
            </div>
            <div class="step">
                <button class="showStep btn btn-primary" disabled>01 장바구니 ></button>
                <button class="showStep step1 btn btn-primary" disabled>02 주문하기 ></button>
                <button class="showStep step1 btn btn-primary" disabled>03 결제완료 </button>
            </div>
        </div>
        
        <hr>

        <div>
            <!-- 빈 장바구니 창 -->
            <div class="emptyCart" align="center">
                <img id="cartImg" src="resources/images/cart/장바구니.png" alt="">
                <p>장바구니에 담긴 책이 없습니다.</p>
            </div>

            <!-- 빈 장바구니 써머리 창 -->
            <div class="summaryBox">
                <div class="priceInfo">
                    <table>
                        <tr>
                            <td colspan="2">
                                <img src="resources/images/cart/checked2.png" style="width:20px;"> 
                                <label for="">0권을 선택하셨습니다.</label> 
                            </td>
                        </tr>
                        <tr>
                            <td>총 상품 금액</td>
                            <td class="price" style="text-align: right;">0원</td>
                        </tr>
                        <tr>
                            <td>할인 금액</td>
                            <td class="price" style="text-align: right;">0원</td>
                        </tr>
                    </table>
                </div>
                <div class="totalInfo">
                    <table>
                        <tr>
                            <td>합계</td>
                            <td style="text-align: right;">0원</td>
                        </tr>
                    </table>
                </div>
            </div>
            <button id="selectBuy" class="btn btn-warning btn-lg" data-toggle="modal" data-target="#clickButton">선택 구매하기</button>
        </div>

        <!-- The Modal -->
        <div class="modal" id="clickButton">
            <div class="modal-dialog">
            <div class="modal-content">
            
                <!-- Modal Header -->
                <div class="modal-body" align="center">
                <h6 class="modal-title" style="text-align: center;"><br><br> 선택하신 도서가 없습니다 <br><br> </h6>
                </div>
            
                <!-- Modal footer -->
                <div class="modal-footer">
                <button type="button" class="btn btn-warning btn-lg" data-dismiss="modal" style="width:500px; background: rgb(249, 219, 122); border:none">OK</button>
                </div>
                
            </div>
            </div>
        </div>

    </div>


    <br><br><br><br><br><br>

</body>
</html>