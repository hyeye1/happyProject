<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ì£¼ë¬¸ë´ì­ìì¸ë³´ê¸°íì´ì§</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        .orderDetailsOuter{
            width:1000px;
            height:1500px;
            margin:auto;
        }

        /* ì£¼ë¬¸ìí íì´ë¸ */
        .orderDetailsOuter .odTable{
            border-top:1px solid darkgray;
            border-bottom:1px solid darkgray;
            font-size:14px;
        }
        .orderDetailsOuter .odTable td{
            border-top:1px solid darkgray;
            text-align: center;;
        }
        .orderDetailsOuter .odTable .bookInfo{
            text-align: left;
        }
        .orderDetailsOuter .odButton1{
            color:black;
            background:rgb(44, 149, 253);
            border:none;
            font-size:12px;
        }
        .orderDetailsOuter .odButton2{
            color:black;
            background:floralwhite;
            border:none;
            font-size:12px;
        }
        
        /* ê²°ì ì ë³´ */
        .orderDetailsOuter .paymentInfo{
            width:1000px;
            height:250px;
        }
        .orderDetailsOuter .paymentInfo tr td{
            padding: 30px;
            width:332px;
            border:1px solid lightgray;
        }
        .orderDetailsOuter .paymentInfo .infoTitile{
            text-align: left;
        }
        .orderDetailsOuter .paymentInfo .infoContent{
            float:right;
        }
        .orderDetailsOuter .paymentInfo .firstInfo{
            height:50%;
        }
        .orderDetailsOuter .paymentInfo .secondInfo{
            height:50%;
        }
        .orderDetailsOuter .paymentInfo .firstInfo .ifnoTitle{
            font-size: 18px;
            font-weight: bolder;
        }
        .orderDetailsOuter .paymentInfo .firstInfo .infoContent{
            font-size: 20px;
        }
        .orderDetailsOuter .paymentInfo .secondInfo td{
            font-size: small;
            line-height: 2;
        }

        /* ë°°ì¡ì ë³´ */
        .orderDetailsOuter .dvInfo{
            width:1000px;
            height:200px;
            text-align: center;
            font-size: 14px;
        }
        .orderDetailsOuter .dvInfo td{
            border:1px solid lightgray;
        }
        .orderDetailsOuter .dvInfo .infoTitile{
            width:20%;
            background: rgb(248, 240, 211);
        }
        .orderDetailsOuter .dvInfo .infoContent{
            width:80%;
        }
    </style>
</head>
<body>

    <div class="orderDetailsOuter">
        <br>
        <h2>ì£¼ë¬¸ë´ì­ ìì¸ë³´ê¸°</h2>
        <hr>
        <div style="line-height:0.5;">
            <p>ì£¼ë¬¸ì¼ì <b>2021.03.27</b> </p>
            <p>ì£¼ë¬¸ë²í¸ <b>BOOK01</b>ë <span style="color:rgb(249, 219, 122)">HAPPYë°°ì¡</span> ì¼ë¡ <span style="color:red; font-weight: bolder; font-size:26px;">4ì 13ì¼</span>ì ëì°©í  ìì ìëë¤.</p>
        </div>
        <br><br><br><br>

        <!-- ì£¼ë¬¸ìí í¼ -->
        <form class="orderForm" action="" style="width:1000px;">
            <fieldset style="border:none;">
                <legend><h4 style="font-weight: bolder;">ì£¼ë¬¸ìí(3ì¢3ê°)</h4></legend>
                <br>
                <table class="odTable">
                    <tr>
                        <th colspan="2" style="width:500px; text-align: center;">ìíì ë³´</th>
                        <th style="width:200px; text-align: center; ">ë°°ì¡ë¹</th>
                        <th algin="center" style="width:300px; text-align: center;">ë°°ì¡ìí</th>
                    </tr>
                    <tr>
                        <td style="width:100px; height:100px;">
                            <img src="../ááªáá§á«áá®áá§á«/img/áá¡á¯áá¥áá®áá³_áá­ááµ.png" id="" style="width:80px; height:100px;">
                        </td>
                        <td class="bookInfo">
                            <b>ë¬ë¬êµ¬í¸ ê¿ ë°±íì |ì ë¤ì´ì¼ë§ ìì¥ ê°ë¥í©ëë¤</b> <br>
                            <small>ì´ë¯¸ì</small> <br><br>
                            <span>9,000ì | ìë 1ê°</span>
                        </td>
                        <td>0ì</td>
                        <td>ì£¼ë¬¸ ì ì ì¤</td>
                    </tr>
                    <tr>
                        <td style="width:100px; height:100px;">
                            <img src="../ááªáá§á«áá®áá§á«/img/áá©á«áá´ááµá·ááµáá¡á¨.png" id="" style="width:80px; height:100px;">
                        </td>
                        <td class="bookInfo">
                            <b>ëìì¬ë¦¬í</b> <br>
                            <small>ëª¨ê±´ íì°ì </small> <br><br>
                            <span>13,000ì | ìë 1ê°</span>
                        </td>
                        <td>0ì</td>
                        <td>ì£¼ë¬¸ ì ì ì¤</td>
                    </tr>
                    <tr>
                        <td style="width:100px; height:100px;">
                            <img src="../ááªáá§á«áá®áá§á«/img/áá¢ááµáá©áá¥.png" id="" style="width:80px; height:100px;">
                        </td>
                        <td class="bookInfo">
                            <b>í´ë¦¬í¬í°ìë¦¬ì¦ ê°ì ë²ì­í</b> <br>
                            <small>ì¡°ì¤.k.ë¡¤ë§</small> <br><br>
                            <span>20,000ì | ìë 1ê°</span>
                        </td>
                        <td>0ì</td>
                        <td>ì£¼ë¬¸ ì ì ì¤</td>
                    </tr>
                </table>
            </fieldset>
        </form>

        <br><br>
        <hr>
        <br><br>

        <!-- ê²°ì ì ë³´ íì´ë¸ -->
        <h4 style="font-weight: bolder;">ê²°ì ì ë³´</h4>
        <br>
        <table class="paymentInfo">
            <tr class="firstInfo">
                <td>
                    <span class="ifnoTitle">ì£¼ë¬¸ê¸ì¡</span>
                    <span class="infoContent"><b>42,000ì</b></span>
                </td>
                <td>
                    <span class="ifnoTitle">í ì¸ê¸ì¡</span>
                    <span class="infoContent"><b>0ì</b></span>
                </td>
                <td>
                    <span class="ifnoTitle" style="line-height: 3; color:red;">ê²°ì ê¸ì¡</span>
                    <span class="infoContent"><b style="font-size: 30px; color:red;">42,000ì</b></span>
                </td>
            </tr>
            <tr class="secondInfo">
                <td>
                    <div>
                        <span class="ifnoTitle">ìíê¸ì¡</span>
                        <span class="infoContent">42,000ì</span>
                    </div>
                    <div>
                        <span class="ifnoTitle">ë°°ì¡ë¹</span>
                        <span class="infoContent">0ì</span>
                    </div>
                </td>
                <td>
                    <div>
                        <span class="ifnoTitle">ì¿ í°í ì¸</span>
                        <span class="infoContent">0ì</span>
                    </div>
                    <div>
                        <span class="ifnoTitle">ì ë¦½ê¸ì¬ì©</span>
                        <span class="infoContent">0ì</span>
                    </div>
                </td>
                <td>
                    <div>
                        <span class="ifnoTitle">ì ì©/ì²´í¬ ì¹´ë</span>
                        <span class="infoContent">42,000ì</span>
                    </div>
                    <div style="color:lightgray;">ê²°ì ì¼ì 2021.03.25 18:03</div>
                </td>
            </tr>
        </table>
        
        <br><br><hr><br><br>

        <!-- ë°°ì¡ì ë³´ -->
        <h4 style="font-weight: bolder;">ë°°ì¡ì ë³´</h4>
        <br>
        <table class="dvInfo">
            <tr>
                <td class="infoTitile">ë°ëì¬ë</td>
                <td class="infoContent">ììì</td>
            </tr>
            <tr>
                <td class="infoTitile">í´ëí°</td>
                <td class="infoContent">010-1234-9876</td>
            </tr>
            <tr>
                <td class="infoTitile">ì£¼ì</td>
                <td class="infoContent">ìì¸ì ì©ì°êµ¬ ë¹ì¬íëë¡ 132 1102í¸</td>
            </tr>
            <tr>
                <td class="infoTitile">ë°°ì¡ì ìì²­ì¬í­</td>
                <td class="infoContent">ê²½ë¹ì¤ì ë§¡ê²¨ì£¼ì¸ì^ã^</td>
            </tr>
        </table>

    </div>
    
</body>
</html>