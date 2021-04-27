<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="java.util.ArrayList, com.kh.book.model.vo.*"%>
<%
	ArrayList<Book> list = (ArrayList<Book>)request.getAttribute("list");
%>
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
            margin-bottom: 20px;
            border: 1px solid white;
            width:1000px;
        }

        .searchBook{
            width: 1000px;
            border-left: 0;
            border-right: 0;
            border-bottom: 0;
            padding-top: 10px;
            
        }
        .searchBook span{
            font-size: large;
            font-weight: bold;
            color: gray;
            float: left;
        }
        #tagPoint{color: rgb(241, 196, 15);}
        #book{
            font-size: small;
            text-align: left;
            width: 125px;
            height: 270px;
            margin: 30px;
            margin-top:0px;
            margin-left: 15px;
            vertical-align: middle;
        }
        .bookList{padding-left: 70px; }
        .bookList th{cursor: pointer; float:left; }
        .bookList tr{float:right; margin-top:80px;}
        #bookImg{ 
            width: 130px;
            height: 180px;
            border-radius: 3px;
            box-shadow: 2px 0px 20px -2px gray;
            border: 1px solid darkgray;
        }

        #bkName{
            color: black;
            font-size: 15px;
            font-weight: 600;
            vertical-align: top;
        	}
        #author{
        	font-size:13px;
        	font-weight: 500;
        	margin-top: 7px;
        	}
        #price{
            color: rgb(52, 152, 219);
            font-size: 14px;
            font-weight: 700;
            vertical-align: bottom;
            margin-top:20px;
        	}
        	
       .addCartImage{
            width: 40px;
            height: 38px;
            float: right;
            margin-right: 0px;
            margin-top: 140px;
        }
        .outer a { text-decoration: none; color:gray;}
        
        
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
	
	
	<%@ include file="../common/menubar.jsp" %>

	
	 
    <div class="outer">
	<p align="left" style="color: gray; font-size:11px; font-weight: bolder;">HOME > 일반 검색</p>
        
       <div class="searchBook" align="center">
       <br>
       	<span style="font-size: x-large; color:black; "> 검색결과 </span><br><br><br>
            <span id="tagPoint">'#<%= request.getParameter("hashkey") %>'</span> 
            <span>검색어로 총</span>
            <span id="tagPoint"><%= list.size() %></span>
            <span>가지의 관련 도서를 찾았습니다!</span>
            <br><hr>

            <table class="bookList">
                <tr>
                <%for(int i = 0; i<list.size(); i++) {%>
                    <th>
                    	 <a href="<%= request.getContextPath()%>/bkDetails.bk?bookNo=<%= list.get(i).getBookNo() %>">
                       		 <img src="<%= list.get(i).getBkMainImg() %>" id="bookImg">
                        </a>
                    </th>
                    <th id="book" >
		                    <div><input class="addCartImage" type="image"  src="resources/images/addCart.png" alt="" ></div>
                		<a href="<%= request.getContextPath()%>/bkDetails.bk?bookNo=<%= list.get(i).getBookNo() %>">
		                     <!--  <img src="resources/images/bestbook.png" width="80"><br> -->
		                        <div id="bkName"> <%= list.get(i).getBkName() %><br> </div>
		                        <div id="author"> <%= list.get(i).getAuthor() %><br> </div>
		                        <div id="price"> <%= list.get(i).getBkPrice() + "원" %> </div>
                   		 </a>
                    </th>
                    <% } %>
                </tr>
            </table>
       </div>
       		<div class="addCartWrap" align="center">
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

    <%@ include file="../common/footer.jsp" %>
    </div>
</body>
</html>