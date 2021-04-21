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
    <title>Document</title>
    <style>
        .join1Outer{
            width: 1000px;
            height: 700px;
            margin: auto;
        }
        .join1Title p{
            font-size: 13.5px;
            font-weight: 700;
            color: rgb(94, 94, 94);
            width: 270px;
            height: 30px;
            margin-top: 0px;
            border-bottom: 1.5px solid darkgray;
            margin-bottom: 22px;
        }
        .loginInput input{
            width: 260px;
            height: 28px;
            margin: 8px;
            border: 1.5px solid lightgray;
            border-radius: 5px;
        }
        Input::placeholder{
            font-size: 11px;
            color: darkgray;
        }
        .join1Mid{width: 270px; height: 90px;}
        #join1YN{
            float: left;
            color: rgb(94, 94, 94);;
            font-size: 13px;
            font-weight: 600;
        }
        #join1Btn{
            width: 270px;
            height: 32px;
            margin-top: 25px;
            background-color: rgb(249, 219, 122);
            color: grey;
            border: none;
            border-radius: 5px;
            font-weight: 550;
            font-size: 13.5px;
        }
        .joinSns input{
            width: 45px;
            margin: 12px;
            margin-top: 5px;
        }
        .joinSns p{
            font-size: 13.5px;
            font-weight: 700;
            color: rgb(94, 94, 94);
        }
        
    </style>
</head>
<body>
    <div class="join1Outer" align="center">
        <img  src="resources/images/logo.PNG" width="180px" style="margin-right: 2px; margin-top: 70px;">
        
        <div class="join1Title" align="center">
            <br>
            <p align="left">해피북스데이 간편가입하기</p>
        </div>

        <div class="join1Mid">
            <span id="join1YN"><input type="checkbox" required> 만 14세 이상입니다.</span>
            <button type="submit" id="join1Btn" onclick="joinNowPage();">회원가입</button> <br>
        </div>
		
		<script>
			function joinNowPage(){
				location.href = "<%= contextPath %>/join.me";
			}
		</script>
		
        <div class="joinSns" align="center">
            <br>
            <p>소셜 계정 간편 회원가입</p>
            <input type="image" src="resources/images/naverlogin.png" id="naverJoin">
            <input type="image" src="resources/images/kakaologin.png" id="kakaoJoin">
            <input type="image" src="resources/images/facebooklogin.png" id="facebookJoin">
        </div>



    </div>
</body>
</html>