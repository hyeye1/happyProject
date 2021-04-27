<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file = "../common/menubar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 일반 검색</title>
<style>
         .outer{
        margin: auto;
        width: 1000px;
        height: 1140px;
        }
        .path{
            height:2%;
            width: 1000px;
            text-align: right;
        }
        .outer2{
            width: 950px;
            margin: auto;
        }
        b{
            color: rgb(249, 219, 122); font-size:x-large;
        }
        img{
        width: 150px;
        cursor: pointer;
        }
        #booktable{
            margin:auto;
            width: 900px;
            height: 1000px;
        }
        #bkname{
            font-size: large;
            font-weight:bold;
            cursor: pointer;
        }
        a{ color:lightslategrey; }
        a:hover{ color:#F9DB7A; }
        #img2{ 
            margin: auto; 
            width: 30px;
            height: 30px;
            }
    </style>
</head>
<body>
    <div class="outer">
        <div class="path">홈 > 일반검색</div>
 
        <div class="outer2">
           <h2>검색결과 <b> "안녕" </b></h2>
            <table id="booktable">
                 <tr>
                    <td> <img src="resources/books/novel/아직멀었다.jpg" alt=""> </td>
                    <td>
                        <a id="bkname" >도서명</a> <br> 작가명 <br> 도서카테고리<br><br><br><br>
                        <img id="img2" src="resources/images/addCart.png" alt=""></img><br>                    
                    </td>
                  	<td> <img src="resources/books/novel/아직멀었다.jpg" alt=""> </td>
                    <td> 
                        <a id="bkname" >도서명</a> <br> 작가명 <br> 도서카테고리<br><br><br><br>
                        <img id="img2" src="resources/images/addCart.png" alt=""></img><br>
                    </td>
                    <td> <img src="resources/books/novel/아직멀었다.jpg" alt=""> </td>
                    <td>
                        <a id="bkname" >도서명</a> <br> 작가명 <br> 도서카테고리<br><br><br><br>
                        <img id="img2" src="resources/images/addCart.png" alt=""></img><br>
                    </td>
                 </tr>
                 <tr>
                    <td> <img src="resources/books/novel/아직멀었다.jpg" alt=""> </td>
                    <td>
                        <a id="bkname" >도서명</a> <br> 작가명 <br> 도서카테고리<br><br><br><br>
                        <img id="img2" src="resources/images/addCart.png" alt=""></img><br>
                    </td>
                    <td> <img src="resources/books/novel/아직멀었다.jpg" alt=""> </td>
                    <td>
                        <a id="bkname" >도서명</a> <br> 작가명 <br> 도서카테고리<br><br><br><br>
                        <img id="img2" src="resources/images/addCart.png" alt=""></img><br>
                    </td>
                    <td> <img src="resources/books/novel/아직멀었다.jpg" alt=""> </td>
                    <td>
                        <a id="bkname" >도서명</a> <br> 작가명 <br> 도서카테고리<br><br><br><br>
                        <img id="img2" src="resources/images/addCart.png" alt=""></img><br>
                    </td>
                  </tr>
                  <tr>
                    <td> <img src="resources/books/novel/아직멀었다.jpg" alt=""> </td>
                    <td>
                        <a id="bkname" >도서명</a> <br> 작가명 <br> 도서카테고리<br><br><br><br>
                        <img id="img2" src="resources/images/addCart.png" alt=""></img><br>
                    </td>
                    <td> <img src="resources/books/novel/아직멀었다.jpg" alt=""> </td>
                    <td>
                        <a id="bkname" >도서명</a> <br> 작가명 <br> 도서카테고리<br><br><br><br>
                        <img id="img2" src="resources/images/addCart.png" alt=""></img><br>
                    </td>
                    <td> <img src="resources/books/novel/아직멀었다.jpg" alt=""> </td>
                    <td>
                        <a id="bkname" >도서명</a> <br> 작가명 <br> 도서카테고리<br><br><br><br>
                        <img id="img2" src="resources/images/addCart.png" alt=""></img><br>
                    </td>
                 </tr>
                 <tr>
                    <td> <img src="resources/books/novel/아직멀었다.jpg" alt=""> </td>
                    <td>
                        <a id="bkname" >도서명</a> <br> 작가명 <br> 도서카테고리<br><br><br><br>
                        <img id="img2" src="resources/images/addCart.png" alt=""></img><br>
                    </td>
                    <td> <img src="resources/books/novel/아직멀었다.jpg" alt=""> </td>
                    <td>
                        <a id="bkname" >도서명</a> <br> 작가명 <br> 도서카테고리<br><br><br><br>
                        <img id="img2" src="resources/images/addCart.png" alt=""></img><br>
                    </td>
                    <td> <img src="resources/books/novel/아직멀었다.jpg" alt=""> </td>
                    <td>
                        <a id="bkname" >도서명</a> <br> 작가명 <br> 도서카테고리<br><br><br><br>
                        <img id="img2" src="resources/images/addCart.png" alt=""></img><br>
                    </td>
                 </tr>
            </table>

        </div>
	
    </div>

</body>
</html>