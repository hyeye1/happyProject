<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    #list{height:28%; }
    #memTable{height: 45%;}
    #backWrap{height: 10%;}

    #list>div{height: 100%; float: left;}
    #detail{width: 30%;}
    #couponTb{width: 60%}



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
    #sendCouBtn{
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

    #pcontent{
        font-size: smaller;
        padding-left: 10px;
    }
    #pcontent td{
        text-align: center;
    }
    /* 쿠폰 */
    #couponTB{width: 410px; margin-top: 10px; font-size: 15px;}
    #couponTB>tbody>tr>th{border: 1px solid rgb(153, 152, 152);}
    #couponTB>tbody>tr>td{border: 1px solid rgb(153, 152, 152);}

    /* 상세 */
    #detail{width: 340px; margin-top: 15px; margin-left:25px; font-size: 15px;}



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
                    <li><button class="menuBtn" id="memberBtn" type="button" style="background-color: rgb(249, 219, 122);">회원조회</button></li>
                    <li><button class="menuBtn" id="couponBtn" type="button">쿠폰 관리</button></li>
                </ul>
            </div>
        </div>
        
        
        <div id="content">
            <div id="login">
                <div id="login">
                    <input type="image" id="adLock" src="${pageContext.request.contextPath}/resources/images/admin/adminlock.png" >
                    <img src="${pageContext.request.contextPath}/resources/images/admin/adminlogo.png"  id="adLogo">
                </div>
            </div>

            <div id="sub_title">회원 상세 조회</div>

            <div id="list">
                <div id="detail">
                    <table class="detailTB" >
                            <tr>
                                <th width="80px">회원번호</th>
                                <td colspan="3">2</td>
                            </tr>
                            <tr>
                                <th>아이디</th>
                                <td colspan="3">abc</td>
                            </tr>
                            <tr>
                                <th>이름</th>
                                <td colspan="3">홍길동</td>
                            </tr>
                            <tr>
                                <th>주소</th>
                                <td colspan="3">서울특별시 강남구 역삼동 11-111</td>
                            </tr>
                            <tr>
                                <th>가입일</th>
                                <td colspan="3">2020.04.15</td>
                            </tr>
                            <tr>
                                <th>최근 방문일</th>
                                <td colspan="3">2020.04.16</td> 
                            </tr>
                            <tr>
                                <th>가입 경로</th>
                                <td colspan="3">자사</td>
                            </tr>
                    </table>
                </div>
                <div id="coupon">
                    <table id="couponTB"> 
                        <thead >
                            <tr size>
                                <th colspan="3" style="text-align: center;">보유쿠폰</th>
                            </tr>
                        </thead>
                        <tbody style="border: 1px solid; text-align: center;">
                            <tr style="background-color: rgb(249, 219, 122)">
                                <th style="width: 200px;">쿠폰명</th>
                                <th style="width: 50px;">할인액</th>
                                <th style="width: 80px;">유효기간</th>
                            </tr>
                            <tr>
                                <td>봄비 내릴땐 해피북스데이</td>
                                <td>2000</td>
                                <td>2021.04.16</td>
                            </tr>
                            <tr>
                                <td>4월 봄맞이 쿠폰</td>
                                <td>1000</td>
                                <td>2021.04.30</td>
                            </tr>
                            <tr>
                                <td>4월 봄맞이 쿠폰</td>
                                <td>1000</td>
                                <td>2021.04.30</td>
                            </tr>
                        </tbody>
                    </table>

                </div>
                
                
            </div>
            
            <div id="memTable">
                <hr>
                <p style="font-size: 15px; font-weight: bold;">주문내역</p>
                <table>
                    <thead>
                        <tr>
                            <th width="70">주문번호</th>
                            <th width="130">주문일</th>
                            <th width="70">도서번호</th>
                            <th width="240">도서명</th>
                            <th width="130">주문금액</th>
                            <th width="130">배송상태</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>10</td>
                            <td>2021.04.23</td>
                            <td>100</td>
                            <td>해리포터</td>
                            <td>20000</td>
                            <td>결제대기중</td>
                            
                        </tr>
                        <tr>
                            <td>9</td>
                            <td>2021.03.01</td>
                            <td>200</td>
                            <td>달러구트</td>
                            <td>50000</td>
                            <td>배송완료</td>
                            
                        </tr>
                        <tr>
                            <td>8</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            
                        </tr>
                        <tr>
                            <td>7</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            
                        </tr>
                        <tr>
                            <td>6</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            
                        </tr>
                        <tr>
                            <td>5</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                    </tbody>                    
                </table>

                
            </div>
            <div id="backWrap" style="padding-left: 30px">
                <button id="deleteBtn" class="btn btn-primary" style="float:">이전으로</button> &nbsp;
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
                    2021.04.18 15:01:33
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