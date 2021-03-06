<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.member.model.vo.Member, com.kh.member.model.vo.Coupon, com.kh.order.model.vo.Cart
    							,java.text.*"%>
<%
	Member loginUser = (Member)session.getAttribute("loginUser");
	
	
	int total = (Integer)request.getAttribute("total");
	

	ArrayList<Coupon> cou = (ArrayList<Coupon>)request.getAttribute("cou");
	ArrayList<Cart> ca = (ArrayList<Cart>)request.getAttribute("ca");
	int totalAmount = (Integer)request.getAttribute("totalAmount");
	Coupon cp = (Coupon)request.getAttribute("cp");
	
	String contextPath = request.getContextPath(); 
	
%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>주문하기</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
	<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    
    <style>
        .orderOuter{
            width:1000px;
            height:2000px;
            margin:auto;
        }
        
        /* 주문 단계 */
        .orderOuter .text{
            float:left;
        }
        .orderOuter .step{
            text-align: right;
        }
        .orderOuter .showStep{
            border:none;
            border-radius: 20px;
            padding:10px;
            background: rgb(250, 211, 81);
        }
        .orderOuter .step1{
            background: rgb(248, 229, 165);
        }


        /* 배송정보 테이블 */
        .orderOuter .dvForm table{
            width:100%;
        }
        .orderOuter .dvForm th{
            text-align: left;
            font-size:13px;
            font-weight:normal;
            margin-top:0px;
        }
        .orderOuter .dvForm td{
            border:none;
            font-size:14px;
        }
        .orderOuter .dvForm input{
            font-size:14px;
            border:1px solid darkgray;
            height:30px;
        }
        .orderOuter .dvForm textarea{
            border:1px solid darkgray;
        }
        .orderOuter .dvForm .dvButton{
            border:none;
            background: rgb(249, 219, 122);
            width:90px;
            height:28px;
            margin-bottom: 4px;
        }
        /* 화살표 없애기 */
        input[type="number"]::-webkit-outer-spin-button,
        input[type="number"]::-webkit-inner-spin-button{
            -webkit-appearance: none;
            margin:0px;
        }

        /* 주문상품 테이블 */
        .orderOuter .odTable{
            border-top:1px solid darkgray;
            border-bottom:1px solid darkgray;
            font-size:14px;
        }
        .orderOuter .odTable td{
            border-top:1px solid darkgray;
        }
        .orderOuter .odButton1{
            color:black;
            background:rgb(44, 149, 253);
            border:none;
            font-size:12px;
        }
        .orderOuter .odButton2{
            color:black;
            background:floralwhite;
            border:none;
            font-size:12px;
        }

        /* 쿠폰/적립금 테이블 */
        .orderOuter .coupon{
            width:600px;
            height:100px;
            text-align: center;
        }
        .orderOuter table tr td{
            border-bottom: 1px solid darkgray;
        }

        .orderOuter table #couponBtn{
            background:rgb(249, 219, 122);
            border-radius: 10px;
            
            padding:13px 15px 13px 15px;
            font-weight: bolder;
        }
        .useAll{
            background:whitesmoke;
            border:none;
        }


         /* 결제 방법 */
         .selectedWay{
            border:2px solid black;
            width:600px;
            height:60px;
            cursor:pointer;
            }
        .selectedWay .ShowSelectedWay{
            font-size:18px;
            font-weight:bolder;
            padding: 15px 25px 0px 25px;
            display:table-cell;
        }
        .payways{
            margin-top:5px;
            margin-left:13px;
            display:none;
        }
        .payways tr td{
            border:1px solid darkgray;
            width:190px;
            height:60px;;
        }
        .payways td:hover{
            border:2px solid black;
        }
        .payways a{
            text-align:center;
            text-decoration:none;
            color:black;
            font-size:13px;
            display:block;
        }



        /* 사이드바 */
        .remote{
       		top:100px;
            border:1px solid black;
            border-top-width:2px;
            width:350px;
            position:fixed;
            margin-left:630px;
            font-size:14px;
        }
        .remote .info{
            padding:15px 20px 0px 20px;
            border-bottom: 1px solid lightgrey;
        }
        /* 가격정보 */
        .remote ul{
            list-style:none;
            -webkit-padding-start: 0px;
        }
        .remote .list_price li{
            text-align:right;
            margin-top: 10px;
        }
        .remote .list_price li .label{
            float:left;
        }
        /* 최종 결제금액 */
        .remote .list_price li.total .label{
            margin-top: 9px;
        }
        .remote .list_price li.total .price{
            color:red;
        }
        .remote .list_price li.total .price .number{
            font-size: 25px;
            font-weight: bolder;
        }
        /* 주문내역 확인 */      
        .remote .orderAgree .confirmBox{
            position:relative;
            padding:15px 15px 5px 15px;
            background: #fbfbfb;
            border-bottom: 1px solid lightgrey;
        }
        .remote .confrimContent{
            padding:20px 20px 0px 20px;
        }
        .remote .orderAgree .confirmBox .checkbox{
            width:20px;
            height:20px;
            vertical-align: middle;
            margin-right:5px;
        }
        .remote .finalBt{
            padding: 15px 20px;
            position:relative;
        }
        .remote .pay{
            width:300px;
            height:60px;
            border-radius: 0px;
            border:none;
            background: rgb(249, 219, 122);
            color:white;
            font-weight: bolder;
        }
        .remote .goBackToCart{
            width:300px;
            height:40px;
            padding:0px;
            border-radius: 0px;
            border:lightgrey;
            background:lightgoldenrodyellow;
            color:grey;
            font-weight: bolder;
        }
    </style>
</head>
<body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<%		
		String userId = loginUser.getMemId();	   
		String userName = loginUser.getMemName();
		String phone = (loginUser.getMemPhone() == null) ? "" : loginUser.getMemPhone();	
		String email = (loginUser.getEmail() == null) ? "" : loginUser.getEmail();
		String address = (loginUser.getMemAddress() == null) ? "" : loginUser.getMemAddress();
		
						
	%>


	
	 <div class="orderOuter">
        <br><br>
            <!-- 주문하기 타이틀, 단계-->
            <div>
                <div class="text">
                    <h2 style="display:inline;">주문하기</h2>
                </div>
                <div class="step">
                    <button class="showStep step1 btn btn-primary" disabled>01 장바구니 ></button>
                    <button class="showStep btn btn-primary" disabled>02 주문하기 ></button>
                    <button class="showStep step1 btn btn-primary" disabled>03 결제완료 </button>
                </div>
            </div>
            <hr>
            <br><br>
    
     <form class="orderForm" action="<%= contextPath %>/orderConf.pay" method="post">
            <!-- 배송정보 입력란 -->
        
            <div class="dvForm"  style="width:600px;">
                <fieldset style="border:none;">
                    <legend><h4 style="font-weight: bolder;">배송정보</h4></legend>
                    <br>
                    <table>
                        <tr>
                            <th width="100">이름*</th>
                            <td><input type="text" name="userName" id="userName" value="<%= userName %>" style="width:400px" required> 
                                <a class="dvButton btn btn-warning btn-sm" data-toggle="modal" data-target="#shipping">배송지 변경</a>
                            </td>
                        </tr>
                        <tr>
                            <th>휴대폰  *</th>
                            <td>
                                <input type="text" name="phone" id="phone" placeholder=" (-포함해서 입력)" value="<%= phone %>">
                            </td>
                        </tr>
                        <tr>
                            <th>이메일*</th>
                            <td><input type="text" name="mail" id="email" value="<%= email %>" style="width:400px" required></td>
                        </tr>
                        <tr>
                            <th>주소*</th>
                            <td>
                                <input type="text" name="" id="sample4_postcode" value="01234" style="width:150px;" readonly> 
                                <a class="dvButton btn btn-warning btn-sm"  onclick="execDaumPostcode();" >우편번호</a> <br>
                                <input type="text" name="address" id="sample4_roadAddress" value="<%= address %>" style="width:500px; margin-bottom: 4px;" readonly> <br>
                                <input type="text" id="sample4_detailAddress" name="addressEtc"  style="width:500px;">
                            </td>
                        </tr>
                        <tr>
                            <th>배송시 요청사항</th>
                            <td><textarea name="dvDemand"  rows="4" style="width:500px; resize:none;"></textarea></td>
                        </tr>
                        <tr>
                            <th>
                                <input type="checkbox" id="happyDelivery" name="happyDelivery" value="HAPPY배송" style="vertical-align: middle;" onclick="happyDelivery();">
                                <label for="happyOrder"> HAPPY배송</label>
                            </th>
                            <td>
                            <input type="date" id="happyDate" name="happyDate"  disabled>
                            </td>
                        </tr>
                </table>
                </fieldset>
            </div>
        
            <br><br>

            <hr>
            <br><br>
              
                 <script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
</script>
   
            
            
            <!-- 주문상품 폼 -->
            <div class="orderForm" style="width:600px">
                <fieldset style="border:none;">
                    <legend><h4 style="font-weight: bolder;">주문상품</h4></legend>
                    <br>
                    <table class="odTable">
                        <tr>
                            <th colspan="2" style="width:460px; text-align: center;">상품정보</th>
                            <th algin="center" style="text-align: center;">판매가</th>
                        </tr>
                        
                        <% for(Cart caa : ca) { %> 
                        <tr>
                            <td style="width:100px; height:100px;">
                                <img src="<%= caa.getMainImg() %>" style="width:80px; height:100px;">
                            </td>
                            <td>
                                <b><%= caa.getTitle() %></b> <br>
                                <small><%= caa.getAuthor() %></small> <br><br>
                                <button class="odButton1 btn btn-warning btn-sm" disabled>소득공제</button>
                                <button class="odButton2 btn btn-warning btn-sm" disabled>무료배송</button>
                            </td>
                            <td><%= caa.getTtPrice() %>원 | 수량 <%= caa.getAmount() %>개</td>
                        </tr>
                    <% } %>
                    
                
                    </table>
                </fieldset>
            </div>

            <br><br>
            <hr>
            <br><br>
            
            <!-- 쿠폰/적립금 -->
            <legend><h4 style="font-weight: bolder;">쿠폰</h4></legend>
            <br>
            <table class="coupon">
                <tr>
                    <td>
                        <div class="discount" align="left">
                        <button  type="button" id="couponBtn" style="width:100px; height:45px; line-height: 1.3;" >적용하기</button>
                        </div>
                    </td>
                    <% if(cou.isEmpty()){ %>
                    <tr>
                        <td colspan="5">존재하는 쿠폰이 없습니다. </td>
                    </tr>
                <%} else { %>
                        <tr>
                            <select name="couponCategory" id="couponCategory"> 
                            <option value="0">선택안함</option>
                            <%int count =0; %>
                        <% for(Coupon c:cou) { %>
                                    
                                    <option value="<%=c.getDiscount() %>" ><%= c.getCouName() %></option>
                                    <%count++; %>
        
                        <%} %>
                            </select>
                        
        
                        
                        </tr>
                <%} %>
                
        
            
            </table>
            
            

            <br><br>
            <hr>
            <br><br>

            <!-- 결제방법 -->
            <h4 style="font-weight: bolder;">결제방법</h4>
            <br>
            <div class="selectedWay">
                <span class="ShowSelectedWay">신용카드</span>
            </div> 

            <table class="payways">
                <tr>
                    <td><a href="">신용카드</a></td>
                    <td><a href="">실시간계좌이체</a></td>
                    <td><a href="">휴대폰결제</a></td>
                </tr>
                <tr>
                    <td><a href=""><img src="resources/images/pay_naver.png"></a></td>
                    <td><a href=""><img src="resources/images/pay_kakao.png"></a></td>
                    <td><a href=""><img src="resources/images/pay_samsung.png"></a></td>
                </tr>
            </table>

            
            <!-- 사이드바 -->
            <div class="remote" >
                <div class="info">
                    <ul class="list_price">
                        <li>
                            <span class="label">상품금액</span>
                            <span class="price" id="price" name="price"><%= total %></span>원
                        </li>
                        <li><span class="label">배송비</span>
                            <span class="price" id="delivery" name="delivery">0</span>원
                        </li>
                        <li><span class="label">할인금액</span>
                            <span class="price" id="couponDiscount">0</span>원
                        </li>
                        <hr>
                        <li class="total">
                            <strong class="label" >최종 결제금액</strong>
                            <strong class="price">
                                <span class="number" id="lastPrice" name="lastPrice"><%= total %></span>원
                                <input type="hidden" name="total" id="total" value="<%= total %>">
                            </strong>
                        </li>
                        <hr>
        
                    </ul>
                </div>
                <!-- 주문내역 동의 -->
                <div class="orderAgree">
                    <div class="confirmBox">
                    
                        <label for="orderConfirm">
                            <input type="checkbox" class="checkbox" id=orderConfirm >주문내역확인 동의(필수)
                        </label>
                    </div>
                    <div class="confrimContent">
                        <ul style="font-size:12px;">
                            <li>주문시 입력하신 배송정보는 배송을 위한 목적으로 사용됩니다.</li>
                            <li>
                                주문할 상품의 상품명, 가격, 배송정보 등을 최종 확인하였으며, 구매에 동의하십니까? <br>
                                (전자상거래법 제 8조 2항)
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- 결제하기, 장바구니 버튼 -->
                <div style="border-top: 1px solid #ddd; background: #fbfbfb;">
                    <div class="finalBt">
                        <div><button type="button" class="pay btn btn-warning btn-lg" id="payBtn" disabled >결제하기</button></div> <br>
                        <div><button type="button" id="charBtn" class="goBackToCart btn btn-warning btn-lg">장바구니 가기</button></div>
                    </div>
                </div>
            </div>
       </form> 
        <!-- //사이드바 -->
       


        <!-- The Modal for 배송지변경 -->
        <div class="modal fade" id="shipping">
            <div class="modal-dialog">
                <div class="modal-content">
                
                    <!-- Modal Header -->
                    <div class="modal-header">
                    <h4 class="modal-title">주소록</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    
                    <!-- Modal body -->
                    <div class="modal-body">
                        <div><a class="btn" style="width:100%; background: rgb(249, 219, 122);">신규배송지</a></div>
                        <div><small>* 마이페이지>주문내역>나의배송지관리에서 배송지 추가, 수정 할 수 있습니다.</small></div>
                        <hr>
                        <div style="cursor: pointer;">
                            <span id="choice" data-dismiss="modal" style="font-size:14px;">
                                <b>[기본]</b><span><b>안소은(집주소)</b></span><br>
                                서울시 용산구 kh동 kh아파트 101동 101호 <br>
                                010-1234-9876
                            </span>
                        </div>
                        <hr>
                       <div style="cursor: pointer;">
                            <span id="choice" data-dismiss="modal" style="font-size:14px;">
                                <b>[기본]</b><span><b>안소은(집주소)</b></span><br>
                                <input type="text" id="sample4_postcode" placeholder="우편번호">
                                <input type="text" id="sample4_roadAddress" placeholder="도로명주소">
                                <input type="text" id="sample4_jibunAddress" placeholder="지번주소">
                                <input type="text" id="sample4_detailAddress" placeholder="상세주소">
                                010-1234-9876
                            </span>
                        </div> 
                    </div>
                    
                </div>
            </div>
        </div>
        <!-- //Modal -->
      
            

        <!-- The Modal for 우편번호 -->
        <div class="modal fade" id="post">
            <div class="modal-dialog">
                <div class="modal-content">
                
                    <!-- Modal Header -->
                    <div class="modal-header" style="background: rgb(249, 219, 122);">
                    <h4 class="modal-title">주소찾기</h4>
                    <button type="button" class="close" data-dismiss="modal" >&times;</button>
                    </div>
                    
                    <!-- Modal body -->
                    <div class="modal-body">
                        <div><p><b>검색어(도로명, 건물명, 지번)를 입력해주세요 (지번 + 도로명 통합)</b></p></div>
                        <div>
                            <input type="text" placeholder="내용을 입력해주세요" style="height:35px; width:80%;">
                            <span style="width:20%;"><button class="btn btn-secondary" data-dismiss="modal">검색</button></span>
                        </div>
                        <hr>
                        <p>
                            <h3>tip</h3>
                            <h6>아래와 같은 조합으로 검색을 하시면 더욱 정확한 결과가 검색됩니다.</h6> <br>
                            <h6>도로명 + 건물번호</h6>
                            <h6 style="color:lightsalmon;">예) 강남대로 100,  제주 첨단로 100</h6>
                            <h6>지역명(동/리) + 번지</h6>
                            <h6 style="color:lightsalmon;">예) 역삼동 100,  제주 영평동 1000</h6>
                            <h6>지역명(동/리) + 건물명(아파트명)</h6>
                            <h6 style="color:lightsalmon;">예) 분당 주공,  역삼동 주공100차</h6>
                        </p>
                    </div>
                    
                </div>
            </div>
        </div>
  

    </div>

    <br><br>


    <script>
    
   		 
    
    	$('#happyDelivery').change(function() {
    	    var value = $(this).val();              // value
    	    var checked = $(this).prop('checked');  // checked 상태 (true, false)
 
    	 
    	
    	    if(checked)
    	        $("#happyDate").removeAttr("disabled");     
    	    else
    	        $("#happyDate").attr("disabled", true);   
    	});
    	
    	

        $(function(){
            $("#orderConfirm").change(function(){
                if($(this).prop("checked")){
                    $("#payBtn").removeAttr("disabled");
                }else{
                    $("#payBtn").attr("disabled", true);
                }
            })
        })

   
    
    
    
    	
	    $(function(){
	    	
	    	
	    	$("#couponBtn").click(function(){
	    		
	    		//console.log($("#couponCategory option:selected").val());
	    		
	    		// 최종결제금액 : 상품금액 + 배송비 - 할인액
	    		var result = Number($("#price").text()) + Number($("#delivery").text()) - Number($("#couponCategory option:selected").val());
	    		$("#lastPrice").text(result);
	    		
	    	})
	    	
	    	$("#charBtn").click(function(){
	    		location.href = "<%= contextPath %>/cList.or";
	    	})
	    	
	    	
	    	
	    
	    	
	    	
	    	
			$("#couponBtn").click(function(){
				

				$.ajax({
					url: "couponAjax.me",
					type: "get",
					data:{couponCategory:$("#couponCategory").val()},
					success:function(result){
						
						console.log("ajax 통신 성공");	
						console.log(result);
						
						$("#couponDiscount").html(result);
					
					},
					error: function(){ 
						console.log("ajax 통신 실패");
					},
					complete:function(){
					}
				});
			})
			
			
			
			
		})
		
		
	
    
        $(function (){
            $(".selectedWay").click(function(){

                // slideUp, slideDown
                var $payways = $(this).next();
                if($payways.css("display") == "none"){
                    $(this).siblings(".payways").slideUp();
                    $payways.slideDown(); // 보여지게
                } else{
                    $payways.slideUp();
                }
            })
        })
        
          $(function(){
          $('#payBtn').click(function(){
             
            
                
                IMP.init('imp14238630');
                
                IMP.request_pay({
                    pg : 'inicis', // version 1.1.0부터 지원.
                    pay_method : 'card',
                    merchant_uid : 'merchant_' + new Date().getTime(),
                    name : '주문명:해피북결제',
                    amount : '10'/*Number($("#lastPrice").text())*/, //판매 가격
                    buyer_email : $("#email").val(),
                    buyer_name : $("#userName").val(),
                    buyer_tel : $("#phone").val(),
                    buyer_addr : $("#address").val(),
                    buyer_postcode : '123-456'
                }, function(rsp) {
                	if ( rsp.success ) {
                        var msg = '결제가 완료되었습니다.';
                        msg += '고유ID : ' + rsp.imp_uid;
                        msg += '상점 거래ID : ' + rsp.merchant_uid;
                        msg += '결제 금액 : ' + rsp.paid_amount;
                        msg += '카드 승인번호 : ' + rsp.apply_num;

                        $(".orderForm").submit();
                    }
                    alert(msg);
                });
             
          })
       })


        
        
       
		
    </script>
</body>
</html>