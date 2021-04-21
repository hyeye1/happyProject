<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문취소신청</title>
	<style>
	    .outer{
	        margin: auto;
	        width: 1000px;
	        height: 1140px;
	    }
	    .path{
	        height:2%;
	        width: 1000px;
	        text-align: right;
	    }
	    .cancel_refund{
	            width: 480px;
	            height: 300px;
	        }
	
	    #cancel{
	        border-top-left-radius: 120px;
	        border-top-right-radius: 120px;
	        width:236px;
	        height:30px;
	        border:none;
	        cursor: pointer;
	        background-color: #F9DB7A;
	    }   
	    #cancel:focus{color: white;}
	    #cancel:hover{color: white;}
	       
	    #refund{
	            border-top-left-radius:120px;
	            border-top-right-radius: 120px; 
	            width: 240px;
	            height: 30px;
	            border: none;
	            cursor:pointer;
	            background-color: lightgray;    
	        }
	    #refund:focus{color: white;}
	    #refund:hover{color: white;}
	    .bookpic{
	       width: 50%; position:relative;
	       float: left;
	     
	    }
	    #bookInfo{
	        width: 500px;
	        height: 250px;
	        background-color: #F9DB7A;
	    }
	    #cancelWhy{
	        padding-top: 10%;
	    }
	    .refundInfo{
	        margin-top: 100px;
	        width: 500px;
	        height:250px;
	       border-style: hidden;
	    }
	    #refund_table{
	        width: 500px;
	        height: 150px;
	        border-style: hidden;
	        border-style:solid;
	        border-collapse: collapse;
	    }
	    #agree{
	        margin-top: 40px;
	        width: 500px;
	        height: 15px;
	    }
	    #btn1, #btn2{
	        margin-top: 20px;
	        width: 80px;
	        height: 30px;
	        border-radius:5px; 
	        background-color:  rgb(249, 219, 122);
	        border: none;
	        cursor: pointer;
	    }
	    #btn1{
	        margin-right: 335px;
	        background-color: lightgray;
	
	    }
	    #btn1:hover, #btn2:hover{
	        color: white;
	    }
	    #hr1{ margin-top: 1px;}
    </style>
</head>
<body>
     <div class="outer">
        <br>
        <div class="path">홈>마이페이지>취소/반품</div>
        <h1>취소/반품 신청</h1><hr>
        <br><br><br>
        <div class="cancel_refund">
          
            <button id="cancel"> 취소내역</button> 
            <button id="refund"> 반품내역</button>
            <hr id="hr1">
            
            <h2>주문정보</h2><hr>
            <div id="bookInfo">
             <div class="bookpic">
                <img src="my_resources/image/booksample.jpg" alt="">
             </div>
             <div id="book_text" text>
                <br><br>
                주문일시: 2020-03-25(화) 22:00 <br>
                주문번호: 123-45678 <br><br>
                
                도서명/ 저자명<br>
                수량/ 가격<br>
                <div id="cancelWhy"><b>취소사유선택</b>
                    <select name="why">
                        <option value="mind">단순변심</option>
                        <option value="orderError">주문오류</option>
                        <option value="defect">상품불량</option>
                        <option selected>사유선택</option>
                    </select>

                </div>
             </div>
            </div>
         
       
        </div>

        <div class="refundInfo">
            <h2>환불정보</h2><hr>
            <table id="refund_table" border="1">
                <trtd width="100" height="50" style="background-color: lightgray;" align="center">
                    <td rowspan="5" style="text-align: center;">결제수단 : 카카오페이</td>
                    <td>주문금액</td>
                    <td>20,000원</td>
                </tr>
                    <td>주문상품 금액</td>
                    <td>20,000원</td>
                <tr>
                    <td>배송비</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td>상품할인금액</td>
                    <td>5,000원</td>
                </tr>
                <tr style="color: red;">
                    <td>환불예정 금액</td>
                    <td>15,000원</td>
                </tr>
            </table>


            <table id="agree" style=" border-collapse: collapse;" border="1">
                <tr>
                    <td><input id="ag_check" type="checkbox" name="agree" value="agree"> <label for="checkAg" ><b style="color:chocolate;">주문취소 신청동의</b></label>
                        <br>
                        <p>주문취소 상세내역을 확인하였으며, 이에 동의하시겠습니까?(전자거래법 제8조 2항)</p> 

                    </td>
                </tr>
            </table>

            <button id="btn1">취소</button>
            <button id="btn2">확인</button>
        </div>


    </div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

</body>
</html>