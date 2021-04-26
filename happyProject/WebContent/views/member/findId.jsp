<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        .findIdOuter{
            width: 1000px;
            height: 700px;
            margin: auto;
        }
        .findIdTitle p{
            font-size: 13.5px;
            font-weight: 700;
            color: rgb(94, 94, 94);
            width: 270px;
            height: 30px;
            margin-top: 0px;
            border-bottom: 1.5px solid darkgray;
            margin-bottom: 22px;
        }
        .findIdInput{width: 270px;}
        .findIdInput input{
            width: 260px;
            height: 28px;
            margin-bottom: 15px;
            border: 1.5px solid lightgray;
            border-radius: 5px;
        }
        .findIdInput p{
            color: gray;
            font-size: 6px;
            font-weight: 700;
            float: left;
            margin-left: 7px;
            margin-top: -10px;
        }
        Input::placeholder{
            font-size: 11px;
            color: darkgray;
        }
        .findIdBtn button{
            width: 270px;
            height: 32px;
            margin-top: 15px;
            background-color: rgb(249, 219, 122);
            color: grey;
            border: none;
            border-radius: 5px;
            font-weight: 550;
            font-size: 13.5px;
            cursor: pointer;
        }
        .findIdBtn{width: 270px; height: 90px;}
        
        .findIdBtn a{
            float: right;
            margin-top: 15px;
            margin-right: 3px;
            text-decoration:none;
            color:gray;
            font-size: 12.5px;
            font-weight: 550;
        }
        
    </style>
</head>
<body>
<form  action="<%= request.getContextPath() %>/findId.me"  method="post" >
    <div class="findIdOuter" align="center" >
        <img  src="resources/images/logo.png" width="180px" style="margin-right: 2px; margin-top: 70px;">

        
        <div class="findIdTitle" align="center">
            <br>
            <p align="left">아이디 찾기</p>
        </div>

        <div class="findIdInput">
            <input type="text" id="findIdName" name="memName" placeholder="  성명" required><br>
            <input type="email" id="findIdEmail" name="email" placeholder="  이메일 주소" required>
            <p>※ 해피북스데이 가입시 사용하신 이메일을 입력해주세요</p>
        </div>

        <div class="findIdBtn">
            <button type="submit" id="findIdSubmit" >아이디 찾기</button> <br>
            <button type="button" id="findIdRedirectLogin"  onclick="location.href= '<%= request.getContextPath() %>/loginForm.me';">로그인하기</button>
            <a href="<%= request.getContextPath() %>/findPwdForm.me">비밀번호 찾기 ></a>
        </div>
        

    </div>
</form>
</body>
</html>
