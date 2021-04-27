<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.admin.model.vo.Ad_Coupon"%>
<%
	ArrayList<Ad_Coupon> list = (ArrayList<Ad_Coupon>) request.getAttribute("list");
	
%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
		Date nowTime = new Date();
		SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일 a hh:mm:ss");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>CouponList</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<style>
    .wrap{width:1000px; height:700px; margin: auto; margin-top:15px; outline: auto;}
    .wrap>div{height: 100%; float: left;}
    #menubar{width: 20%;}
    #content{width: 80%;}

    #menubar>div{width:100%; float: left;}
    #home{height: 20%;}
    #title_name{height: 15%;}
    #title_Btn{height: 65%;}

    #content>div{width: 100%; float: left;}
    #login{height: 5%;}
    #sub_title{height: 12%;}
    #list{height:10%;}
    #table{height: 73%;}

    /* left-menubar */
    #menubar{
        background-color: rgb(224, 224, 224);
    }
    #content{
        border-left: 5px double rgb(249, 219, 122);
    }
    #sub_title{
        border-bottom: 3px solid rgb(249, 219, 122);
    }

    #homelogo{
    color: #505050;
    font-size:x-large;
    font-weight: bold;
    padding:10px;
    }
    #title_name{
        font-size: 50px;
        font-weight: bold;
        text-shadow:1px 4px 10px rgb(133, 133, 133);
        text-align: center;     
    }    
    #btns{
        list-style: none;
        padding-left: 26px;
    }
    .menuBtn{
        font-size:large;
        font-weight: bold;
        background-color: white;
        width: 150px;
        height: 70px;
        margin-top: 30px;
        border-radius: 15px;
        font-size:large;
        cursor: pointer;
        border-width: 4px;
        border-style: solid;
        border-color: rgb(249, 219, 122); 
        color: #3c3c3c;
    }
    .menuBtn:hover{
        opacity: 100%;
        background-color:rgb(249, 219, 122);
    }
    #sub_title{
        font-size: 40px;
        padding: 10px 20px;
    }
    #enrollCou{
        background-color: rgb(249, 219, 122);
        border: none;
    }
    #deleteCou{
        background-color:#f3f3f3;
        border: none;
    }
    #table{
        text-align: center;
        padding-left: 10px;
        padding-right: 10px;
        font-size: smaller;
    }
    #table>table>thead>tr>th{
        background-color: rgb(230, 230, 230);
        border: 1px solid gray;
        font-size: small;
        height: 31px;
        border-bottom: 4px double;
        
    }
    #table>table>tbody>tr>td{
        border: 1px solid gray;
        height: 30px;
    }
    .btn{
        background-color: #f3f3f3;
        border: none;
        color: #505050;
    }
    .btn:hover{
        background-color: rgb(249, 219, 122);
        color: white;
    }
    #adLogo{
        width: 70px;
        padding:2px;
        float:right;
        margin-right: 5px;
        margin-top: 3px;
    }
    #adLock{
        width:30px;
        float: right;
        margin-right: 17px;
        margin-top: 2px;
    }

    /* 관리자모드 종료 팝업창 */
    .adEndWrap{
        position: absolute;
        top:42%;
        left:50%;
        z-index: 10;
        box-sizing: border-box;
        width: 280px; 
        height: 160px; 
        margin-top: -75px;
        margin-left: -150px; 
        display: none;
    }
    .adEndWrap>*{width:100%;}
    #adEndTitle{height: 35px; background-color: rgb(249, 219, 122);border: 1px solid #3c3c3c;}
    #adEndContent{height: 125px; background-color: white;border: 1px solid #3c3c3c;}
    
    #adEndContent>*{width: 100%;}
    #adEndText{height: 30%;}
    #adEndIntro{height:30%;}
    #adEndBtn{height: 40%;}

    #adEndTitleName{
        margin-top:6px;
        font-size: 15px;
        font-weight: bold;
        margin-top: 1;
        color: #3c3c3c;
    }
    #modal_End{
        width: 100%; height: 100%; position: absolute; background: rgba(32, 32, 32, 0.6);
        top: 0; left: 0; z-index: 999; display: none;
    }
    .show-popup_End{
        display:block !important;
    }

</style>
</head>

<body>
    <div class="wrap">
        <div id="menubar">
            <div id="home">
                <a href="${pageContext.request.contextPath}/views/admin/ad_home.jsp" id="homelogo">HOME</a>
            </div>
            <div id="title_name">
                쿠폰
            </div>
            <div id="title_Btn">
                <ul id="btns">
                    <li><button class="menuBtn" id="couListBtn" type="button" style="background-color: rgb(249, 219, 122);">쿠폰 조회</button></li>
                    <li><button class="menuBtn" id="couEnrollBtn" type="button" >쿠폰 등록</button></li>
                </ul>
                <script>
                const couListBtn = document.getElementById('couListBtn');
                couListBtn.addEventListener('click', function(){
            		location.href='<%=request.getContextPath()%>/list.cou';
            	});
                const couEnrollBtn = document.getElementById('couEnrollBtn');
                couEnrollBtn.addEventListener('click', function(){
            		location.href='<%=request.getContextPath()%>/enrollForm.cou';
            	});
                </script>
            </div>
        </div>
        <div id="content">
            <div id="login">
                <input type="image" id="adLock" src="${pageContext.request.contextPath}/resources/images/admin/adminlock.png" >
                <img src="${pageContext.request.contextPath}/resources/images/admin/adminlogo.png"  id="adLogo">
            </div>
            <div id="sub_title">쿠폰 관리</div>
            <div id="list"style="padding: 20px 20px; " align="right" >
                    진행 : <b style="color: red;">2</b>  &nbsp;&nbsp; 종료 : <b>1</b> 
            </div>
            
            <div id="table">
                <table>
                    <thead>
                        <tr>
                            <th width="40">번호</th>
                            <th width="243">쿠폰이름</th>
                            <th width="80">할인액</th>
                            <th width="115">시작일</th>
                            <th width="115">종료일</th>
                            <th width="130">사용조건(최소금액)</th>
                            <th width="45">삭제</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- 조회된 결과가 없을 경우 -->
		                <% if(list.isEmpty()) { %>
			                <tr>
			                    <td colspan="7">조회된 리스트가 없습니다.</td>
			                </tr>
		                <% }else { %>
			                <!-- 조회된 결과가 있을 경우 -->
			                <% for(Ad_Coupon c : list) { %>
		                       <tr>
		                        	<td style="font-size: small;"><%= c.getCouNo() %></td>
		                            <td><%= c.getCouName() %></td>
		                            <td><%= c.getDiscount() %></td>
		                            <td><%= c.getCouStart() %></td>
		                            <td><%= c.getCouEnd() %></td>
		                            <td><%= c.getCouCondition() %></td>
		                            <td><a href="${pageContext.request.contextPath}/delete.cou?cno=<%=c.getCouNo()%>" class="btn btn-primary btn-sm" id="deleteBook">삭제</a></td>
		                     
	                           </tr>
  							<% } %>
                		<% } %>
                    </tbody>                    
                </table>
            </div>
        </div>
    </div>

    
   
    <!-- 관리자모드 종료 팝업 -->
    <div id="modal_End">
        <div class="adEndWrap">
            <div id="adEndTitle">
                <h3 id=adEndTitleName align="center">CONFIRM</h3>        
            </div>
            <div id="adEndContent">
                <div id="adEndText" style="text-align: center; font-size:large; margin-top:10px; font-weight: bold;">
                    관리메뉴를 종료하시겠습니까?
                </div>    
                <div id="adEndIntro" style="text-align: center; font-size:small;">
                    <%= sf.format(nowTime)%>
                </div>
                <div id="adEndBtn" style="margin-left: 26%;">
                    <button type="button" class="btn btn-info btn-sm"  style="margin-left: 3px; width:55px; border: none; background-color: rgb(249, 219, 122);">종료</button>
                    &nbsp;&nbsp;
                    <button type="button" id="cancleEndBtn"  class="btn btn-info btn-sm" style="width: 55px; border: none; background-color: #e0e0e0;">취소</button>
                </div>    
            </div>    
        </div>
    </div>

    <script>
        $(function(){
            $("#adLock").click(function(){
                $(".adEndWrap").show();
                $("#modal_End").addClass('show-popup_End');
            });
            $("#cancleEndBtn").click(function(){
                $(".adEndWrap").hide();
                $("#modal_End").removeClass('show-popup_End');
            });
        });
    </script>

</body>
</html>