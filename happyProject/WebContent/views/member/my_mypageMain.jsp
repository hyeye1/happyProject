<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>마이페이지 메인</title>
    <link rel="stylesheet" href="resources/css/mypageMain.css">
      
</head>  
<body>
    <%@ include file = "../common/menubar.jsp" %>
   
   <%
		
		String memName = loginUser.getMemName();
	
	%>
   <!--전체-->
   <div class="outer"> 
    <div class="path">홈>마이페이지</div>
<section>
    <div class="rightside">
        <div class="infobox">
            <div class="infoDetail" >
                <div class=detail_box>
                    <div id="userIcon"> 
                        <img src="resources/images/my_user.png" alt="" width="60px" height="40px"><br><br>
                    </div>
    
                    <div id="welcome"><b><%= loginUser.getMemName() %>님</b><strong> 반갑습니다!</strong><br></div>
                    <div id="level">등급: 일반</div>
                </div><br><br>
                <div class="detail_box2">
                    <button class="btn" id="modify_btn" onclick="location.href='<%=contextPath%>/myPage.info'">회원정보수정</button>
                </div>
   
                <div id="detail_box3">
                    <table class="user_info_list" summary="쿠폰, 통합포인트, 예치금, 교보캐시, 교보e캐시, e-교환권 이 포함되어있는 표입니다.">
                        <colgroup>
                            <col width="88" />
                            <col width="89" span="5" />
                        </colgroup>
                        <tbody>
                        <tr>
                            <td class="first">
                                <div class="tit"><a href=>쿠폰</a></div>
                                <div class="info"><a href=><strong>0</strong></a>장</div>
                            </td>
                            <td>
                                <div class="tit"><a href=>적립금</a></div>
                                <div class="info"><a href=><strong>1000</strong></a>원</div>
                            </td>
                            <td>
                                <div class="tit"><a href=>보관함</a></div>
                                <div class="info"><a href=><strong>2</strong></a>건</div>
                            </td>
                            <td>
                                <div class="tit"><a href=>my해피배송</a></div>
                                <div class="info"><a href=><strong>1</strong></a>건</div>
                            </td>
                        </tr>
                        </tbody>
                    </table>

                </div>   
            </div>

        </div>
        <h2 class> 나의 주문 현황</h2>
        <div class="order_status">
            <div class="orderbox">
               
                <div class="order_box">
                    <div id="tracking">
                        <tr>
                            <td>주문접수</td><span>(0)></span>
                            <td>결제완료</td><span>(0)></span>
                            <td>상품준비중</td><span>(1)></span>
                            <td>배송중</td><span>(0)></span>
                            <td>배송완료</td><span>(0)></span>
                        </tr>
                        </div>
                    </div>	
                </div>
            </div>

            <h2> 최근 주문 내역</h2 >
        <div class="order_recent">
            <table class="recent_list" border="1" style="border-collapse: collapse;">
                <thead>
                <tr>
                    <th>주문일</th>
                    <th>주문번호</th>
                    <th>주문상품</th>
                    <th>주문상태</th>
                </tr>
                </thead>
                <tr>
                    <td>2021-03-25</td>
                    <td>123-45678</td>
                    <td>취업비법서</td>
                    <td>배송완료<br><button class="btn">상세조회</button></td>
                </tr>
                <tr>
                     <td>2021-03-26</td>
                     <td>123-456789</td>
                     <td>아몬드</td>
                     <td>배송중<br><button class="btn">상세조회</button></td>

                </tr>
            </table>
			
        </div>
    </div>
 </section>

<aside>
   
  <%@ include file = "../common/sideBar.jsp" %>
</aside>
  

</div>

</body>
</html>