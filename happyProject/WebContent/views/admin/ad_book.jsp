<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    #deleteBook{
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


    /* 도서 상세 팝업창 */

    .detailWrap>*{width: 100%;}
    #bktitle{height: 35px; background-color: rgb(249, 219, 122);}
    #bkContent{height: 365px; background-color: white;;}

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
        top:39%;
        left:48%;
        z-index: 10;
        box-sizing: border-box;
        width: 650px; 
        height: 400px; 
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


    /* 도서수정 팝업창 */
    .bkModifyWrap{
        position: absolute;
        top:39%;
        left:70%;
        z-index: 10;
        box-sizing: border-box;
        width: 280px; 
        height: 297px; 
        margin-top: -75px;
        margin-left: -150px; 
        display: none;
    }
	.bkModifyWrap>div{border: 1px solid #3c3c3c; box-sizing: border-box;}

    .bkModifyWrap>*{width: 100%;}
    #bkModiTitle{height: 37px; background-color: rgb(249, 219, 122);}
    #bkModiContent{height: 260px; background-color: white;}

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
    #modal2{
        width: 100%; height: 100%; position: absolute; background: rgba(32, 32, 32, 0.3);
        top: 0; left: 0; z-index: 999; display: none;
    }
    .show-popup2{
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
                <a href="" id="homelogo">HOME</a>
            </div>
            
            <div id="title_name">
                도서
            </div>
            
            <div id="title_Btn">
                <ul id="btns">
                    <li><button class="menuBtn" id="memberBtn" type="button" style="background-color: rgb(249, 219, 122);">도서 조회</button></li>
                    <li><button class="menuBtn" id="couponBtn" type="button" >도서 등록</button></li>
                </ul>
            </div>
        </div>
        
        <div id="content">
            <div id="login">
                <input type="image" id="adLock" src="../resources/admin/adminlock.png" >
                <img src="../resources/admin/adminlogo.png" align="right" id="adLogo">
            </div>

            <div id="sub_title">도서 조회</div>

            <div id="list">
                <div id="sort" style="padding: 18px 15px;">
                    <select name="sortlist" id="sortlist" style="width: 100px; height: 40px; font-size: small;">
                        <option value="all">도서명 순</option>
                        <option value="start">도서번호 순</option>
                        <option value="end" selected>최근 등록일 순</option>
                    </select>
                    &nbsp;
                    <label for="countMem" style="font-weight: bold;">총 도서</label>

                </div>
                <div id="choice_btn" style="padding: 20px;">
                    <button type="button" id="modifyBook" class="btn btn-primary">도서수정</button> &nbsp;
                    <button type="button" id="deleteBook" class="btn btn-primary">도서삭제</button>
                </div>
            </div>
            
            <div id="table">
                <table>
                    <thead>
                        <tr> 
                            <th width="20"><input type="radio" id="all" name="memcheck"></th>
                            <th width="40">번호</th>
                            <th width="200">도서명</th>
                            <th width="110">저자</th>
                            <th width="100">출판사</th>
                            <th width="90">장르</th>
                            <th width="50">정가</th>
                            <th width="50">판매가</th>
                            <th width="80">등록일</th>
                            <th width="40">재고</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td> <input type="radio"></td>
                            <td>1100</td>
                            <td class="bkName">해리포터 1</a></td>
                            <td>조앤 K 롤링</td>
                            <td>Scholastic</td>
                            <td>국내>소설</td>
                            <td>15000</td>
                            <td>13000</td>
                            <td>2021.04.15</td>
                            <td style="color: red; font-weight: bold;">5</td>
                        </tr>
                        <tr>
                            <td><input type="radio"></td>
                            <td></td>
                            <td class="bkName">해리포터 2</a></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td style="color: red; font-weight: bold;">72</td>
                        </tr>
                        <tr>
                            <td><input type="radio"></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td style="color: red; font-weight: bold;">18</td>
                        </tr>
                        <tr>
                            <td><input type="radio"></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td style="color: red; font-weight: bold;">9</td>
                        </tr>
                        <tr>
                            <td><input type="radio"></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td style="color: red; font-weight: bold;">55</td>
                        </tr>
                        <tr>
                            <td><input type="radio"></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td style="color: red; font-weight: bold;">1</td>
                        </tr>
                        <tr>
                            <td><input type="radio"></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td style="color: red; font-weight: bold;">2</td>
                        </tr>
                        <tr>
                            <td><input type="radio"></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td style="color: red; font-weight: bold;">10</td>
                        </tr>
                        <tr>
                            <td><input type="radio"></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td style="color: red; font-weight: bold;">품절</td>
                            
                            
                        </tr>
                        <tr>
                            <td><input type="radio"></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td style="color: red; font-weight: bold;">1</td>
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
                <select name="searchList" id="searchList" style="margin-left: 25%; width: 60px;">
                    <option value="" selected>도서명</option>
                    <option value="">저자</option>
                    <option value="">출판사</option>
                </select>
                <input type="text" id="searchText" style="width: 270px;" placeholder="입력해주세요" > 
                <input type="button" class="search" id="searchBtn" value="검색" style="font-weight: bold; background-color: rgb(249, 219, 122); border: none; width: 55px;">

            </div>
        </div>
    </div>


    <!-- 도서 상세정보 팝업 -->
    <div id="modal">
        <div class="detailWrap">
            <div id="bktitle">
                <h3 id=bktitleName>도서 상세정보</h3>
                <div id="bkcloseBtn">&times;</div>   
            </div>

            <div id="bkContent">
                <div id="bkContent1" align="center">
                    <img src="../resources/admin/booksample.jpg" alt="" width="130" height="180"" align="center">
                    <br><br>
                    <button id="detailImgBtn" class="btn btn-primary btn-sm" style="border:none; background-color: #c7c7c7;">상세 이미지</button>
                </div>
                <div id="bkContent2">
                    <table id="bkDetail">
                        <tr>
                            <th width="70px">도서번호</th>
                            <td>1020</td>
                        </tr>
                        <tr>
                            <th>도서명</th>
                            <td>해리포터 1</td>
                        </tr>
                        <tr>
                            <th>ISBN</th>
                            <td>979116341909</td>
                        </tr>
                        <tr>
                            <th>페이지수</th>
                            <td>300</td>
                        </tr>
                        <tr>
                            <th>키워드</th>
                            <td>
                                <div id="bkKeyword">
                                    <button type="button" class="btn btn-dark btn-sm">#영미소설</button> 
                                    <button type="button" class="btn btn-dark btn-sm">#영미소설</button>
                                    <button type="button" class="btn btn-dark btn-sm">#영미소설</button>
                                    <button type="button" class="btn btn-dark btn-sm">#영미소설</button>
                                    <button type="button" class="btn btn-dark btn-sm">#영미소설</button>
                                    <button type="button" class="btn btn-dark btn-sm">#영미소설</button>
                                    <button type="button" class="btn btn-dark btn-sm">#영미소설</button>
                                    <button type="button" class="btn btn-dark btn-sm">#판타지드라마</button>
                                </div>                        
                            </td>
                        </tr>
                        <tr>
                            <th style="height: 30px;">책 소개</th>
                            <td>
                                <div class="detailText" >책책책</div>
                            </td>
                        </tr>
                        <tr>
                            <th>저자 소개</th>
                            <td>
                                <div class="detailText">s저자저자저자</div>
                            </td>
                        </tr>
                        <tr>
                            <th>목차</th>
                            <td>
                                <div class="detailText">목차목차목차</div>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>

        <!-- 도서 상세이미지 팝업 -->
        <div class="detailImgWrap">
            <div align="center" id="bkDetailImg">
                <img src="../resources/admin/booksample.jpg" alt="" width="150" height="170">
                <img src="../resources/admin/pandomsample.jpg" alt="" width="150" height="170">
                <img src="../resources/admin/againsample.jpg" alt="" width="150" height="170">
                <img src="../resources/admin/againsample.jpg" alt="" width="150" height="170">
            </div>
        </div>
    </div>

    <script>  // 도서상세 팝업
        $(".bkName").click(function(){
            $(".detailWrap").show();
            $("#modal").addClass('show-popup');
        });
        $("#bkcloseBtn").click(function(){
            $(".detailWrap").hide();
            $("#modal").removeClass('show-popup');
            });
    </script>

    <script>    // 상세이미지 팝업
        $("#detailImgBtn").click(function(){
            $(".detailImgWrap").show();
        });
        $("#detailImgBtn").dblclick(function(){
            $(".detailImgWrap").hide();
        });
    </script>

    <!-- 도서수정 팝업 -->
    <div id="modal2">
        <div class="bkModifyWrap">
            <div id="bkModiTitle">
                <h3 id=bkModiTitleName>도서 수정</h3>    
            </div>
        
            <div id="bkModiContent">
                <table id="bkModiTable">
                    <tr>
                        <th width="80">판매가</th>
                        <td><input type="text" id="couName" required value="xxxx" style="font-weight: bold; color: red;"></td>
                    </tr>
                    
                    <tr>
                        <th>재고</th>
                        <td><input type="number" id="couDiscount" value="12" style="font-weight: bold; color: red;"></td>
                    </tr>
                </table>
                <br>
                <p style="font-size: 10px;">
                    * 판매가, 재고수량만 수정 가능합니다. <br>
                    다른 항목 변경은 도서삭제 후 재등록 해주세요.
                </p>
        
                <div id="bkModify" style="font-size: 18px;">
                    판매가 : <b>xxxx</b>원 / 재고 : <b>xx</b>권
                <br>
                </div>
                위 내용으로 변경하시겠습니까? 
                <br>
                <button type="button" class="btn btn-info btn-sm" style=" margin-top:10px ; width:55px; border: none; background-color: rgb(249, 219, 122);">확인</button>
                &nbsp;
                <button button type="button" id="cancleBtn" class="btn btn-info btn-sm" style="margin-top: 10px; width: 55px; border: none; background-color: #e0e0e0;">취소</button>
            </div>
        </div>
    </div>

    <script>
        $("#modifyBook").click(function(){
            $(".bkModifyWrap").css({display:"block"});
            $("#modal2").addClass('show-popup2');
        });
        $("#cancleBtn").click(function(){
            $(".bkModifyWrap").css({display:"none"});
            $("#modal2").removeClass('show-popup2');
        });
    </script>

    <!-- 도서 삭제 팝업 -->
    <div id="modal3">
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
            $("#deleteBook").click(function(){
                $(".deleteWrap").show();
                $("#modal3").addClass('show-popup3');

            });
            $("#cancleDelBtn").click(function(){
                $(".deleteWrap").hide();
                $("#modal3").removeClass('show-popup3');
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