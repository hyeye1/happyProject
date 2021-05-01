<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.kh.admin.model.vo.Ad_Book, com.kh.common.model.vo.PageInfo" %>
<%
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<Ad_Book> list = (ArrayList<Ad_Book>)request.getAttribute("list");
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
<title>BookList</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/hover-min.css">


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
    #list{height:10%;}
    #table{height: 73%;}

    #list>div{height: 100%; float: left;}
    #sort{width: 30%;}
    #choice_btn{width: 70%; text-align: right;}

     /* left menubar */

    #menubar{ background-color: rgb(224, 224, 224);}
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
    #modifyBook{
        background-color: rgb(249, 219, 122);
        border: none;
    }
    #select__delete{
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
        background-color: rgb(224,224,224);
        border: 1px solid gray;
        font-size: small;
        height: 31px;
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
    .bkName{cursor: pointer;color: rgb(88, 117, 247);}
    .bkName:hover{font-weight:bold}
	#select__delete{
		 background-color: #e0e0e0;
	}

    /* 도서 상세 팝업창 */

    .detailWrap>*{width: 100%;}
    #bktitle{height: 35px; background-color: rgb(249, 219, 122);}
    #bkContent{height: 380px; background-color: white;;}

    #bkContent>div{height: 100%;float: left;}
    #bkContent1{width: 28%;}
    #bkContent2{width:72%;}

    #bkContent1{
        display: inline-block;
        margin-top: 60px;
    }
    #bkContent2{
        border-left: 1px dotted rgb(173, 173, 173);
    }
    .detailWrap{
        position: absolute;
        top:38%;
        left:46%;
        z-index: 10;
        box-sizing: border-box;
        width: 650px; 
        height: 415px; 
        margin-top: -75px;
        margin-left: -150px;
        display:none;
    }
	.detailWrap>div{border: 1px solid #3c3c3c; box-sizing: border-box;}
    #bktitleName{
        display:inline-block;
        margin-left:290px;
        margin-top:8px;
        font-size: 15px;
        font-weight: bold;
        margin-top: 1;
        color: #3c3c3c;
        }
    #bkcloseBtn { 
        float: right; 
        width: 20px; 
        line-height: 20px;
        margin-right: 5px;
        margin-top: 8px;
        text-align: center; 
        cursor: pointer; 
        border-radius: 5px;
        background-color: #f3f3f3; 
    } 
    #bkcloseBtn:hover { 
        background-color: lightgray; 
    } 
    #bkDetail{
        font-size: small;
        width: 457px;
        height: 353px;
        margin-top: 3px;
        margin-left: 6px;
    }
    #bkDetail tr{height: 20px;}
    .detailText{
        border: 1px solid;
        height: 64px;
        width:390px;
        border-radius: 4px;
        border-color: #6e6e6e;
        box-sizing: border-box;
    }
    #bkKeyword button{
        margin: 2px;
        font-size: 12px;
        border-radius: 5px;
        
    }
    #modal{
        width: 100%; height: 100%; position: absolute; background: rgba(32, 32, 32, 0.3);
        top: 0; left: 0; z-index: 999; display: none;
    }
    .show-popup{
        display:block !important;
    }
	
	#select__delete{
		background-color: 
	}
    /* 도서 상세이미지 팝업창 */
    .detailImgWrap{
        position: absolute;
        top:44%;
        left: 62%;
        z-index: 10;
        box-sizing: border-box;
        width: 380px; 
        height: 365px; 
        margin-top: -75px;
        margin-left: -150px;
        display:none;
        border: 1px solid #3c3c3c;
        background-color: #ebebeb;
    }
    #bkDetailImg img{
        margin: 5px;
    }


    /* 삭제확인 팝업창 */
    .deleteWrap{
        position: absolute;
        top:39%;
        left:75%;
        z-index: 10;
        box-sizing: border-box;
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
    #modal3{
        width: 100%; height: 100%; position: absolute; background: rgba(32, 32, 32, 0.3);
        top: 0; left: 0; z-index: 999; display: none;
    }
    .show-popup3{
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
</style>
</head>

<body>
    <div class="wrap">
        <div id="menubar">
            <div id="home">
                <a href="${pageContext.request.contextPath}/views/admin/ad_home.jsp" id="homelogo">HOME</a>
            </div>
            
            <div id="title_name">
                도서
            </div>
            
            <div id="title_Btn">
                <ul id="btns">
                    <li><button class="menuBtn" id="bkListBtn" type="button" style="background-color: rgb(249, 219, 122);">도서 조회</button></li>
                    <li><button class="menuBtn" id="bkEnrollBtn" type="button" >도서 등록</button></li>
                </ul>
                <script>
                const bkListBtn = document.getElementById('bkListBtn');
                bkListBtn.addEventListener('click', function(){
            		location.href='<%=request.getContextPath()%>/list.bk';
            	});
                const bkEnrollBtn = document.getElementById('bkEnrollBtn');
                bkEnrollBtn.addEventListener('click', function(){
            		location.href='<%=request.getContextPath()%>/enrollForm.bk';
            	});
                </script>
            </div>
        </div>
        
        <div id="content">
            <div id="login">
                <input type="image" id="adLock" src="${pageContext.request.contextPath}/resources/images/admin/adminlock.png" >
                <img src="${pageContext.request.contextPath}/resources/images/admin/adminlogo.png"  id="adLogo">
            </div>

            <div id="sub_title">도서 조회</div>

            <div id="list">
                <div id="sort" style="padding: 18px 15px;">
                    <select name="sortlist" id="sortlist" style="width: 100px; height: 40px; font-size: small;">
                        <option value="all">도서명 순</option>
                        <option value="start" selected>도서번호 순</option>
                        <option value="end">최근 등록일 순</option>
                    </select>
                    &nbsp;
                    <label for="countMem" style="font-weight: bold;">총 도서</label> <u style="color: #f08080;"><%=listCount %></u> 권

                </div>
                <div id="choice_btn" style="padding: 20px;">
                	
                    <button type="button" id="select__delete" class="btn btn-primary">도서삭제</button>
                </div>
                
            </div>
            <script>
                	const enrollBook = document.getElementById('enrollBook');
                    bkEnrollBtn.addEventListener('click', function(){
                		location.href='<%=request.getContextPath()%>/enrollForm.bk';
                	});
                </script>
            
            <div id="table">
                <table>
                    <thead>
                        <tr> 
                            <th width="20"><input type="checkbox" id="coupon__all__check"></th>
                            <th width="40">번호</th>
                            <th width="220">도서명</th>
                            <th width="120">저자</th>
                            <th width="120">출판사</th>
                            <th width="120">장르</th>
                            <th width="50">정가</th>
                            <th width="50">판매가</th>
                            <th width="40">재고</th>
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
                            <% for(Ad_Book b : list) { %>
                                <tr>
                                    <td><input class="book__checkbox" type="checkbox" data-bkNo="<%= b.getBkNo() %>"></td>
                                    <td><%= b.getBkNo() %></td>
                                    <td>
                                     	<a href="${pageContext.request.contextPath}/detail.bk?bkno=<%=b.getBkNo()%>"><%= b.getBkName() %></a>
                                    </td>
                                    <td><%= b.getAuthor() %></td>
                                    <td><%= b.getPublisher() %></td>
                                    <td><%= b.getBkDivision() %> > <%= b.getBkGenre() %></td>
                                    <td><%= b.getBkOriginPrice() %></td>
                                    <td><%= b.getBkPrice() %></td>
                                    <td style="color: red; font-weight: bold;"><%=b.getBkStock() %></td>
                                </tr>
                            <%}%>
                        <% } %>
                    </tbody>                    
                </table>
	
				

                <br>
                <div align="center" class="pagingArea">
                    <% if(currentPage != 1) { %>        
                        <button class="btn btn-outline-warning btn-sm" onclick="location.href='<%=request.getContextPath()%>/list.bk?currentPage=<%=currentPage-1%>&searchType=<%=searchType%>&search=<%=search%>';"> < </button>
					<% } %>
			
					<% for(int p=startPage; p<=endPage; p++) { %>
				
						<% if(currentPage == p){ %>
                            <button class="btn btn-outline-warning btn-sm" disabled><%= p %></button>
                        <% }else{ %>
                            <button class="btn btn-outline-warning btn-sm" onclick="location.href='<%=request.getContextPath()%>/list.bk?currentPage=<%= p %>&searchType=<%=searchType%>&search=<%=search%>';"><%= p %></button>
                        <% } %>
					<% } %>
			
					<% if(currentPage != maxPage){ %> 
                        <button class="btn btn-outline-warning btn-sm" onclick="location.href='<%=request.getContextPath()%>/list.bk?currentPage=<%=currentPage+1%>&searchType=<%=searchType%>&search=<%=search%>';"> > </button>
					<% } %>
                </div>
                <br>
                 <select name="searchType" id="searchList" style="margin-left: 25%; width: 60px;">
                            <option value="bk_name" selected>도서명</option>
                            <option value="author">저자</option>
                            <option value="publisher">출판사</option>
                </select>
                <input type="text" id="searchText" style="width: 270px;" value="<%=search%>"placeholder="입력해주세요" > 
                <input type="submit" class="search" id="searchBtn" onclick="fnSearch()" value="검색" style="font-weight: bold; background-color: rgb(249, 219, 122); border: none; width: 55px;">
        		<script>
        			function fnSearch(){
        				var searchType = $("select[name=searchType]").val();
        				 
        				location.href='<%=request.getContextPath()%>/list.bk?searchType='+searchType+'&search='+$("#searchText").val();
        			}
        			$(function(){
        				$("select[name=searchType]").val("<%=searchType%>" == "" ? "bk_name" : "<%=searchType%>");
        			})
        		</script>
                
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
                	<a href="#" onClick="self.close();" class="btn btn-info btn-sm" style="margin-left: 3px; width:55px; border: none; background-color: rgb(249, 219, 122);">종료</a>
                	&nbsp;&nbsp;
                	<button type="button" id="cancleEndBtn"  class="btn btn-info btn-sm" style="width: 55px; border: none; background-color: #e0e0e0;">취소</button>
            	</div>   
            </div>    
        </div>
    </div>

    <script>
        $(function(){
            $("#adLock").on("click",function(){
                $(".adEndWrap").show();
                $("#modal_End").addClass('show-popup_End');
            });
            $("#cancleEndBtn").on("click",function(){
                $(".adEndWrap").hide();
                $("#modal_End").removeClass('show-popup_End');
            });
        });
    </script>
    
    <!-- 전체선택/삭제 체크박스 -->
    
    <script>
    $("#coupon__all__check").off().on('click',function(){
        var checked = $(this).prop('checked');
        $(".book__checkbox").each(function(){
            $(this).prop('checked',checked);
        });
    });
    
    $('#select__delete').off().on('click',function(){
    	if(!confirm('선택항목을 삭제하시겠습니까?')){
    		return;
    	}
    	
    	var chkBk = [];
    	
    	$(".book__checkbox").each(function(){
    	    if($(this).prop('checked')){
    	        chkBk.push($(this).attr("data-bkNo"));
    	    }
    	});
    	
    	if(chkBk.length==0){
    		alert('도서를 선택해주세요 :(');
    		return;
    	}
    	
    	$.ajax({
 			url:"/happyProject/deleteChk.bk",
 			type:"post",
 			data:{"bkNoList":chkBk},
    		success:function(resp){
    			if(resp.ok){
    				alert("삭제완료!");
    				location.href = "/happyProject/list.bk";
    			}
    		},
    		error:function(err){
    			
    		}
    	});
    	
    	console.log(chkBk);
    });
    
    </script>
    
 
</body>
</html>