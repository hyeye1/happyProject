<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../common/menubar.jsp" %>
 <%
		
		String memName = loginUser.getMemName();
	
	%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문배송조회</title>
	<style>
        .outer{
            margin: auto;
            width: 1000px;
            height: 1140px;
        }
        .outer2{
        float:right;
        margin:auto;
        width:650px;
        margin-top:30px;
        } 
        .path{
            height:2%;
            width: 1000px;
            text-align: right;
        }
        .normal{
            text-align: left;
            font-size: large;
            padding-top: 15px;
            padding-left: 10px;
            width: 460px; background-color: lightgray;
            height:40px;
            }
        .check{
            padding:20px;
            padding-left:0;
            width: 470px;
            height: 150px;
                
        }
        #inputSearch{
            width: 250px;
        }
        .order_status{
            width: 470px;
            padding-bottom: 200px;
          
        }
        #table2{
            text-align: center;
        }
        .checkyellow{
            font-size: 13px;
            border-radius:5px; 
            border: none;
            cursor:pointer;
            background-color: #F9DB7A;
            width: 50px;
            height: 30px;
        }
        #yellow:focus{Color: white;}
        #yellow:hover{Color: white;}

        #btn{
            width: 80px;
            height: 30px;
            font-size: 13px;
            border-radius:5px; 
            border: none;
            cursor:pointer;
            background-color: #F9DB7A;  
        }
        #btn:focus{color:white;}
        #btn:hover{color:white;}

        #drop{
            width: 80px;
            height: 30px;
            font-size: 13px;
            border-radius:5px; 
            border: none;
            cursor:pointer;
            background-color: lightgray;
        }
        #drop:focus{color: white;}
        #drop:hover{color: white;}
     
        table{
            border-collapse: collapse;
            border-color: gray;
        }
    </style>
</head>
<body>
	 <div class="outer">
		<br>
        <div class="path">홈>마이페이지</div>
        <section>
         <h1>주문/배송 조회</h1> <hr>
       <div class=outer2>       
        <div class="normal"><b><%= loginUser.getMemName() %> 님(일반)</b></div><br>
        <div class="check">
            <form action method="get" id="orderCheckForm">
			<table id="table1" border="1"  bordercolor= gray >
				<tr>
					<td width="100" height="50" style="background-color: lightgray;" align="center"><b>기간조회</b></td>
					<td>
                       <button>1주일</button> <button>1개월</button> <button>3개월</button><br>
                       날짜 : <input type="date" name="dateIn"> <br>
                    </td> 
                
					<td align="center" rowspan="2"width="70"><button id="yellow" class="checkyellow" >조회</button></td>
				</tr>
				<tr>
					<td width="100" height="50"style="background-color: lightgray;" align="center"><b>조건검색</b></td>
					<td>
                        <select name="searchBy">
                            <option value="authorName">작가명</option>
                            <option value="orderNo">주문번호</option>
                            <option selected >선택안함</option>
                        </select>
                        <input type="text" id="inputSearch" name="search" maxlength="50" placeholder="내용을 입력해주세요">
                    </td> 
				</tr>
			</table>
            </form>
        </div>
        <br>

        <div class="order_status">
            
                <table id="table2" border="1"  bordercolor= gray; >
                    <tr>
                        <th width="120" height="50" style="background-color: lightgray;">주문일</th>
                        <th width="120" height="50" style="background-color: lightgray;">주문번호</th>
                        <th width="120" height="50" style="background-color: lightgray;">주문상품</th>
                        <th width="120" height="50" style="background-color: lightgray;">주문상태</th>
                    </tr>
                    <tr>
                        <td width="120" height="80" align="center"><b>2020-03-25</b></td>
                        <td>123-45678</td> 
                        <td>취업비법서</td>
                        <td><button id="btn">배송완료</button></td>
                    </tr>
                    <tr>
                        <td width="100" height="80" align="center"><b>2020-04-02</b></td>
                        <td>123-56789</td> 
                        <td>아몬드</td>
                        <td><button id="btn">배송중 </button>
                            <br><br>
                            <button id="drop">주문취소</button>
                        </td>
                    </tr>
                   
                </table>
        
       		 </div>
       	 </div>
       	 </section>
       	 <aside>
       	 	  <%@ include file = "../common/sideBar.jsp" %>
       	 </aside>
       	 
	</div>


	

</body>
</html>