<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.admin.model.vo.*"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
		Date nowTime = new Date();
		SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일 a hh:mm:ss");
%>
<%
	Ad_Book b = (Ad_Book)request.getAttribute("b");
	// 등록일, 번호, 도서명, isbn, 페이지수, 키워드, 책소개, 저자소개, 목차,메인이미지
	Ad_Image im = (Ad_Image)request.getAttribute("im");
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

    div{box-sizing: border-box; }
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
    #list{height:1%;}
    #table{height: 82%;}

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
    #deleteBtn{
        background-color:#f3f3f3;
        border: none;
        margin-left:90px;
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
    .bkName{cursor: pointer;color: rgb(88, 117, 247);}
    .bkName:hover{font-weight:bold}


    /* 도서 상세 팝업창 */

    .detailWrap>*{width: 100%;}
    #bktitle{height: 35px; text-align: center; font-weight: bold; font-size: 22px; background-color: rgb(249, 219, 122);}
    #bkContent{height: 365px; background-color: white;;}

    #bkContent>div{height: 100%;float: left;}
    #bkContent1{width: 28%;}
    #bkContent2{width:72%;}

    #bkContent1{
        display: inline-block;
        margin-top: 20px;
    }

    .detailWrap{
        position: absolute;
        top:39%;
        left:48%;
        z-index: 10;
        box-sizing: border-box;
        width: 650px; 
        height: 450px; 
        margin-top: -75px;
        margin-left: -150px;
        display:none;
    }
	.detailWrap>div{border: 1px solid #3c3c3c; box-sizing: border-box;}
   
    #bkDetail{
        font-size: small;
        height: 460px;
        margin-top: 3px;
        margin-left: 6px;
    }
    #bkDetail tr{height: 20px;}
    #bkBtn{ padding-left: 380px; padding-top: 15px;}

	.detailText{
        border: 1px solid;
        height: 120px;
        width:480px;
        border-radius: 4px;
        border-color: #6e6e6e;
        box-sizing: border-box;
        resize: none;
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
    #bkContent2>*{width: 100%;}

    .acc01 {
    	width:380px; height:487px; margin:30px 10px 20px; float:left; 
    	background:url("../images/acc_bg.png") no-repeat center center; position:relative;
    }
	.acc01 span {
		position:absolute; z-index:3; top:420px; left:120px; 
	}
	.acc_img {
		width:370px; height:370px; position:absolute; z-index:3; top:0; left:0;
	}
	.acc_tt {
		color:#070000; font-size:20px; font-weight:bold; text-align:center; 
		position:absolute; z-index:3; top:385px; left:50%; transform:translateX(-50%);
	}
	
	 /* 삭제확인 팝업창 */
    .deleteWrap{
        position: absolute;
        top:48%;
        left:54%;
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
    #modal2{
        width: 100%; height: 100%; position: absolute; background: rgba(32, 32, 32, 0.3);
        top: 0; left: 0; z-index: 999; display: none;
    }
    .show-popup2{
        display:block !important;
    }
    
    /* 도서수정 팝업창 */
    .bkModifyWrap{
        position: absolute;
        top:39%;
        left:70%;
        z-index: 10;
        box-sizing: border-box;
        width: 280px; 
        height: 275px; 
        margin-top: -75px;
        margin-left: -150px; 
        display: none;
    }
	.bkModifyWrap>div{border: 1px solid #3c3c3c; box-sizing: border-box;}

    .bkModifyWrap>*{width: 100%;}
    #bkModiTitle{height: 35px; background-color: rgb(249, 219, 122);}
    #bkModiContent{height: 240px; background-color: white;}

    #bkModiTitleName{
        display:inline-block;
        margin-left:110px;
        margin-top:8px;
        font-size: 15px;
        font-weight: bold;
        margin-top: 1;
        color: #3c3c3c;
    }
    #bkModiContent{
        font-size: smaller;
        text-align: center;
    }
    #bkModiTable{
        width: 276px;
        height: 96px;
        box-sizing: border-box;  
    }
    #bkModiTable tr{
        height: 48px;
        border-bottom: 1px solid #e0e0e0;
    }
    #modal3{
        width: 100%; height: 100%; position: absolute; background: rgba(32, 32, 32, 0.3);
        top: 0; left: 0; z-index: 999; display: none;
    }
    .show-popup3{
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
                </ul>
                <script>
                const bkListBtn = document.getElementById('bkListBtn');
                bkListBtn.addEventListener('click', function(){
            		location.href='<%=request.getContextPath()%>/list.bk';
            	});
                </script>
            </div>
       </div>
        
       <div id="content">
            <div id="login">
                <input type="image" id="adLock" src="${pageContext.request.contextPath}/resources/images/admin/adminlock.png" >
                <img src="${pageContext.request.contextPath}/resources/images/admin/adminlogo.png"  id="adLogo">
            </div>

            <div id="sub_title">도서 상세정보</div>

            <div id="list"></div>
            <div id="table">
                <div id="bktitle">[<%=b.getBkNo() %>] <%=b.getBkName()%></div>
                <div id="bkContent">
                    <div id="bkContent1" align="center">
                        <span>표지이미지</span> <br>
                        <img src="<%=b.getBkMainImg() %>"  width="150" height="200"" align="center" onclick="doImgPop(this.src)">
                        <br><br>
                         
                        <% if(im != null) {%>
                            <span>상세이미지</span><br>
                        	<img src="<%=im.getImgPath() %>" width="130" height="180"" align="center" onclick="doImgPop(this.src)">
                        <% } else {%>
                        	<span>상세이미지</span><br>
                        	<img src="${pageContext.request.contextPath}/resources/images/admin/상세이미지없음.jpg" width="130" height="180"" align="center"  >
                        <%} %>
                        
                        <br><button type="button" onClick="history.back();" id="backBook" class="btn btn-primary" style="margin-top:20px; margin-left: -110px;">이전</button>

                    </div>
                    <div id="bkContent2">
                        <div id="bkList">
                            <table id="bkDetail">
                                <tr>
                                	<th>ISBN</th>
                                    <td><%=b.getIsbn() %></td>
                                    
                                </tr>
                                <tr>
                                    <th width="70px">출간일</th>
                                    <td><%=b.getBkPublishDate() %></td>
                                </tr>
                                
                                <tr>
                                    <th>페이지수</th>
                                    <td><%=b.getBkPageNo() %></td>
                                </tr>
                                <tr>
                                    <th>키워드</th>
                                    <td>
                                        <%=b.getBkKeyword() %>                     
                                    </td>
                                </tr>
                                <tr>
                                    <th width="70px">도서등록일</th>
                                    <td><%=b.getBkEnrollDate() %></td>
                                </tr>
                                <tr>
                                    <th style="height: 30px;">책 소개</th>
                                    <td>
                                        <textarea class="detailText"><%=b.getBkDescription() %></textarea>
                                    </td>
                                </tr>
                                <tr>
                                    <th>저자 소개</th>
                                    <td>
                                        <textarea class="detailText"><%=b.getAtDescription() %></textarea>
                                    </td>
                                </tr>
                                <tr>
                                    <th>목차</th>
                                    <td>
                                        <textarea class="detailText"><%=b.getBkContentList() %></textarea>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div id="bkBtn">
                            
                            
							<button type="button" id="deleteBtn" class="btn btn-primary" >도서삭제</button> &nbsp;

                        	
                       	
                       
                        </div>
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
    
    <!-- 이미지 클릭 시 확대  -->
    <script>
        function doImgPop(img){
         img1= new Image();
         img1.src=(img);
         imgControll(img);
        }
        function imgControll(img){
         if((img1.width!=0)&&(img1.height!=0)){
            viewImage(img);
          }
          else{
             controller="imgControll('"+img+"')";
             intervalID=setTimeout(controller,20);
          }
        }
        function viewImage(img){
         W=img1.width;
         H=img1.height;
         O="width="+W+",height="+H+",scrollbars=yes";
         imgWin=window.open("","",O);
         imgWin.document.write("<html><head><title>확대보기</title></head>");
         imgWin.document.write("<body topmargin=0 leftmargin=0>");
         imgWin.document.write("<img src="+img+" onclick='self.close()' style='cursor:pointer;' title ='클릭하시면 창이 닫힙니다.'>");
         imgWin.document.close();
        }
	</script>
    
    
    <!-- 삭제 팝업 -->
    <div id="modal2">
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
                    <a href="${pageContext.request.contextPath}/delete.bk?bkno=<%=b.getBkNo()%>" class="btn btbtn btn-info btn-sm" style="margin-left: 3px; width:55px; border: none; background-color: rgb(249, 219, 122);">확인</a>
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
                $("#modal2").addClass('show-popup2');
            });
            $("#cancleDelBtn").click(function(){
                $(".deleteWrap").hide();
                $("#modal2").removeClass('show-popup2');
            });
        });
    </script>
 
 
</body>
</html>