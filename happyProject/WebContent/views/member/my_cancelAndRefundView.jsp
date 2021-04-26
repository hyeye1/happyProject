<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%@ include file = "../common/menubar.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>취소반품조회</title>
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
	    .cancel_refund{
	            width: 650px;
	            height: 300px;
	            float:right;
	        }
	    hr{margin-top: 1px;}
	
	    #cancel{
	        border-top-left-radius: 120px;
	        border-top-right-radius: 120px;
	        width:236px;
	        height:30px;
	        border:none;
	        cursor: pointer;
	        background-color: #F9DB7A;
	    }   
	    #cancel:focus{color: white;}
	    #cancel:hover{color: white;}
	       
	    #refund{
	            border-top-left-radius:120px;
	            border-top-right-radius: 120px; 
	            width: 240px;
	            height: 30px;
	            border: none;
	            cursor:pointer;
	            background-color: lightgray;    
	        }
	    #refund:focus{color: white;}
	    #refund:hover{color: white;}
	    #table{
	        text-align: center;
	        width: 630px;
	        height: 30px;
	        border-collapse: collapse;
	    }
	    #status{
	        margin: 120px;
	    }
	   span{
	       font-size: xx-large;
	       color: pink;}
	  
    </style>
</head>
<body>
<div class="outer">
        <br>
        <div class="path">홈>마이페이지</div>
        <seciton>
        <h1>취소/반품 조회</h1><hr>
        <br><br><br>
        <div class="cancel_refund">
          
            <button id="cancel"> 취소내역</button> 
            <button id="refund"> 반품내역</button><hr>

            <table id="table" border=1 frame="hsides" bordercolor=lightgray >
            <tr>
                <th>접수일</th>
                <th>사유</th>
                <th>상품명</th>
                <th>처리상태</th>
            </tr>
         
            </table>
            <div id=status>
                <span>내역이 없습니다.</span>
            </div>
	  	</div>
	  	</seciton>
	  	<aside>
	  		 <%@ include file = "../common/sideBar.jsp" %>
	  	
	  	</aside>
 </div>
    
    

</body>
</html>