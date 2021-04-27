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
    <title>CouponList</title>
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
    .wrap{width:1000px; height:700px; margin: auto; margin-top:15px; outline: auto; }
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
    #table{height: 83%;}

    /* left-menubar */
    #menubar{background-color: rgb(224, 224, 224);}
    #content{border-left: 5px double rgb(249, 219, 122);}
    #sub_title{border-bottom: 3px solid rgb(249, 219, 122);}

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
    #couTable{
        width: 700px;
        height: 200px;
        margin : 50px;
        text-align: center;
        border: 1px solid;
    }
    #couTable th{
        background-color: rgb(249, 219, 122);
        border-right: 1px dotted rgb(180, 178, 178);
    }
    #couTable tr{
        border-bottom: 1px dotted rgb(180, 178, 178);;
    }
    #choice_btn button{
        width: 100px;
        height: 40px;
    }
    #choice_btn{
        margin-left: 300px;
    }
    input{
        border: none;
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
    input::placeholder{
        font-size: 13px;
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
                    <li><button class="menuBtn" id="couListBtn" type="button" ">쿠폰 조회</button></li>
                    <li><button class="menuBtn" id="couEnrollBtn" type="button" style="background-color: rgb(249, 219, 122);">쿠폰 등록</button></li>
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
            <div id="sub_title">쿠폰 등록 </div>
            <div id="table">
                <form id="enrollForm" action="<%= request.getContextPath() %>/insert.cou" method="POST">

                    <table id="couTable">
                        <tr>
                            <th width="30%">쿠폰명</th>
                            <td><input type="text" name="cName" size="58" maxlength="25" required placeholder="20자 이내로 입력"></td>
                        </tr>
                        <tr>
                            <th>할인액</th>
                            <td><input type="text" name="cDiscount" size="58"required></td>
                        </tr>
                        <tr>
                            <th width="30%">시작일</th>
                            <td><input type="text" name="cStart" size="58"required placeholder="2021.00.00 형식으로 입력"></td>
                            </td>
                        </tr>
                        <tr>
                            <th width="30%">종료일</th>
                            <td><input type="text" name="cEnd" size="58"required placeholder="2021.00.00 형식으로 입력"></td>
                            </td>
                        </tr>
                        <tr>
                            <th>구매최소금액</th>
                            <td><input type="text" name="cCondition" size="58"required> </td>
                        </tr>
                    </table>

                    <div id="choice_btn">
                        <button type="submit" id="enrollCou" class="btn btn-primary ">등록</button> &nbsp;
                        <button type="reset" id="resetCou" class="btn btn-primary ">초기화</button>
                    </div>
                </form>
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