<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.kh.admin.model.vo.Ad_Member, com.kh.common.model.vo.PageInfo" %>
<%
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<Ad_Member> list = (ArrayList<Ad_Member>)request.getAttribute("list");
	String search = (String)request.getAttribute("search") == null ? "" : (String)request.getAttribute("search");
	String searchType = (String)request.getAttribute("searchType") == null ? "" : (String)request.getAttribute("searchType");
	int listCount = (Integer)request.getAttribute("listCount");
	
	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
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
<title>MemberList</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<style>
    div{box-sizing: border-box;}
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
    #list{height:10%; ;}
    #memTable{height: 73%;}

    #list>div{height: 100%; float: left;}
    #sort{width: 35%;}
    #choice_btn{width: 65%; text-align: right;}

    /* left menubar */

    #menubar{background-color: rgb(224, 224, 224);}
    #content{border-left: 5px double rgb(249, 219, 122);}

    #sub_title{
        border-bottom: 3px solid rgb(249, 219, 122);
        margin: 0px;
        padding: 0px;
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
    #alterMem{
        background-color: rgb(249, 219, 122);
        border: none;
    }
    #deleteMem{
        background-color:#f3f3f3;
        border: none;
    }
    #sendCouModalBtn{
        background-color: #f08080;
        border: none;
    }
    #deleteBtn{background-color: #e7e7e7;}
    #memTable{
        text-align: center;
        padding-left: 10px;
        padding-right: 10px;
        font-size: smaller;
    }
    #memTable>table>thead>tr>th{
        background-color: rgb(224,224,224);
        border: 1px solid gray;
        font-size: small;
        height: 31px;
    }
    #memTable>table>tbody>tr>td{
        height: 30px;
        border: 1px solid gray;
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
    #searchList, #searchText, #searchBtn{
        float:left;
        height: 30px;
        color: #3c3c3c;
        border: 1px solid gray;
        border-radius: 4px;        
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
    .memId, .memPoint, .memCoupon{cursor:pointer;}
    .memPoint{color: rgb(100, 100, 253);}
    .memCoupon{color:#f08080}
    .memPoint:hover, .memCoupon:hover, .memId:hover{font-weight: bold;}

    /* 상세정보 팝업창 */
    .detailwrap{
        position: absolute;
        top:39%;
        left:53%;
        z-index: 10;
        box-sizing: border-box;
        width: 410px; 
        height: 348px; 
        margin-top: -75px;
        margin-left: -150px; 
        display: none;
    }
	.detailwrap>div{border: 1px solid #3c3c3c; box-sizing: border-box;}
    #ptitle{height: 10%; background-color: rgb(249, 219, 122);}
    #pcontent{height: 90%; background-color: white;}

    #ptitleName{
        display:inline-block;
        margin-left:160px;
        margin-top:6px;
        font-size: 15px;
        font-weight: bold;
        margin-top: 1;
        color: #3c3c3c;
    }
    #pbuyList{
        border-color: #3c3c3c;
        width: 320px;
        height: 145px;
        box-sizing: border-box;       
        margin-top: 10px;  
        margin-right: 5px;  
    }
    #pbuyTitle{
        background-color: #f3f3f3;
    }
    #pcontent{
        font-size: smaller;
        padding-left: 10px;
    }
    #pcontent td{
        text-align: center;
    }

    #pcloseBtn { 
    float: right; 
    width: 20px; 
    line-height: 20px;
    margin-right: 5px;
    margin-top: 5px;
    text-align: center; 
    cursor: pointer; 
    border-radius: 5px;
    background-color: #f3f3f3; 
    } 
    #pcloseBtn:hover { background-color: lightgray; } 
    #modal{
        width: 100%; height: 100%; position: absolute; background: rgba(32, 32, 32, 0.3);
        top: 0; left: 0; z-index: 999; display: none;
    }
    .show-popup{
        display:block !important;
    }


    

     /* 보유쿠폰 팝업창 */
    .couponWrap{
        position: absolute;
        top:39%;
        left:65%;
        z-index: 10;
        box-sizing: border-box;
        width: 410px; 
        height: 218px; 
        margin-top: -75px;
        margin-left: -150px; 
        display: none;
    }
	.couponWrap>div{border: 1px solid #3c3c3c; box-sizing: border-box;}
    #couTitle{background-color: rgb(249, 219, 122);}
    #couContent{height: 90%; background-color: white;}

    #couTitleName{
        display:inline-block;
        margin-left:160px;
        margin-top:6px;
        font-size: 15px;
        font-weight: bold;
        margin-top: 1;
        color: #3c3c3c;
    }
    #couContent{
        font-size: smaller;
        text-align: center;
    }
    #couCloseBtn { 
        float: right; 
        width: 20px; 
        line-height: 20px;
        margin-right: 5px;
        margin-top: 5px;
        text-align: center; 
        cursor: pointer; 
        border-radius: 5px;
        background-color: #f3f3f3; 
    } 
    #couCloseBtn:hover { 
        background-color: lightgray; 
    } 
    #couTable{
        margin: 3px;
        width: 400px;
        height: 80px;
    }
    #couTable2{
        width: 400px;
        height: 100px;
        margin: 3px;
    }
    #couTable2>thead{
        background-color: #f3f3f3;
    }
    #modal3{
        width: 100%; height: 100%; position: absolute; background: rgba(32, 32, 32, 0.3);
        top: 0; left: 0; z-index: 999; display: none;
    }
    .show-popup3{
        display:block !important;
    }

    /* 삭제확인 팝업창 */
    .deleteWrap{
        position: absolute;
        top:39%;
        left:75%;
        z-index: 10;
        width: 280px; 
        height: 160px; 
        margin-top: -75px;
        margin-left: -150px; 
        display: none;
    }
    .deleteWrap>*{width:100%;}
    #delTitle{height: 35px; background-color: rgb(249, 219, 122);border: 1px solid #3c3c3c;}
    #delContent{height: 125px; background-color: white;border: 1px solid #3c3c3c;}
        
    #delContent>*{width: 100%;}
    #delText{height: 30%;}
    #delIntro{height:30%;}
    #delAns{height: 40%;}

    #delTitleName{
        margin-top:6px;
        font-size: 15px;
        font-weight: bold;
        margin-top: 1;
        color: #3c3c3c;
    }
    #modal4{
        width: 100%; height: 100%; position: absolute; background: rgba(32, 32, 32, 0.3);
        top: 0; left: 0; z-index: 999; display: none;
    }
    .show-popup4{
        display:block !important;
    }

     /* 쿠폰발송 팝업창 */
    .couSendWrap{
        position: absolute;
        top:39%;
        left:68%;
        z-index: 10;
        width: 410px; 
        height: 248px; 
        margin-top: -75px;
        margin-left: -150px;
        display: none; 
    }
	.couSendWrap>div{border: 1px solid #3c3c3c; box-sizing: border-box;}

    .couSendWrap>*{width: 100%;}
    #couSendTitle{height: 35px; background-color: rgb(249, 219, 122);}
    #couSendContent{height: 213px; background-color: white;}

    #couSendName{
        display:inline-block;
        margin-left:175px;
        margin-top:6px;
        font-size: 15px;
        font-weight: bold;
        margin-top: 1;
        color: #3c3c3c;
    }
    #couSendContent{
        font-size: smaller;
        text-align: center;
    }
    #couSendTable{
        margin: 3px;
        width: 400px;
        height: 130px;
    }
    #couSendTable tr{
        height: 30px;
    }
    .couponText{
        border: 1px solid gray;
        height: 28px;
        border-radius: 3px;
        color: #5a5a5a;
        padding-top: 3px;
    }
    #modal5{
        width: 100%; height: 100%; position: absolute; background: rgba(32, 32, 32, 0.3);
        top: 0; left: 0; z-index: 999; display: none;
    }
    .show-popup5{
        display:block !important;
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
/* 상세정보 팝업창 */
         .detailwrap{
            position: absolute;
            top:30%;
            left:53%;
            z-index: 10;
            box-sizing: border-box;
            width: 410px; 
            height: 348px; 
            margin-top: -75px;
            margin-left: -150px; 
            }
		.detailwrap>div{border: 1px solid #3c3c3c; box-sizing: border-box;}

        /* 영역 나누기 */
        #ptitle{height: 10%; background-color: rgb(249, 219, 122);}
        #pcontent{height: 90%; background-color: white;}

        
        #ptitleName{
            display:inline-block;
            margin-left:160px;
            margin-top:6px;
            font-size: 15px;
            font-weight: bold;
            margin-top: 1;
            color: #3c3c3c;
        }
        #pbuyList{
            border-color: #3c3c3c;
            width: 320px;
            height: 145px;
            box-sizing: border-box;       
            margin-top: 10px;  
            margin-right: 5px;  
        }
        #pbuyTitle{
            background-color: #f3f3f3;
        }
        #pcontent{
            font-size:smaller;
            text-align: center;
        }
        #pcontent table{
            width: 400px;
            height: 300px;
            margin-top: 5px;
            margin-left: 5px;
        }
        #pcloseBtn { 
        float: right; 
        width: 20px; 
        line-height: 20px;
        margin-right: 5px;
        margin-top: 5px;
        text-align: center; 
        cursor: pointer; 
        border-radius: 5px;
        background-color: #f3f3f3; 
         
        } 
        
        #pcloseBtn:hover { 
            background-color: lightgray; 
        } 
        
          /* 쿠폰발송 팝업창 */
    .couSendWrap{
        position: absolute;
        top:39%;
        left:68%;
        z-index: 10;
        width: 410px; 
        height: 248px; 
        margin-top: -75px;
        margin-left: -150px;
        display: none; 
    }
	.couSendWrap>div{border: 1px solid #3c3c3c; box-sizing: border-box;}

    .couSendWrap>*{width: 100%;}
    #couSendTitle{height: 35px; background-color: rgb(249, 219, 122);}
    #couSendContent{height: 213px; background-color: white;}

    #couSendName{
        display:inline-block;
        margin-left:175px;
        margin-top:6px;
        font-size: 15px;
        font-weight: bold;
        margin-top: 1;
        color: #3c3c3c;
    }
    #couSendContent{
        font-size: smaller;
        text-align: center;
    }
    #couSendTable{
        margin: 3px;
        width: 400px;
        height: 130px;
    }
    #couSendTable tr{
        height: 30px;
    }
    .couponText{
        border: 1px solid gray;
        height: 28px;
        border-radius: 3px;
        color: #5a5a5a;
        padding-top: 3px;
    }
    #modal5{
        width: 100%; height: 100%; position: absolute; background: rgba(32, 32, 32, 0.3);
        top: 0; left: 0; z-index: 999; display: none;
    }
    .show-popup5{
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
                회원
            </div>
            
            <div id="title_Btn">
                <ul id="btns">
                    <li><button class="menuBtn" id="memberBtn" type="button" style="background-color: rgb(249, 219, 122);">회원조회</button></li>
                </ul>
                <script>
                const memberBtn = document.getElementById('memberBtn');
                memberBtn.addEventListener('click', function(){
            		location.href='<%=request.getContextPath()%>/list.mem';
            	});
                </script>
            </div>
        </div>
        
        <div id="content">
            <div id="login">
                <div id="login">
                    <input type="image" id="adLock" src="${pageContext.request.contextPath}/resources/images/admin/adminlock.png" >
                    <img src="${pageContext.request.contextPath}/resources/images/admin/adminlogo.png"  id="adLogo">
                </div>
            </div>

            <div id="sub_title">전체 회원 조회</div>

            <div id="list">
                <div id="sort" style="padding: 18px 15px;">
                    <select name="sortlist" id="sortlist" style="width: 100px; height: 40px; font-size: small;">
                        <option value="name">이름 순</option>
                        <option value="sum">구매 누적액 순</option>
                        <option value="date" selected>가입일 순</option>
                    </select>
                    &nbsp;
                    <label for="countMem" style="font-weight: bold;">총 회원</label> <u style="color: #f08080;";"><%=listCount %></u> 명 

                </div>
                <div id="choice_btn" style="padding: 20px">
                    <button id="deleteBtn" class="btn btn-primary">선택삭제</button> &nbsp;
                    <button id="sendCouModalBtn" class="btn btn-primary">쿠폰발송</button>
                </div>
                
                
            </div>
            
            <div id="memTable">
                <table>
                    <thead>
                        <tr>
                            <th width="20"><input type="checkbox" id="all" name="memcheck"></th>
                            <th width="40">번호</th>
                            <th width="130">아이디</th>
                            <th width="100">이름</th>
                            <th width="130">휴대폰 번호</th>
                            <th width="170">이메일</th>
                            <th width="60">구매 횟수</th>
                            <th width="90">구매 누적액</th>
                            <th width="40">쿠폰</th>
                        </tr>
                    </thead>
                    <tbody>
                       <!-- 조회 결과 없을 경우 -->
                        <% if(list.isEmpty()) { %>
                            <tr>
                                <td colspan="10">조회된 리스트가 없습니다.</td>
                            </tr>
                        <% }else { %>
                        <!-- 조회된 결과가 있을 경우 -->
                            <% for(Ad_Member b : list) { %>
                                <tr>
                                    <td><input type="radio"></td>
                                    <td><%= b.getMemNo() %></td>
                                    <td class="memId" data-memNo="<%= b.getMemNo() %>">
                                    	
                                    	<%= b.getMemId() %>
                                    </td>
                                    <td><%= b.getMemName() %></td>
                                    <td><%= b.getMemPhone() %></td>
                                    <td><%= b.getEmail() %></td>
                                    <td><%= b.getOrderCnt() %></td>
                                    <td><%= b.getOrderTotalAmt() %></td>
                                    <td id="memCoupon" style="color: red; font-weight: bold;"><%=b.getCouCnt() %></td>
                                </tr>
                            <%}%>
                        <% } %>
                    </tbody>                    
                </table>

                
                <br>
                <div align="center" class="pagingArea">
                   <% if(currentPage != 1) { %>        
                        <button class="btn btn-outline-warning btn-sm" onclick="location.href='<%=request.getContextPath()%>/list.mem?currentPage=<%=currentPage-1%>&searchType=<%=searchType%>&search=<%=search%>';"> < </button>
					<% } %>
			
					<% for(int p=startPage; p<=endPage; p++) { %>
				
						<% if(currentPage == p){ %>
                            <button class="btn btn-outline-warning btn-sm" disabled><%= p %></button>
                        <% }else{ %>
                            <button class="btn btn-outline-warning btn-sm" onclick="location.href='<%=request.getContextPath()%>/list.mem?currentPage=<%= p %>&searchType=<%=searchType%>&search=<%=search%>';"><%= p %></button>
                        <% } %>
					<% } %>
			
					<% if(currentPage != maxPage){ %> 
                        <button class="btn btn-outline-warning btn-sm" onclick="location.href='<%=request.getContextPath()%>/list.mem?currentPage=<%=currentPage+1%>&searchType=<%=searchType%>&search=<%=search%>';"> > </button>
					<% } %>
                </div>
                <br>
                
                <select name="searchType" id="searchList" style="margin-left: 25%; width: 70px;">
                    <option value="mem_id" selected>아이디</option>
                    <option value="mem_name">이름</option>
                    <option value="mem_phone">휴대폰번호</option>
                </select>
                <input type="text" id="searchText" style="width: 270px;" placeholder="입력해주세요" value="<%=search %>" > 
                <input type="button" class="search" id="searchBtn" onclick="fnSearch();" value="검색" style="font-weight: bold; background-color: rgb(249, 219, 122); border: none; width: 55px;">
                <script>
        			function fnSearch(){
        				var searchType = $("select[name=searchType]").val();
        				 
        				location.href='<%=request.getContextPath()%>/list.mem?searchType='+searchType+'&search='+$("#searchText").val();
        			}
        			$(function(){
        				 ;
        				$("select[name=searchType]").val("<%=searchType%>" == "" ? "mem_id" : "<%=searchType%>");
        			})
        		</script>
            </div>
        </div>
    </div>


  <!-- 회원 상세정보 팝업 -->
   <div class="detailwrap">
    <div id="ptitle">
        <h3 id=ptitleName>회원상세정보</h3>
        <div id="pcloseBtn">&times;</div>
        
    </div>
    <div id="pcontent">
        <table>
            <tr>
                <th width="90">회원번호</th>
                <td id="mem__no">100</td>
            </tr>
            <tr>
                <th>아이디</th>
                <td id="mem__id">아이디1234</td>
            </tr>
            <tr>
                <th>이름</th>
                <td id="mem__name">김말똥</td>
            </tr>
            <tr>
                <th>주소</th>
                <td id="mem__address">서울특별시</td>
            </tr>
            <tr>
                <th>가입일</th>
                <td id="mem__enroll__date">2020-01-12</td>
            </tr>
            <tr>
                <th>최근로그인</th>
                <td id="mem__recent__login">2021</td>
            </tr>
            <tr>
                <th>가입경로</th>
                <td id="mem__enroll__route">자사</td>
            </tr>
            <tr>
                <th>이메일수신여부</th>
                <td id="mem__email__yn">Y</td>
            </tr>
        </table>
    </div>

</div>

<script>
    $(".memId").click(function(){
    	
    	var memNo = $(this).attr("data-memNo");
    	
    	$.ajax({
 			url:"/happyProject/memInfo.mem?memNo="+memNo,
 			type:"get",
    		success:function(resp){
    			$("#mem__no").text(resp.memNo);
    			$("#mem__id").text(resp.memId);
    			$("#mem__name").text(resp.memName);
    			$("#mem__address").text(resp.memAddress);
    			$("#mem__enroll__date").text(resp.enrollDate);
    			$("#mem__recent__login").text(resp.recentLogin);
    			$("#mem__enroll__route").text(resp.enrollRoute);
    			$("#mem__email__yn").text(resp.emailYn);
    			$(".detailwrap").css({display:"block"});
    		},
    		error:function(err){
    			
    		}
    	});
    });
    $("#pcloseBtn").click(function(){
        $(".detailwrap").css({display:"none"});
        $("#mem__no").text("");
		$("#mem__id").text("");
		$("#mem__name").text("");
		$("#mem__address").text("");
		$("#mem__enroll__date").text("");
		$("#mem__recent__login").text("");
		$("#mem__enroll__route").text("");
		$("#mem__email__yn").text("");
    });
</script> 


<!-- 쿠폰 상세 팝업 -->
    <div id="modal3">
        <div class="couponWrap">
            <div id="couTitle">
                <h3 id=couTitleName>보유 쿠폰</h3>
                <div id="couCloseBtn">&times;</div>
            </div>
            <div id="couContent">
                <table id="couTable">
                    <tr>
                        <th width="30%">회원번호</th>
                        <td>22</td>
                    </tr>
                    <tr>
                        <th>사용 가능한 쿠폰</th>
                        <td style="font-weight: bold; color: red;"><u>2</u></td>
                    </tr>
                    <tr>
                        <th>쿠폰내역</th>
                        <td> </td>
                    </tr>
                </table>
                <table id="couTable2" border="1" >
                    <thead>
                        <th width="41%">쿠폰명</th>
                        <th width="15%">할인액</th>
                        <th width="22%">유효기간</th>
                        <th width="22%">사용조건금액</th>
                    </thead>
                    <tbody>
                        <tr>
                            <td>봄비 내릴땐 해피북스데이</td>
                            <td>2000</td>
                            <td>2021.04.16</td>
                            <td>20000</td>
                        </tr>
                        <tr>
                            <td>4월 봄맞이 쿠폰</td>
                            <td>1000</td>
                            <td>2021.04.30</td>
                            <td>15000</td>
                        </tr>
                        <tr>
                            <td>4월 신규가입</td>
                            <td>2000</td>
                            <td>2021.04.30</td>
                            <td>15000</td>
                        </tr>
                    </tbody>
                </table>        
            </div>
        </div>
    </div>

    <script>
        $("#memCoupon").click(function(){
            $(".couponWrap").css({display:"block"});
            $("#modal3").addClass('show-popup3');
        });
        $("#couCloseBtn").click(function(){
            $(".couponWrap").css({display:"none"});
            $("#modal3").removeClass('show-popup3');
        });
    </script>
    
    
    <!-- 삭제 팝업 -->
    <div id="modal4">
        <div class="deleteWrap">
            <div id="delTitle">
                <h3 id=delTitleName align="center">CONFIRM</h3>        
            </div>
        
            <div id="delContent">
                <div id="delText" style="text-align: center; font-size:large; margin-top:10px; font-weight: bold;">
                    선택 항목을 삭제 하시겠습니까? 
                </div>    
                <div id="delIntro" style="text-align: center; font-size:small;">
                    삭제 후 복구 불가
                </div>
                <div id="delAns" style="margin-left: 26%;">
                    <button type="button" class="btn btn-info btn-sm"  style="margin-left: 3px; width:55px; border: none; background-color: rgb(249, 219, 122);">확인</button>
                    &nbsp;&nbsp;
                    <button type="button" id="cancleDelBtn"  class="btn btn-info btn-sm" style="width: 55px; border: none; background-color: #e0e0e0;">취소</button>
                </div>    
            </div>    
        </div>        
    </div>

    <script>
        $(function(){
            $("#deleteBtn").click(function(){
                $(".deleteWrap").show();
                $("#modal4").addClass('show-popup4');
            });
            $("#cancleDelBtn").click(function(){
                $(".deleteWrap").hide();
                $("#modal4").removeClass('show-popup4');
            });
        });
    </script>

    <!-- 쿠폰발송 팝업 -->
    <div id="modal5">
        <div class="couSendWrap">
            <div id="couSendTitle">
                <h3 id=couSendName>쿠폰 발송</h3>    
            </div>
        
            <div id="couSendContent">
                <table id="couSendTable" >
                    <tr>
                        <th width="30%">쿠폰명</th>
                        <td>
                            <select name="selectCou" id="selectCou" style="width: 292px; height:28px">
                                <option>4월맞이 할인 쿠폰</option>
                                <option>4월 신규가입 할인쿠폰</option>
                                <option>비오는 날엔 해피북스데이</option>
                            </select>
                        </td>
                    </tr>
                  <!--   <tr>
                        <th>발송회원</th>
                        <td style="padding-top: 8px;">
                            <input type="radio" id="allMem" name="sendCou"> <label for="allMem">전체회원</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="radio" id="choiceMem" name="sendCou"> <label for="choiceMem">선택회원(조회화면에서 선택)</label>
                        </td>
                    </tr> -->
                    <tr>
                        <th>할인액</th>
                        <td>
                            <div class="couponText" id="cou__discount">
                                1000
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th width="30%">유효기간</th>
                        <td>
                            <div class="couponText" id="cou__date">
                                2021-03-15 ~ 2021-03-22
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th>사용조건</th>
                        <td>
                            <div class="couponText" id="cou__condition">
                                구매금액 10000원 이상
                            </div>
                        </td>
                    </tr>
                </table>
                <button type="button" id="okSendBtn" class="btn btn-info btn-sm" style=" margin-top:10px ; width:55px; border: none; background-color: rgb(249, 219, 122);">확인</button>
                &nbsp;
                <button type="button" id="cancleSendBtn" class="btn btn-info btn-sm" style="margin-top: 10px; width: 55px; border: none; background-color: #e0e0e0;">취소</button>
            </div>
        </div>
    </div>

    <script>
    	let couponListTemp;

    	//쿠폰발송모달창 클릭 이벤
        $("#sendCouModalBtn").click(function(){
        	
        	$.ajax({
     			url:"/happyProject/getCouponList.cou",
     			type:"get",
        		success:function(resp){
        			couponListTemp = resp;
        			
        			
        			let optionStr = "";
        			for(var i = 0;i < resp.length;i++){
        				optionStr+=`<option name="\${resp[i].couName}" value="\${resp[i].couNo}">\${resp[i].couName}</option>`;
        			}
        			$("#selectCou").html(optionStr);
        			$("#cou__discount").text(resp[0].discount);
        			$("#cou__date").text(resp[0].couStart + " ~ " + resp[0].couEnd);
        			$("#cou__condition").text("구매금액 " + resp[0].couCondition + "원 이상");
        			
        			
        			$(".couSendWrap").css({display:"block"});
                    $("#modal5").addClass('show-popup5');
        		},
        		error:function(err){
        			
        		}
        	});
        });
        
    	//쿠폰발송모달창 확인버튼 클릭 이벤
        $("#okSendBtn").on("click",function(){
        	var couNo = $("#selectCou").val();
        	var couName = $("#selectCou").find('option:selected').attr("name");
        	if(confirm("[ "+couName+" ]을 전체회원에게 발송하시겠습니까?")){
        		
        		$.ajax({
         			url:"/happyProject/insertCouponAllMember.cou",
         			type:"post",
         			data:{"couNo":couNo},
            		success:function(resp){
            			alert(resp.count + "명의 회원에게 쿠폰발송 완료 :)");
            			 $("#cancleSendBtn").click();
            		},
            		error:function(err){
            			
            		}
            	});
        	}
        });
        
    	//쿠폰발송모달창 취소버튼 클릭 이벤트 
        $("#cancleSendBtn").click(function(){
            $(".couSendWrap").css({display:"none"});
            $("#modal5").removeClass('show-popup5');
        });
        
        //쿠폰발송모달창 셀렉트박스 체인지 이벤
        $("#selectCou").on("change",function(){
        	couponListTemp.forEach(function(coupon){
	        	if(coupon.couNo == $("#selectCou").val()){
	        		$("#cou__discount").text(coupon.discount);
	    			$("#cou__date").text(coupon.couStart + " ~ " + coupon.couEnd);
	    			$("#cou__condition").text("구매금액 " + coupon.couCondition + "원 이상");
	        	}
        	});
        });
    </script>

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
                	<a href="#" onClick="self.close();" class="btn btn-info btn-sm" style="margin-left: 3px; width:55px; border: none; background-color: rgb(249, 219, 122);">종료</a>
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