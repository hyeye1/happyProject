<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        .outer{
            margin: auto;
            margin-top: 50px;
            margin-bottom: 20px;
            border: 1px solid white;
            width:1000px;
        }
        .tagSearch{
            margin-bottom: 20px;
            font-size: xx-large; 
            font-weight: bold; 
            color: rgb(241, 196, 15);
        }
        #searchBox{
            width: 230px;
            height: 30px;
            border-top: 0;
            border-left: 0;
            border-right: 0;
            border-color: rgb(163, 163, 163);
            font-size: large;
            font-weight: bold;
            color: lightgray;
        }
        #searchBtn{
            width: 70px;
            height: 36px;
            font-size: medium;
            font-weight: bold;
            color: gray;
            border: 1px solid lightgrey;
            background-color: rgb(249, 219, 122);
            border-radius: 4px;
            cursor: pointer;
            margin-bottom: 5px;
        }
        #searchBtn:hover{background-color: rgb(249, 219, 122); color:white;}
        .bestTag span{
            font-size: large;
            font-weight: bold;
            margin-right: 600px;
        }
        .bestTagBox{
            width: 800px;
            height: 150px;
            border: 1px solid white;
            background-color: rgb(255, 233, 161);
            margin-bottom: 30px;
        }
        #tag{
            width: 85px;
            height: 40px;
            padding:8px;
            margin-top: 25px;
            margin-left: 30px;
            font-size: medium;
            color: grey;
            background-color: white;
            border: 0px;
            border-radius: 20px;
            cursor: pointer;
        }
        #tag:hover{background-color: rgb(249, 219, 122); color:white;}
        .searchBook{
            width: 1000px;
            height: 420px;
            background-color: rgb(245, 245, 245);
            border: 1px solid rgb(173, 172, 172);
            border-left: 0;
            border-right: 0;
            border-bottom: 0;
            padding-top: 10px;
        }
        .searchBook span{
            font-size: large;
            font-weight: bold;
            color: gray;
        }
        #tagpoint{color: rgb(241, 196, 15);}
        #book{
            font-size: small;
            text-align: left;
            width: 90px;
            height: 185px;
        }
        .bookList{padding-left: 50px;}
        .bookList th{cursor: pointer;}
    </style>
</head>
<body>
    <div class="outer">
        <img src="resources/image/tag.png" width="1000" height="250">
        <br><br><br>
        <form class="tagSearch" action="" method="GET" align="center">
            <span>#</span>
            <input id="searchBox" type="text" value="????????? ???????????? ??????">
            <button id="searchBtn">??????</button>
        </form>
        <div class="bestTag" align="center">
            <span>?????? ??? ?????? ?????? ??????</span>
            <div class="bestTagBox">
                <button id="tag">#???</button>
                <button id="tag">#??????</button>
                <button id="tag">#??????</button>
                <button id="tag">#??????</button>
                <button id="tag">#??????</button><br>
                <button id="tag">#??????</button>
                <button id="tag">#??????</button>
                <button id="tag">#??????</button>
                <button id="tag">#?????????</button>
            </div>
        </div>
        <br><br>
       <div class="searchBook" align="center">
            <span id="tagpoint">'# ????????????'</span> 
            <span>???????????? ???</span>
            <span id="tagpoint">8</span>
            <span>????????? ?????? ????????? ???????????????!</span>
            <br><hr>

            <table class="bookList">
                <tr>
                    <th>
                        <img src="resources/image/book.png" width="120px" height="150px">
                    </th>
                    <th id="book">
                        <img src="resources/image/bestbook.png" width="80"><br>
                        1.<br>
                        ?????????<br>
                        ?????????<br>
                        ????????????
                    </th>
                    <th>
                        <img src="resources/image/book.png" width="120px" height="150px">
                    </th>
                    <th id="book">
                        2.<br>
                        ?????????<br>
                        ?????????<br>
                        ????????????
                    </th>
                    <th>
                        <img src="resources/image/book.png" width="120px" height="150px">
                    </th>
                    <th id="book">
                        3.<br>
                        ?????????<br>
                        ?????????<br>
                        ????????????
                    </th>
                    <th>
                        <img src="resources/image/book.png" width="120px" height="150px">
                    </th>
                    <th id="book">
                        4.<br>
                        ?????????<br>
                        ?????????<br>
                        ????????????
                    </th>
                </tr>
                <tr>
                    <th>
                        <img src="resources/image/book.png" width="120px" height="150px">
                    </th>
                    <th id="book">
                        5.<br>
                        ?????????<br>
                        ?????????<br>
                        ????????????
                    </th>
                    <th>
                        <img src="resources/image/book.png" width="120px" height="150px">
                    </th>
                    <th id="book">
                        6.<br>
                        ?????????<br>
                        ?????????<br>
                        ????????????
                    </th>
                    <th>
                        <img src="resources/image/book.png" width="120px" height="150px">
                    </th>
                    <th id="book">
                        7.<br>
                        ?????????<br>
                        ?????????<br>
                        ????????????
                    </th>
                    <th>
                        <img src="resources/image/book.png" width="120px" height="150px">
                    </th>
                    <th id="book">
                        8.<br>
                        ?????????<br>
                        ?????????<br>
                        ????????????
                    </th>
                </tr>
            </table>
       </div>

    </div>
    
</body>
</html>