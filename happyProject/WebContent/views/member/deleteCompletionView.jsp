<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insert title here</title>
    <style>
        .outer{
            font-weight: 1000;
            font-size: x-large;
            margin: auto;
            margin-top: 100px;
        }
        .box{
         width: 100%;
         height: 60px; 
         font-size:medium; 
         font-weight: bold;
         border-top:1px solid gray;
         border-bottom:1px solid gray;
         background-color: rgba(249, 219, 122, 0.24);
         text-align: center;
         margin: auto;
         padding-top: 50px;
         padding-bottom: 50px;
        }
        #text{color:rgb(241, 196, 15);}
        #text1{color:rgb(241, 196, 15);}
        #text2{color: gray; font-size: small;}
        #btn{
            border: 1px solid lightgray;
            color: gray;
            background-color: rgb(249, 219, 122);
            border-radius: 5px;
            padding: 10px;
            font-size: medium;
            cursor: pointer;
        }
        #btn:hover{background-color: rgb(249, 219, 122); color:white;}
    </style>
</head>
<body>
    <div class="outer" align="center">
        <img src="resources/images/check.png"><br><br>
        <span>회원탈퇴가</span>
        <span id="text">완료되었습니다.</span>
    </div>
    <br>

    <div class="box" >
        <sapn>그동안</sapn>
        <span id="text1">해피북스데이</span>
        <span>서비스를 이용해 주셔서 감사합니다.</span><br><br>
        <span id="text2">보다 나은 서비스로 다시 찾아뵙겠습니다.</span>
    </div>
    <br><br>

    <div align="center">
        <button id="btn" onClick="location.href='<%= contextPath %>'">해피북스데이 첫 화면</button>
    </div>
</body>
</html>