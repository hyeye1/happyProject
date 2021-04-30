<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<title>Administrator</title>
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
        .homeWrap{width:1000px; height:700px; margin: auto; margin-top:15px; outline: auto;background-color: rgb(224, 224, 224);}
        .homeWrap>*{width: 100%;}
        #login{height: 15%;}
        #content{height: 85%;}

        #content>*{width: 100%;}
        #title{height: 30%;}
        #display{height: 70%;}

        .title {
            width:100%;
            padding-top:5%;
            margin-top:3%;
        }
        h1{
            text-align: center;
            font-size: 600%;
            text-shadow:1px 4px 10px rgb(119, 119, 119);
        }
        .background {
            margin-top:1%;
        }
        table{
            margin: auto;
        }
        .homeBtn{
            color: #3c3c3c;
            background-color: white;
            width: 200px;
            height: 100px;
            margin: 30px;
            border-radius: 15px;
            font-size:x-large;
            cursor: pointer;
            outline: none;
            border-width: 4px;
            border-style: solid;
            border-color: rgb(249, 219, 122);    
            /* #F9DB7A */
        }
        .homeBtn:hover{
            background-color:rgb(249, 219, 122);
            width: 200px;
            height: 100px;
            margin: 30px;
            border-radius: 15px;
            font-size: large;
            border: none;
            cursor: pointer;
            outline: none;
            font-size: x-large;
            }

    #adLogo{
        width: 70px;
        padding: 2px;
        float: right;
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
    <div class="homeWrap">
        <div id="login">
                <input type="image" id="adLock" src="${pageContext.request.contextPath}/resources/images/admin/adminhomelock.png" >
                <img src="${pageContext.request.contextPath}/resources/images/admin/adminhome.png"  id="adLogo">
            </div>
       

        <div id="content">
            <div id="title">
                <h1>Administrator</h1>
            </div>
            <div id="display">
                <table id="first">
                    <tr>
                        <td>
                            <button class="homeBtn" id="adm_member" type="button" >회원관리</button>
                            <button class="homeBtn" id="adm_coupon" type="button" >쿠폰관리</button>
                            <button class="homeBtn" id="adm_book" type="button" >도서관리</button>
                            
                        </td>
                    </tr>
                </table>
                <script>
                	const adm_member = document.getElementById("adm_member");
                	adm_member.addEventListener('click', function(){
                		location.href='<%=request.getContextPath()%>/list.mem';
                	});
                    const adm_coupon = document.getElementById("adm_coupon");
                	adm_coupon.addEventListener('click', function(){
                		location.href='<%=request.getContextPath()%>/list.cou';
                	});
                	const adm_book = document.getElementById("adm_book");
                	adm_book.addEventListener('click', function(){
                		location.href='<%=request.getContextPath()%>/list.bk';
                	})
                </script>
                
                
                <table>
                    <tr>
                        <td>
                            <button class="homeBtn" id="adm_pay" type="button">결제관리</button>
                            <button class="homeBtn" id="adm_clause" type="button">약관</button>
                            
                        </td>
                    </tr>
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
                <button id="endBtn" onclick="location.href='<%= request.getContextPath() %>/mainPage.me" type="button" class="btn btn-info btn-sm"  style="margin-left: 3px; width:55px; border: none; background-color: rgb(249, 219, 122);">종료</button>
                &nbsp;&nbsp;
                <button type="button" id="cancleEndBtn"  class="btn btn-info btn-sm" style="width: 55px; border: none; background-color: #e0e0e0;">취소</button>
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

</body>
</html>