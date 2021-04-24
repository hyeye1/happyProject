<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.member.model.vo.Member"%>
<%
	Member loginUser = (Member)session.getAttribute("loginUser");
	String contextPath = request.getContextPath();
%>    

<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>회원정보 수정</title>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <!-- Popper JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="css/hover-min.css">
	
<meta charset="UTF-8">
<title>나의 회원정보</title>
<script>
 		var msg = "<%= session.getAttribute("alertMsg") %>"; // 알람창으로 출력할 메세지
 		// var msg = "메세지" / "null";
 		
 		if(msg != "null"){
 			alert(msg);
 			// 알람창 띄어준 후에 session에 담긴 메세지 지워야됨!!(안 그러면 메뉴바 포함된 매 페이지 열 때마다 alert계속 뜰거임)
 			<% session.removeAttribute("alertMsg"); %>
 		}
 </script>

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
	    	margin:auto;
	        width: 650px;
	        padding: 20px;
	        background-color:white;
	         float: right; 
	    }
	    .optional{
	        width: 450px;
	        padding: 20px;
	        padding-bottom: 200px;
	        background-color: white;
	    }
	    #table1{
	        border-style: solid;
	        width: 550px;
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
	        margin-top: 10px;
	        width:100px;
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
		#modiBtn1{margin-left: 100px;}
    </style> 
</head>
<body>

	<%
		String memId = loginUser.getMemId();
		String memPwd = loginUser.getMemPwd();
		String memName = loginUser.getMemName();
		String Email = loginUser.getEmail();
		String memPhone = loginUser.getMemPhone();
		String memAddress = loginUser.getMemAddress();
	%>
 	
	<div class="outer">
		<br>
        <div class="path">홈>마이페이지</div>
         <h1>회원정보관리</h1>
         <hr>
	<section>
		<div class="mandatory">
		
            <form action="<%= request.getContextPath() %>/update.me" method="post" id="myPageForm">
			<table id="table1" border="1" frame="hsides" bordercolor=lightgray >
				<tr>
					<td style="background-color: lightgray;" align="center"><b>아이디</b></td>
					<td><input type="text" name="memId" maxlength="12" required readonly value="<%= memId %>">
					</td> 
					
				</tr>

				<tr>
					<td style="background-color: lightgray;" align="center"><b>이름</b></td>
					<td><input type="text" name="memName" maxlength="5" required value="<%= memName %>"></td>
				
				</tr>
               
				<tr>
					<td style="background-color: lightgray;" align="center"><b>이메일</b></td>
					<td><input type="email" name="Email" value="<%= Email %>">
                    </td>
				
				</tr>


				<tr>
					<td style="background-color: lightgray;" align="center"><b>연락처</b></td>
					<td><input type="text" name="memPhone" placeholder="(-포함해서 입력)" value="<%= memPhone %>"></td> 
					
				</tr>

				<tr>
					<td style="background-color: lightgray;" align="center"><b>주소</b></td>
					<td><input type="text" name="memAddress" placeholder="주소를 입력하세요" value="<%= memAddress %>">
                    </td>
				
				</tr>
			</table>

			<div id="endBtn" style="margin-top:20px;">
				<button type="submit" class="btn btn-warning btn-m" style="width:100px; height:40px; background-color: rgb(249, 219, 122);">수정하기</button>
				<button type="button" class="btn btn-warning btn-m" data-toggle="modal" data-target="#updatePwdModal" style="width:125px; height:40px; background-color: rgb(249, 219, 122);">비밀번호변경</button>
				<button type="button" class="btn btn-warning btn-m" data-toggle="modal" data-target="#deleteModal" style="width:100px; height:40px; background-color: rgb(249, 219, 122);">회원탈퇴</button>
				</div>
            </form>
            
        </div>
        </section>       
	<aside> 
	  <%@ include file = "../common/sideBar.jsp" %>
	</aside>
        
	</div>		
	
	<!-- 회원탈퇴 버튼 클릭시 뜨는 Modal -->
    <div class="modal" id="deleteModal">
        <div class="modal-dialog">
        <div class="modal-content"> 
    
            <!-- Modal Header -->
            <div class="modal-header">
            <h4 class="modal-title">회원탈퇴</h4>
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
    
            <!-- Modal body -->
            <div class="modal-body" align="center">
             <b>
		         	탈퇴 후 복구가 불가능 합니다. <br>
		         	정말로 탈퇴 하시겠습니까? 
		         </b>
		         <br><br>	
		         	
		         <form action="<%= request.getContextPath() %>/delete.me" method="post">
		         
		         	비밀번호 : <input type="password" name="memPwd" required> <br><br>
		         	<input type="hidden" name="memId" value="<%= memId %>">
		         	
		         	<button type="submit" class="btn btn-outline-warning btn-sm">탈퇴하기</button>
		         	
		         </form>
            </div>
    
    
        </div>
        </div>
    	</div>
    
    <!-- 비밀번호변경 버튼 클릭시 뜨는 Modal -->
		<div class="modal" id="updatePwdModal">
		  <div class="modal-dialog">
		    <div class="modal-content">
		
		      <!-- Modal Header -->
		      <div class="modal-header">
		        <h4 class="modal-title">비밀번호변경</h4>
		        <button type="button" class="close" data-dismiss="modal">&times;</button>
		      </div>
		
		      <!-- Modal body -->
		      <div class="modal-body" align="center">
		      
		      	<form action="<%= request.getContextPath() %>/updatePwd.me" method="post">
		      		<input type="hidden" name="memId" value="<%= memId %>">
		      		<table>
		      			<tr>
		      				<th>현재 비밀번호</th>
		      				<td><input type="password" name="memPwd" required></td>
		      			</tr>
		      			<tr>
		      				<th>변경할 비밀번호</th>
		      				<td><input type="password" name="updatePwd" required></td>
		      			</tr>
		      			<tr>
		      				<th>변경할 비밀번호 재입력</th>
		      				<td><input type="password" name="checkPwd" required></td>
		      			</tr>
		      		</table>
		      		<br>
		      		<button type="submit" class="btn btn-outline-warning btn-sm" onclick="return validatePwd();">비밀번호 변경</button>
		      		<script>
		      			function validatePwd(){
		      				if($("input[name=updatePwd]").val() != $("input[name=checkPwd]").val()){
		      					alret("변경할 비밀버호가 일치하지 않습니다.");
		      					return false;
		      				}
		      			}
		      		</script>
		      		
		      	</form>
		        
		         	
		      </div>
		
		    </div>
		  </div>
		</div>
    


</body>
</html>