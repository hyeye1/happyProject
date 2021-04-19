<!DOCTYPE html>
<form lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insert title here</title>
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
            height: 60px; 
            border: 1px solid gray;
            text-align: left;
            padding-top: 10px;
            padding-bottom: 50px;
        }
        .topinfo li{line-height: 25px;}
        .middleinfo{margin: auto;}
        .check{
            width: 770px;
            height: 60px; 
            background-color: rgba(249, 219, 122, 0.24);
            padding-top: 2px;
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
        #btn{
            border: 1px solid lightgray;
            color: gray;
            background-color: rgb(249, 219, 122);
            border-radius: 5px;
            padding: 10px;
            font-size: large;
            cursor: pointer;
            }
        #btn:hover{background-color: rgb(249, 219, 122); color:white;}
        #pwd1{background-color:rgba(249, 219, 122, 0.86); width: 150px; height: 40px;}
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
                <li>회원탈퇴 시 개인정보, 적립금, 쿠폰 등 모든 정보가 삭제되어 복원되지 않으니 주의하시기 바랍니다.</li>
                <li>회원탈퇴 후 동일한 아이디는 사용하실 수 없으며, 언제든지 재가입이 가능합니다.</li>
            </ul>
        </div>
        <br>
      
        <div class="middleinfo">
            <hr>
           <span id="text4">&nbsp;xxx 회원님의 보유내역</span><br>
           <span id="text5">&nbsp;회원탈퇴 후 모두 소멸됩니다.</span>
           <ul>
               <li>회원번호 : xxxxxxx</li>
               <li>아이디 : xxxxxx</li>
               <li>적립금 : xxxx원</li>
               <li>쿠폰 : xx장</li>
           </ul>
           <hr>
        </div>
        
        <div class="checklist">
            <span id="title">탈퇴사유</span>
            <br>
            <form action="" id="memberForm" method="post">
                <div class="check">
                    <input type="radio" name="check" value="도서의부족">도서의부족 &emsp;&emsp;&emsp;&nbsp;
                    <input type="radio" name="check" value="도서정보의 빈약">도서정보의 빈약 &emsp;&emsp;
                    <input type="radio" name="check" value="도서검색어 불편">도서검색어 불편<br>
                    <input type="radio" name="check" value="배송이 지연">배송 지연 &emsp;&emsp;&emsp;&emsp;
                    <input type="radio" name="check" value="배송서비스 불만">배송서비스 불만 &emsp;&emsp;
                    <input type="radio" name="check" value="배송상태불만">배송상태불만<br>
                    <input type="radio" name="check" value="회원혜택이 빈약">회원혜택이 빈약 &emsp;
                    <input type="radio" name="check" value="고객서비스 불만">고객서비스 불만 &emsp;&emsp;
                    <input type="radio" name="check" value="기타">기타
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
                          <input type="password" name="pwd" size="30" style="height: 25px;">
                     </td>
                 </tr>
                </table>
                <div align="center">
                    <button type="submit" id="btn">회원탈퇴</button>
                </div>
            </form>
    </div>
</body>
</html>