<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

    /* 쿠폰등록 팝업창 */
        
	.couponWrap>div{border: 1px solid #3c3c3c; box-sizing: border-box;}
    .couponWrap>*{width: 100%;}
    #couTitle{height: 35px; background-color: rgb(249, 219, 122);}
    #couContent{height: 188px; background-color: white;}

    .couponWrap{
        position: absolute;
        top:39%;
        left:60%;
        z-index: 10;
        box-sizing: border-box;
        width: 410px; 
        height: 223px; 
        margin-top: -75px;
        margin-left: -150px; 
        display: none;
    }
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
    #couTable{
        margin: 3px;
        width: 400px;
        height: 130px;
    }
    #modal{
        width: 100%; height: 100%; position: absolute; background: rgba(32, 32, 32, 0.3);
        top: 0; left: 0; z-index: 999; display: none;
    }
    .show-popup{
        display:block !important;
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
    #modal2{
        width: 100%; height: 100%; position: absolute; background: rgba(32, 32, 32, 0.3);
        top: 0; left: 0; z-index: 999; display: none;
    }
    .show-popup2{
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
                <a href="" id="homelogo">HOME</a>
            </div>
            <div id="title_name">
                회원
            </div>
            <div id="title_Btn">
                <ul id="btns">
                    <li><button class="menuBtn" id="memberBtn" type="button" ">회원조회</button></li>
                    <li><button class="menuBtn" id="couponBtn" type="button" style="background-color: rgb(249, 219, 122);">쿠폰 관리</button></li>
                </ul>
            </div>
        </div>
        <div id="content">
            <div id="login">
                <input type="image" id="adLock" src="../resources/admin/adminlock.png" >
                <img src="../resources/admin/adminlogo.png" id="adLogo">
            </div>
            <div id="sub_title">쿠폰 관리</div>
            <div id="list">
                <div id="sort" style="padding: 18px 15px;">
                    <select name="sortlist" id="sortlist" style="width: 50px; height:40px; font-size: small;">
                        <option value="all">전체</option>
                        <option value="start">진행</option>
                        <option value="end">만료</option>
                    </select>
                </div>
                <div id="choice_btn" style="padding: 20px;">
                    <button type="button" id="enrollCou" class="btn btn-primary ">쿠폰등록</button> &nbsp;
                    <button type="button" id="deleteCou" class="btn btn-primary ">선택삭제</button>
                </div>
            </div>
            
            <div id="table">
                <table>
                    <thead>
                        <tr>
                            <th width="20"><input type="checkbox" id="all" name="memcheck"></th>
                            <th width="40">번호</th>
                            <th width="215">쿠폰이름</th>
                            <th width="80">할인액</th>
                            <th width="115">시작일</th>
                            <th width="115">종료일</th>
                            <th width="150">사용조건(구매최소금액)</th>
                            <th width="40">처리</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td> <input type="checkbox"></td>
                            <td>5</td>
                            <td style="font-size: small;">만우절기념</td>
                            <td>5000</td>
                            <td>2021.04.01</td>
                            <td>2021.04.01</td>
                            <td>30000</td>
                            <td>만료</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                    </tbody>                    
                </table>

                <br>
                <div align="center" class="pagingArea">
                    <button class="btn btn-outline-warning btn-sm"><</button>
                    <button class="btn btn-outline-warning btn-sm">1</button>
                    <button class="btn btn-outline-warning btn-sm">2</button>
                    <button class="btn btn-outline-warning btn-sm">3</button>
                    <button class="btn btn-outline-warning btn-sm">4</button>
                    <button class="btn btn-outline-warning btn-sm">5</button>
                    <button class="btn btn-outline-warning btn-sm">></button>
                </div>
                <br>
            </div>
        </div>
    </div>

    

    <!-- 쿠폰 등록 팝업 -->
    <div id="modal">
        <div class="couponWrap">
            <div id="couTitle">
                <h3 id=couTitleName>쿠폰 등록</h3>    
            </div>
    
            <div id="couContent">
                <table id="couTable" >
                    <tr>
                        <th width="30%">쿠폰명</th>
                        <td><input type="text" id="couName" size="40" maxlength="24" required></td>
                    </tr>
                    <tr>
                        <th>할인액</th>
                        <td><input type="text" id="couDiscount" size="40"required></td>
                    </tr>
                    <tr>
                        <th width="30%">유효기간</th>
                        <td><input type="date" name="dateIn" style="width: 139px;">&nbsp;~&nbsp;<input type="date" name="dateOut" style="width: 139px;">
                        </td>
                    </tr>
                    <tr>
                        <th>구매최소금액</th>
                        <td><input type="text" id="couMinPrice" size="40"required> </td>
                    </tr>
                </table>
                <button type="button" class="btn btn-info btn-sm"  style=" margin-top:10px ; width:55px; border: none; background-color: rgb(249, 219, 122);">확인</button>
                &nbsp;
                <button button type="button" id="cancleBtn" class="btn btn-info btn-sm" style="margin-top: 10px; width: 55px; border: none; background-color: #e0e0e0;">취소</button>
            </div>
        </div>
    </div>

    <script>
        $(function(){
            $("#enrollCou").click(function(){
                $(".couponWrap").show();
                $("#modal").addClass('show-popup');
            });
            $("#cancleBtn").click(function(){
                $(".couponWrap").hide();
                $("#modal").removeClass('show-popup');
            });
        });
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
                    <button type="button" class="btn btn-info btn-sm"  style="margin-left: 3px; width:55px; border: none; background-color: rgb(249, 219, 122);">확인</button>
                    &nbsp;&nbsp;
                    <button type="button" id="cancleDelBtn"  class="btn btn-info btn-sm" style="width: 55px; border: none; background-color: #e0e0e0;">취소</button>
                </div>    
            </div>    
        </div>
    </div>

    <script>
        $(function(){
            $("#deleteCou").click(function(){
                $(".deleteWrap").show();
                $("#modal2").addClass('show-popup2');
            });
            $("#cancleDelBtn").click(function(){
                $(".deleteWrap").hide();
                $("#modal2").removeClass('show-popup2');
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
                    2021.04.18 15:01:33
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