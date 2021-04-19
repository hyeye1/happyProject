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
        .box{
            background-color: rgba(249, 219, 122, 0.24);
            width: 835px;
            height: 30px;
            font-weight: bold;
            font-size: medium;
            padding-top: 10px;
            padding-left: 20px;
        }
        .topinfo{
            width: 850px;
            height: 100px; 
            border: 1px solid gray;
            text-align: left;
            padding-top: 10px;
            padding-bottom: 50px;
        }
        .pointList{
            text-align: center;
            border-collapse: collapse;
            width: 850px;
            height: 100px;
            border: 1px solid gray;
        }
        .pointList th{background-color: rgba(249, 219, 122, 0.86)}
        #text1{font-size:x-large; font-weight: bold;}
        #text2{font-size: large; font-weight: bold;}
        #text3{font-size:medium; font-weight: bold; color:rgb(241, 196, 15);}
        
    </style>
</head>
<body>
    <div class="outer">
            <span id="text1">적립금조회</span><hr><br>
        <div class="topinfo">
            <span id="text2">&emsp;적립금 안내</span><hr>
            <ul>
                <li>적립금은 상품 구매 시 사용할 수 있습니다.</li>
                <li>적립금이나 할인쿠폰 등으로 결제한 금액에 대해서는 적립되지 않습니다.</li>
                <li>적립금은 회원 결제 시 적립 또는 사용이 가능한 해피북스데이의 포인트입니다.</li>
                <li>해피북스데이 적립금의 유효기간은 적립일로부터 1년이며, 먼저 적립된 적립금부터 순차적으로 사용됩니다.</li>
            </ul>
        </div>
        <br>
        <div class="box">
            <sapn>사용 가능한</sapn>
            <span id="text3">적립금</span>
            <span>잔액 : </span></spa></span>
            <span id="text3">1000</span>원
        </div><br><br>
        
        <table class="pointList" border="1">
            <span id="text2">* 적립금 정보</span><br><br>
            <tr>
                <th>발생일</th>
                <th>적립금 발생금액</th>
                <th>적립금 사용금액</th>
                <th>적립금 누적금액</th>
            </tr>
            <tr>
                <td>2021-04-10</td>
                <td>1000</td>
                <td>0</td>
                <td>1000</td>
            </tr>
        </table>
    </div>
</body>
</html>