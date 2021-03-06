<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>ReviewList</title>
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
    #reDate{width: 70%;}
    #choice_btn{width: 30%; text-align: right;}

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
    #allViewBtn{
        background-color: rgb(249, 219, 122);
        border: none;
    }
    #deleteBtn{
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
    .reDetail{cursor:pointer; color: rgb(100, 100, 253);}
    .reDetail:hover{font-weight: bold;}


    /* ???????????? ????????? */
    .detailwrap{
        position: absolute;
        top:39%;
        left:53%;
        z-index: 10;
        box-sizing: border-box;
        width: 330px; 
        height: 280px; 
        margin-top: -75px;
        margin-left: -150px; 
        display:none;
    }
	.detailwrap>div{border: 1px solid #3c3c3c; box-sizing: border-box;}

    /* ?????? ????????? */
    .detailwrap>*{width: 100%;}
    #reTitle{height:37px; background-color: rgb(249,219,122);}
    #reContent{height: 243px; background-color: white;}

    #reTitleName{
        display:inline-block;
        margin-left:140px;
        margin-top:6px;
        font-size: 15px;
        font-weight: bold;
        margin-top: 1;
        color: #3c3c3c;
    }
    #reContent{
        font-size: smaller;
        text-align: center;
    }
    #reCloseBtn { 
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
    #reCloseBtn:hover { 
        background-color: lightgray; 
    } 
    #reTable tr{
        height: 30px;
        border-bottom: 1px solid #a1a1a1;
    }
    #reTable th{
        background-color: #f3f3f3;
        border-right: 1px solid #a1a1a1;
    }
    #modal{
        width: 100%; height: 100%; position: absolute; background: rgba(32, 32, 32, 0.3);
        top: 0; left: 0; z-index: 999; display: none;
    }
    .show-popup{
        display:block !important;
    }


    /* ???????????? ????????? */
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

    /* ??????????????? ?????? ????????? */
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
                ??????
            </div>
            
            <div id="title_Btn">
                <ul id="btns">
                    <li><button class="menuBtn" id="memberBtn" type="button" style="background-color: rgb(249, 219, 122);">?????? ??????</button></li>
                </ul>
            </div>
        </div>
        
        
        <div id="content">
            <div id="login">
                <input type="image" id="adLock" src="../resources/admin/adminlock.png" >
                <img src="../resources/admin/adminlogo.png" id="adLogo">
            </div>

            <div id="sub_title">?????? ??????</div>

            <div id="list">
                <div id="reDate" style="padding: 30px 15px;">
                    <b>????????????</b> &nbsp;
                    <input type="date" style="width:140px; font-size:small">&nbsp;~&nbsp;
                    <input type="date" style="width:140px; font-size: small;">
                    <button type="button" id="allViewBtn" class="btn btn-primary btn-sm ">??????</button>
                </div>

                <div id="choice_btn" style="padding: 20px;">
                    <button type="button" id="allViewBtn" class="btn btn-primary ">????????????</button> &nbsp;
                    <button type="button" id="deleteBtn" class="btn btn-primary ">????????????</button>
                </div>    
            </div>
            
            <div id="table">
                <table>
                    <thead>
                        <tr>
                            <th width="20"><input type="checkbox" id="all" name="memcheck"></th>
                            <th width="40">??????</th>
                            <th width="130">?????????</th>
                            <th width="70">????????????</th>
                            <th width="200">?????????</th>
                            <th width="240">?????? ??????</th>
                            <th width="80">????????????</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td> <input type="checkbox"></td>
                            <td>5</td>
                            <td>user01</td>
                            <td>125</td>
                            <td>???????????? 1</td>
                            <td class="reDetail">?????????</td>
                            <td>2021.03.15</td> 
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td class="reDetail">?????????</td>
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
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
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
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
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
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
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
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
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

                <select name="searchList" id="searchList" style="margin-left: 25%; width: 60px;">
                    <option value="" selected>?????????</option>
                    <option value="">??????</option>
                    <option value="">?????????</option>
                </select>

                <input type="text" id="searchText" style="width: 270px;" placeholder="??????????????????" > 
                <input type="button" class="search" id="searchBtn" value="??????" style="font-weight: bold; background-color: rgb(249, 219, 122); border: none; width: 55px;">
            </div>
        </div>
    </div>

    <!-- ?????? ???????????? ?????? -->
    <div id="modal">
        <div class="detailwrap">
            <div id="reTitle">
                <h3 id=reTitleName>?????? ??????</h3>
            <div id="reCloseBtn">&times;</div>    
            </div>
            
            <div id="reContent">
                <table id="reTable">
                    <tr>
                        <th width="80px">????????????</th>
                        <td width="250">850</td>
                    </tr>
                    <tr>
                        <th>?????????</th>
                        <td>?????? 1</td>
                    </tr>
                    <tr>
                        <th>?????????</th>
                        <td>user01</td>
                    </tr>
                    <tr>
                        <th>?????????</th>
                        <td>2021.03.22</td>
                    </tr>
                    <tr>
                        <th height="120px">??????</th>
                        <td>
                            ????????? ?????? ?????????.
                            ?????????????????? <br>
                            ?????? ????????? ?????????
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>

    <script>
        $(".reDetail").click(function(){
            $(".detailwrap").show();
            $("#modal").addClass('show-popup');
        });
        $("#reCloseBtn").click(function(){
            $(".detailwrap").hide();
            $("#modal").removeClass('show-popup');
        });
    </script>

    <!-- ?????? ?????? -->
    <div id="modal2">
        <div class="deleteWrap">
            <div id="delTitle">
                <h3 id=delTitleName align="center">CONFIRM</h3>        
            </div>

            <div id="delContent">
                <div id="delText" style="text-align: center; font-size:large; margin-top:10px; font-weight: bold;">
                    ?????? ????????? ?????? ??????????????????? 
                </div>    
                <div id="delIntro" style="text-align: center; font-size:small;">
                    ?????? ??? ?????? ??????
                </div>
                <div id="delAns" style="margin-left: 26%;">
                    <button type="button" class="btn btn-info btn-sm"  style="margin-left: 3px; width:55px; border: none; background-color: rgb(249, 219, 122);">??????</button>
                    &nbsp;&nbsp;
                    <button type="button" id="cancleDelBtn"  class="btn btn-info btn-sm" style="width: 55px; border: none; background-color: #e0e0e0;">??????</button>
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


    <!-- ??????????????? ?????? ?????? -->
    <div id="modal_End">
        <div class="adEndWrap">
            <div id="adEndTitle">
                <h3 id=adEndTitleName align="center">CONFIRM</h3>        
            </div>

            <div id="adEndContent">
                <div id="adEndText" style="text-align: center; font-size:large; margin-top:10px; font-weight: bold;">
                    ??????????????? ?????????????????????????
                </div>    
                <div id="adEndIntro" style="text-align: center; font-size:small;">
                    2021.04.18 15:01:33
                </div>
                <div id="adEndBtn" style="margin-left: 26%;">
                    <button type="button" class="btn btn-info btn-sm"  style="margin-left: 3px; width:55px; border: none; background-color: rgb(249, 219, 122);">??????</button>
                    &nbsp;&nbsp;
                    <button type="button" id="cancleEndBtn"  class="btn btn-info btn-sm" style="width: 55px; border: none; background-color: #e0e0e0;">??????</button>
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