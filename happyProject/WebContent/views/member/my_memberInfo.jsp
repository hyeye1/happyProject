<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보관리</title>
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
	    .mandatory{
	        width: 450px;
	        padding: 20px;
	        background-color:white;
	    }
	    .optional{
	        width: 450px;
	        padding: 20px;
	        padding-bottom: 200px;
	        background-color: white;
	    }
	    #table1{
	        border-style: solid;
	        width: 450px;
	        height: 320px;
	        border-collapse: collapse;
	    }
	    #table2{
	        border-style: solid;
	        width: 450px;
	        height: 100px;
	        border-collapse: collapse;
	
	    }
	    
	    table th {padding: 15px; border:1px black;} 
	    table td {padding: 10px; border-color:lightslategray;} 
	
	  
	    #modiBtn{
	        margin-top: 30px;
	        margin-left: 370px;
	        width: 80px;
	        height: 30px;
	        border-radius:5px; 
	        background-color:  rgb(249, 219, 122);
	        border: none;
	        cursor: pointer;
	    }
	    #modiBtn:focus{
	        color: white;
	    }
	    #modiBtn:hover{
	        color: white;
	    }
	    h2{margin-left: 15px;}
    </style> 
</head>
<body>
	<div class="outer">
		<br>
        <div class="path">홈>마이페이지</div>
         <h1>회원정보관리</h1>
         <hr>

        <h2> 필수입력항목</h2>
		<div class="mandatory">
            <form action method="post" id="myPageForm">
			<table id="table1" border="1" frame="hsides" bordercolor=lightgray >
				<tr>
					<td style="background-color: lightgray;" align="center"><b>해피북 ID</b></td>
					<td><input type="text" name="userId" maxlength="12" required ></td> 
					
				</tr>
				<tr>
					<td style="background-color: lightgray;" align="center"><b>이름</b></td>
					<td><input type="text" name="userName" maxlength="5" required ></td>
				
				</tr>
                <tr>
					<td style="background-color: lightgray;" align="center"><b>비밀번호</b></td>
					<td><input type="password" name="userPwd" maxlength="5" required>
                        <button id="btn">비밀번호 변경</button>
                    </td>
					
				</tr>
				<tr>
					<td style="background-color: lightgray;" align="center"><b>닉네임</b></td>
					<td><input type="text" disabled="disabled" name="nickName" placeholder="닉네임@@@">
                        <button id="btn">변경</button>
                    </td>
					
				</tr>
				<tr>
					<td style="background-color: lightgray;" align="center"><b>이메일</b></td>
					<td><input type="email" disabled="disabled" name="email" placeholder="이메일###">
                        <button id="btn">변경</button>
                    </td>
				
				</tr>
				<tr>
					<td style="background-color: lightgray;" align="center"><b>주소</b></td>
					<td><input type="text" name="address" placeholder="내용을 입력하세요">
                        <button id="yellowBtn" name="search">검색</button>
                    </td>
				
				</tr>

			</table>
            </form>
        </div>
        <br><br><br>
        <h2>선택 입력 항목</h2>
            <div class="optional">
                <form action method="post" id="myPageForm">
                    <table id="table2" border="1"  frame="hsides" bordercolor=lightgray >
                        <tr>
                            <td style="background-color: lightgray;" align="center"><b>연락처</b></td>
                            <td><input type="text" name="phone" placeholder="(-포함해서 입력)"></td> 
                            
                        </tr>
                        <tr>
                            <td style="background-color: lightgray;" align="center"><b>이메일<br>수신동의</b></td>
                            <td><input type="radio" name="email" value="agree" id="agree"> 동의
                                <input type="radio" name="email" value="disagree" id="disagree"> 비동의 
                            </td>
                            
                        </tr>
                    </table>
                    <button id="modiBtn">수정</button>
                </form>
            </div>
	</div>		


</body>
</html>