<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배송완료조회</title>
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
        .shipping1{
         
          width: 500;
          height: 350px;
        }
        .shipping2{
          
            width: 500;
            height: 150px;
        }
        .shipping3{
         
             width: 500;
             height: 300px;
        }
        #table1{
            border-style: solid;
            width: 550px;
            height: 320px;
        }
        #table2{
            text-align: center;
            border-style: solid;
            width: 550px;
            height: 50px;
        }
        #table3{
            border-style: solid;
            width: 550px;
            height: 50px;

        }
        #table1, #table2, #table3{
            border-collapse: collapse;
        }
    
	    table th {padding: 15px; border:solid} 
	    table td {padding: 10px;}
	    table tr {border: 0.5px lightslategray} 
    </style>
</head>
<body>
    <div class="outer">
		<br>
        <div class="path">홈>마이페이지>주문/배송조회</div>
         <h1>주문/배송 조회</h1>
         <hr>

        <h2> 기본배송정보</h2>
		<div class="shipping1">
            
			<table id="table1" border="1"  frame="hsides" bordercolor=lightgray >
				<tr>
					<td style="background-color: lightgray;" align="center"><b>주문번호</b></td>
				    <td>123-45678</td>	
				</tr>
				<tr>
					<td style="background-color: lightgray;" align="center"><b>주문일자</b></td>
					<td>2020-03-25</td>
				</tr>
                <tr>
					<td style="background-color: lightgray;" align="center"><b>주문하신 분</b></td>
					<td>김독자</td>	
				</tr>
				<tr>
					<td style="background-color: lightgray;" align="center"><b>배송주소</b></td>
					<td>서울시 강남구 역삼동</td>	
				</tr>
				<tr>
					<td style="background-color: lightgray;" align="center"><b>휴대폰</b></td>
					<td>010-1234-5678</td>
                </tr>
				<tr>
					<td style="background-color: lightgray;" align="center"><b>배송상태</b></td>
					<td>배송완료</td>
				</tr>

			</table>
         
        </div>
        <br><br><br>

        <h2> 최근 주문 내역주문상품정보</h2>
            <div class="shipping2">
            
                    <table id="table2" border="1"  frame="hsides" bordercolor=lightgray >
                        <tr style="background-color: #F9DB7A;">
                            <td><b>상품명</b></td>
                            <td>주문수량</td> 
                            <td>가격</td>    
                        </tr>
                        <tr>
                            <td rowspan="2"><b>도서명</b><br>저자명</td>
                            <td rowspan="2">1권</td>
                            <td rowspan="2">15,000원</td>
                        </tr>
                    </table> 
            </div>
            <br><br><br>
            <div class="shipping3">
                <h2>▶결제정보</h2>
                <table id="table3" border="1"  frame="hsides" bordercolor=lightgray >
                    <tr>
                        <td style="background-color: lightgray;" align="center"><b>주문번호</b></td>
                        <td>123-45678</td>	
                    </tr>
                    <tr>
                        <td style="background-color: lightgray;" align="center"><b>주문일자</b></td>
                        <td>2020-03-25</td>
                    </tr>
                    <tr>
                        <td style="background-color: lightgray;" align="center"><b>주문하신 분</b></td>
                        <td>김독자</td>	
                    </tr>
                    <tr>
                        <td style="background-color: lightgray;" align="center"><b>배송주소</b></td>
                        <td>서울시 강남구 역삼동</td>	
                    </tr>
                </table>
             
		</div>	
	 </div>
	
</body>
</html>