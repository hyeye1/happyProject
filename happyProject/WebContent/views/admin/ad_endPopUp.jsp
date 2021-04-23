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
    <meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
    <title>Document</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

    <script type="text/javascript">
        function fn_Close(){
        	window.close();
            opender.document.location.href="http://localhost:8880/happyProject";
            
        }
    
    </script>
</head>

<style>
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
            display: ;
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
            top: 0; left: 0; z-index: 999; display: 
        }
        .show-popup_End{
            display:block !important;
        }
    </style>

<body>
    <div class="wrap">
    
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
                    <button type="button" onClick="fn_close();" class="btn btn-info btn-sm"  style="margin-left: 3px; width:55px; border: none; background-color: rgb(249, 219, 122);">종료</button>
                    &nbsp;&nbsp;
                    
                    <button type="button" id="cancleEndBtn"  class="btn btn-info btn-sm" style="width: 55px; border: none; background-color: #e0e0e0;">취소</button>
                </div>    
            </div>    
        </div>
    </div>
 
</body>
</html>