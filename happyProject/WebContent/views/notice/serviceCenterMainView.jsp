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
        #text2{color:rgb(241, 196, 15); font-weight: bold;}
        .faq{
            width: 750px;
            border: 1px solid gray;
            text-align: left;
            padding-top: 10px;
            padding-bottom: 10px;
            box-sizing: border-box;
        }
        #faqSearch{margin-left: 20px;}
        #faq1{font-size: large;}
        #faq2{width:300px; height: 25px;}
        #faq3{
            border: 1px solid lightgray;
            color: black;
            background-color: rgb(241, 196, 15);
            border-radius: 3px;
            padding: 6px;
            width: 55px;
        }
        #faq3:hover{background-color: rgb(249, 219, 122); color:white;}
        .faqSearchBox{
            width: 520px;
            height: 40px;
            background-color: rgb(255, 233, 161);
            padding-left: 185px;
            padding-top: 8px;
            margin-top: 5px;
        }
        .top5{padding-left: 30px; margin-top: 5px; margin-bottom: 10px;}
        #top5Title{
            font-size: medium; 
            font-weight: bold; 
            padding-left: 25px;
            line-height: 40px;
        }
        .top5List, .noticeList{
            border: 1px solid black;
            text-align: center;
            margin-left: 25px;
            width: 700px;
        }
        .top5List>tbody>tr:hover,
        .noticeList>tbody>tr:hover{
            cursor:pointer;
            background: rgb(249, 219, 122);
            color: white;
        }
        #noticeNew{height: 30px; background-color: rgb(249, 219, 122);}
        .question1{
            width: 720px;
            height: 200px; 
            border: 1px solid gray;
            text-align: left;
            padding-top: 10px;
            padding-bottom: 10px;
            margin-top: 25px;
            padding-left: 30px;
        }
        #qtext1{font-size: large; font-weight: bold; padding-left: 150px;}
        #qtext2{color: gray;}
        .questionBox{
            width: 590px;
            height: 80px;
            background-color: rgb(255, 233, 161);
            padding-left: 100px;
            padding-top: 40px;
            line-height: 15px;
        }
        #qbtn{
            width: 100px;
            height: 40px;
            font-size: medium;
            font-weight: bold;
            color: gray;
            border: 1px solid lightgrey;
            background-color: rgb(249, 219, 122);
            border-radius: 4px;
            padding: 5px;
            cursor: pointer;
            margin-bottom: 5px;
            margin-left: 460px;
        }
        #qbtn:hover{background-color: rgb(249, 219, 122); color:white;}
        .notice{
            width: 750px;
            height: 170px; 
            border: 1px solid gray;
            text-align: left;
            padding-top: 10px;
            padding-bottom: 20px;
            margin-bottom: 100px;
        }
        .notice img{margin-left: 20px; margin-bottom: 5px;}

        .answer {
            width: 690px;
            display: none;
            padding: 10px;
            margin-top: 2px;
            margin-bottom: 10px;
            padding-bottom: 50px;
            background-color: rgb(250, 248, 248);
            border-radius: 5px;
            box-sizing: border-box;
        }
        .question {
            font-size: 15px;
            padding: 5px 0;
            cursor: pointer;
            border:1px solid gray;
            border-radius: 10px;
            outline: none;
            background: none;
            width: 690px;
            text-align: left;
        }
        .question:hover {
            color: #f3d00c;
        }
        [id$="-toggle"] {
        margin-right: 15px;
        }
    </style>
</head>
<body>

    <div class="outer">
        <span id="text1">고객센터</span><hr>
        <span>&nbsp;해피북스데이</span>
        <span id="text2">온라인 고객센터</span> 입니다.<br><br>
    
        <div class="faq">
            <form action="" id="faqSearch" method="GET">
                <a href="<%=contextPath%>/list.faq" target=_blank><img src="../../resources/images/faq.png" width="100px" height="40"></a><br>
                <div class="faqSearchBox">
                    <span id="faq1">FAQ</span>&nbsp;
                    <input id="faq2" type="text" value="검색어 입력">
                    <button id="faq3" type="submit">검색</button>
                </div>
            </form>
            <span id="top5Title">자주 묻는 질문 TOP 5</span>
                <div class="top5">
                    <button class="question" id="que-1"><span id="que-1-toggle"></span><span>자주 묻는 질문 1</span></button>
                    <div class="answer" id="ans-1">내용내용내용</div>
                  
                    <button class="question" id="que-2"><span id="que-1-toggle"></span><span>자주 묻는 질문 2</span></button>
                    <div class="answer" id="ans-2">내용내용내용</div>
                  
                    <button class="question" id="que-3"><span id="que-1-toggle"></span><span>자주 묻는 질문 3</span></button>
                    <div class="answer" id="ans-3">내용내용내용</div>
               
                    <button class="question" id="que-4"><span id="que-1-toggle"></span><span>자주 묻는 질문 4</span></button>
                    <div class="answer" id="ans-4">내용내용내용</div>
                  
                    <button class="question" id="que-5"><span id="que-1-toggle"></span><span>자주 묻는 질문 5</span></button>
                    <div class="answer" id="ans-5">내용내용내용</div>
                </div>
        </div>
    
                <div class="question1">
                    <a href="이동될 페이지 주소" target=_blank><img src="../../resources/images/question.png" width="120px" height="50"></a><br>
                    <div class="questionBox">
                        <span id="qtext1">1:1 문의로 빠른 답변 받기</span><br><br>
                        <span id="qtext2">해피북스데이에 대한 모든 궁금증은 1:1 문의하기로 부담없이 확인하세요.</span>
                    </div>
                </div>
                    <br>

            <div class="notice">

                <a href="이동될 페이지 주소" target=_blank><img src="../../resources/images/notice.png" width="130px" height="50"></a><br>

                <a href="<%=contextPath%>/list.no" target=_blank><img src="../../resources/images/notice.png" width="130px" height="50"></a><br>

                <table class="noticeList">
                    <thead>
                        <tr id="noticeNew">
                            <th width="600">글제목</th>
                            <th width="100">작성일</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>새로운 공지사항2</td>
                            <td>2021-04-12</td>
                        </tr>
                        <tr>
                            <td>새로운 공지사항2</td>
                            <td>2021-04-11</td>
                        </tr>
                        <tr>
                            <td>새로운 공지사항3</td>
                            <td>2021-04-10</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            
        <script>
            const items = document.querySelectorAll('.question');
          
            function openCloseAnswer() {
              const answerId = this.id.replace('que', 'ans');
          
              if(document.getElementById(answerId).style.display === 'block') {
                document.getElementById(answerId).style.display = 'none';
                document.getElementById(this.id + '-toggle');
              } else {
                document.getElementById(answerId).style.display = 'block';
                document.getElementById(this.id + '-toggle').textContent;
              }
            }
          
            items.forEach(item => item.addEventListener('click', openCloseAnswer));
          </script>
         
    </div>
    
         
</body>
</html>