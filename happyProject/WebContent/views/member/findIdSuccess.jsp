<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        .findIdSOuter{
            width: 1000px;
            height: 700px;
            margin: auto;
        }
        .findIdSTitle p{
            font-size: 15px;
            font-weight: 700; 
            width: 345px;
            height: 30px;
            margin-top: 0px;
            border-bottom: 1.5px solid darkgray;
        }
        .findIdSInput{width: 340px; }
        .findIdSInput input{
            width: 340px;
            height: 28px;
            border: 1.5px solid gray;
            border-radius: 5px;
            margin-bottom: 5px;
        }
        .findIdSInput p{
            color: rgb(94, 94, 94);
            font-size: 12px;
            margin-left: 7px;
            margin-top: 25px;
            margin-bottom: 20px;
        }
        Input::placeholder{
            font-size: 12px;
            color: black;
            text-align: center;
        }
        .findIdSOuter button{
            width: 350px;
            height: 32px;
            margin-top: 10px;
            background-color: rgb(249, 219, 122);
            color: grey;
            border: none;
            border-radius: 5px;
            font-weight: 550;
            font-size: 13.5px;
            cursor: pointer;
        }
        .findIdSBtn{
            width: 340px;
            margin-top: 60px;
            text-align: left;
        }
        .findIdSBtn p{
            color: rgb(94, 94, 94);
            font-size: 12px;
        }
    
        
    </style>
</head>
<body>
    <div class="findIdSOuter" align="center">
        <img  src="../../resources/images/logo.png" width="180px" style="margin-right: 2px; margin-top: 70px;">

        
        <div class="findIdSTitle" align="center">
            <br>
            <p>아이디 찾기 완료!</p>
        </div>

        <div class="findIdSInput">
            <p>아이디 찾기가 완료되었습니다. <br> 개인정보 보호를 위해 아이디 일부를 별표*로 표시하였습니다.</p>
            <!-- 사용자 아이디 찾아 넣기 -->
            <input type="text" id="findIdSName" placeholder="happ*******" disabled><br>
            <button type="submit" id="findIdSSubmit">로그인하기</button> <br>
        </div>

        <div class="findIdSBtn">
            <p style="font-weight:700; font-size: 14px; color: black;">아이디발송</p>
            <p>
                가입시 입력한 이메일로 아이디를 발송해드립니다. <br>
                아래 발송 요청 버튼을 클릭해주세요.
            </p>
            <button type="button" id="findIdSSend">아이디 발송 요청</button>
        </div>
        

    </div>
</body>
</html>
