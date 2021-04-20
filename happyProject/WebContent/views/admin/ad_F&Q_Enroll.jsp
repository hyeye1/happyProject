<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>ad_F&QEnroll</title>
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
        .wrap{width:1000px; height:690px; margin: auto; margin-top: 7%; outline:auto} 
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

        form{
            margin-left: 6%;
            
            }
        


       #FEnroll{
        background-color: rgb(249, 219, 122);
            border: none;
            margin-left: 40%;
            color: #505050;
       }

       #FReset{
        background-color:#f3f3f3;
            border: none;
            margin-left: 20px;
            color: #505050;
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
                    <li><button class="menuBtn" id="restBtn" type="button">1대1 상담</button></li>
                    <li><button class="menuBtn" id="couponBtn" type="button" style="background-color: rgb(249, 219, 122);">F&Q</button></li>
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
                F&Q
              
                
            </div>

                
            <div>
                <br><br>
                <form action="noticeEnroll">
                    <table border="1" >
                        <tr>
                            <th width="700px" height="35px" style="background-color: rgb(249, 219, 122);">
                                &nbsp; Q. 결제한도는 얼마입니까?
                            </th>
                        </tr>
                        <tr>
                            <td height="350px" >
                                &nbsp; A. 100만원 입니다.
                            </td>
                        </tr>
                    
                    </table>

                    <br><br>
                    <button id="FEnroll" type="submit" class="btn btn-primary hvr-float" ><b>수정하기</b></button>
                    <button id="FReset" type="reset" class="btn btn-primary hvr-float"><b>뒤로가기</b></button>
                </form>
            </div>

        </div>
        
    </div>