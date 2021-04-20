<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>ad_pay</title>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" href="css/hover-min.css">
    <style>

        div{
            /* border: 1px solid rgb(249,219,122); */
            box-sizing: border-box;
        }
        .wrap{width:1000px; height:1000px; margin: auto;  margin-top: 7%; outline: auto; }
        .wrap>div{height: 100%; float: left;}
        #menubar{width: 20%;}
        #content{width: 80%;}

        #menubar>div{width:100%; float: left;}
        #home{height: 20%;}
        #title_name{height: 15%;}
        #title_Btn{height: 65%;}

        #content>div{width: 100%; float: left;}
        #login{height: 7%;}
        #sub_title{height: 12%;}
        #list{height:10%; ;}
        #table{height: 73%;}

        #list>div{height: 100%; float: left;}
        #sort{width: 30%;}
        #choice_btn{width: 70%; text-align: right;}
        



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
        text-align: left;
        }


        .menuBtn{
        font-size:large;
        font-weight: bold;
        border:10px;
        background-color: white;
        width: 150px;
        height: 70px;
        margin-top: 20px;
        border-radius: 15px;
        font-size:large;
        cursor: pointer;
        border-width: 4px;
        border-style: solid;
        border-color: rgb(249, 219, 122); 
        color: #3c3c3c;
        margin-left: -10px;
        }
        
        .menuBtn:hover{
        opacity: 100%;
        background-color:rgb(249, 219, 122);
        }



        #sub_title{
            font-size: 40px;
            padding: 10px 20px;
        }




        table{
            text-align: center;
            border: 1px solid gray;
            margin-left: 3px;
        }
        th{
            padding-top: 7px;
            padding-bottom: 7px;
            background-color: rgb(224,224,224);
            border: 1px solid gray;
            font-size: small;
        }
        td{
            padding-top: 3px;
            padding-bottom: 3px;
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

        #searchText{
            float: left;
            
            width: 250px;
            border:1px solid gray;
            height: 30px;
        }
        #searchBtn{
            float: left;
            background-color: rgb(249, 219, 122);
            border: none;
            color:#3c3c3c;
            width: 55px;
            height: 30px;

        }

        #verseSelect{
            float: left;
            margin-left: 28%;
           

        }

        td{
            font-size: small;
        }

        tr{
            cursor: pointer;
        }

        pre{
           width: 780px;
            border: 1px solid lightgray;
            margin-top: 5px;
            text-align: left;
            padding: 10px;
            box-sizing: border-box;
            border-radius: 10px;
        }
        .nn{
            display: none;
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
                결제관리
            </div>
            
            <div id="title_Btn">
                <ul id="btns">
                    <li><button class="menuBtn" id="restBtn" type="button" style="background-color: rgb(249, 219, 122);">결제관리</button></li>
                </ul>
                
            </div>
            
        </div>
        
        
        <div id="content">
            
           
            <div id="login">
                <a href="">
                    <img src="resources/img/lock.png" align="right" > 
                </a>
                <img src="resources/img/personImg2.png" align="right" >
            
            
            </div>
            
            <div id="sub_title">
                결제관리
              
                
            </div>

            
                <div>
                    <br>
                 <table border="1" >
                    <tr>
                        <th width="35">번호</th>
                        <th width="70">아이디</th>
                        <th width="100">상품코드</th>
                        <th width="170">책 제목</th>
                        <th width="80">결제금액</th>
                        <th width="150">결제일시</th>
                        <th width="75">입급상태</th>
                        <th width="75">배송상태</th>
                        <th width="50"></th>
                    </tr>
                   <tr class="payTable">
                       <td><input type="checkbox"></td>
                       <td></td>
                       <td></td>
                       <td></td>
                       <td></td>
                       <td></td>
                       <td></td>
                       <td></td>
                       <td>
                        <!-- Button to Open the Modal -->
                            <button type="button" class="btn btn-outline-warning btn-sm" style="background-color: rgb(249, 219, 122);" data-toggle="modal" data-target="#change1">
                                <b>변경</b>
                            </button>
                            
                            <!-- The Modal -->
                            <div class="modal" id="change1"  style="width: 390px; height: 400px; margin-left: 45%; margin-top: 15%;" >
                                <div class="modal-dialog" >
                                <div class="modal-content">
                            
                                    <!-- Modal Header -->
                                    <div class="modal-header" style=" width: 100%; height: 45px;  background-color: rgb(249, 219, 122);">
                                    <h6 class="modal-title" style="margin:auto; "> <b>상태변경</b></h6>
                                    
                                    </div>
                            
                                    <!-- Modal body -->
                                    
                                    <table style=" width: 100%;  box-sizing: border-box;">
                                            <tr >
                                                <th width="80px" style="background-color: white;">입금상태</th>
                                                <td colspan="3">
                                                    <input type="radio" name="deposit" value="X" > 미입금
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <input type="radio" name="deposit" value="O" > 입금완료
                                                </td>
                                            
                                                
                                            </tr>
                                            <tr>
                                                <th style="background-color: white;">배송상태</th>
                                                <td colspan="3">
                                                    <input type="radio" name="shipment" value="onStock" > 배송준비중
                                                    &nbsp;&nbsp;
                                                    <input type="radio" name="shipment" value="shipping" > 배송중
                                                    &nbsp;&nbsp;
                                                    <input type="radio" name="shipment" value="shipped" > 배송완료
                                                </td>
                                            </tr>
                                    </table>
                                   
                            
                                    <!-- Modal footer -->
                                    <div class="modal-footer" style="width: 100%; " > 
                                    <button type="button" class="btn btn-danger" data-dismiss="modal" style="background-color: rgb(249, 219, 122); margin-left: 100px;">확인</button> &nbsp;&nbsp;&nbsp;
                                    <button type="button" class="btn btn-danger" data-dismiss="modal" style="margin-right: 100px;">취소</button>
                                    </div>
                            
                                </div>
                                </div>
                            </div>  
                       </td>

                       
                    </tr>

                    <tr class="nn">
                        <td colspan="9">
                            <pre>
 * 아이디: 123                              * 결제상태:
                                                                            
 * 고객명:                                  * 상품 수:
                                   
 * 전화번호:                                * 상품코드:
                                   
 * 결제금액:                                * 상품명:
                                   
 * 결제유형:                                * 주소:
                            </pre>
                        </td>
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
                    <td>
                        <!-- Button to Open the Modal -->
                            <button type="button" class="btn btn-outline-warning btn-sm" style="background-color: rgb(249, 219, 122);" data-toggle="modal" data-target="#change2">
                                <b>변경</b>
                            </button>
                            
                            <!-- The Modal -->
                            <div class="modal" id="change2"  style="width: 400px; height: 300px;  margin-left: 45%; margin-top: 15%;" >
                                <div class="modal-dialog">
                                <div class="modal-content">
                            
                                    <!-- Modal Header -->
                                    <div class="modal-header" style=" width: 100%;  background-color: rgb(249, 219, 122);">
                                    <h6 class="modal-title" style="margin:auto; "> <b>상태변경</b></h6>
                                    
                                    </div>
                            
                                    <!-- Modal body -->
                                    
                                    <table style=" width: 100%;  box-sizing: border-box;">
                                        <tr >
                                            <th width="80px" style="background-color: white;">입금상태</th>
                                            <td colspan="3">
                                                <input type="radio" name="deposit" value="X" > 미입금
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <input type="radio" name="deposit" value="O" > 입금완료
                                            </td>
                                        
                                            
                                        </tr>
                                        <tr>
                                            <th style="background-color: white;">배송상태</th>
                                            <td colspan="3">
                                                <input type="radio" name="shipment" value="onStock" > 배송준비중
                                                &nbsp;&nbsp;
                                                <input type="radio" name="shipment" value="shipping" > 배송중
                                                &nbsp;&nbsp;
                                                <input type="radio" name="shipment" value="shipped" > 배송완료
                                            </td>
                                        </tr>
                                </table>
                            
                                    <!-- Modal footer -->
                                    <div class="modal-footer" style="width: 100%; " > 
                                    <button type="button" class="btn btn-danger" data-dismiss="modal" style="background-color: rgb(249, 219, 122); margin-left: 100px;">확인</button> &nbsp;&nbsp;&nbsp;
                                    <button type="button" class="btn btn-danger" data-dismiss="modal" style="margin-right: 100px;">취소</button>
                                    </div>
                            
                                </div>
                                </div>
                            </div>  
                       </td>


                </tr>

                <tr class="nn">
                    <td colspan="9">
                        <pre >
* 아이디 :  <input type="text" >             * 결제상태: <input type="text"> 
                                                                        
* 고객명:   <input type="text" >             * 상품 수:  <input type="text"> 
                               
* 전화번호: <input type="text">             * 상품코드: <input type="text"> 
                               
* 결제금액: <input type="text">             * 상품명:   <input type="text" style="width: 300px;"> 
                               
* 결제유형: <input type="text">             * 주소:     <input type="text" style="width: 300px;"> 
                        </pre> 
                    </td>
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
                    <td>
                        <!-- Button to Open the Modal -->
                            <button type="button" class="btn btn-outline-warning btn-sm" style="background-color: rgb(249, 219, 122);" data-toggle="modal" data-target="#change3">
                                <b>변경</b>
                            </button>
                            
                            <!-- The Modal -->
                            <div class="modal" id="change3"  style="width: 400px; height: 300px;  margin-left: 45%; margin-top: 15%;" >
                                <div class="modal-dialog">
                                <div class="modal-content">
                            
                                    <!-- Modal Header -->
                                    <div class="modal-header" style=" width: 100%;  background-color: rgb(249, 219, 122);">
                                    <h6 class="modal-title" style="margin:auto; "> <b>상태변경</b></h6>
                                    
                                    </div>
                            
                                   <!-- Modal body -->
                                    
                                   <table style=" width: 100%;  box-sizing: border-box;">
                                    <tr >
                                        <th width="80px" style="background-color: white;">입금상태</th>
                                        <td colspan="3">
                                            <input type="radio" name="deposit" value="X" > 미입금
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <input type="radio" name="deposit" value="O" > 입금완료
                                        </td>
                                    
                                        
                                    </tr>
                                    <tr>
                                        <th style="background-color: white;">배송상태</th>
                                        <td colspan="3">
                                            <input type="radio" name="shipment" value="onStock" > 배송준비중
                                            &nbsp;&nbsp;
                                            <input type="radio" name="shipment" value="shipping" > 배송중
                                            &nbsp;&nbsp;
                                            <input type="radio" name="shipment" value="shipped" > 배송완료
                                        </td>
                                    </tr>
                            </table>
                            
                                    <!-- Modal footer -->
                                    <div class="modal-footer" style="width: 100%; " > 
                                    <button type="button" class="btn btn-danger" data-dismiss="modal" style="background-color: rgb(249, 219, 122); margin-left: 100px;">확인</button> &nbsp;&nbsp;&nbsp;
                                    <button type="button" class="btn btn-danger" data-dismiss="modal" style="margin-right: 100px;">취소</button>
                                    </div>
                            
                                </div>
                                </div>
                            </div>  
                       </td>
                </tr>

                <tr class="nn">
                    <td colspan="9">
                        <pre>
* 아이디: 123                              * 결제상태:
                                                                        
* 고객명:                                  * 상품 수:
                               
* 전화번호:                                * 상품코드:
                               
* 결제금액:                                * 상품명:
                               
* 결제유형:                                * 주소:
                        </pre>
                    </td>
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
                    <td>
                        <!-- Button to Open the Modal -->
                            <button type="button" class="btn btn-outline-warning btn-sm" style="background-color: rgb(249, 219, 122);" data-toggle="modal" data-target="#change4">
                                <b>변경</b>
                            </button>
                            
                            <!-- The Modal -->
                            <div class="modal" id="change4"  style="width: 400px; height: 300px;  margin-left: 45%; margin-top: 15%;" >
                                <div class="modal-dialog">
                                <div class="modal-content">
                            
                                    <!-- Modal Header -->
                                    <div class="modal-header" style=" width: 100%;  background-color: rgb(249, 219, 122);">
                                    <h6 class="modal-title" style="margin:auto; "> <b>상태변경</b></h6>
                                    
                                    </div>
                            
                                    <!-- Modal body -->
                                    
                                    <table style=" width: 100%;  box-sizing: border-box;">
                                        <tr >
                                            <th width="80px" style="background-color: white;">입금상태</th>
                                            <td colspan="3">
                                                <input type="radio" name="deposit" value="X" > 미입금
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <input type="radio" name="deposit" value="O" > 입금완료
                                            </td>
                                        
                                            
                                        </tr>
                                        <tr>
                                            <th style="background-color: white;">배송상태</th>
                                            <td colspan="3">
                                                <input type="radio" name="shipment" value="onStock" > 배송준비중
                                                &nbsp;&nbsp;
                                                <input type="radio" name="shipment" value="shipping" > 배송중
                                                &nbsp;&nbsp;
                                                <input type="radio" name="shipment" value="shipped" > 배송완료
                                            </td>
                                        </tr>
                                </table>
                            
                                    <!-- Modal footer -->
                                    <div class="modal-footer" style="width: 100%; " > 
                                    <button type="button" class="btn btn-danger" data-dismiss="modal" style="background-color: rgb(249, 219, 122); margin-left: 100px;">확인</button> &nbsp;&nbsp;&nbsp;
                                    <button type="button" class="btn btn-danger" data-dismiss="modal" style="margin-right: 100px;">취소</button>
                                    </div>
                            
                                </div>
                                </div>
                            </div>  
                       </td>
                </tr>
                <tr class="nn">
                    <td colspan="9">
                        <pre>
* 아이디: 123                              * 결제상태:
                                                                        
* 고객명:                                  * 상품 수:
                               
* 전화번호:                                * 상품코드:
                               
* 결제금액:                                * 상품명:
                               
* 결제유형:                                * 주소:
                        </pre>
                    </td>
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
                    <td>
                        <!-- Button to Open the Modal -->
                            <button type="button" class="btn btn-outline-warning btn-sm" style="background-color: rgb(249, 219, 122);" data-toggle="modal" data-target="#change5">
                                <b>변경</b>
                            </button>
                            
                            <!-- The Modal -->
                            <div class="modal" id="change5"  style="width: 400px; height: 300px;  margin-left: 45%; margin-top: 15%;" >
                                <div class="modal-dialog">
                                <div class="modal-content">
                            
                                    <!-- Modal Header -->
                                    <div class="modal-header" style=" width: 100%;  background-color: rgb(249, 219, 122);">
                                    <h6 class="modal-title" style="margin:auto; "> <b>상태변경</b></h6>
                                    
                                    </div>
                            
                                    <!-- Modal body -->
                                    
                                    <table style=" width: 100%;  box-sizing: border-box;">
                                        <tr >
                                            <th width="80px" style="background-color: white;">입금상태</th>
                                            <td colspan="3">
                                                <input type="radio" name="deposit" value="X" > 미입금
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <input type="radio" name="deposit" value="O" > 입금완료
                                            </td>
                                        
                                            
                                        </tr>
                                        <tr>
                                            <th style="background-color: white;">배송상태</th>
                                            <td colspan="3">
                                                <input type="radio" name="shipment" value="onStock" > 배송준비중
                                                &nbsp;&nbsp;
                                                <input type="radio" name="shipment" value="shipping" > 배송중
                                                &nbsp;&nbsp;
                                                <input type="radio" name="shipment" value="shipped" > 배송완료
                                            </td>
                                        </tr>
                                </table>
                            
                                    <!-- Modal footer -->
                                    <div class="modal-footer" style="width: 100%; " > 
                                    <button type="button" class="btn btn-danger" data-dismiss="modal" style="background-color: rgb(249, 219, 122); margin-left: 100px;">확인</button> &nbsp;&nbsp;&nbsp;
                                    <button type="button" class="btn btn-danger" data-dismiss="modal" style="margin-right: 100px;">취소</button>
                                    </div>
                            
                                </div>
                                </div>
                            </div>  
                       </td>
                </tr>

                <tr class="nn">
                    <td colspan="9">
                        <pre>
* 아이디: 123                              * 결제상태:
                                                                        
* 고객명:                                  * 상품 수:
                               
* 전화번호:                                * 상품코드:
                               
* 결제금액:                                * 상품명:
                               
* 결제유형:                                * 주소:
                        </pre>
                    </td>
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
                    <td>
                        <!-- Button to Open the Modal -->
                            <button type="button" class="btn btn-outline-warning btn-sm" style="background-color: rgb(249, 219, 122);" data-toggle="modal" data-target="#change6">
                                <b>변경</b>
                            </button>
                            
                            <!-- The Modal -->
                            <div class="modal" id="change6"  style="width: 400px; height: 300px;  margin-left: 45%; margin-top: 15%;" >
                                <div class="modal-dialog">
                                <div class="modal-content">
                            
                                    <!-- Modal Header -->
                                    <div class="modal-header" style=" width: 100%;  background-color: rgb(249, 219, 122);">
                                    <h6 class="modal-title" style="margin:auto; "> <b>상태변경</b></h6>
                                    
                                    </div>
                            
                                   <!-- Modal body -->
                                    
                                   <table style=" width: 100%;  box-sizing: border-box;">
                                    <tr >
                                        <th width="80px" style="background-color: white;">입금상태</th>
                                        <td colspan="3">
                                            <input type="radio" name="deposit" value="X" > 미입금
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <input type="radio" name="deposit" value="O" > 입금완료
                                        </td>
                                    
                                        
                                    </tr>
                                    <tr>
                                        <th style="background-color: white;">배송상태</th>
                                        <td colspan="3">
                                            <input type="radio" name="shipment" value="onStock" > 배송준비중
                                            &nbsp;&nbsp;
                                            <input type="radio" name="shipment" value="shipping" > 배송중
                                            &nbsp;&nbsp;
                                            <input type="radio" name="shipment" value="shipped" > 배송완료
                                        </td>
                                    </tr>
                            </table>
                                    <!-- Modal footer -->
                                    <div class="modal-footer" style="width: 100%; " > 
                                    <button type="button" class="btn btn-danger" data-dismiss="modal" style="background-color: rgb(249, 219, 122); margin-left: 100px;">확인</button> &nbsp;&nbsp;&nbsp;
                                    <button type="button" class="btn btn-danger" data-dismiss="modal" style="margin-right: 100px;">취소</button>
                                    </div>
                            
                                </div>
                                </div>
                            </div>  
                       </td>
                </tr>
                <tr class="nn">
                    <td colspan="9">
                        <pre>
* 아이디: 123                              * 결제상태:
                                                                        
* 고객명:                                  * 상품 수:
                               
* 전화번호:                                * 상품코드:
                               
* 결제금액:                                * 상품명:
                               
* 결제유형:                                * 주소:
                        </pre>
                    </td>
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
                    <td>
                        <!-- Button to Open the Modal -->
                            <button type="button" class="btn btn-outline-warning btn-sm" style="background-color: rgb(249, 219, 122);" data-toggle="modal" data-target="#change7">
                                <b>변경</b>
                            </button>
                            
                            <!-- The Modal -->
                            <div class="modal" id="change7"  style="width: 400px; height: 300px;  margin-left: 45%; margin-top: 15%;" >
                                <div class="modal-dialog">
                                <div class="modal-content">
                            
                                    <!-- Modal Header -->
                                    <div class="modal-header" style=" width: 100%;  background-color: rgb(249, 219, 122);">
                                    <h6 class="modal-title" style="margin:auto; "> <b>상태변경</b></h6>
                                    
                                    </div>
                            
                                    <!-- Modal body -->
                                    
                                    <table style=" width: 100%;  box-sizing: border-box;">
                                        <tr >
                                            <th width="80px" style="background-color: white;">입금상태</th>
                                            <td colspan="3">
                                                <input type="radio" name="deposit" value="X" > 미입금
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <input type="radio" name="deposit" value="O" > 입금완료
                                            </td>
                                        
                                            
                                        </tr>
                                        <tr>
                                            <th style="background-color: white;">배송상태</th>
                                            <td colspan="3">
                                                <input type="radio" name="shipment" value="onStock" > 배송준비중
                                                &nbsp;&nbsp;
                                                <input type="radio" name="shipment" value="shipping" > 배송중
                                                &nbsp;&nbsp;
                                                <input type="radio" name="shipment" value="shipped" > 배송완료
                                            </td>
                                        </tr>
                                </table>
                            
                                    <!-- Modal footer -->
                                    <div class="modal-footer" style="width: 100%; " > 
                                    <button type="button" class="btn btn-danger" data-dismiss="modal" style="background-color: rgb(249, 219, 122); margin-left: 100px;">확인</button> &nbsp;&nbsp;&nbsp;
                                    <button type="button" class="btn btn-danger" data-dismiss="modal" style="margin-right: 100px;">취소</button>
                                    </div>
                            
                                </div>
                                </div>
                            </div>  
                       </td>
                </tr>
                <tr class="nn">
                    <td colspan="9">
                        <pre>
* 아이디: 123                              * 결제상태:
                                                                        
* 고객명:                                  * 상품 수:
                               
* 전화번호:                                * 상품코드:
                               
* 결제금액:                                * 상품명:
                               
* 결제유형:                                * 주소:
                        </pre>
                    </td>
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
                    <td>
                        <!-- Button to Open the Modal -->
                            <button type="button" class="btn btn-outline-warning btn-sm" style="background-color: rgb(249, 219, 122);" data-toggle="modal" data-target="#change8">
                                <b>변경</b>
                            </button>
                            
                            <!-- The Modal -->
                            <div class="modal" id="change8"  style="width: 400px; height: 300px;  margin-left: 45%; margin-top: 15%;" >
                                <div class="modal-dialog">
                                <div class="modal-content">
                            
                                    <!-- Modal Header -->
                                    <div class="modal-header" style=" width: 100%;  background-color: rgb(249, 219, 122);">
                                    <h6 class="modal-title" style="margin:auto; "> <b>상태변경</b></h6>
                                    
                                    </div>
                            
                                    <!-- Modal body -->
                                    
                                    <table style=" width: 100%;  box-sizing: border-box;">
                                        <tr >
                                            <th width="80px" style="background-color: white;">입금상태</th>
                                            <td colspan="3">
                                                <input type="radio" name="deposit" value="X" > 미입금
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <input type="radio" name="deposit" value="O" > 입금완료
                                            </td>
                                        
                                            
                                        </tr>
                                        <tr>
                                            <th style="background-color: white;">배송상태</th>
                                            <td colspan="3">
                                                <input type="radio" name="shipment" value="onStock" > 배송준비중
                                                &nbsp;&nbsp;
                                                <input type="radio" name="shipment" value="shipping" > 배송중
                                                &nbsp;&nbsp;
                                                <input type="radio" name="shipment" value="shipped" > 배송완료
                                            </td>
                                        </tr>
                                </table>
                            
                                    <!-- Modal footer -->
                                    <div class="modal-footer" style="width: 100%; " > 
                                    <button type="button" class="btn btn-danger" data-dismiss="modal" style="background-color: rgb(249, 219, 122); margin-left: 100px;">확인</button> &nbsp;&nbsp;&nbsp;
                                    <button type="button" class="btn btn-danger" data-dismiss="modal" style="margin-right: 100px;">취소</button>
                                    </div>
                            
                                </div>
                                </div>
                            </div>  
                       </td>
                </tr>
                <tr class="nn">
                    <td colspan="9">
                        <pre>
* 아이디: 123                              * 결제상태:
                                                                        
* 고객명:                                  * 상품 수:
                               
* 전화번호:                                * 상품코드:
                               
* 결제금액:                                * 상품명:
                               
* 결제유형:                                * 주소:
                        </pre>
                    </td>
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
                    <td>
                        <!-- Button to Open the Modal -->
                            <button type="button" class="btn btn-outline-warning btn-sm" style="background-color: rgb(249, 219, 122);" data-toggle="modal" data-target="#change9">
                                <b>변경</b>
                            </button>
                            
                            <!-- The Modal -->
                            <div class="modal" id="change9"  style="width: 400px; height: 300px;  margin-left: 45%; margin-top: 15%;" >
                                <div class="modal-dialog">
                                <div class="modal-content">
                            
                                    <!-- Modal Header -->
                                    <div class="modal-header" style=" width: 100%;  background-color: rgb(249, 219, 122);">
                                    <h6 class="modal-title" style="margin:auto; "> <b>상태변경</b></h6>
                                    
                                    </div>
                            
                                    <!-- Modal body -->
                                    <!-- Modal body -->
                                    
                                    <table style=" width: 100%;  box-sizing: border-box;">
                                        <tr >
                                            <th width="80px" style="background-color: white;">입금상태</th>
                                            <td colspan="3">
                                                <input type="radio" name="deposit" value="X" > 미입금
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <input type="radio" name="deposit" value="O" > 입금완료
                                            </td>
                                        
                                            
                                        </tr>
                                        <tr>
                                            <th style="background-color: white;">배송상태</th>
                                            <td colspan="3">
                                                <input type="radio" name="shipment" value="onStock" > 배송준비중
                                                &nbsp;&nbsp;
                                                <input type="radio" name="shipment" value="shipping" > 배송중
                                                &nbsp;&nbsp;
                                                <input type="radio" name="shipment" value="shipped" > 배송완료
                                            </td>
                                        </tr>
                                </table>
                            
                                    <!-- Modal footer -->
                                    <div class="modal-footer" style="width: 100%; " > 
                                    <button type="button" class="btn btn-danger" data-dismiss="modal" style="background-color: rgb(249, 219, 122); margin-left: 100px;">확인</button> &nbsp;&nbsp;&nbsp;
                                    <button type="button" class="btn btn-danger" data-dismiss="modal" style="margin-right: 100px;">취소</button>
                                    </div>
                            
                                </div>
                                </div>
                            </div>  
                       </td>
                </tr>
                <tr class="nn">
                    <td colspan="9">
                        <pre>
* 아이디: 123                              * 결제상태:
                                                                        
* 고객명:                                  * 상품 수:
                               
* 전화번호:                                * 상품코드:
                               
* 결제금액:                                * 상품명:
                               
* 결제유형:                                * 주소:
                        </pre>
                    </td>
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
                    <td>
                        <!-- Button to Open the Modal -->
                            <button type="button" class="btn btn-outline-warning btn-sm" style="background-color: rgb(249, 219, 122);" data-toggle="modal" data-target="#change10">
                                <b>변경</b>
                            </button>
                            
                            <!-- The Modal -->
                            <div class="modal" id="change10"  style="width: 400px; height: 300px; margin-left: 400px; margin-top: 300px;" >
                                <div class="modal-dialog">
                                <div class="modal-content">
                            
                                    <!-- Modal Header -->
                                    <div class="modal-header" style=" width: 100%;  background-color: rgb(249, 219, 122);">
                                    <h6 class="modal-title" style="margin:auto; "> <b>상태변경</b></h6>
                                    
                                    </div>
                            
                                    <!-- Modal body -->
                                    
                                    <table style=" width: 100%;  box-sizing: border-box;">
                                        <tr >
                                            <th width="80px" style="background-color: white;">입금상태</th>
                                            <td colspan="3">
                                                <input type="radio" name="deposit" value="X" > 미입금
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <input type="radio" name="deposit" value="O" > 입금완료
                                            </td>
                                        
                                            
                                        </tr>
                                        <tr>
                                            <th style="background-color: white;">배송상태</th>
                                            <td colspan="3">
                                                <input type="radio" name="shipment" value="onStock" > 배송준비중
                                                &nbsp;&nbsp;
                                                <input type="radio" name="shipment" value="shipping" > 배송중
                                                &nbsp;&nbsp;
                                                <input type="radio" name="shipment" value="shipped" > 배송완료
                                            </td>
                                        </tr>
                                </table>
                            
                                    <!-- Modal footer -->
                                    <div class="modal-footer" style="width: 100%; " > 
                                    <button type="button" class="btn btn-danger" data-dismiss="modal" style="background-color: rgb(249, 219, 122); margin-left: 100px;">확인</button> &nbsp;&nbsp;&nbsp;
                                    <button type="button" class="btn btn-danger" data-dismiss="modal" style="margin-right: 100px;">취소</button>
                                    </div>
                            
                                </div>
                                </div>
                            </div>  
                       </td>
                </tr>
                <tr class="nn">
                    <td colspan="9">
                        <pre>
* 아이디: 123                              * 결제상태:
                                                                        
* 고객명:                                  * 상품 수:
                               
* 전화번호:                                * 상품코드:
                               
* 결제금액:                                * 상품명:
                               
* 결제유형:                                * 주소:
                        </pre>
                    </td>
                </tr>


                   
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

                
                
                 <div action="noticeSearch">
                    <select name="verseSelect" id="verseSelect" >
                         <option value="payID">아이디</option>
                         <option value="payCode">상품코드</option>
                         <option value="bookTitle">책 제목</option>
                     </select>
                    <input type="text" id="searchText" placeholder="내용을 입력해주세요"> 
                    <input type="button" class="search" id="searchBtn" value="검색">
                        
                 </div>
            
                
                


          
                
            

        </div>
        
    </div>

         <script>
           
            /*
            $(function(){
                $("#yy").on("click",function(){

                   
                     $(this).next().slideDown();
                });
            
            });         
            */
            $(function(){
            $(".payTable").click(function(){

                
                var $pre = $(this).next(); 

                if($pre.css("display") == "none"){
                    $pre.slideDown(); 
                }else {
                    $pre.slideUp(); 
                }
     

            })
        })      
                        

        </script>
    


</body>
</html>