<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <style>
        .findPwdOuter{
            width: 1000px;
            height: 700px;
            margin: auto;
        }
        .findPwdTitle p{
            font-size: 13.5px;
            font-weight: 700;
            color: rgb(94, 94, 94);
            width: 270px;
            height: 30px;
            margin-top: 0px;
            border-bottom: 1.5px solid darkgray;
            margin-bottom: 22px;
        }
        .findPwdInput{width: 270px;}
        .findPwdInput input{
            width: 260px;
            height: 28px;
            margin-bottom: 15px;
            border: 1.5px solid lightgray;
            border-radius: 5px;
        }
        .findPwdInput p{
            color: gray;
            font-size: 6px;
            font-weight: 600;
            float: left;
            margin-left: 7px;
            margin-top: -8px;
        }
        Input::placeholder{
            font-size: 11px;
            color: darkgray;
        }
        .findPwdBtn button{
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
        .findPwdBtn{width: 270px; height: 90px;}
        
        .findPwdBtn a{
            float: right;
            margin-top: 15px;
            margin-right: 3px;
            text-decoration:none;
            color:gray;
            font-size: 12.5px;
            font-weight: 550;
        }
        
        .linkWrap{
            position:absolute;
            top: 50%;
            left: 50%;
            box-sizing: border-box;
            width: 290px;
            height: 153px;
            margin-top: -75px;
            margin-left: -150px;
            font-size: 13px;
            box-shadow: 0px 0px 50px 1500px rgba(196, 196, 196, 0.455), 5px 5px 10px 1px rgba(35, 35, 35, 0.565);
            display: none;
        }
        .linkWrap div{
            box-sizing: border-box;
        }
        #linkTitle{
            height: 40px;
            background-color: rgb(249, 219, 122);
            border-bottom: none;
        }
        #linkContent{
            background-color: white;
        }
        #linkTitleName{
            display: inline-block;
            text-align: center;
            margin-top: 8px;
            border-top-left-radius: 15px;
        }
        #linkContent button{
            margin-top: -20px;
            margin-bottom: 15px;
        }

    </style>
</head>
<body>
<form action="<%= request.getContextPath() %>/findPwd.me" method="post">
    <div class="findPwdOuter" align="center">
       <a href="<%=request.getContextPath()%>">  <img  src="resources/images/logo.png" width="180px" style="margin-right: 2px; margin-top: 70px;"> </a>

        
        <div class="findPwdTitle" align="center">
            <br>
            <p align="left">비밀번호 찾기</p>
        </div>

        <div class="findPwdInput">
            <input type="text" name="memId" id="findPwdId" placeholder="  아이디" required><br>
            <input type="email" name="email" id="findPwdEmail" placeholder="  이메일 주소" required>
            <p>※ 해피북스데이 가입시 사용하신 이메일을 입력해주세요<br>
                해당 이메일로 임시 비밀번호를 보내드립니다. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
        </div>

        <div class="findPwdBtn">
            <button type="submit" id="findPwdSubmit">링크 받기</button> <br>
            <button type="button" id="findPwdRedirectLogin" onclick="location.href= '<%= request.getContextPath() %>/loginForm.me';">로그인하기</button>
            <a href="<%= request.getContextPath() %>/findIdForm.me">아이디 찾기 ></a>
        </div>
     
       

    </div>
</form>
</body>
</html>
