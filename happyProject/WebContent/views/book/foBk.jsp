<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/hover-min.css">

    <style>
        .foOuter{
            margin: auto;
            width: 1000px;
            height: 2150px;
        }
        .foHeader{
            height: 200px; 
            border-bottom: 1.5px solid gray;
        }
        .foCat{
            float: left; 
            background-color: white; 
            width: 250px; 
            text-align: left;
        }
        .addCartImage{
            width: 35px;
            height: 33px;
            float: right;
            margin-top: -44px;
            margin-right: 25px;
        }
        .foOuter a{text-decoration: none; color: gray; font-size: 12px;}
        .foBody td {
            width: 180px;
            text-align: center;
            }
        .foBody p { 
            text-align: left;
            margin-left: 25px;
        }
        .bkName{
            color: black;
            font-size: 14px;
            font-weight: 600;
            vertical-align: top;
        }
        .bkPrice{
            color: rgb(52, 152, 219);
            font-size: 14px;
            font-weight: 700;
            vertical-align: bottom;
        }
        .coverImg{
            width: 130px;
            height: 180px;
            border-radius: 3px;
            box-shadow: 2px 0px 20px -2px gray;
            border: 1px solid darkgray;
        }
        .foBody tr{height: 400px;}
        #foNew #foBest{height: 950px;}

        .addCartWrap{
            position:absolute;
            top: 50%;
            left: 50%;
            box-sizing: border-box;
            width: 290px;
            height: 153px;
            margin-top: -75px;
            margin-left: -150px;
            font-size: 13px;
            box-shadow: 0px 0px 50px 1500px rgba(196, 196, 196, 0.455), 5px 5px 10px 1px rgba(35, 35, 35, 0.565);
            display: none;
        }
        .addCartWrap div{
            box-sizing: border-box;
        }
        #addCartTitle{
            height: 40px;
            background-color: rgb(249, 219, 122);
            border-bottom: none;
        }
        #addCartContent{
            background-color: white;
        }
        #addCartTitleName{
            display: inline-block;
            text-align: center;
            margin-top: 8px;
            border-top-left-radius: 15px;
        }
        #addCartContent button{
            margin-top: -20px;
            margin-bottom: 15px;
        }
    </style>
</head>
<body>

    <div class="foOuter" align="center">
        
        <div class="foHeader">
            <h4 align="left" style="color: gray;">HOME > 외국도서</h4>
            <br>
            <h2>외국도서</h2>
            <span class="foCat" style="margin-top: 27px;">
                <h2>외국도서 베스트셀러</h2>
            </span>
        </div>

        
<br><br>

        <div id="foBest" style="height: 950px;">
            <table class="foBody">
                <tr>
                    <td>
                        <h1>1</h1>
                        <input class="coverImg" type="image" src="../../resources/images/도서이미지(수정)/경제경영/02_돈의심리학.jpg">
                        <p>
                            <a href=""><span class="bkName">돈의 심리학</span><br><span class="bkAuthor">모건 하우절</span><br><span class="bkPrice">9,800 원</span></a>
                        </p>
                        <input class="addCartImage" type="image"  src="../../resources/images/addCart.PNG" alt="">
                    </div>
                    </td>
                    <td>

                        <h1>2</h1>
                        <input class="coverImg" type="image" src="../../resources/images/도서이미지(수정)/소설/달러구트.jpg">
                        <p>
                            <a href=""><span class="bkName">달러구트 꿈 백화점</span><br><span class="bkAuthor">이미예</span><br><span class="bkPrice">9,800 원</span></a>
                        </p>
                        <input class="addCartImage" type="image"  src="../../resources/images/addCart.PNG" alt="">
                    </div>
                    </td>
                    <td>
                        <h1>3</h1>
                        <input class="coverImg" type="image" src="../../resources/images/도서이미지(수정)/시/그런사람또없습니다_표지.jpg">
                        <p>
                            <a href=""><span class="bkName">그런 사람 또 없습니다</span><br><span class="bkAuthor">원태연</span><br><span class="bkPrice">9,800 원</span></a>
                        </p>
                        <input class="addCartImage" type="image"  src="../../resources/images/addCart.PNG" alt="">
                    </div>
                    </td>
                    <td>
                        <h1>4</h1>
                        <input class="coverImg" type="image" src="../../resources/images/도서이미지(수정)/소설/모순.jpg">
                        <p>
                            <a href=""><span class="bkName">모순</span><br><span class="bkAuthor">양귀자</span><br><span class="bkPrice">9,800 원</span></a>
                        </p>
                        <input class="addCartImage" type="image"  src="../../resources/images/addCart.PNG" alt="">
                    </div>
                    </td>
                    <td>
                        <h1>5</h1>
                        <input class="coverImg" type="image" src="../../resources/images/도서이미지(수정)/소설/소년이온다.jpg">
                        <p>
                            <a href=""><span class="bkName">소년이 온다</span><br><span class="bkAuthor">한강</span><br><span class="bkPrice">9,800 원</span></a>
                        </p>
                        <input class="addCartImage" type="image"  src="../../resources/images/addCart.PNG" alt="">
                    </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h1>6</h1>
                        <input class="coverImg" type="image" src="../../resources/images/도서이미지(수정)/소설/멋진신세계.jpg">
                        <p>
                            <a href=""><span class="bkName">멋진 신세계</span><br><span class="bkAuthor">올더스 헉슬리</span><br><span class="bkPrice">9,800 원</span></a>
                        </p>
                        <input class="addCartImage" type="image"  src="../../resources/images/addCart.PNG" alt="">
                    </div>
                    </td>
                    <td>
                        <h1>7</h1>
                        <input class="coverImg" type="image" src="../../resources/images/도서이미지(수정)/소설/보건교사안은영.jpg">
                        <p>
                            <a href=""><span class="bkName">보건교사 안은영</span><br><span class="bkAuthor">정세랑</span><br><span class="bkPrice">9,800 원</span></a>
                        </p>
                        <input class="addCartImage" type="image"  src="../../resources/images/addCart.PNG" alt="">
                    </div>
                    </td>
                    <td>
                        <h1>8</h1>
                        <input class="coverImg" type="image" src="../../resources/images/도서이미지(수정)/소설/분신.jpg">
                        <p>
                            <a href=""><span class="bkName">분신</span><br><span class="bkAuthor">히가시노게이고</span><br><span class="bkPrice">9,800 원</span></a>
                        </p>
                        <input class="addCartImage" type="image"  src="../../resources/images/addCart.PNG" alt="">
                    </div>
                    </td>
                    <td>
                        <h1>9</h1>
                        <input class="coverImg" type="image" src="../../resources/images/도서이미지(수정)/소설/아몬드.jpg">
                        <p>
                            <a href=""><span class="bkName">아몬드</span><br><span class="bkAuthor">손원평</span><br><span class="bkPrice">9,800 원</span></a>
                        </p>
                        <input class="addCartImage" type="image"  src="../../resources/images/addCart.PNG" alt="">
                    </div>
                    </td>
                    <td>
                        <h1>10</h1>
                        <input class="coverImg" type="image" src="../../resources/images/도서이미지(수정)/소설/프리즘.jpg">
                        <p>
                            <a href=""><span class="bkName">프리즘</span><br><span class="bkAuthor">손원평</span><br><span class="bkPrice">9,800 원</span></a>
                        </p>
                        <input class="addCartImage" type="image"  src="../../resources/images/addCart.PNG" alt="">
                    </div>
                    </td>
                </tr>
            </table>
        </div>


        <div style="border-bottom: 1.5px solid gray;">
            <span class="foCat" style="margin-top: -35px;">
                <h2> 외국도서 인기 신간</h2>
            </span>
        </div>

        <br><br><br>
        <div id="foNew" style="height: 950px;">
            <table class="foBody">
                <tr>
                    <td>
                        <h1>1</h1>
                        <input class="coverImg" type="image" src="../../resources/images/도서이미지(수정)/경제경영/02_돈의심리학.jpg">
                        <p>
                            <a href=""><span class="bkName">돈의 심리학</span><br><span class="bkAuthor">모건 하우절</span><br><span class="bkPrice">9,800 원</span></a>
                        </p>
                        <input class="addCartImage" type="image"  src="../../resources/images/addCart.PNG" alt="">
                    </div>
                    </td>
                    <td>

                        <h1>2</h1>
                        <input class="coverImg" type="image" src="../../resources/images/도서이미지(수정)/소설/달러구트.jpg">
                        <p>
                            <a href=""><span class="bkName">달러구트 꿈 백화점</span><br><span class="bkAuthor">이미예</span><br><span class="bkPrice">9,800 원</span></a>
                        </p>
                        <input class="addCartImage" type="image"  src="../../resources/images/addCart.PNG" alt="">
                    </div>
                    </td>
                    <td>
                        <h1>3</h1>
                        <input class="coverImg" type="image" src="../../resources/images/도서이미지(수정)/시/그런사람또없습니다_표지.jpg">
                        <p>
                            <a href=""><span class="bkName">그런 사람 또 없습니다</span><br><span class="bkAuthor">원태연</span><br><span class="bkPrice">9,800 원</span></a>
                        </p>
                        <input class="addCartImage" type="image"  src="../../resources/images/addCart.PNG" alt="">
                    </div>
                    </td>
                    <td>
                        <h1>4</h1>
                        <input class="coverImg" type="image" src="../../resources/images/도서이미지(수정)/소설/모순.jpg">
                        <p>
                            <a href=""><span class="bkName">모순</span><br><span class="bkAuthor">양귀자</span><br><span class="bkPrice">9,800 원</span></a>
                        </p>
                        <input class="addCartImage" type="image"  src="../../resources/images/addCart.PNG" alt="">
                    </div>
                    </td>
                    <td>
                        <h1>5</h1>
                        <input class="coverImg" type="image" src="../../resources/images/도서이미지(수정)/소설/소년이온다.jpg">
                        <p>
                            <a href=""><span class="bkName">소년이 온다</span><br><span class="bkAuthor">한강</span><br><span class="bkPrice">9,800 원</span></a>
                        </p>
                        <input class="addCartImage" type="image"  src="../../resources/images/addCart.PNG" alt="">
                    </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h1>6</h1>
                        <input class="coverImg" type="image" src="../../resources/images/도서이미지(수정)/소설/멋진신세계.jpg">
                        <p>
                            <a href=""><span class="bkName">멋진 신세계</span><br><span class="bkAuthor">올더스 헉슬리</span><br><span class="bkPrice">9,800 원</span></a>
                        </p>
                        <input class="addCartImage" type="image"  src="../../resources/images/addCart.PNG" alt="">
                    </div>
                    </td>
                    <td>
                        <h1>7</h1>
                        <input class="coverImg" type="image" src="../../resources/images/도서이미지(수정)/소설/보건교사안은영.jpg">
                        <p>
                            <a href=""><span class="bkName">보건교사 안은영</span><br><span class="bkAuthor">정세랑</span><br><span class="bkPrice">9,800 원</span></a>
                        </p>
                        <input class="addCartImage" type="image"  src="../../resources/images/addCart.PNG" alt="">
                    </div>
                    </td>
                    <td>
                        <h1>8</h1>
                        <input class="coverImg" type="image" src="../../resources/images/도서이미지(수정)/소설/분신.jpg">
                        <p>
                            <a href=""><span class="bkName">분신</span><br><span class="bkAuthor">히가시노게이고</span><br><span class="bkPrice">9,800 원</span></a>
                        </p>
                        <input class="addCartImage" type="image"  src="../../resources/images/addCart.PNG" alt="">
                    </div>
                    </td>
                    <td>
                        <h1>9</h1>
                        <input class="coverImg" type="image" src="../../resources/images/도서이미지(수정)/소설/아몬드.jpg">
                        <p>
                            <a href=""><span class="bkName">아몬드</span><br><span class="bkAuthor">손원평</span><br><span class="bkPrice">9,800 원</span></a>
                        </p>
                        <input class="addCartImage" type="image"  src="../../resources/images/addCart.PNG" alt="">
                    </div>
                    </td>
                    <td>
                        <h1>10</h1>
                        <input class="coverImg" type="image" src="../../resources/images/도서이미지(수정)/소설/프리즘.jpg">
                        <p>
                            <a href=""><span class="bkName">프리즘</span><br><span class="bkAuthor">손원평</span><br><span class="bkPrice">9,800 원</span></a>
                        </p>
                        <input class="addCartImage" type="image"  src="../../resources/images/addCart.PNG" alt="">
                    </div>
                    </td>
                </tr>
            </table>

            <div class="addCartWrap">
                <div id="addCartTitle">
                    <h3 id="addCartTitleName">장바구니 추가</h3>
                </div>
                <div id="addCartContent">
                    <br>
                    <p>도서가 장바구니에 추가되었습니다!</p>
                    <br>
                    <button type="button" id="okBtn">확인</button>
                </div>
            </div>

            <script>                     
                        $(".addCartImage").click(function() {
                            $(".addCartWrap").show();
                        });
                        $("#okBtn").click(function() {
                            $(".addCartWrap").hide();
                        });
            </script>

        </div>

            


    </div>


</body>
</html>