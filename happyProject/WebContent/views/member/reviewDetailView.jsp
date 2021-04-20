<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
    .button{margin-left: 200px;}
    #writeForm>table{
        border: 1px solid gray; 
        padding: 10px;
        }
    #detailArea{border: 1px solid black; background-color: rgb(249, 219, 122);}
    #detailArea p{height: 200px;}
    #detailArea td{background-color: white;}
    #detailArea th{background-color: rgba(253, 240, 198, 0.993);}
</style>

</head>
<body>
	<div class="outer">
        <span id="text1">리뷰</span>
        <span id="text1"style="color:rgb(241, 196, 15)">상세보기</span>
        <hr>
        <form id="writeForm" action="" method="POST">
        	<input type="hidden" name="nno" value="">
            <table id="detailArea" border="1">
                <tr>
                    <th>작성일</th>
                    <td width="400">2021-04-10</td>
                </tr>
                <tr>
                    <th>내용</th>
                    <td>
                        <p>리뷰 상세보기 내용</p>
                    </td>
                </tr>
            </table>
            <br>
            <div class="button">
                <button id="btn" type="button">목록가기</button>
                <button id="btn" type="submit">수정하기</button>
                <button id="btn" type="reset">삭제하기</button>
            </div>
        </form>
    </div>
        
</body>
</html>