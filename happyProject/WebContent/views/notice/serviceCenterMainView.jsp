<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.notice.model.vo.Faq, java.util.ArrayList, com.kh.common.model.vo.PageInfo, com.kh.notice.model.vo.Notice, com.kh.member.model.vo.Member"%>
<% 
   Faq f = (Faq)request.getAttribute("f");
   PageInfo pi = (PageInfo)request.getAttribute("pi");
   ArrayList<Notice> list = (ArrayList<Notice>)request.getAttribute("list");
%>    

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>고객센터</title>
     <link rel="stylesheet" href="resources/css/serviceCenterView.css">

</head>
<body>
	<!-- 상단메뉴바 -->
	
	<%@ include file = "../common/menubar.jsp" %>
 
	<script>
		var msg = "<%= session.getAttribute("alertMsg") %>"; // 알람창으로 출력할 메세지
		// var msg = "메세지" / "null";
		
		if(msg !="null"){
			alert(msg);
			// 알람창 띄워준 후에 session에 담긴 메세지 지워야됨 (안그러면 메뉴바 포함된 매 페이지 열때마다 alert 계속 뜸)
			<% session.removeAttribute("alertMsg"); %>
		}
	</script>


   
   

    <div class="outer">
	<section>
	<div class="outer2">
        <span id="text1">고객센터</span><hr>
        <span>&nbsp;해피북스데이</span>
        <span id="text2">온라인 고객센터</span> 입니다.<br><br>

        <div class="faq">
            <form action="" id="faqSearch" method="GET">
                <a href="<%=contextPath%>/list.faq?currentPage=1"><img src="resources/images/faq.png" width="100px" height="40"></a>
            </form>
            <span id="top5Title">&nbsp;자주 묻는 질문들</span>
            <span></span>
                <div class="top5">
                    <button class="question" id="que-1"><span id="que-1-toggle"></span>
                    <span>Q. 회원가입/탈퇴는 어떻게 하나요?</span></button>
                    <div class="answer" id="ans-1">A. 회원가입과 회원탈퇴 절차는 다음과 같습니다. 회원가입 화면상의 [회원가입]을 클릭한 후, 약관동의 -> 회원구분 및 본인인증 -> 고객정보입력 -> 가입완료의 단계를 거치면 회원가입이 가능합니다. 회원탈퇴는 [마이페이지] 접속 후 정보내역 → 회원탈퇴에서 정보 확인, 탈퇴사유와 비밀번호를 입력 후 회원 탈퇴가 가능합니다.
                    </div>
                  
                    <button class="question" id="que-2"><span id="que-1-toggle"></span>
                    <span>Q. 주문 후 취소도 가능한가요?</span></button>
                    <div class="answer" id="ans-2">A. 홈페이지 [주문/배송조회]에서 [입금확인중] 단계에서 직접 주문취소 하실 수 있습니다.</div>
                  
                    <button class="question" id="que-3"><span id="que-1-toggle"></span>
                    <span>Q. 주문도서 중 일부 도서만 취소하고 싶어요!</span></button>
                    <div class="answer" id="ans-3">A. 주문도서 중 일부취소는 불가능하며, 전체 주문취소 후 재 주문을 해 주셔야 합니다.</div>
               
                    <button class="question" id="que-4"><span id="que-1-toggle"></span>
                    <span>Q. 회원정보 변경은 어떻게 하나요?</span></button>
                    <div class="answer" id="ans-4">A. 홈페이지 로그인 후 상단 [마이페이지] 선택하시면 왼쪽 [내 정보 수정]에서 변경이 가능합니다.</div>
                  
                    <button class="question" id="que-5"><span id="que-1-toggle"></span>
                    <span>Q. 카트란 무엇이며 어떤 기능이 있나요?</span></button>
                    <div class="answer" id="ans-5">A. 카트란?고객님이 구매할 상품을 담아놓는 곳입니다. (장바구니 개념과 유사합니다.)</div>
                </div>
        </div>
    
                <div class="question1">
                    <a href="<%=contextPath%>/list.q?currentPage=1" ><img src="resources/images/question.png" width="120px" height="50"></a>
                     <a href="<%=contextPath%>/list.q?currentPage=1" id="qbtn">1:1문의하기</a><br><br>
                    <div class="questionBox">
                        <span id="qtext1">1:1 문의로 빠른 답변 받기</span><br><br>
                        <span id="qtext2">해피북스데이에 대한 모든 궁금증은 1:1 문의하기로 부담없이 확인하세요.</span>
                    </div>
                </div>
             
                    <br>

            <div class="notice">
                <a href="<%=contextPath%>/list.no?currentPage=1"><img src="resources/images/notice.png" width="130px" height="50"></a><br>
                <table class="noticeList" ">
                    <thead style="background-color: rgb(249, 219, 122);">
                        <tr id="noticeNew">
                        	
                            <th width="500">글제목</th>
                            <th width="100">작성일</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% if(list.isEmpty()) { %>
	                <tr>
	                    <td colspan="2">공지사항이 없습니다.</td>
	                </tr>
                <%} else { %>
            	<% for(Notice n:list) { %>
	                <tr>
	                    
	                    <td><%= n.getNoTitle() %></td>
	                    <td><%= n.getNoDate() %></td>
	                </tr>
	            <%} %>
             <%} %>
                    </tbody>
                </table>
            
    
            </div>
    <script>
            const items = document.querySelectorAll('.question');
          
            function openCloseAnswer() {
              const answerId = this.id.replace('que', 'ans');
          
              if(document.getElementById(answerId).style.display === 'block') {
                document.getElementById(answerId).style.display = 'none';
                document.getElementById(this.id + '-toggle');
              } else {
                document.getElementById(answerId).style.display = 'block';
                document.getElementById(this.id + '-toggle').textContent;
              }
            }
          
            items.forEach(item => item.addEventListener('click', openCloseAnswer));
          </script>
         </div>
    </section>  
    <aside>
	<%@ include file = "../common/sideBar.jsp" %>
	</aside>      
    </div>

         
</body>
</html>