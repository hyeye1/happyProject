<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>EnrollBook</title>
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

        div{
            /* border: 1px solid rgb(249,219,122); */
            box-sizing: border-box;
        }
        .wrap{width:1000px; height:700px; margin: auto; margin-top:15px; outline: auto; font-size: 12px}
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
        #bktable{height: 83%;}


        /* menubar */
        #menubar{
            background-color: rgb(224, 224, 224);
        }
        #content{
            border-left: 5px double rgb(249, 219, 122);
        }
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

        
        #choice_btn{
            text-align: center;
        }
        #enrollBtn{
            background-color: rgb(249, 219, 122);
            border: none;
            width: 70px;
        }
        #cancleBtn{
            background-color:#f3f3f3;
            border: none;
            width: 70px;
        }


        table{
            width: 770px;
            height: 480px;
            margin: 11px;
        }

        input{
            width: 280px;
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

        .bkName{
            cursor: pointer;
            font-weight: bold;
        }

        b{
            color: rgb(243, 26, 26);
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
                    <li><button class="menuBtn" id="bkListBtn" type="button" >도서 조회</button></li>
                    <li><button class="menuBtn" id="bkEnrollBtn" type="button" style="background-color: rgb(249, 219, 122);">도서 등록</button></li>
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
            <div id="sub_title">도서 등록</div>
            <div id="bktable">

            <form  action="<%= request.getContextPath() %>/insert.bk" name="frm" mothod="post" enctype="multipart/form-data">
            	<table id="tab">
                    <tr>
                        <th width="90"> &nbsp;&nbsp;&nbsp;도서번호</th>
                        <td width="0"><input type="text" ></td>
                        <th width="90"><b>*</b> 카테고리</th>
                        <td width="30">
                            <select name="category1" id="category1" style="width: 100px;" required>
                                <option value="">국내도서</option>
                                <option value="">해외도서</option>
                            </select> 
                            &nbsp;>&nbsp;
                            <select name="" id="category2" style="width: 120px;" required>
                                <option value="">문학</option>
                                <option value="">경제/경영</option>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <th><b>*</b> 도서명</th>
                        <td><input type="text" placeholder="도서명을 입력하세요" required></td>
                        <th>&nbsp;&nbsp;&nbsp;저자</th>
                        <td><input type="text" placeholder="저자명을 입력하세요"></td>
                    </tr>
                    <tr>
                        <th>&nbsp;&nbsp;&nbsp;출판사</th>
                        <td><input type="text" placeholder="출판사를 입력하세요"></td>
                        <th>&nbsp;&nbsp;&nbsp;출간일</th>
                        <td><input type="date"> </td>
                    </tr>
                    <tr>
                        <th>&nbsp;&nbsp;&nbsp;페이지수</th>
                        <td><input type="text" placeholder="숫자만 입력하세요"></td>
                        <th width="90">&nbsp;&nbsp;&nbsp;ISBN</th>
                        <td width="100"><input type="text" placeholder="숫자 13개 입력"></td>
                    </tr>
                    <tr>
                        <th>&nbsp;&nbsp;&nbsp;정가</th>
                        <td><input type="text" placeholder="정가를 입력하세요"></td>
                        <th><b>*</b> 판매가</th>
                        <td><input type="text" placeholder="실제 판매 가격을 입력하세요" required></td>
                    </tr>
                    <tr>
                        <th>&nbsp;&nbsp;&nbsp;책 소개</th>
                        <td>
                            <textArea name="bookDescrription" placeholder="책 소개 내용을 입력하세요" cols="43" rows="6" style="resize: none;"></textArea>
                        </td>
                        <th>&nbsp;&nbsp;&nbsp;저자소개</th>
                        <td>

                            <textArea name="bookDescrription" placeholder="저자 소개 내용을 입력하세요" cols="43" rows="6" style="resize: none;"></textArea>
                        </td>
                    </tr>
                    <tr>
                        <th>&nbsp;&nbsp;&nbsp;목차</th>
                        <td>
                            <textArea name="bookContent" placeholder="목차 내용을 입력하세요" cols="43" rows="6" style="resize: none;"></textArea>
                        </td>
                        <th>&nbsp;&nbsp;&nbsp;키워드</th>
                        <td>
                            <textArea name="keyword" cols="43" rows="6" style="resize: none;" placeholder="키워드를 입력하세요"></textArea>
                        </td>
                    </tr>
                    <tr>
                        <th>&nbsp;&nbsp;&nbsp;표지 이미지</th>
                        <td><input type="file" name="image" accept="image/*" ></td>
                        <th></th>
                        <td></td>
                    </tr>
                    <tr>
                        <th>&nbsp;&nbsp;&nbsp;상세이미지</th>
                        <td><input type="file"></td>
                        <th><b>*</b> 수량</th>
                        <td><input type="number" placeholder="입고 수량" style="width: 100px; color: red;" required></td>
                    </tr>
                </table>
                <br>
                <div id="choice_btn">
                    <button type="button" id="enrollBtn" class="btn btn-primary">등록</button> &nbsp;
                    <button type="reset" id="resetBtn" class="btn btn-primary">초기화</button>
                </div>
                <br>
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