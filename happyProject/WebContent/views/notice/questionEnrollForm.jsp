<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        .top{
            margin: auto;
            margin-top: 50px;
        }
        .btn{
            width: 300px;
            height: 30px;
            border: 1px solid gray;
            color: gray;
            background-color: lightgrey;
            border-radius: 8px;
            padding: 5x;
            font-size: medium;
            cursor: pointer;
        }
        .clicked{background-color: rgb(249, 219, 122); color:white;}
        .btnouter{margin-top: 20px;}
        .question th{font-weight:500 ;}
        #btn1{
            width: 85px;
            height: 40px;
            font-size: medium;
            font-weight: bold;
            color: gray;
            border: 1px solid lightgrey;
            background-color: rgb(249, 219, 122);
            border-radius: 4px;
            padding: 5px;
            cursor: pointer;
        }
        #btn1:hover{background-color: rgb(249, 219, 122); color:white;}
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
            <span id="text1">1:1 문의</span><hr>
            <p>- 평일 오후 5시 이후 문의는 평일 답변이 어려울 수 있습니다<br>
                - 토,일요일 및 공휴일 문의는 평일 운영 시간 내 순차적으로 답변드리겠습니다.</p>
                <br>
                <div class="btnouter" align="center">
                    <button class="btn">1:1 문의하기</button>
                    <button class="btn">문의 내역 조회</button>
                    <hr>
                </div>
        </div>
        <br>
        <form action="" id="enrollForm" method="post"> 
            <div class="form" align="center">
                상담분야 : 
                <select name="field">
                    <option value="1">주문확인 및 배송</option>
                    <option value="2">환불처리</option>
                    <option value="3">주문취소</option>
                    <option value="4">재고문의</option>
                </select>&emsp;
                주문번호 : 
                <select name="field2">
                    <option value="no">선택안함</option>
                    <option value="no1">000001</option>
                    <option value="no2">000002</option>
                    <option value="no3">000003</option>
                </select>
                <br><br>
            </div>
            <div class="question">
                <table id="qtable" border="1" align="center">
                    <tr height="50">
                        <th width="80">문의 제목</th>
                        <td>&nbsp;
                            <input type="text" size="68" style="height: 25px;" value="제목을 입력해주세요">
                        </td>
                    </tr>
                    <tr>
                        <th>문의 내용</th>
                        <td height="180">&nbsp;
                            <textarea name="content" rows="10" cols="70" style="resize: none;" required>문의 내용을 입력해주세요. </textarea> &nbsp;
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
                <button type="submit" id="btn1">등록하기</button>
            </div>
        </form>
    </div>
</body>
</html>

<script>
    var btn = document.getElementsByClassName("btn");

        function handleClick(event) {
        console.log(event.target);
        
        console.log(event.target.classList);

        if (event.target.classList[1] === "clicked") {
            event.target.classList.remove("clicked");
        } else {
            for (var i = 0; i < btn.length; i++) {
            btn[i].classList.remove("clicked");
            }

            event.target.classList.add("clicked");
          }
        }

        function init() {
            for (var i = 0; i < btn.length; i++) {
                btn[i].addEventListener("click", handleClick);
            }
        }
        init();
</script>