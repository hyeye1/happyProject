<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>ad_inquiry</title>
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
        .wrap{width:1000px; height:690px; margin: auto;  margin-top: 7%; outline: auto; }
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
            align
            
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

    
        #choice_btn{
            padding:11px;
            
        }
        
        #deleteVerse{
            background-color:#f3f3f3;
            border: none;
        }


        table{
            text-align: center;
            border: 1px solid gray;
            margin-left: 20px;
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

        tbody>tr{
            cursor: pointer;
        }

        .listWrap{
            
            width: 100%;
            height: 100%;
            margin: auto;
        }

       
        .listWrap div{
            width: 100%;
            border: 1px solid gray
        }
       
        #listHead{ height: 10%; background-color: rgb(249, 219, 122);}
        #listContent{ height: 75%; background-color: white;}
        #listFoot{ height: 15%; background-color: white;}
 
        #listHead>div, #listContent>div{
        height: 100%;
        float: left;
        width: 50%;}

        #listHead>div{
            text-align: center;
            padding-top: 10px;
            
        }

        textarea{
            width: 100%;
            height: 100%;
        }

        #listFoot>button{
            margin-top: 10px;
            width: 100px;
            height: 40px;
            
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
                고객센터
            </div>
            
            <div id="title_Btn">
                <ul id="btns">
                    <li><button class="menuBtn" id="memberBtn" type="button" >공지사항</button></li>
                    <li><button class="menuBtn" id="restBtn" type="button" style="background-color: rgb(249, 219, 122);">1대1 상담</button></li>
                    <li><button class="menuBtn" id="couponBtn" type="button">F&Q</button></li>
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
                1대1 상담
              
                
            </div>

            

                <div id="choice_btn">
                    
                   
                    <a href="" id="deleteVerse" class="btn btn-primary hvr-float"><b >선택삭제</b></a>
                    
                 </div>

                 <table border="1">
                    <tr>
                        <th width="30"></th>
                        <th width="50">글번호</th>
                        <th width="250">제목</th>
                        <th width="200">작성일</th>
                        <th width="125">아이디</th>
                        <th width="110">진행단계</th>
                    </tr>
                    <tr data-toggle="modal" data-target="#FList1">
                       <td><input type="checkbox"></td>
                       <td></td>
                       <td></td>
                       <td></td>
                       <td></td>
                       <td></td>
                       <div class="modal" id="FList1" style=" width: 600px; height: 450px;  margin-left: 40%; margin-top: 12%;">
                            
                            
                             <div class="listWrap">
                                <div id="listHead">
                                    <div id="listHead_1"> <b>[korea01]님의 문의내용</b></div>
                                    <div id="listHead_2"><b>답변내용</b></div>
                                </div>
                                <div id="listContent">
                                    <div id="listContent_1">
                                        <textarea name="" id=""></textarea>
                                    </div>
                                    <div id="listContent_2">
                                        <textarea name="" id=""></textarea>
                                    </div>
                                </div>
                                <div id="listFoot" >
                                    
                                    <button type="button" class="btn btn-primary hvr-float" data-dismiss="modal" style="background-color: rgb(249, 219, 122); margin-left: 180px;">확인</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    
                                    <button type="button" class="btn btn-primary hvr-float" data-dismiss="modal" style="background-color: lightgray; ">창닫기</button>
                                    
                                </div>
                            </div>
                        
                               
                       </div>
                        

                   </tr>
                   <tr>
                    <td><input type="checkbox"></td>
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
                </tr>
                <tr>
                    <td><input type="checkbox"></td>
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
                </tr>
                <tr>
                    <td><input type="checkbox"></td>
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
                </tr>
                <tr>
                    <td><input type="checkbox"></td>
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
                </tr>
                <tr>
                    <td><input type="checkbox"></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
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
                <br>
                
                <form action="noticeSearch">
                    <select name="verseSelect" id="verseSelect" >
                        <option value="verseID">아이디</option>
                        <option value="verseTitle">제목</option>
                    </select>
                    <input type="text" id="searchText" placeholder="내용을 입력해주세요"> 
                    <input type="button" class="search" id="searchBtn" value="검색">
                    
                </form>

                
                


            </div>
                
            

        </div>
        
    </div>
    


</body>
</html>