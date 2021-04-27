<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="java.util.ArrayList, com.kh.book.model.vo.*"%>
<%
	ArrayList<Book> list = (ArrayList<Book>)request.getAttribute("list");
%>  
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
            width: 1000px;
            margin: auto;
            padding-top: 50px;
        }

        b{
            color: rgb(249, 219, 122); font-size:x-large;
        }
        img{
        width: 150px;
        cursor: pointer;
        }


        a{ color:lightslategrey; }
        a:hover{ color:#F9DB7A; }
        #img2{ 
            margin: auto; 
            width: 30px;
            height: 30px;
            }
        .bookList th, td{
        	cursor: pointer;
        	 float:left; 
        	 border:1px solid green;
        	 }
        .bookList td{
        	margin-right : 50px;
        	margin-top:50px;
        }
        .bookList tr{
        	float:right; 
        	width: 900px;
        	margin-top:50px; 
        	padding:20px; 
        	border:2px solid red;
        	padding: 50px;
        	}
        #bookImg{ 
            width: 130px;
            height: 180px;
            border-radius: 3px;
            box-shadow: 2px 0px 20px -2px gray;
            border: 1px solid darkgray;
        }
        #no{
        	font-size:13px;
        }
        #bkName{
            color: black;
            font-size: 14px;
            font-weight: 600;
            vertical-align: top;
        	}
        #author{
        	font-size:13px;
        	font-weight: 500;
        	}
        #price{
            color: rgb(52, 152, 219);
            font-size: 14px;
            font-weight: 700;
            vertical-align: bottom;
        	}
        .searchBook{
            width: 1000px;
            background-color: rgb(245, 245, 245);
            border: 1px solid rgb(173, 172, 172);
            border-left: 0;
            border-right: 0;
            border-bottom: 0;
            padding-top: 10px;
            
        }
        #bookSpan {
        	border: 1px solid blue;
        }
    </style>
</head>
<body>
<%@ include file = "../common/menubar.jsp" %>

    <div class="outer">
	<p align="left" style="color: gray; font-size:11px; font-weight: bolder;">HOME > 일반 검색</p>
 
        <div class="outer2">
           <h2> 검색결과  <b>           
            <span class="tagPoint"> '#<%= request.getParameter("hashkey") %>'</span> 
            <span>검색어로 총</span>
            <span class="tagPoint"><%= list.size() %></span>
            <span>가지의 관련 도서를 찾았습니다!</span>
            <br><hr></b></h2>
            
            <table class="bookList">
                <tr>
                <%for(int i = 0; i<list.size(); i++) {%>
                    <th>
                        <img src="<%= list.get(i).getBkMainImg() %>" id="bookImg">
                    </th>
                    <td id="book">
                        <span id="no"> <%= (i+1) %>.<br> </span><br>
                        <span id="bkName"> <%= list.get(i).getBkName() %><br> </span>
                        <span id="author"> <%= list.get(i).getAuthor() %><br> </span>
                        <span id="price"> <%= list.get(i).getBkPrice() + "원" %> </span>
                    </td>
                 <% } %>
                </tr>
            </table>
        </div>
        
         <%@ include file="../common/footer.jsp" %>
    </div>

</body>
</html>