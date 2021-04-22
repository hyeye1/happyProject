<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오늘본 상품</title>
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
    .tdayList01{
        width: 500px;
        height: 1000px;
    }
    .tdayList02{
        width: 500px;
        height: 900px; 
    }
    .btnAll{
        margin-top: 50px;
        margin-bottom: 20px;
        margin-left: 165px;
    }
    #buttons{
        background-color: #F9DB7A;
        width: 80px;
        height: 30px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }
    #all{
        background-color: lightgray;
        width: 80px;
        height: 30px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    #buttons:hover{color: white;}
    #buttons:focus{color: white;}

    #all:hover{color:white;}
    #all:focus{color:white;}


    #tdayTable{
        width: 500px;
        height: 800px;
        text-align: center;
        border-color: lightgray;
    }

    img{
        width: 150px;
        cursor: pointer;
    }
    b{
        font-size: large;
        color: #F9DB7A;
    }
    </style>

</head>
<body>
<div class="outer">
    <div class="path">홈>마이페이지>나의책갈피</div>
    <div class="tdayList01">
        <h2>오늘 본 상품</h2><hr>
        <div class="tdayList02">
            <div class="btnAll">
                <button id="buttons">전체선택</button>
                <button id="buttons">장바구니</button>
                <button id="buttons">바로구매</button>
                <button id="all">전체삭제</button>
            </div>

            <table id="tdayTable" border="1"  style="border-collapse: collapse;">
                <tr style="background-color: lightgray;">
                    <th colspan="3">오늘 본 상품</th>
                </tr>
                <tr>
                    <td><input type="checkbox"></td>
                    <td><img src="my_resources/image/달러구트.jpg" alt=""></td>
                    <td>
                        <b>달러구트 꿈 백화점</b> <br>
                        이미예 지음/ 팩토리나인 <br>
                        12,420 원
                    </td>
                </tr>
                    <td><input type="checkbox"></td>
                    <td><img src="my_resources/image/달러구트.jpg" alt="" alt=""></td>
                    <td><b>달러구트 꿈 백화점</b> <br>
                        이미예 지음/ 팩토리나인 <br>
                        12,420 원</td>
                <tr>
                    <td><input type="checkbox"></td>
                    <td><img src="my_resources/image/달러구트.jpg" alt="" alt=""></td>
                    <td><b>달러구트 꿈 백화점</b> <br>
                        이미예 지음/ 팩토리나인 <br>
                        12,420 원</td>
                </tr>
            </table>
        </div>
    </div>

</div>

        
</body>
</html>