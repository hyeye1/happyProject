<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

    <!--  회원상세정보 팝업 -->

    <style>
         /* 상세정보 팝업창 */
         .detailwrap{
            position: absolute;
            top:30%;
            left:53%;
            z-index: 10;
            box-sizing: border-box;
            width: 410px; 
            height: 348px; 
            margin-top: -75px;
            margin-left: -150px; 
            }
		.detailwrap>div{border: 1px solid #3c3c3c; box-sizing: border-box;}

        /* 영역 나누기 */
        #ptitle{height: 10%; background-color: rgb(249, 219, 122);}
        #pcontent{height: 90%; background-color: white;}

        
        #ptitleName{
            display:inline-block;
            margin-left:160px;
            margin-top:6px;
            font-size: 15px;
            font-weight: bold;
            margin-top: 1;
            color: #3c3c3c;
        }
        #pbuyList{
            border-color: #3c3c3c;
            width: 320px;
            height: 145px;
            box-sizing: border-box;       
            margin-top: 10px;  
            margin-right: 5px;  
        }
        #pbuyTitle{
            background-color: #f3f3f3;
        }
        #pcontent{
            font-size:smaller;
            text-align: center;
        }
        #pcontent table{
            width: 400px;
            height: 300px;
            margin-top: 5px;
            margin-left: 5px;
        }
        #pcloseBtn { 
        float: right; 
        width: 20px; 
        line-height: 20px;
        margin-right: 5px;
        margin-top: 5px;
        text-align: center; 
        cursor: pointer; 
        border-radius: 5px;
        background-color: #f3f3f3; 
         
        } 
        
        #pcloseBtn:hover { 
            background-color: lightgray; 
        } 
    </style>
</head>
<body>

   <!-- 회원 상세정보 팝업 -->
   <div class="detailwrap">
    <div id="ptitle">
        <h3 id=ptitleName>회원상세정보</h3>
        <div id="pcloseBtn">&times;</div>
        
    </div>
    <div id="pcontent">
        <table>
            <tr>
                <th width="90">회원번호</th>
                <td>100</td>
            </tr>
            <tr>
                <th>아이디</th>
                <td>아이디1234</td>
            </tr>
            <tr>
                <th>이름</th>
                <td>김말똥</td>
            </tr>
            <tr>
                <th>주소</th>
                <td>서울특별시</td>
            </tr>
            <tr>
                <th>가입일</th>
                <td>2020</td>
            </tr>
            <tr>
                <th>최근로그인</th>
                <td>2021</td>
            </tr>
            <tr>
                <th>가입경로</th>
                <td>자사</td>
            </tr>
            <tr>
                <th>이메일수신여부</th>
                <td>Y</td>
            </tr>
        </table>
    </div>

</div>

<script>
    $("#memId").click(function(){
        $(".detailwrap").css({display:"block"});
    });
    $("#pcloseBtn").click(function(){
        $(".detailwrap").css({display:"none"});
    });
</script>

    
</body>
</html>