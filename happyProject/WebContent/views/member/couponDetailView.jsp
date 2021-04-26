<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insert title here</title>
    <style>
        .outer{
            margin-top: 50px;
            margin-left: 250px;
            margin-bottom: 20px;
            border: 1px solid white;
            width:800px;
        }
        .topinfo{
            width: 800px;
            height: 100px; 
            border: 1px solid gray;
            text-align: left;
            padding-top: 10px;
            padding-bottom: 35px;
        }
        .couponList{
            width: 800px;
            height: 150px;
            text-align: center;
        }
        #text1{font-size:x-large; font-weight: bold;}
        #text2{font-size:large; font-weight: bold;}
        #btn{
            border: 1px solid lightgray;
            color: gray;
            background-color: rgb(249, 219, 122);
            border-radius: 5px;
            padding: 5px;
            font-size: medium;
            cursor: pointer;
        }
        #btn:hover{background-color: rgb(249, 219, 122); color:white;}
        #back{background-color: rgba(249, 219, 122, 0.86)}
        .checkbox{zoom: 1.5; cursor: pointer;}
    </style>
</head>
<body>
    <div class="outer">
            <span id="text1">쿠폰조회</span><hr><br>
        <div class="topinfo">
            <span id="text2">&emsp;쿠폰 안내</span><hr>
            <ul>
                <li>주문시 쿠폰 금액만큼 할인하여 구매하실 수 있습니다.</li>
                <li>유효기간이 지난 쿠폰은 자동으로 내 쿠폰함에서 삭제됩니다.</li>
                <li>쿠폰은 중복사용이 불가합니다.</li>
            </ul>
        </div>
        <br><br>
        <span id="text2">사용 가능한 쿠폰</span>
        <div class="deleteButton" align="right">
            <button id="btn" type="button">선택삭제</button>
        </div>
        <table class="couponList">
            <tr id="back">
                <th>선택</th>
                <th>쿠폰명</th>
                <th>할인액</th>
                <th>발급일</th>
                <th>유효기간</th>
            </tr>
            <tr>
                <td><input type="checkbox" class="checkbox"></td>
                <td>4월 전고객 쿠폰</td>
                <td>1000원</td>
                <td>2021-04-01</td>
                <td>2021-05-31</td>
            </tr>
            <tr>
                <th><input type="checkbox" class="checkbox"></th>
                <td>신규회원가입 쿠폰</td>
                <td>2000원</td>
                <td>2021-03-29</td>
                <td>2021-05-29</td>
            </tr>
        </table>

        <br><br><br>
        <span id="text2">사용 만료 쿠폰</span>
        <div class="deleteButton" align="right">
            <button id="btn" type="button">선택삭제</button>
        </div>

        <table class="couponList">
            <tr id="back">
                <th>선택</th>
                <th>쿠폰명</th>
                <th>할인액</th>
                <th>발급일</th>
                <th>유효기간</th>
            </tr>
            <tr>
                <td><input type="checkbox" class="checkbox"></td>
                <td>3월 전고객 쿠폰</td>
                <td>1000원</td>
                <td>2021-03-01</td>
                <td>2021-03-30</td>
            </tr>
            <tr>
                <th><input type="checkbox" class="checkbox"></th>
                <td>생일 쿠폰</td>
                <td>2000원</td>
                <td>2021-03-25</td>
                <td>2021-04-25</td>
            </tr>
        </table>
    </div>
</body>
</html>