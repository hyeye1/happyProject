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
        .footerOuter{
            width: 1000px; 
            height: 350px;
            margin: auto;
            cursor: default;
            }
        .footerNotice{
            height:45px; 
            border-top: 1.5px solid gray;
            border-bottom: 1.5px solid gray;
            }
        .footerNotice div{display: table-cell; height: 45px; float: left;}
        #footerNo{
            width: 200px;
            font-size: 16px;
            font-weight: 700;
            line-height: 44px;
            margin-left: 10px;
        }
        #footerNoCon{
            width: 700px;
            line-height: 43px;
        }
        #footerNoCon a{
            text-decoration: none;
            color: black;
            font-size: 15px;
            width: 85%;
            height: 100%;
            display: block;
        }
        #footerNoCon input { 
            float: right; 
            margin-right: 25px; 
            border: none;
            font-weight: 900;
            width: 40px;
            cursor: pointer;
            background-color: white;
            }
        #footerNoUp {margin-top: -43px; font-size: 15px; }
        #footerNoDown {margin-top: -24px; font-size: 15px;}
        .footerMiddle{
            height: 140px; 
            }
        .footerInfo{
            height: 162px; 
            background-color: lightgray;
            }
        #centerNo1{
            width: 100px;
            display: table-cell; 
            height: 140px;
            float: left;
            margin-top: 0px;
            color: gray; 
            }
        #centerNo1 p {
            font-size: 13.5px;
            font-weight: 900;
            margin-top: 40px;
            margin-left: -27px;
        }
        #centerNo1 li {
            list-style: none;
            border:1px solid gray; 
            margin:7px; 
            width:50px; 
            height: 15px;
            line-height: 1.6;
            font-size: 10px;
            font-weight: 600;
            margin-left: 10px;
            }
        #centerNo2{
            width: 300px;
            margin: 0px;
            float: left;
            height: 140px;
            border-right: 1.5px solid gray;
        }
        #centerNo2 li{
            list-style: none;
            margin-left: -65px;
            font-weight: 600;
        }
        #centerNo3{
            float: left;
            margin: 0px;
            background-color: white;
            width: 517px;
            height: 140px;
        }
        .footerDownloads{ width: 150px; margin-top: 37px; margin-right: 20px; margin-left: 20px;}
        .footerSns{width: 30px; margin: 10px; margin-top: -1px;}
        .footerInfoMenu {
            display: table-cell;
            float: left;
            margin-left: -95px;
            margin-right: 95px;
            margin-top: 13px;
        }
        .footerInfoMenu a{
            text-decoration:none;
            color:black;
            font-size:7px;
            font-weight: 500;
            display:block;
            width:100%;
            height:100%;
    }
        .footerInfoDetail{
            float: right;
            width: 945px;
            height: 110px;
            margin-top: 10px;
            font-size: 7px;
            color: gray;
        }
    </style>
</head>
<body>
    <div class="footerOuter">
        <div class="footerNotice"> <!-- 공지사항 -->
            <div id="footerNo" align="center"> 공지사항 </div>
            <div id="footerNoCon">
                <a href=""> Happy Book's Day 서버 정기점검 작업 공지 (3/25 03:00~05:00)</a>
                <input type="button" value="∨" id="footerNoDown">
                <input type="button" value="∧" id="footerNoUp">
            </div>
        </div> 
            
        
        <div class="footerMiddle"> <!-- 고객센터번호/sns -->
            <div class="centerNo" > <!--고객센터 전화번호-->
                <ul id="centerNo1" align="center">
                    <p>고객센터</p>
                    <li>대표번호</li> 
                    <li>운영시간</li>
                </ul>
            </div>
            <div class="centerNo">
                <ul id="centerNo2">
                    <li style="font-size: 40px; margin-top: 36px;">1588-1234</li>
                    <li style="font-size: 8px; margin-top: 8px;">월~금 09:00 - 18:00 (점심시간 12:00 - 13:00) / 주말 및 공휴일 휴무</li>
                </ul>
            </div>
            <div class="centerNo">
                <div id="centerNo3">
                    <div align="center">
                        <input type="image" src="resources/images/google.png" id="footerGoogle" class="footerDownloads">
                        <input type="image" src="resources/images/app.png" id="footerApps" class="footerDownloads">
                    </div>
                    <br>
                    <div align="center">
                        <input type="image" src="resources/images/twitter.png" id="footerTwitter" class="footerSns">
                        <input type="image" src="resources/images/facebook.png" id="footerFacebook" class="footerSns">
                        <input type="image" src="resources/images/insta.png" id="footerInsta" class="footerSns">
                        <input type="image" src="resources/images/youtube.png" id="footerYoutube" class="footerSns">
                    </div>
                </div>
            </div>
        </div> <!-- footerMiddle -->


        <div class="footerInfo"> <!-- 회사소개 이용약관 등등 -->
            <div align="center">
                <div class="footerInfoMenu"><a href="" style="width: 60px; border-right: 1.5px solid gray;">회사소개</a></div>
                <div class="footerInfoMenu"><a href="" style="width: 60px; border-right: 1.5px solid gray;">이용약관</a></div>
                <div class="footerInfoMenu"><a href="" style="width: 80px; border-right: 1.5px solid gray;">개인정보정책</a></div>
                <div class="footerInfoMenu"><a href="" style="width: 90px; border-right: 1.5px solid gray;">청소년보호정책</a></div>
                <div class="footerInfoMenu"><a href="" style="width: 90px; border-right: 1.5px solid gray;">사업자정보확인</a></div>
                <div class="footerInfoMenu"><a href="" style="width: 60px; border-right: none;">제휴문의</a></div>
                <!-- <div class="footerInfoMenu"><a href="">작가/출판사전용</a></div> -->
            </div>

            
            <div class="footerInfoDetail">
                <p>
                    상호 : (주) 해피북스데이  |  대표이사 : 책읽조  |  주소 : 서울 강남구 강남대로 1231-1  |  사업자 등록번호 : 123-11-12344
                    <br><br>
                    통신판매업 신고번호 : 제 2021-서울서울-0101호  | 개인정보 관리 책임자 : 정혜
                    <br><br>
                    E-mail: happybooksreader@gmail.com   |   전화번호 1588-1234
                    <br><br>
                    Copyright © HAPPYBOOKSDAY Co.,Ltd. All Rights Reserved.


                </p>
            </div>


        </div> <!-- footerInfo -->


    </div> <!-- Outer -->
</body>
</html>