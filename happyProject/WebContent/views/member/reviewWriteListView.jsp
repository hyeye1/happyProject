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
        .box{
         width: 100%;
         height: 60px; 
         font-size:medium; 
         font-weight: bold;
         border-top:1px solid gray;
         text-align: center;
         margin: auto;
        }
        #text1{font-size:x-large; font-weight: bold;}
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
        .btnouter{margin-top: 30px; margin-left: 100px;}
        .review{
            margin-left: 40px; 
            line-height: 30px; 
            font-weight: 500;
        }
        #btn1, #btn2{
            width: 100px;
            height: 40px;
            font-size: small;
            font-weight: bold;
            color: gray;
            border: 1px solid lightgrey;
            background-color: rgb(249, 219, 122);
            border-radius: 4px;
            padding: 5px;
            cursor: pointer;
        }
        #btn1:hover, #btn2:hover{background-color: rgb(249, 219, 122); color:white;}
        #btn1{margin-top: 120px; margin-left: 50px;}
        #btn2{margin-bottom: 20px;}
    </style>
</head>
<body>
    <div class="outer">
        <div class="top">
            <span id="text1">나의 리뷰</span><hr>
            <div class="btnouter">
                <button class="btn">작성 가능 리뷰(0 or 1)</button>
                <button class="btn">작성한 리뷰(2)</button>
            </div>
        </div>
        <div class="box" align="center"><br>
        <!-- 리뷰 작성 없을 때
            <img src="resources/image/nowrite.png" width="60"><br><br>
             <span id="text">리뷰 작성이 가능한 도서가 없습니다.</span>
        -->
        <table class="review" width="800">
            <tr>
                <td rowspan="5">
                    <img src="resources/image/book.png" width="140" height="180">
                </td>
            </tr>
            <tr>
                <td rowspan="5" align="left">
                    주문날짜 : 2021-04-12<br>
                    책 제목 : 아몬드<br>
                    저자 : 손원평<br>
                    출판 : 창비출판<br>
                </td>
                <td rowspan="5" width="450">
                    <button type="button" id="btn1">리뷰작성</button>
                </td>
            </tr>
        </table>
        <hr>
        <table class="review" width="800">
            <tr>
                <td rowspan="5">
                    <img src="resources/image/book.png" width="140" height="180">
                </td>
            </tr>
            <tr>
                <td rowspan="5" align="left">
                    주문날짜 : 2021-04-12<br>
                    책 제목 : 아몬드<br>
                    저자 : 손원평<br>
                    출판 : 창비출판<br>
                </td>
                <td rowspan="5" width="450">
                    <button type="button" id="btn1">리뷰작성</button>
                </td>
            </tr>
        </table>
        <hr>
        <div class="btnouter2" align="center">
            <button type="button" id="btn2">주문내역가기</button>
        </div>
    
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


    </div>

    
    
</body>
</html>

