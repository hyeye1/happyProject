<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>상품상세</title>
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
        /* HOME/국내도서 페이지로 바로가기*/
        .bookDetailOuter .category a{
            text-decoration:none;
            color:darkgray;
            font-size:15px;
        }
        /* 책 표지이미지, 책 판매정보 */
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
        /* 화살표 없애기 */
        input[type="number"]::-webkit-outer-spin-button,
        input[type="number"]::-webkit-inner-spin-button{
            -webkit-appearance: none;
            margin:0px;
        }
        /*-- 책소개, 목차, 저자소개, 리뷰 a태그 --*/
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
        
        /* 목차 */
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

        /* 리뷰 */
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

	<%@ include file = "../common/menubar.jsp" %>
	
	<div class="bookDetailOuter">
        <br>

        <!-- 바로가기 카테고리 -->
        <div class="category" align="left">
            <a href="" id="home">HOME</a>
            >
            <a href="" id="localBook">국내도서</a>
        </div>
        <br>
        <!-- 책 제목 -->
        <div class="bookTitle" align="left">
                <h3>달러구트 꿈 백화점 | 잠들어야만 입장 가능합니다 </h3>
                <hr>
        </div>

        <div style="margin-left:200px">
            <!-- 책 표지 이미지 -->
            <div class="bookImg">
                <img src="resources/images/cart/달러구트_표지.png" width="300" height="400">
            </div>
            <!-- 책 정보 -->
            <div class="bookInfo" align="left">
                <br>
                <p><b>이미예</b> 지음</p>
                <p><b>팩토리나인</b></p>
                <p>2020년 8월 8일 출간</p><br>
                <p>정가 : 13,800원</p>
                <p style="display: inline;">판매가 : <h4 style="color:red; font-weight: bolder;; display:inline;">13,800원</h4></p>
                <p>
                    <small>
                        구매금액의 1% 적립해드립니다. (배송완료 후) <br>
                        배송비 3,000원 (20,000원 이상 주문시 무료배송) <br><br>
                    </small>
                </p>
                <div>
                    <b>주문수량 </b> :
                    <input type=button value="-" onClick="javascript:this.div.amount.value--;" class="btn btn-primary btn-sm" style="background:lightgray; border:none;">
                    <input type=number name=amount value=1 min="1" max="10" readonly>
                    <input type=button value="+" onClick="javascript:this.div.amount.value++;" class="btn btn-primary btn-sm" style="background:lightgray; border:none;">
                </div>
            </div>
        </div>

        <br><br>
        
        <!-- 주문하기, 보관하기 버튼 -->
        <div align="center" >
            <button class="btn btn-primary btn-lg" style="background:rgb(249, 219, 122); border:none;">바로구매</button>&nbsp;&nbsp;
            <button class="btn btn-primary btn-lg" style="background:rgb(249, 219, 122); border:none;">장바구니</button>&nbsp;&nbsp;
            <button class="btn btn-primary btn-lg" style="background:rgb(249, 219, 122); border:none;">보관함</button>
        </div>

        <br><br>
        <hr>
        <br>

        <!-- 책소개, 목차, 저자소개, 리뷰 링크 -->
        <div class="bookDetail" align="center">
            <div class="detail"><a href="#infoLink">책소개</a></div>
            <div class="detail"><a href="#contentLink">목차</a></div>
            <div class="detail"><a href="#authorLink">저자소개</a></div>
            <div class="detail"><a href="#reviewLink">리뷰</a></div> 
        </div>
        <br>
        <hr><br><br>

        <!-- 책소개 -->
        <h5 class="detailTitle" id="infoLink">책소개</h5>
        <div class="link">
            <p>
            여기는 잠들어야만 입장할 수 있는 ‘달러구트 꿈 백화점’입니다 잠들어야만 입장할 수 있는 독특한 마을. 
            그곳에 들어온 잠든 손님들에게 가장 인기 있는 곳은, 온갖 꿈을 한데 모아 판매하는 ‘달러구트의 꿈 백화점’이다. 
            긴 잠을 자는 사람들은 물론이고, 짧은 낮잠을 자는 사람들과 동물들로 매일매일 대성황을 이룬다. 
            범상치 않은 혈통의 주인장 ‘달러구트’, 그리고 그의 최측근에서 일하게 된 신참 직원 ‘페니’, 꿈을 만드는 제작자 ‘아가넵 코코’, 그리고 베일에 둘러싸인 비고 마이어스…등이 등장한다. 
            『달러구트 꿈 백화점』은 ‘무의식에서만 존재하는 꿈을 정말 사고 팔 수 있을까?’라는 기발한 질문에 답을 찾아가며, 꿈을 만드는 사람, 파는 사람, 사는 사람의 비밀스런 에피소드를 담고 있는 판타지 소설이다. 
            텀블벅 펀딩 1812% 달성, 전자책 출간 즉시 베스트셀러 1위를 3주간 기록하며 수많은 독자들의 요청으로 종이책으로 출간하게 되었다.
            </p>
        </div>
        
        <!-- 목차 -->
        <h5  class="detailTitle" id="contentLink">목차</h5>
        <div class="link">
            <p>
            [달러구트 꿈 백화점] <br>

            작가의 말 <br>
            프롤로그. 3번째 제자의 유서 깊은 가게 <br>
            1. 주문하신 꿈은 매진입니다 <br>
            2. 한밤의 연애지침서 <br>
            3. 미래를 보여 드립니다. <br>
            4. 환불 요청 대소동 <br>
            5. 노 쇼는 사양합니다. <br>
            6. 이 달의 베스트셀러 <br>
            7. 비틀즈와 벤젠고리 <br>
            8. ‘타인의 삶(체험판)’ 출시 <br>
            9. 예약하신 꿈이 도착하였습니다 <br>
            에필로그 1. 비고 마이어스의 면접 <br>
            에필로그 2. 스피도의 완벽한 하루 <br>
            </p>
        </div>

        <!-- 저자소개 -->
        <h5 class="detailTitle" id="authorLink">저자소개</h5>
        <div class="link">
            <p>
            저 : 이미예 
            부산에서 태어났다. 부산대에서 재료공학을 공부하고 반도체 엔지니어로 일했다. 
            클라우드 펀딩 프로젝트 「주문하신 꿈은 매진입니다」 (『달러구트 꿈 백화점』)으로 첫 소설을 발표해 10~20대에게 열렬한 지지를 받아 성공적으로 펀딩을 종료하였다.
            </p>
        </div>

        <!-- 리뷰작성하기 -->
        <h5 class="detailTitle" id="reviewLink">리뷰</h5>
        <form action="">
            <div class="inputReview">
                <div class="reviewBt" align="right">
                	<% if(loginUser == null){ %>
                    <!-- 로그인 전 -->
                    <button type="submit" onclick="review();" class="btn btn-primary" style="width:80px; background:rgb(249, 219, 122); color:black; border:none; margin-top:8px; margin-right:8px;">등록</button>
                	<% }else { %>
                	<!-- 로그인 후 -->
                	 <button type="submit" id="inputReview" class="btn btn-primary" style="width:80px; background:rgb(249, 219, 122); color:black; border:none; margin-top:8px; margin-right:8px;">등록</button>
               		<% } %>
                </div>
                <div class="reviewContent">
                    <textarea name="content" id="reviewContent" placeholder="작품과 무관한 광고,욕설, 및 비방,청소년보호정책에 위배되는 내용은 사전 동의 없이 비공개 처리 될 수 있습니다." required></textarea>
                </div>
            </div>
        </form>
        <br><br><br><br>


        <!-- 리뷰 없을 때 list -->
        <h5 class="detailTitle">전체</h5>
        <div class="reviewArea">
            <h6 style="color:rgb(249, 219, 122); margin:15px;">최신순</h6>
            <hr>
            <p align="center" style="font-size:16px;">회원님께서 첫 리뷰의 주인공이 되어주세요.</p>
        </div>
        <br><br>
        <!-- 리뷰 있을 때 list -->
        <h5 class="detailTitle">전체</h5>
        <div class="reviewArea" id="reviewList">
            <h6 style="color:rgb(249, 219, 122); margin:15px;">최신순</h6>
            <hr>
            <table>
                <thead>
                    <tr>
                        <th>user1</th>
                        <td>진짜 재밌었어요~!</td>
                        <td>2020-07-20</td>
                    </tr>
                    <tr>
                        <th>user2</th>
                        <td>추천합니다</td>
                        <td>2020-07-01</td>
                    </tr>
                    <tr>
                        <th>user3</th>
                        <td>친구가 추천해줘서 봤는데 별로에요ㅠㅠ핵노잼</td>
                        <td>2020-06-18</td>
                    </tr>

                </thead>
                <tbody>

                </tbody>
            </table>
        </div>

        <!-- 비회원일 때 리뷰 등록 클릭시 뜨는 MODAL -->
        <div class="modal" id="inputReview">
            
        </div>


    </div>

    <!-- 주문수량 : -/+ 버튼 클릭시 증감,증가효과 주기 -->
    
    <!-- 아무것도 입력하지 않고 등록버튼 클릭시 뜨는 알람메시지-->
    <script>
        function review(){
            alert("작성하신 리뷰 내용이 없습니다.");
        }
    </script>
</body>
</html>