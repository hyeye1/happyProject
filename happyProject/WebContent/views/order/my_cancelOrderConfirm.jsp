<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문취소완료 화면</title>
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
	    .delete_complete{
	        width: 500px;
	        height: 1000px;
	    }
	    img{
	        width: 200px;
	        margin-top: 50px;
	        margin-bottom: 50px;
	    }
	    #b2{font-size:large;}
	
	    .buttons{ 
	        margin-top: 30px;
	        margin-left: 50px;
	    }
	    #keepBtn, #delListBtn{
	        width: 130px;
	        height: 30px;
	        border: none;
	        cursor: pointer;
	        border-radius: 5px;
	    }
	    .keepBtn2{
	        background-color: #F9DB7A;
	        margin-right: 150px;
	    }
	    #keepBtn:hover{color: white;}
	    #keepBtn:focus{color:white;}
	
	    #delListBtn:hover{color: white;}
	    #delListBtn:focus{color: white;}
    </style>
</head>
<body>
	<div class="outer">
        <div class="path">홈> 마이페이지> 취소/반품조회 </div>
        <div class="delete_complete">
            <h2>취소/반품조회</h2><hr>
            <div id="bkImg" style="text-align: center;">
                <img src="my_resources/image/bookmainicon.png" alt="">
            </div>
            <div id="complete" style="text-align: center;">
                <span id="compAlert" style="font-size:x-large;"><b style="color: #F9DB7A;">주문취소가 완료되었습니다.</b></span>
                <br><br><br>
                <b>신용카드 결제 취소시 바로 환불 가능하며<br>
                계좌이체/무통장 입금일 경우 취소신청후 3~7일 이내에 결제 금액 환불처리가 됩니다. <br>
                자세한 문의사항은 고객센터<b id="b2" style="color: #F9DB7A;">(1588-0914)</b>또는 1:1문의로 문의주시기 바랍니다.</b>
            </div>
            <div class="buttons">
                <button id="keepBtn" class="keepBtn2">계속 쇼핑하기</button>
                <button id="delListBtn">취소내역조회 </button>
            </div>
        </div>
    </div>
</body>
</html>