<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보관함</title>
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
		.like01{
			width: 650px;
            height: 800px;
            float:right;
		}
	    #likeTb{
	        width: 650px;
	        height: 300px;
	        text-align: center;
	    }
	    img{
	        width: 150px;
	        cursor: pointer;
	    }
	    #cartBtn{
	        margin-bottom: 30px;
	        background-color: #F9DB7A;
	        width: 80px;
	        height: 30px;
	        border: none;
	        border-radius: 5px;
	        cursor: pointer;
	    }
	
	    #orderBtn{
	        background-color: #c0b799;
	        width: 80px;
	        height: 30px;
	        border: none;
	        border-radius: 5px;
	        cursor: pointer;
	    }
	    #orderBtn:hover{color:white;}
	    #orderBtn:focus{color:white;}
	
	    #cartBtn:hover{color:white}
	    #cartBtn:focus{color:white}
	
	    #del1,#allDel {
	        width: 80px;
	        height: 30px;
	        border: none;
	        border-radius: 5px;
	        cursor: pointer;
	    }
	    #catrBtn2{
	        margin-left: 270px;
	        width: 200px;
	        height: 30px;
	        border: none;
	        border-radius: 5px;
	        cursor: pointer;
	    }
	    #del1:hover{color: white;}
	    #del1:focus{color: white;}
	
	    #allDel:hover{color: white;}
	    #allDel:focus{color: white;}
	
	    #catrBtn2:hover{color: white;}
	    #cartBtn2:focus{color: white;}
    </style>

</head>
<body>
  <%@ include file = "../common/menubar.jsp" %>
	<div class="outer">
        <div class="path">홈>마이페이지>나의책갈피</div>
      <section>
        <div class="like01">
            <h2>보관함</h2><hr>
            <div class="like02">
                <table id="likeTb" border="1" style="border-collapse: collapse;">
                    <tr style="background-color: lightgray;">
                        <th></th>
                        <th>도서명</th>
                        <th>판매정보</th>
                        <th>선택</th>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td><img src="my_resources/image/달러구트.jpg" alt=""></td>
                        <td><b>달러구트 꿈백화점</b><br>이미예 지음</td>
                        <td>
                            <button id="cartBtn">장바구니</button><br>
                            <button id="orderBtn">바로구매</button>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td><img src="my_resources/image/달러구트.jpg" alt="" alt=""></td>
                        <td><b>달러구트 꿈백화점</b><br>이미예 지음</td>
                        <td>
                            <button id="cartBtn">장바구니</button><br>
                            <button id="orderBtn">바로구매</button>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="buttons01" style="margin-top: 50px;">
                <button id="del1" style="background-color: #F9DB7A;">선택삭제</button>
                <button id="allDel" style="background-color: lightgray;">전체삭제</button>
                <button id="catrBtn2" style="background-color: #F9DB7A">선택상품 장바구니 담기</button>
            </div>
        </div>
    </section>
    <aside>
   
	  <%@ include file = "../common/sideBar.jsp" %>
	</aside>
 	</div>

</body>
</html>