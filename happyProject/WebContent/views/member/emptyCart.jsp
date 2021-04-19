<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ë¹ì¥ë°êµ¬ë</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        .emptyCartOuter{
            width:1000px;
            height:700px;
            margin:auto;
        }
        .emptyCartOuter .text{
            float:left;
        }
        
        /* ì£¼ë¬¸ ë¨ê³ */
        .emptyCartOuter .step{
            text-align: right;
        }
        .emptyCartOuter .showStep{
            border:none;
            border-radius: 20px;
            padding:10px;
            background: rgb(250, 211, 81);
        }
        .emptyCartOuter .step1{
            background: rgb(248, 229, 165);
        }

        /* ë¹ ì¹´í¸ ì°½ */
        .emptyCartOuter .emptyCart{
            border:1px solid darkgray;
            width:680px;
            height:500px;
            float:left;
            margin-top: 20px;
        }
        .emptyCartOuter .emptyCart p{
            color:darkgray;
        }
        .emptyCartOuter #cartImg{
            margin-top:120px;
        }

        /* ì¨ë¨¸ë¦¬ ì°½ */
        .emptyCartOuter .summaryBox{
            border:1px solid darkgray;
            width:300px;
            height:200px;
            display:table-cell;
            float:right;
            margin-top:20px;
        }
        .emptyCartOuter .priceInfo{
            height:65%;
        }
        .emptyCartOuter .priceInfo table{
            margin:auto;
            width:250px;
            height:100%;
            color:grey;
            line-height:1px;
            letter-spacing: -1px;
        }
        .emptyCartOuter .priceInfo .price{
            color:black;
        }
        .emptyCartOuter .totalInfo{
            height:35%;
            background:rgb(252, 233, 170);
        }
        .emptyCartOuter .totalInfo table{
            margin:auto;
            width:250px;
            height:100%;
            font-size:18px
        }
        /* ë²í¼ */
        .emptyCartOuter #selectBuy{
            width:300px;
            height:60px;
            float:right;
            margin-top:10px;
            background: lightgray;
            border:none;
            font-size:16px;
            font-weight: bolder;
        }

    </style>
</head>
<body>

    
    <div class="emptyCartOuter">
        <br>

        <!-- ì¥ë°êµ¬ëíì´í, ë¨ê³-->
        <div>
            <div class="text">
                <h2 style="display:inline;">ì¥ë°êµ¬ë</h2>
            </div>
            <div class="step">
                <button class="showStep btn btn-primary" disabled>01 ì¥ë°êµ¬ë ></button>
                <button class="showStep step1 btn btn-primary" disabled>02 ì£¼ë¬¸íê¸° ></button>
                <button class="showStep step1 btn btn-primary" disabled>03 ê²°ì ìë£ </button>
            </div>
        </div>
        
        <hr>

        <div>
            <!-- ë¹ ì¥ë°êµ¬ë ì°½ -->
            <div class="emptyCart" align="center">
                <img id="cartImg" src="../ááªáá§á«áá®áá§á«/img/áá¡á¼áá¡áá®ááµ.png" alt="">
                <p>ì¥ë°êµ¬ëì ë´ê¸´ ì±ì´ ììµëë¤.</p>
            </div>

            <!-- ë¹ ì¥ë°êµ¬ë ì¨ë¨¸ë¦¬ ì°½ -->
            <div class="summaryBox">
                <div class="priceInfo">
                    <table>
                        <tr>
                            <td colspan="2">
                                <img src="../ááªáá§á«áá®áá§á«/img/checked.png" style="width:20px;"> 
                                <label for="">0ê¶ì ì ííì¨ìµëë¤.</label> 
                            </td>
                        </tr>
                        <tr>
                            <td>ì´ ìí ê¸ì¡</td>
                            <td class="price" style="text-align: right;">0ì</td>
                        </tr>
                        <tr>
                            <td>í ì¸ ê¸ì¡</td>
                            <td class="price" style="text-align: right;">0ì</td>
                        </tr>
                    </table>
                </div>
                <div class="totalInfo">
                    <table>
                        <tr>
                            <td>í©ê³</td>
                            <td style="text-align: right;">0ì</td>
                        </tr>
                    </table>
                </div>
            </div>
            <button id="selectBuy" class="btn btn-warning btn-lg" data-toggle="modal" data-target="#clickButton">ì í êµ¬ë§¤íê¸°</button>
        </div>

        <!-- The Modal -->
        <div class="modal" id="clickButton">
            <div class="modal-dialog">
            <div class="modal-content">
            
                <!-- Modal Header -->
                <div class="modal-body" align="center">
                <h6 class="modal-title" style="text-align: center;"><br><br> ì ííì  ëìê° ììµëë¤ <br><br> </h6>
                </div>
            
                <!-- Modal footer -->
                <div class="modal-footer">
                <button type="button" class="btn btn-warning btn-lg" data-dismiss="modal" style="width:500px; background: rgb(249, 219, 122); border:none">OK</button>
                </div>
                
            </div>
            </div>
        </div>

    </div>


    <br><br><br><br><br><br>
</body>
</html>