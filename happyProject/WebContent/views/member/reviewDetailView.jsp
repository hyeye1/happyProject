<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .outer{
            margin-top: 50px;
            margin-left: 250px;
            margin-bottom: 20px;
            border: 1px solid white;
            width:800px;
    }
    #text1{font-size:x-large; font-weight: bold;}
    #text3{margin-right: 50px;}
    #btn{
            width: 70px;
            height: 30px;
            font-size: small;
            font-weight: bold;
            color: gray;
            border: 1px solid lightgrey;
            background-color: rgb(249, 219, 122);
            border-radius: 4px;
            padding: 5px;
            cursor: pointer;
        }
    #btn:hover{background-color: rgb(249, 219, 122); color:white;}
    .button{margin-right: 300px;}
    *{margin: 0; padding: 0;}
    .rate {
        float: left;
        height: 100px;
        padding: 0 10px;
        margin-left: 110px;
    }
    .rate:not(:checked) > input {
        position:absolute;
        top:-9999px;
    }
    .rate:not(:checked) > label {
        float:right;
        width:1em;
        overflow:hidden;
        white-space:nowrap;
        cursor:pointer;
        font-size:50px;
        color:rgba(233, 227, 214, 0.705);
    }
    .rate:not(:checked) > label:before {
        content: '★ ';
    }
    .rate > input:checked ~ label {
        color: rgb(249, 219, 122);    
    }
    .rate:not(:checked) > label:hover,
    .rate:not(:checked) > label:hover ~ label {
        color: rgb(249, 219, 122);  
    }
    #text3{font-size: large; font-weight: bold; text-align: center; margin-left: 60px;}
</style>

</head>
<body>
	<div class="outer">
        <span id="text1">리뷰</span>
        <span id="text1"style="color:rgb(241, 196, 15)">상세보기</span>
        <hr>
        <form form name="reviewform" class="reviewform" method="post" action="/save">
            <input type="hidden" name="nno" value=""><br>
            <table align="center" border="1">
                <tr>
                    <td colspan="3" width="400">
                        <div class="wrap">
                                <input type="hidden" name="rate" id="rate" value="0"/>
                                <div class="rate">
                                    <input type="radio" id="star5" name="rate" value="5" />
                                    <label for="star5" title="text">5 stars</label>
                                    <input type="radio" id="star4" name="rate" value="4" />
                                    <label for="star4" title="text">4 stars</label>
                                    <input type="radio" id="star3" name="rate" value="3" />
                                    <label for="star3" title="text">3 stars</label>
                                    <input type="radio" id="star2" name="rate" value="2" />
                                    <label for="star2" title="text">2 stars</label>
                                    <input type="radio" id="star1" name="rate" value="1" />
                                    <label for="star1" title="text">1 star</label><br>
                                    <span id="text3">내가 평가한 별점</span>
                                </div>
                                  <div class="review_contents">
                                    <textarea cols="70" rows="10" class="review_textarea" style="resize: none;" required>너무 재밌어요~~!!^ㅂ^  너무 재밌어요~~!!^ㅂ^ 너무 재밌어요~~!!^ㅂ^ 
                                    </textarea> 
                                 </div>
                        </div>
                        <br>
                    </td>
                </tr>
            </table>
            <br>
            <div class="button" align="center">
                <button id="btn" type="button">목록가기</button>
                <button id="btn" type="submit">수정하기</button>
                <button id="btn" type="reset">삭제하기</button>
            </div>
        </form>

    </div>
        
    
</body>
</html>