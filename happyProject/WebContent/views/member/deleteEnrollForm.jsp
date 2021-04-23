<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import=" com.kh.member.model.vo.Member"%>
<%
	String contextPath = request.getContextPath();
	Member loginUser = (Member)session.getAttribute("loginUser");
%>    
	<!DOCTYPE html>
	<form lang="en">
	<head>
		<meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
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
                
    <style>
        .outer{
            margin-top: 50px;
            margin-left: 250px;
            margin-bottom: 20px;
            border: 1px solid white;
            width:800px;
        }
        .top{
            margin: auto;
            margin-top: 50px;
        }
        .topinfo{
            width: 800px;
            height: 140px; 
            border: 1px solid gray;
            text-align: left;
            padding-top: 10px;
            padding-bottom: 50px;
            margin-bottom: 30px;
        }
        .topinfo li{line-height: 25px;}
        .middleinfo{margin: auto;}
        .check{
            width: 800px;
            height: 130px; 
            background-color: rgba(249, 219, 122, 0.24);
            padding-top: 5px;
            padding-left: 30px;
            padding-bottom: 60px;
            line-height: 40px;
        }
        .pwd{
            margin-bottom: 20px;
            border-collapse: collapse;
            border-color: lightgray;
        }
        #text1{font-size:x-large; font-weight: bold;}
        #text2{color:rgb(241, 196, 15); font-weight: bold;}
        #text3{font-weight: bold;}
        #text4{font-size: large; font-weight: bold;}
        #text5{color: gray; font-weight: bold; font-size: small;}
        #text6{font-weight: bold; font-size: small;}
        #title{font-size: large; font-weight: bold; line-height: 40px;}
        #pwd1{background-color:rgba(249, 219, 122, 0.86); width: 150px; height: 40px; padding-left: 10px;}
        #pwd2{color: red;}
        #pwd3{color: gray;}
        #pwd4{width: 705px;}
    </style>
</head>
<body>
    <div class="outer">
        <div class="top">
            <span id="text1">회원탈퇴</span><hr>
            <span id="text2">해피북스데이</span><span id="text3">를 이용해주셔서 감사합니다.</span>
        </div>
        <br>
    
        <div class="topinfo">
            <span id="text4">&emsp;회원탈퇴 안내</span><hr>
            <ul>
                <li>회원탈퇴 시 개인정보, 쿠폰 등 모든 정보가 삭제되어 복원되지 않으니 주의하시기 바랍니다.</li>
                <li>회원탈퇴 후 동일한 아이디는 사용하실 수 없으며, 언제든지 재가입이 가능합니다.</li>
            </ul>
        </div>
        <hr>
        
        <div class="checklist">
            <span id="title">탈퇴사유</span>
            <br>
            <form action="" id="memberForm" method="post">
                <div class="check">
                    <input type="radio" name="check" value="도서의부족"> 도서의부족 &emsp;&emsp;&emsp;&nbsp;
                    <input type="radio" name="check" value="도서정보의 빈약"> 도서정보의 빈약 &emsp;&emsp;
                    <input type="radio" name="check" value="도서검색어 불편"> 도서검색어 불편<br>
                    <input type="radio" name="check" value="배송이 지연"> 배송 지연 &emsp;&emsp;&emsp;&emsp;
                    <input type="radio" name="check" value="배송서비스 불만"> 배송서비스 불만 &emsp;&emsp;
                    <input type="radio" name="check" value="배송상태불만"> 배송상태불만<br>
                    <input type="radio" name="check" value="회원혜택이 빈약"> 회원혜택이 빈약 &emsp;
                    <input type="radio" name="check" value="고객서비스 불만"> 고객서비스 불만 &emsp;&emsp;
                    <input type="radio" name="check" value="기타"> 기타
                </div>
                <span id="text6">* 회원님의 소중한 의견을 향후 보다 나은 서비스 제공을 위한 자료로 활용하겠습니다.</span>
            </div><br><br>
        
                <table class="pwd" border="1">
                 <tr>
                     <th id="pwd1">
                         <span id="pwd2">*</span>
                         <span id="pwd3">비밀번호 입력</span>
                     </th>
                     
                      <td id="pwd4">&nbsp;
<<<<<<< Updated upstream
                          <input type="password" name="pwd" size="30" style="height: 25px;">
                          
=======
                          <input type="password" name="memPwd" size="30" style="height: 25px;" required>
                          <input type="hidden" name="memId" value="">
>>>>>>> Stashed changes
                     </td>
                     
                 </tr>
                </table>
               <div id="endBtn" align="center">
                    <button type="submit" class="btn btn-warning btn-m" data-toggle="modal" data-target="#deleteModal" style="width:100px; height:40px; border: none; background-color: rgb(249, 219, 122);">회원탈퇴</button>
                </div>
                
            </form>
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
		         
		         	
		         	<button type="submit" class="btn btn-outline-warning btn-sm">탈퇴하기</button>
		         	
		         </form>
            </div>
    
    
        </div>
        </div>
    </div>
  
		
</body>
</html>