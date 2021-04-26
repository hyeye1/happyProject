<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.member.model.vo.Member, com.kh.book.model.vo.*"%>
<%
	Member findPwd = (Member)session.getAttribute("findPwd");
	String contextPath = request.getContextPath();
%>
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
        .findPwdSOuter{
            width: 1000px;
            height: 700px;
            margin: auto;
        }
        .findPwdSTitle p{
            font-size: 15px;
            font-weight: 700; 
            width: 345px;
            height: 30px;
            margin-top: 0px;
            border-bottom: 1.5px solid darkgray;
        }
        .findPwdSInput{width: 340px; }
        .findPwdSInput input{
            width: 340px;
            height: 28px;
            border: 1.5px solid gray;
            border-radius: 5px;
            margin-bottom: 5px;
        }
        .findPwdSInput p{
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
        .findPwdSOuter button{
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

    
        
    </style>
</head>
<body>
    <div class="findPwdSOuter" align="center">
        <a href="<%=request.getContextPath()%>"> <img  src="resources/images/logo.png" width="180px" style="margin-right: 2px; margin-top: 70px;"> </a>

        
        <div class="findPwdSTitle" align="center">
            <br>
            <p>비밀번호 발송 완료!</p>
        </div>

        <div class="findPwdSInput">
            <p>비밀번호가 발송되었습니다. <br> 가입시 입력한 이메일 수신함을 확인해주세요.</p>
            <!-- 사용자 비밀번호 찾아 넣기 -->
            <input type="text" id="findPwdSName" placeholder="<%= findPwd.getMemPwd() %>" disabled><br>
            <button type="submit" id="findPwdSSubmit" onclick="location.href= '<%= request.getContextPath() %>/loginForm.me';">로그인하기</button> <br>
        </div>

    </div>
</body>
</html>
