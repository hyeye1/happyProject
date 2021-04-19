<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ìíìì¸</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        .bookDetailOuter{
            width:1000px;
            height:4000px;
            margin:auto;
        }
        /* HOME/êµ­ë´ëì íì´ì§ë¡ ë°ë¡ê°ê¸°*/
        .bookDetailOuter .category a{
            text-decoration:none;
            color:darkgray;
            font-size:15px;
        }
        /* ì± íì§ì´ë¯¸ì§, ì± íë§¤ì ë³´ */
        .bookDetailOuter .bookImg{
            width:300px;
            height:400px;
            float:left;
            margin-left:30px;
        }
        .bookDetailOuter .bookInfo{
            width:300px;
            height:400px;
            display:table-cell;
        }
        /* íì´í ìì ê¸° */
        input[type="number"]::-webkit-outer-spin-button,
        input[type="number"]::-webkit-inner-spin-button{
            -webkit-appearance: none;
            margin:0px;
        }
        /*-- ì±ìê°, ëª©ì°¨, ì ììê°, ë¦¬ë·° aíê·¸ --*/
        .bookDetailOuter .detail{
            width:180px;
            padding:20px 20px 20px 20px;
            display:table-cell;
        }
        .bookDetailOuter .detail a{
            text-decoration:none;
            color:black;
            font-size:30px;
            font-weight: bold;
            display:block;
            width:100%;
            height:100%;
        }
        .bookDetailOuter .detail a:hover{background: rgb(249, 219, 122);}
        
        /* ëª©ì°¨ */
        .bookDetailOuter .detailTitle{
            width:700px;
            color:rgb(55, 90, 194);
            margin-left:150px;
        }
        .bookDetailOuter .link{
            width:700px;
            margin-left:150px;
            font-size:16px;
            color:dimgray
        }
        .bookDetailOuter .link p{
            margin-bottom:200px;
        }

        /* ë¦¬ë·° */
        .bookDetailOuter .inputReview{
            border:1px solid black;
            width:700px;
            height:300px;
            margin:auto;
        }
        .bookDetailOuter .inputReview .reviewBt{
            border:none;
            height:18%;
        }
        .bookDetailOuter .inputReview .reviewContent{
            border:none;
            height:82%;
            background:rgb(235, 235, 235);
        }
        .bookDetailOuter .reviewDetail{
            border:1px solid black;
            width:700px;
            height:400px;
            margin-left:150px;
        }
        .bookDetailOuter .reviewBt{
            border:1px solid black;
            height:15%;
        }
        .bookDetailOuter .reviewContent{
            border:1px solid black;
            height:85%;
        }
        .bookDetailOuter #reviewContent{
            width:100%; 
            height:100%; 
            background:transparent; 
            resize: none; 
            border:none; 
            font-size: 14px;
            padding:10px;
        }
        .bookDetailOuter .reviewArea{
            border-top:1px solid black;
            border-bottom: 1px solid black;
            margin:auto;
            width:700px;
            height:300px;
        }
        .bookDetailOuter .reviewArea table{
            margin:auto;
            width:600px;
            height:300px;
        }
        .bookDetailOuter .reviewArea>table tr:hover{
            background-color:wheat;
        }
        
    </style>
</head>
<body>

    <div class="bookDetailOuter">
        <br>

        <!-- ë°ë¡ê°ê¸° ì¹´íê³ ë¦¬ -->
        <div class="category" align="left">
            <a href="" id="home">HOME</a>
            >
            <a href="" id="localBook">êµ­ë´ëì</a>
        </div>
        <br>
        <!-- ì± ì ëª© -->
        <div class="bookTitle" align="left">
                <h3>ë¬ë¬êµ¬í¸ ê¿ ë°±íì  | ì ë¤ì´ì¼ë§ ìì¥ ê°ë¥í©ëë¤ </h3>
                <hr>
        </div>

        <div style="margin-left:200px">
            <!-- ì± íì§ ì´ë¯¸ì§ -->
            <div class="bookImg">
                <img src="../ááªáá§á«áá®áá§á«/img/áá¡á¯áá¥áá®áá³_áá­ááµ.png" width="300" height="400">
            </div>
            <!-- ì± ì ë³´ -->
            <div class="bookInfo" align="left">
                <br>
                <p><b>ì´ë¯¸ì</b> ì§ì</p>
                <p><b>í©í ë¦¬ëì¸</b></p>
                <p>2020ë 8ì 8ì¼ ì¶ê°</p><br>
                <p>ì ê° : 13,800ì</p>
                <p style="display: inline;">íë§¤ê° : <h4 style="color:red; font-weight: bolder;; display:inline;">13,800ì</h4></p>
                <p>
                    <small>
                        êµ¬ë§¤ê¸ì¡ì 1% ì ë¦½í´ëë¦½ëë¤. (ë°°ì¡ìë£ í) <br>
                        ë°°ì¡ë¹ 3,000ì (20,000ì ì´ì ì£¼ë¬¸ì ë¬´ë£ë°°ì¡) <br><br>
                    </small>
                </p>
                <div>
                    <b>ì£¼ë¬¸ìë </b> :
                    <input type=button value="-" onClick="javascript:this.div.amount.value--;" class="btn btn-primary btn-sm" style="background:lightgray; border:none;">
                    <input type=number name=amount value=1 min="1" max="10" readonly>
                    <input type=button value="+" onClick="javascript:this.div.amount.value++;" class="btn btn-primary btn-sm" style="background:lightgray; border:none;">
                </div>
            </div>
        </div>

        <br><br>
        
        <!-- ì£¼ë¬¸íê¸°, ë³´ê´íê¸° ë²í¼ -->
        <div align="center" >
            <button class="btn btn-primary btn-lg" style="background:rgb(249, 219, 122); border:none;">ë°ë¡êµ¬ë§¤</button>&nbsp;&nbsp;
            <button class="btn btn-primary btn-lg" style="background:rgb(249, 219, 122); border:none;">ì¥ë°êµ¬ë</button>&nbsp;&nbsp;
            <button class="btn btn-primary btn-lg" style="background:rgb(249, 219, 122); border:none;">ë³´ê´í¨</button>
        </div>

        <br><br>
        <hr>
        <br>

        <!-- ì±ìê°, ëª©ì°¨, ì ììê°, ë¦¬ë·° ë§í¬ -->
        <div class="bookDetail" align="center">
            <div class="detail"><a href="#infoLink">ì±ìê°</a></div>
            <div class="detail"><a href="#contentLink">ëª©ì°¨</a></div>
            <div class="detail"><a href="#authorLink">ì ììê°</a></div>
            <div class="detail"><a href="#reviewLink">ë¦¬ë·°</a></div> 
        </div>
        <br>
        <hr><br><br>

        <!-- ì±ìê° -->
        <h5 class="detailTitle" id="infoLink">ì±ìê°</h5>
        <div class="link">
            <p>
            ì¬ê¸°ë ì ë¤ì´ì¼ë§ ìì¥í  ì ìë âë¬ë¬êµ¬í¸ ê¿ ë°±íì âìëë¤ ì ë¤ì´ì¼ë§ ìì¥í  ì ìë ëí¹í ë§ì. 
            ê·¸ê³³ì ë¤ì´ì¨ ì ë  ìëë¤ìê² ê°ì¥ ì¸ê¸° ìë ê³³ì, ì¨ê° ê¿ì íë° ëª¨ì íë§¤íë âë¬ë¬êµ¬í¸ì ê¿ ë°±íì âì´ë¤. 
            ê¸´ ì ì ìë ì¬ëë¤ì ë¬¼ë¡ ì´ê³ , ì§§ì ë®ì ì ìë ì¬ëë¤ê³¼ ëë¬¼ë¤ë¡ ë§¤ì¼ë§¤ì¼ ëì±í©ì ì´ë£¬ë¤. 
            ë²ìì¹ ìì ííµì ì£¼ì¸ì¥ âë¬ë¬êµ¬í¸â, ê·¸ë¦¬ê³  ê·¸ì ìµì¸¡ê·¼ìì ì¼íê² ë ì ì°¸ ì§ì âíëâ, ê¿ì ë§ëë ì ìì âìê°ëµ ì½ì½â, ê·¸ë¦¬ê³  ë² ì¼ì ëë¬ì¸ì¸ ë¹ê³  ë§ì´ì´ì¤â¦ë±ì´ ë±ì¥íë¤. 
            ãë¬ë¬êµ¬í¸ ê¿ ë°±íì ãì âë¬´ììììë§ ì¡´ì¬íë ê¿ì ì ë§ ì¬ê³  í ì ììê¹?âë¼ë ê¸°ë°í ì§ë¬¸ì ëµì ì°¾ìê°ë©°, ê¿ì ë§ëë ì¬ë, íë ì¬ë, ì¬ë ì¬ëì ë¹ë°ì¤ë° ìí¼ìëë¥¼ ë´ê³  ìë ííì§ ìì¤ì´ë¤. 
            íë¸ë² íë© 1812% ë¬ì±, ì ìì± ì¶ê° ì¦ì ë² ì¤í¸ìë¬ 1ìë¥¼ 3ì£¼ê° ê¸°ë¡íë©° ìë§ì ëìë¤ì ìì²­ì¼ë¡ ì¢ì´ì±ì¼ë¡ ì¶ê°íê² ëìë¤.
            </p>
        </div>
        
        <!-- ëª©ì°¨ -->
        <h5  class="detailTitle" id="contentLink">ëª©ì°¨</h5>
        <div class="link">
            <p>
            [ë¬ë¬êµ¬í¸ ê¿ ë°±íì ] <br>

            ìê°ì ë§ <br>
            íë¡¤ë¡ê·¸. 3ë²ì§¸ ì ìì ì ì ê¹ì ê°ê² <br>
            1. ì£¼ë¬¸íì  ê¿ì ë§¤ì§ìëë¤ <br>
            2. íë°¤ì ì°ì ì§ì¹¨ì <br>
            3. ë¯¸ëë¥¼ ë³´ì¬ ëë¦½ëë¤. <br>
            4. íë¶ ìì²­ ëìë <br>
            5. ë¸ ì¼ë ì¬ìí©ëë¤. <br>
            6. ì´ ë¬ì ë² ì¤í¸ìë¬ <br>
            7. ë¹íì¦ì ë²¤ì  ê³ ë¦¬ <br>
            8. âíì¸ì ì¶(ì²´íí)â ì¶ì <br>
            9. ìì½íì  ê¿ì´ ëì°©íììµëë¤ <br>
            ìíë¡ê·¸ 1. ë¹ê³  ë§ì´ì´ì¤ì ë©´ì  <br>
            ìíë¡ê·¸ 2. ì¤í¼ëì ìë²½í íë£¨ <br>
            </p>
        </div>

        <!-- ì ììê° -->
        <h5 class="detailTitle" id="authorLink">ì ììê°</h5>
        <div class="link">
            <p>
            ì  : ì´ë¯¸ì 
            ë¶ì°ìì íì´ë¬ë¤. ë¶ì°ëìì ì¬ë£ê³µíì ê³µë¶íê³  ë°ëì²´ ìì§ëì´ë¡ ì¼íë¤. 
            í´ë¼ì°ë íë© íë¡ì í¸ ãì£¼ë¬¸íì  ê¿ì ë§¤ì§ìëë¤ã (ãë¬ë¬êµ¬í¸ ê¿ ë°±íì ã)ì¼ë¡ ì²« ìì¤ì ë°íí´ 10~20ëìê² ì´ë ¬í ì§ì§ë¥¼ ë°ì ì±ê³µì ì¼ë¡ íë©ì ì¢ë£íìë¤.
            </p>
        </div>

        <!-- ë¦¬ë·°ìì±íê¸° -->
        <h5 class="detailTitle" id="reviewLink">ë¦¬ë·°</h5>
        <form action="">
            <div class="inputReview">
                <div class="reviewBt" align="right">
                    <!-- ë¡ê·¸ì¸ ì  -->
                    <!-- ë¡ê·¸ì¸ í -->
                    <button type="submit" id="inputReview" onclick="review();" class="btn btn-primary" style="width:80px; background:rgb(249, 219, 122); color:black; border:none; margin-top:8px; margin-right:8px;">ë±ë¡</button>
                </div>
                <div class="reviewContent">
                    <textarea name="content" id="reviewContent" placeholder="ìíê³¼ ë¬´ê´í ê´ê³ ,ìì¤, ë° ë¹ë°©,ì²­ìëë³´í¸ì ì±ì ìë°°ëë ë´ì©ì ì¬ì  ëì ìì´ ë¹ê³µê° ì²ë¦¬ ë  ì ììµëë¤." required></textarea>
                </div>
            </div>
        </form>
        <br><br><br><br>


        <!-- ë¦¬ë·° ìì ë list -->
        <h5 class="detailTitle">ì ì²´</h5>
        <div class="reviewArea">
            <h6 style="color:rgb(249, 219, 122); margin:15px;">ìµì ì</h6>
            <hr>
            <p align="center" style="font-size:16px;">íìëê»ì ì²« ë¦¬ë·°ì ì£¼ì¸ê³µì´ ëì´ì£¼ì¸ì.</p>
        </div>
        <br><br>
        <!-- ë¦¬ë·° ìì ë list -->
        <h5 class="detailTitle">ì ì²´</h5>
        <div class="reviewArea" id="reviewList">
            <h6 style="color:rgb(249, 219, 122); margin:15px;">ìµì ì</h6>
            <hr>
            <table>
                <thead>
                    <tr>
                        <th>user1</th>
                        <td>ì§ì§ ì¬ë°ìì´ì~!</td>
                        <td>2020-07-20</td>
                    </tr>
                    <tr>
                        <th>user2</th>
                        <td>ì¶ì²í©ëë¤</td>
                        <td>2020-07-01</td>
                    </tr>
                    <tr>
                        <th>user3</th>
                        <td>ì¹êµ¬ê° ì¶ì²í´ì¤ì ë´¤ëë° ë³ë¡ììã ã íµë¸ì¼</td>
                        <td>2020-06-18</td>
                    </tr>

                </thead>
                <tbody>

                </tbody>
            </table>
        </div>

        <!-- ë¹íìì¼ ë ë¦¬ë·° ë±ë¡ í´ë¦­ì ë¨ë MODAL -->
        <div class="modal" id="inputReview">
            
        </div>


    </div>

    <!-- ì£¼ë¬¸ìë : -/+ ë²í¼ í´ë¦­ì ì¦ê°,ì¦ê°í¨ê³¼ ì£¼ê¸° -->
    
    <!-- ìë¬´ê²ë ìë ¥íì§ ìê³  ë±ë¡ë²í¼ í´ë¦­ì ë¨ë ìëë©ìì§-->
    <script>
        function review(){
            alert("ìì±íì  ë¦¬ë·° ë´ì©ì´ ììµëë¤.");
        }
    </script>

    
   
    
</body>
</html>