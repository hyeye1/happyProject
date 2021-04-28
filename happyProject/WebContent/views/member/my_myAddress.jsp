<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.member.model.vo.MyAddress"%>

   
 <%@ include file = "../common/menubar.jsp" %>
 	
 	<%
	MyAddress selectMyAddress = (MyAddress)session.getAttribute("selectMyAddress");
	
		int adNo      = selectMyAddress.getAdNo();
		String adPost    = selectMyAddress.getAdPost();
		String adRoad    = selectMyAddress.getAdRoad();
		String adDetail  = selectMyAddress.getAdDetail();
	%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        .outer{
            margin: auto;
            border: 1px solid black;
            width: 1000px;
            height: 1140px;
        }
        .path{
            height:2%;
            width: 1000px;
            text-align: right;
        }
        .myAddress{
            width: 650px;
            height: 800px;
            float:right;
        }
        #adBtn{
            background-color: #F9DB7A;
            margin-left: 380px;
            margin-top: 40px;
            margin-bottom: 30px;
            width: 100px;
            height: 30px;
            border-radius: 5px;
            border: none;
            cursor: pointer;

        }
        #adBtn:hover{
            color: white;
        }
        #adBtn:focus{
            color: white;
        }
        #myaddress_table{
            width: 500px;
            height: 300px;
            text-align: center;
        }
        th{
            height: 30px;
        }
        #modiBtn, #delBtn{
            width: 80px;
            height: 30px;
            border: none;
            border-radius: 5px;
        }
        #modiBtn{
            margin-bottom: 20px;
            background-color: #F9DB7A;  
        }
        #delBtn{
            background-color: lightgray;
        }
        #modiBtn:hover{color: white;}
        #modiBtn:focus{color: white;}

        #delBtn:hover{color: white;}
        #delBtn:focus{color: white;}

    </style>
</head>
<body>


	    <div class="outer">
        <div class="path"> 홈>마이페이지>나의 배송지 관리</div>     
        <section>
        <h2>나의배송지</h2><hr>
        <div class="myAddress">
            
            <button id="adBtn">+ 배송지 추가 </button>
            
           <form action="<%= request.getContextPath() %>/myaddress.me" method="post" id="myAddressForm">
            <table id="myaddress_table" border="1" style="border-collapse: collapse;">
                <tr style="background-color: lightgray;">
                    <th><input type="checkbox"></th>
                    <th>수령인</th>
                    <th>주소</th>
                    <th>수정/삭제</th>
                </tr>
                <tr>
                    <td><input type="checkbox"></td>
                    <td>김독자</td>
                    <td>서울특별시 강남구 테헤란로 14길 6 </td>
                    <td>
                        <button id="modiBtn">수정</button><br>
                        <button id="delBtn">삭제</button>
                    </td>
                </tr>
                <tr>
                    <td><input type="checkbox"></td>
                    <td>이독자</td>
                    <td>서울특별시 강남구 테헤란로 14길 6 </td>
                    <td>
                        <button id="modiBtn">수정</button><br>
                        <button id="delBtn">삭제</button>
                    </td>
                </tr>
            </table>
            </form>
        </div>
        </section>
        <aside>
        	 <%@ include file = "../common/sideBar.jsp" %>
        </aside>
    </div>
    

</body>
</html>