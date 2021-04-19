<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ê²°ì ìë£íì´ì§</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        .orderCompleteOuter{
            width:1000px;
            height:600px;
            margin:auto;
        }

        /* ì£¼ë¬¸ ë¨ê³ */
        .orderCompleteOuter .text{
            float:left;
        }
        .orderCompleteOuter .step{
            text-align: right;
        }
        .orderCompleteOuter .showStep{
            border:none;
            border-radius: 20px;
            padding:10px;
            background: rgb(250, 211, 81);
        }
        .orderCompleteOuter .step1{
            background: rgb(248, 229, 165);
        }

        /* ì£¼ë¬¸ë´ì­ ìì¸ë³´ê¸° ë²í¼ */
        #detailButton{
            background:rgb(249, 219, 122);
            width:300px;
            height:40px;
            font-size:15px;
            border:0px;
        }
    </style>
</head>
<body>

    <div class="orderCompleteOuter">
        <br>
        <!-- ê²°ì ìë£ íì´í, ë¨ê³-->
        <div>
            <div class="text">
                <h2 style="display:inline;">ê²°ì ìë£</h2>
            </div>
            <div class="step">
                <button class="showStep step1 btn btn-primary" disabled>01 ì¥ë°êµ¬ë ></button>
                <button class="showStep step1 btn btn-primary" disabled>02 ì£¼ë¬¸íê¸° ></button>
                <button class="showStep btn btn-primary" disabled>03 ê²°ì ìë£ </button>
            </div>
        </div>
        <hr>
        <br><br>
        
        <div align="center">
            <br><br>
            <img src="../SemiProject_WorkSpace/img/check.png" alt="">
            <h2>ì£¼ë¬¸ì´ ì±ê³µì ì¼ë¡ ì ìëììµëë¤.</h2>
            <br>
            <div>
                <span>ì£¼ë¬´ë²í¸(BOOK01)</span>
                <span>|</span>
                <span>ììì ê³ ê°ë ê°ì¬í©ëë¤.</span>
            </div>
            <p>
                ì£¼ë¬¸ ë° ë°°ì¡ì¡°íë <a href="">ë§ì´íì´ì§</a> > <a href="">ì£¼ë¬¸/ë°°ì¡ì¡°í</a> ìì íì¸ ê°ë¥í©ëë¤.
            </p>
            <br>
            <button id="detailButton" class="btn btn-warning btn-lg">ì£¼ë¬¸ë´ì­ ìì¸ë³´ê¸°</button>
        </div>

        


    </div>


    
</body>
</html>