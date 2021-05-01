<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.member.model.vo.MyAddress"%>

   
 <%@ include file = "../common/menubar.jsp" %>
 	
 	<%
	MyAddress selectMyAddress = (MyAddress)session.getAttribute("selectMyAddress");
	
		int adNo     	 = selectMyAddress.getAdNo();
		String adPost    = selectMyAddress.getAdPost();
		String adRoad    = selectMyAddress.getAdRoad();
		String adDetail  = selectMyAddress.getAdDetail();
		
		//member
		String memAddress = loginUser.getMemAddress();
		String memName = loginUser.getMemName();
	%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 배송지 </title>
	<link rel="stylesheet" href="resources/css/MyAddress.css">
</head>
<body>
<script>
 		var msg = "<%= session.getAttribute("alertMsg") %>"; // 알람창으로 출력할 메세지
 		// var msg = "메세지" / "null";
 		
 		if(msg != "null"){
 			alert(msg);
 			<% session.removeAttribute("alertMsg"); %>
 		}
 </script>

 	
	    <div class="outer">
        <div class="path"> 홈>마이페이지>나의 배송지 관리</div>     
        <section>
        <h2>나의배송지</h2><hr>
        <div class="myAddress">
        
        <!-- 배송지추가버튼 -->    
        <button type="button" id="adBtn" onclick="sample6_execDaumPostcode()">배송지 추가</button><br>
            <!-- 추가 표 -->
           <form action="<%= request.getContextPath() %>/myaddress.me"  method="post" class="myAdList">
            <table id="myaddress_table" border="1" style="border-collapse: collapse;">
                <tr style="background-color: lightgray;">
                    <th><input type="checkbox"></th>
                    <th>수령인</th>
                    <th>주소</th>
                    <th>수정/삭제</th>
                </tr>
                <tr>
                    <td><input type="checkbox"></td>
                    <td><%= loginUser.getMemName() %></td>
                    <td><%= loginUser.getMemAddress() %></td>
                    <td>
                        <button id="modiBtn">수정</button><br>
                        <button id="delBtn">삭제</button>
                    </td>
                </tr>
                <tr>
                    <td><input type="checkbox"></td>
                    <td><%= selectMyAddress.getAdName() %></td>  <!--사용자가 입력한 받는이 -->
                    <td><!-- 사용자가 추가한 배송지 -->
                    <input type="hidden" name="adNo" value= "<%= adNo %>" >
                    <input type="text" style="width: 300px;" name="adPost" value="<%= adPost %>">
                    <input type="text" style="width: 300px;" name="adRoad" value="<%= adRoad %>">
                    <input type="text" style="width: 300px;" name="adDetail" value="<%= adDetail %>">
                    
                    </td>
                    <td>
                        <button id="modiBtn">수정</button><br>
                        <button id="delBtn">삭제</button>
                    </td>
                </tr>
            </table>
           </form>
        </div>
        
        <script>
	        	// 주소검색
			 function sample6_execDaumPostcode() {
			        new daum.Postcode({
			            oncomplete: function(data) {
			                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
			
			                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
			                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
			                var addr = ''; // 주소 변수
			                var extraAddr = ''; // 참고항목 변수
			
			                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
			                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
			                    addr = data.roadAddress;
			                } else { // 사용자가 지번 주소를 선택했을 경우(J)
			                    addr = data.jibunAddress;
			                }
			
			                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
			                if(data.userSelectedType === 'R'){
			                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
			                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
			                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
			                        extraAddr += data.bname;
			                    }
			                    // 건물명이 있고, 공동주택일 경우 추가한다.
			                    if(data.buildingName !== '' && data.apartment === 'Y'){
			                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
			                    }
			                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
			                    if(extraAddr !== ''){
			                        extraAddr = ' (' + extraAddr + ')';
			                    }
			                    // 조합된 참고항목을 해당 필드에 넣는다.
			                    document.getElementById("sample6_extraAddress").value = extraAddr;
			                
			                } else {
			                    document.getElementById("sample6_extraAddress").value = '';
			                }
			
			                // 우편번호와 주소 정보를 해당 필드에 넣는다.
			                document.getElementById('sample6_postcode').value = data.zonecode;
			                document.getElementById("sample6_address").value = addr;
			             
			                document.getElementById("sample6_detailAddress").focus();
			            }
			        }).open();
			    }
	
	            $(function(){    
	                $("#adBtn").on("click",function(){
		                var Y = $(".adList").is(":text");
			                            
		                if(Y){
		                	$(".addressInput").show();
		                }else{
			                $(".addressInput").hide();
			            }
	            	});
	             });
	             
	          </script>
        
        
    <!-- 사이드바 -->
        
        </section>
        <aside>
        	 <%@ include file = "../common/sideBar.jsp" %>
        </aside>
    </div>
    

</body>
</html>