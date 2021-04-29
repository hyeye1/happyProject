<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.member.model.vo.Member, com.kh.book.model.vo.*"%>
<%
	Member findId = (Member)session.getAttribute("findId");
	String contextPath = request.getContextPath();
%>
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
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
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
        <a href="<%=request.getContextPath()%>"> <img  src="resources/images/logo.png" width="180px" style="margin-right: 2px; margin-top: 70px;"> </a>

        
        <div class="findIdSTitle" align="center">
            <br>
            <p>아이디 찾기 완료!</p>
        </div>

        <div class="findIdSInput">
            <p>아이디 찾기가 완료되었습니다. <br> 개인정보 보호를 위해 아이디 일부를 별표*로 표시하였습니다.</p>
            <!-- 사용자 아이디 찾아 넣기 -->
            <input type="text" id="findIdSName" placeholder="<%= findId.getMemId() %>" disabled><br>
            <button type="submit" id="findIdSSubmit" onclick="location.href= '<%= request.getContextPath() %>/loginForm.me';">로그인하기</button> <br>
        </div>

        <div class="findIdSBtn">
            <p style="font-weight:700; font-size: 14px; color: black;">아이디발송</p>
            <p>
                가입시 입력한 이메일로 아이디를 발송해드립니다. <br>
                아래 발송 요청 버튼을 클릭해주세요.
            </p>
            <button type="button" id="findIdSSend" onclick="sendId();" >아이디 발송 요청</button>
        </div>
        
        <script>
        	$(function(){
        		$("#findIdSSend").on("click",function(){
					// 이메일 보내고
					// 버튼!
        			Swal.fire({
						  icon: 'success',
						  title: '',
						  text: '아이디가 발송되었습니다.',
						  confirmButtonColor: 'rgb(249, 219, 122)'
						}).then(response =>{
							return location.href='<%= request.getContextPath() %>';
						})
						
        		});
        	})
        	
        	function sendId(){
        		
        		$.ajax({
        			url:"sendId.me"
        			type:"get",
        			data:{ }
        		})
        	}
	 	
        </script>

    </div>
</body>
</html>
