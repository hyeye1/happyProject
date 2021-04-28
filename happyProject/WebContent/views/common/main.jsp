<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <style>
            .mainOuter{
                background-color: white;
                margin: auto;
                width: 1000px;
                height: 1850px;
                }
            .mainOuter p{cursor: default;}
        
            .todayPick{
                background-color: rgb(224, 224, 224);
                height: 350px;
            }
            .mainOuter li{display: table-cell;}
            .mainOuter .coverImg{
                width: 120px;
                height: 160px;
                border-radius: 3px;
                box-shadow: 2px 0px 20px -2px gray;
                border: 1px solid darkgray;
            }
            .mainOuter .coverImg:hover{
                width: 195px;
                height: 260px;
                margin-top: -50px;
                margin-bottom: -48px;
                margin-left: -36.5px;
                margin-right: -36.5px;
                position: relative;
                box-shadow: 0px 0px 50px 10px rgba(0, 0, 0, 0.565);
                border: none;
            }
            .todayPick li a{
                text-decoration:none;
                color:black;
                font-size:12px;
                font-weight:bold;
            }
            .todayPick li p{color: gray; font-size: 10px;}
            .todayBk{margin-right: 35px; margin-left: -13px; margin-top: 10px;}
            .bookName{width: 130px;}
    
            .hash{height: 300px;}
            .hashNow p{
                display: table-cell;
                float: left;
                margin-top: -45px;
                margin-left: 25px;
                margin-right: 50px;
                color: lightgray;
                font-size: 150px;
                font-weight: 350;
            }
            #hashNowText{margin-top: 47px; color: black;}
            #hashSearch{
                float: left; 
                margin-top: 148px; 
                margin-left: -338px; 
                width: 170px; 
                height: 30px; 
                color:rgb(241, 196, 15); 
                border-radius: 3px; 
                border: 1px solid darkgray; 
                font-size: 23px;
                
            }
            .mainOuter input::placeholder {
                color:rgb(241, 196, 15); 
            }
            #hashSearchBtn{
                float: left;
                margin-left: -208px;
                margin-top: 148px;
                height: 30px;
                background-color: rgb(255, 226, 132); 
                border: 1px solid darkgray;
                border-radius: 3px;
                color: gray; 
                cursor: pointer;
            }
            #hashBack{
                width: 300px;
                height: 300px;
                border-radius: 80px;
                background-color: rgba(249, 219, 122, 0.94); 
                float: right;
                margin-right: 100px;
                margin-top: -80px;
                }
            .hashClick {
                background-color: white;
                width: 80px;
                height: 35px;
                border-radius: 80px;
            }
            .hashClick a{
                height: 35px;
                width: 80px;
                color: gray; 
                font-size: 13px; 
                line-height: 2.7; 
                font-weight: 500;
                display: block; 
                text-align: center;
                margin-right: 3px;
                text-decoration: none;
            }
            .hashClick:hover{
                background-color: rgba(249, 219, 122, 0.94);
            }
            .hashClick a:hover{
                font-size: 29px;
                font-weight: 900;
                color: white;
                line-height: 140%;
            }
            .hashBackLi{float: left;}
            #fam{margin-top: 42px; margin-left: 40px;}
            #death{margin-top: 63px; margin-left: 60px;}
            #heal{margin-top: 25px; margin-left: 83px;}
            #happy{margin-top: 63px; margin-left: 35px;}
            #relation{margin-top: 2px; margin-left: 25px;}
            #travel{margin-top: 35px; margin-left: 40px;}
            .weeklyBest{
                clear: both; 
                width: 100%;
                height: 900px;
            }     
            .weeklyBest ul {display: inline; margin: 30px;}
            .weeklyBest li {display:table-row; font-weight: 700;}
            .weeklyBest a{text-decoration: none; color: black;}
            .weeklyTop1 p {margin-left: 20px;}
            .weeklyTop1 .author {margin-left: 0px; }
            .rankNum{ 
                float: left; 
                font-weight: 700; 
                font-size: 20px; 
                margin-top: 0px;
                }
            .title{
                font-size: 13px; 
                float: left; 
                margin-top: 25px;
                }
            .weeklyTops .title{font-size: 11px;}
            .weeklyBest .author{
                font-weight: 500; 
                font-size: 10px; 
                float: left;
                margin-top: 0px; 
                margin-bottom: 40px; 
                margin-right: 70px; 
                color:gray;
                }
            .weeklyTops .author{font-size: 9px;}
            .coverImg2{
                width: 60px;
                height: 84px;
                border-radius: 3px;
                box-shadow: 2px 0px 20px -2px gray;
                border: 1px solid darkgray;
                float: left;
                margin-bottom: 40px;
            }
            .tops{ float: left; margin-left: 10px; }
        </style>
    </head>
    <body>
		
        <div class="mainOuter">
    
            <div class="todayPick" align="center">
                <!-- 오늘의추천 -->
                <br>
                <h2>실시간 추천</h2>
                    <ul>
                        <li>
                            <div id="todayBk1" class="todayBk">
                                <a class="detailUrl" href="<%= contextPath %>/bkDetails.bk">
                                    <img class="coverImg" src="" >
                                    <div class="bookName"></div>
                                </a>
                                <p class="author"></p>
                            </div>
                        </li>
                        <li>
                            <div id="todayBk2" class="todayBk">
                                <a class="detailUrl" href="<%= contextPath %>/bkDetails.bk">
                                    <img class="coverImg" src="">
                                    <div class="bookName"></div>
                                </a>
                                <p class="author"></p>
                            </div>
                        </li>
                        <li>
                            <div id="todayBk3" class="todayBk">
								<a class="detailUrl" href="<%= contextPath %>/bkDetails.bk">
                                    <img class="coverImg" src="">
                                    <div class="bookName"></div>
                                </a>
                                <p class="author"></p>
                            </div>
                        </li>
                        <li>
                            <div id="todayBk4" class="todayBk">
                                <a class="detailUrl" href="<%= contextPath %>/bkDetails.bk">
                                    <img class="coverImg" src="">
                                    <div class="bookName"></div>
                                </a>
                                <p class="author"></p>
                            </div>
                        </li>
                        <li>
                            <div id="todayBk5" class="todayBk">
                                <a class="detailUrl" href="<%= contextPath %>/bkDetails.bk">
                                    <img class="coverImg" src="">
                                    <div class="bookName"></div>
                                </a>
                                <p class="author"></p>
                            </div>
                        </li>
                        <li>
                            <div id="todayBk6" class="todayBk"">
                                <a class="detailUrl" href="<%= contextPath %>/bkDetails.bk">
                                    <img class="coverImg" src="">
                                    <div class="bookName"></div>
                                </a>
                                <p class="author"></p>
                            </div>
                        </li>
                    </ul>
                    
            </div>
          
            <script>
            // 오늘의 추천
            $(function(){
            	
            	for (var i=1; i<=6; i++) {
            		(function(i) {
            			
            			$.ajax({
		            		 url:"<%= contextPath %>/mList.bk",
		            		 method:"GET",
		            		 success: function(data) {
		            			 var id = '#todayBk' + i;
		            			 $(id + ' .bookName').text(data[0].bkName);
		            			 $(id + ' .author').text(data[0].author);
		            			 $(id + ' .coverImg').attr('src', data[0].bkMainImg);
		            			 $(id + ' .detailUrl').attr('href', '<%= contextPath %>/bkDetails.bk?bookNo=' + data[0].bookNo);
 		            		 }
		            	 });
            			
            		})(i);
            	}
            });  	
            </script>
            
    	
            <br><br><br>
    
            <div class="hash">
                <div class="hashNow" >
                    <h2 style="margin-left: 100px;" ><em>#해쉬태그를 통한 책 추천</em></h2>
                    
                    <p style="margin-left: 90px;">[ </p>
                    <p id="hashNowText" style="font-size: 35px; font-weight: 600;">지금,&nbsp; 여기</p>
                    <p> ]</p>
                    <form action="hashtag.li"  method="GET" >
	                    <input type="search"id="hashSearch" placeholder=" #" name="hashkey">
	                    <button id="hashSearchBtn">검색</button>
                    </form>
                </div>
                
                <div id="hashBack">
                    <!-- hover입히기 -->
                    <li class="hashBackLi">
                        <div class="hashClick" id="fam">
                            <a href="hashtag.li?hashkey=가족">#가족</a>
                        </div>
                    </li>
                    <li class="hashBackLi">
                        <div class="hashClick" id="death">
                            <a href="hashtag.li?hashkey=죽음">#죽음</a>
                        </div>
                    </li>                    
                    <li class="hashBackLi">
                        <div class="hashClick" id="heal">
                            <a href="hashtag.li?hashkey=위로">#위로</a>
                        </div>
                    </li>
                    <li class="hashBackLi">
                        <div class="hashClick" id="happy">
                            <a href="hashtag.li?hashkey=행복">#행복</a>
                        </div>
                    </li>
                    <li class="hashBackLi">
                        <div class="hashClick" id="relation">
                            <a href="hashtag.li?hashkey=관계">#관계</a>
                        </div>
                    </li>
                    <li class="hashBackLi">
                        <div class="hashClick" id="travel">
                            <a href="hashtag.li?hashkey=여행">#여행</a>
                        </div>
                    </li>
                </div>     
            </div>
            
            <h2 align="center" style="clear: both;" >주간 베스트</h2>
            <br><br>
            <div class="weeklyBest" align="center">
                <ul id="total5"> 
                    <li>전체 TOP 5 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <a style="font-size: 8px; color: gray;"  href="">더보기</a>
                    </li>
                    
                    <li>    <!-- 전체 1위 -->
                        <br>
                        <div class="weeklyTop1" >
                            <br>
                            <input class="coverImg" type="image" src="resources/books/poem/그런사람또없습니다_표지.jpg" alt="도서이미지-그런 사람 또 없습니다">
                            
                            <p>
                                <p class="rankNum">1</p>
                                <a class="title" href="">그런 사람 또 없습니다</a>
                            </p>
                            <p class="author">원태연</p>
                        </div>
                    </li>
    
                    <li>
                        <div class="weeklyTops" >
                            <br>
                            <input class="coverImg2" type="image" src="resources/books/poem/그런사람또없습니다_표지.jpg" alt="도서이미지-그런 사람 또 없습니다">
                            
                            <div class="tops">
                                <p>
                                    <p class="rankNum">2</p>
                                    <a class="title" href="">그런 사람 또 없습니다</a>
                                </p>
                                <p class="author">원태연</p>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="weeklyTops" >
                            <br>
                            <input class="coverImg2" type="image" src="resources/books/poem/그런사람또없습니다_표지.jpg" alt="도서이미지-그런 사람 또 없습니다">
                            
                            <div class="tops">
                                <p>
                                    <p class="rankNum">2</p>
                                    <a class="title" href="">그런 사람 또 없습니다</a>
                                </p>
                                <p class="author">원태연</p>
                            </div>
                    </li>
                    <li>
                        <div class="weeklyTops" >
                            <br>
                            <input class="coverImg2" type="image" src="resources/books/poem/그런사람또없습니다_표지.jpg" alt="도서이미지-그런 사람 또 없습니다">
                            
                            <div class="tops">
                                <p>
                                    <p class="rankNum">2</p>
                                    <a class="title" href="">그런 사람 또 없습니다</a>
                                </p>
                                <p class="author">원태연</p>
                            </div>
                    </li>
                    <li>
                        <div class="weeklyTops" >
                            <br>
                            <input class="coverImg2" type="image" src="resources/books/poem/그런사람또없습니다_표지.jpg" alt="도서이미지-그런 사람 또 없습니다">
                            
                            <div class="tops">
                                <p>
                                    <p class="rankNum">2</p>
                                    <a class="title" href="">그런 사람 또 없습니다</a>
                                </p>
                                <p class="author">원태연</p>
                            </div>
                    </li>
                </ul>
    
                <ul id="novel5">
                    <li>소설 TOP 5 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <a style="font-size: 8px; color: gray;"  href="">더보기</a>
                    </li>
                    
                    <li>    <!-- 소설 1위 -->
                        <br>
                        <div class="weeklyTop1" >
                            <br>
                            <input class="coverImg" type="image" src="resources/books/novel/달러구트.jpg" alt="도서이미지-달러구트 꿈 백화점">
                            <p>
                                <p class="rankNum">1</p>
                                <a class="title" href="">달러구트 꿈 백화점</a>
                            </p>
                            <p class="author">이미예</p>
                        </div>
                    </li>
    
                    <li>
                        <div class="weeklyTops" >
                            <br>
                            <input class="coverImg2" type="image" src="resources/books/poem/그런사람또없습니다_표지.jpg" alt="도서이미지-그런 사람 또 없습니다">
                            <div class="tops">
                                <p>
                                    <p class="rankNum">2</p>
                                    <a class="title" href="">그런 사람 또 없습니다</a>
                                </p>
                                <p class="author">원태연</p>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="weeklyTops" >
                            <br>
                            <input class="coverImg2" type="image" src="resources/books/poem/그런사람또없습니다_표지.jpg" alt="도서이미지-그런 사람 또 없습니다">
                            
                            <div class="tops">
                                <p>
                                    <p class="rankNum">2</p>
                                    <a class="title" href="">그런 사람 또 없습니다</a>
                                </p>
                                <p class="author">원태연</p>
                            </div>
                    </li>
                    <li>
                        <div class="weeklyTops" >
                            <br>
                            <input class="coverImg2" type="image" src="resources/books/poem/그런사람또없습니다_표지.jpg" alt="도서이미지-그런 사람 또 없습니다">
                            
                            <div class="tops">
                                <p>
                                    <p class="rankNum">2</p>
                                    <a class="title" href="">그런 사람 또 없습니다</a>
                                </p>
                                <p class="author">원태연</p>
                            </div>
                    </li>
                    <li>                    <div class="weeklyTops" >
                        <br>
                        <input class="coverImg2" type="image" src="resources/books/poem/그런사람또없습니다_표지.jpg" alt="도서이미지-그런 사람 또 없습니다">
                        
                        <div class="tops">
                            <p>
                                <p class="rankNum">2</p>
                                <a class="title" href="">그런 사람 또 없습니다</a>
                            </p>
                            <p class="author">원태연</p>
                        </div>
                    </li>
                </ul>
    
                <ul id="eco15">
                    <li>경제 TOP 5 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <a style="font-size: 8px; color: gray;"  href="">더보기</a></li>
                    
                    <li>    <!-- 경제 1위 -->
                        <br>
                        <div class="weeklyTop1" >
                            <br>
                            <input class="coverImg" type="image" src="resources/books/economy/02_돈의심리학.jpg" alt="도서이미지-돈의심리학">
                            <p>
                                <p class="rankNum">1</p>
                                <a class="title" href="">돈의 심리학</a>
                            </p>
                            <p class="author">모건 하우절</p>
                        </div>
                    </li>
    
                    <li>
                        <div class="weeklyTops" >
                            <br>
                            <input class="coverImg2" type="image" src="resources/books/poem/그런사람또없습니다_표지.jpg" alt="도서이미지-그런 사람 또 없습니다">
                            <div class="tops">
                                <p>
                                    <p class="rankNum">2</p>
                                    <a class="title" href="">그런 사람 또 없습니다</a>
                                </p>
                                <p class="author">원태연</p>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="weeklyTops" >
                            <br>
                            <input class="coverImg2" type="image" src="resources/books/poem/그런사람또없습니다_표지.jpg" alt="도서이미지-그런 사람 또 없습니다">
                            
                            <div class="tops">
                                <p>
                                    <p class="rankNum">2</p>
                                    <a class="title" href="">그런 사람 또 없습니다</a>
                                </p>
                                <p class="author">원태연</p>
                            </div>
                    </li>
                    <li>
                        <div class="weeklyTops" >
                            <br>
                            <input class="coverImg2" type="image" src="resources/books/poem/그런사람또없습니다_표지.jpg" alt="도서이미지-그런 사람 또 없습니다">
                            
                            <div class="tops">
                                <p>
                                    <p class="rankNum">2</p>
                                    <a class="title" href="">그런 사람 또 없습니다</a>
                                </p>
                                <p class="author">원태연</p>
                            </div>
                    </li>
                    <li>                    <div class="weeklyTops" >
                        <br>
                        <input class="coverImg2" type="image" src="resources/books/poem/그런사람또없습니다_표지.jpg" alt="도서이미지-그런 사람 또 없습니다">
                        
                        <div class="tops">
                            <p>
                                <p class="rankNum">2</p>
                                <a class="title" href="">그런 사람 또 없습니다</a>
                            </p>
                            <p class="author">원태연</p>
                        </div>
                    </li>
                </ul>
            </div>
    
    
    
    
    
    
    
    
    
        </div> <!-- outer div-->
    </body>
    </html>