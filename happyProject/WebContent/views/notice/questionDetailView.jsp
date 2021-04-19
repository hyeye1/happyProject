<!DOCTYPE html>
<html lang="en">
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
        #text1{font-size:x-large; font-weight: bold;}
        .top{margin-top: 50px; margin-left: 130px;}
        .form>span{color: rgb(72, 140, 230); font-weight: bold;}
        .clicked{background-color: rgb(249, 219, 122); color:white;}
        .btnouter{margin-top: 20px;}
        .question th{font-weight:500 ;}
        #btn{
            width: 70px;
            height: 30px;
            font-size: small;
            font-weight: bold;
            color: gray;
            border: 1px solid lightgrey;
            background-color: rgb(249, 219, 122);
            border-radius: 4px;
            padding: 5px;
            cursor: pointer;
        }
        #btn:hover{background-color: rgb(249, 219, 122); color:white;}
        #qtable{border: 1px solid lightgray;}
        #qtable th{background-color: rgb(249, 219, 122)}
        #text{font-size: x-small;}
        #qfile{margin-left: 6%;}
        #checkbox{cursor: pointer;}
    </style>
</head>
<body>
    <div class="outer">
        <div class="top">
            <span id="text1">문의내역</span>
            <span id="text1" style="color:rgb(241, 196, 15)"> 상세보기</span>
            <hr><br>
        </div>
        <form action="" id="enrollForm" method="post"> 
            <div class="form" align="center">
                상담분야 : <span>주문확인 및 배송</span> <!-- 사용자가 선택한 값 출력됨 --> 
                &emsp;
                주문번호 : <span>000001</span> <!-- 사용자가 선택한 값 출력됨 -->
                <br><br>
            </div>
            <div class="question">
                <table id="qtable" border="1" align="center">
                    <tr height="50">
                        <th width="80">문의 제목</th>
                        <td>&nbsp;
                            문의내역 상세보기 제목 입니당
                        </td>
                    </tr>
                    <tr>
                        <th>문의 내용</th>
                        <td height="180">
                            <p>문의내역 상세보기 내용입니당/문의내역 상세보기 내용입니당 </p>
                        </td>
                    </tr>
                    <tr height="100">
                        <th>파일첨부</th>
                        <td>
                            <input type="file" id="qfile"><hr>
                            <ul id="text">
                                <li>첨부가능 용량은 파일당 5MB 미만이며, 한개만 첨부 가능합니다.</li>
                                <li>첨부가능 파일 확장자 : jpg, gif, bmp, png, hwp, doc, ppt, xls, zip, pdf, txt</li>
                            </ul>
                        </td>
                    </tr>
                    <tr height="100">
                        <th>답변알림</th>
                        <td id="checkbox">
                            &emsp;&nbsp;
                            <input type="email" name="email" id="email" value="user01@naver.com">
                            <input type="checkbox" id="emailch">이메일로 답변받기<br><br>
                            &emsp;&nbsp;
                            <input type="text" name="phone" id="phone" value="010-1234-5678">
                            <input type="checkbox" id="smsch">답변시 SMS로 알림 받기<br>
                        </td>
                    </tr>
                </table>
            </div>
        <br>
        <div class="button" align="center">
            <button id="btn" type="button">목록가기</button>
            <button id="btn" type="submit">수정하기</button>
            <button id="btn" type="reset">삭제하기</button>
        </div>
        </form>
    </div>
</body>
</html>




