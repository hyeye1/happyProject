<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
 <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
 <!-- jQuery library -->
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 <!-- Popper JS -->
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
 <!-- Latest compiled JavaScript -->
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
 <script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

    <style>
        .join2Outer{
            width: 1000px;
            height: 1250px;
            margin: auto;
            font-size: 12px;
            color: rgb(94, 94, 94);
        }
        .join2Outer div{width: 360px;}
        .join2Outer button{
            height: 32px;
            background-color: rgb(249, 219, 122);
            color: grey;
            border: none;
            border-radius: 5px;
            font-weight: 550;
            cursor: pointer;
            }
        .join2Title p{
            font-size: 22px;
            font-weight: 500;
            color: rgb(250, 190, 44);
            height: 45px;
            margin-top: -15px;
            border-bottom: 1.5px solid darkgray;
        }
        .join2Outer th{
            text-align: left;
            height: 25px;
        }
        .join2Input input{
            width: 98%;
            height: 28px;
            border: 1.5px solid lightgray;
            border-radius: 5px;
        }
        Input::placeholder{
            font-size: 11px;
            color: darkgray;
        }
        .join2Input{
            width: 360px;
            margin-bottom: 22px;
        }
        .join2Input tr{height: 50px;}
        .join2Check{
            width: 90px;
            float: right;
            font-size: 12px;
        }
        #join2Submit{
            width: 300px;
            font-size: 13.5px;
            margin-top: 30px;
        }
        .join2Checkbox{
            width: 300px; 
            margin: 22px; 
            font-size: 11px; 
        }
        .join2Checkbox input{cursor: pointer;}
        .join2DetailBtn{
            font-size: 8px;
            width: 68px;
            background-color: white;
            border: 1px solid darkgray;
            border-radius: 4px;
            cursor: pointer;
        }
        #join2CheckboxOuter{
            border-top: 1.5px solid darkgray;
            border-bottom: 1.5px solid darkgray;   
        }
      
        input:disabled {background-color: rgba(211, 211, 211, 0.653); cursor: default;}
        button:disabled {background-color: rgba(211, 211, 211, 0.905); cursor: default;}
        .phoneCheckInput {display: none;}

        .phoneCheckNumWrap, .phoneCheckYWrap{
            position:absolute;
            top: 50%;
            left: 50%;
            box-sizing: border-box;
            width: 290px;
            height: 153px;
            margin-top: -75px;
            margin-left: -100px;
            font-size: 13px;
            box-shadow: 0px 0px 50px 1500px rgba(196, 196, 196, 0.455), 5px 5px 10px 1px rgba(35, 35, 35, 0.565);
            display: none;
        }
        #phoneCheckNumTitle, #phoneCheckYTitle{
            height: 40px;
            border-bottom: none;
            background-color: rgb(249, 219, 122);
        }
        #phoneCheckNumContent, #phoneCheckYContent{
            background-color: white;
        }
        #phoneCheckNumTitleName, #phoneCheckYTitleName{
            display: inline-block;
            text-align: center;
            margin-top: 8px;
            border-top-left-radius: 15px;
        }
        #phoneCheckNumContent button, #phoneCheckYContent button{
            margin-top: -20px;
            margin-bottom: 15px;

        }
        .addressInput{display : none;}
        .addressInput input {
        	font-size: 12px;
        	color: gray;
        	
        }
        #addInput{width:275px;}
    </style>
</head>
<body>
    <div class="join2Outer" align="center">
        <a href="<%=request.getContextPath()%>"> <img src="resources/images/logo.png" width="180px" style="margin-right: 2px; margin-top: 70px;"> </a>
        <div class="join2Title" align="center">
            <br>
            <p>회원가입</p>
        </div>
        
        <form action="<%=request.getContextPath()%>/join.me" method="post" id="enrollForm" >
            <table class="join2Input">
                <tr>
                    <th>아이디 *</th>
                    
                    <td><input type="text" name="memId" placeholder="6자 이상" minlength=6 maxlength=20 required></td>
                    <td><button type="button" class="join2Check" onclick="idCheck();">중복확인</button></td>
                </tr>
                <tr>
                    <th>비밀번호 *</th>
                    <td colspan="2"> 
                        <input type="password" name="memPwd" id="memPwd" placeholder="영문/숫자/특수문자 2가지 이상 (8~20자)" required minlength=8 maxlength=20>
                    </td>
                </tr>
                <tr>
                    <th>비밀번호확인</th>
                    <td colspan="2"> 
                        <input type="password" name="memPwd2" id="memPwd2" placeholder="비밀번호를 한번 더 입력해주세요" required>
                    </td>
                </tr>
                <tr>
                    <th>이름 *</th>
                    <td colspan="2"> 
                        <input type="text" name="memName" id="memName" placeholder="이름을 입력해주세요" required>
                    </td>
                </tr>
                <tr>
                    <th>휴대폰 *</th>
                    <td colspan="2"><input type="text" id="memPhone" name="memPhone" placeholder="010-xxxx-xxxx"  required></td>
                </tr>
                <tr>
                    <th>이메일 *</th>
                    <td><input type="email" name="email" placeholder="abc@happybook.com" required></td>
                    <td><button type="button" id="phoneCheck" class="join2Check" onclick="emailCheck();">인증번호받기</button></td>
                </tr>
                <tr class="phoneCheckInput">
                    <th></th>
                    <td><input type="text" id="phoneCheckNum" name="emailCC" required></td>
                    <td><button type="button" id="phoneCheckYN" class="join2Check" >인증번호확인</button></td>
                </tr>
                <tr class="phoneCheckInput">
                    <th></th>
                    <td colspan="2" style="font-size:8px; vertical-align:top; color: darkgray;">* 인증번호가 오지 않는다면, 스팸 여부를 확인해주세요</td>
                </tr>
                <tr>
                    <th>주소 *</th>
                    <td colspan="2">
						<button type="button" id="addInput" onclick="sample6_execDaumPostcode()">검색</button><br>
                    </td>
                </tr>
                <tr class="addressInput">
                    <th></th>
                    <td colspan="2" width="274px";	> 
						<input type="text" name="address" class="adList" id="sample6_address" placeholder="주소" required><br>
						<input type="text" name="extra" class="adList"  id="sample6_extraAddress" placeholder="참고항목">      
						<input type="text" name="details" class="adList"  id="sample6_detailAddress" placeholder="상세주소" required>
                   		<input type="text" id="sample6_postcode" placeholder="우편번호">
           			</td>
                </tr>
        
            </table>
            
            <div id="join2CheckboxOuter">
                <table class="join2Checkbox">
                    <tr>
                        <th colspan="2" >
                            <input type="checkbox" id="allChecked"><label for="allChecked"> 전체동의</label>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <input type="checkbox" class="agreeCheck" id="agree1"  required ><label for="agree1"> 이용약관 동의</label>
                        </th>
                        <td>
                            <input type="button" onclick="" class="join2DetailBtn" value="자세히 보기">
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <input type="checkbox"  class="agreeCheck" id="agree2"  required><label for="agree2"> 개인정보 취급 방침</label>
                        </th>
                        <td>
                            <input type="button" onclick="" class="join2DetailBtn" value="자세히 보기">
                        </td>
                    </tr>
                    <tr>
                        <th colspan="2">
                            <input type="checkbox" class="agreeCheck" id="agree3" name="emailYN"><label for="agree3"> 이메일 수신 동의</label>
                        </th>
                    </tr>
                </table>
                

            </div>
            
            <div>
                <button type="submit" id="join2Submit" disabled>가입하기</button>
            </div>
        </form>
        
    </div>

        <div class="phoneCheckNumWrap" align="center">
            <div id="phoneCheckNumTitle">
                <h3 id="phoneCheckNumTitleName">알림</h3>
            </div>
            <div id="phoneCheckNumContent">
                <br>
                <p>인증번호가 발송되었습니다.</p>
                <br>
                <button type="button" class="okBtn">확인</button>
            </div>
        </div>
        
        <div class="phoneCheckYWrap" align="center">
            <div id="phoneCheckYTitle">
                <h3 id="phoneCheckYTitleName">알림</h3>
            </div>
            <div id="phoneCheckYContent">
                <br>
                <p>인증되었습니다.</p>
                <br>
                <button type="button" class="okBtn">확인</button>
            </div>
        </div>

        <script>     
	        	
	        	// 아이디 중복확인
	        	function idCheck(){
	        		
	        		var $memId = $("#enrollForm input[name=memId]");
	        		
	        		
	        		$.ajax({
	        			url:"idCheck.me",
	        			type:"get",
	        			data:{checkId:$memId.val()},
	        			success:function(result){
	        				
	        				console.log(result);
	        				
	        				if(result == 'NN'){ // 사용불가
	        					Swal.fire({
	        						  icon: 'error',
	        						  title: '이미 존재하는 아이디입니다.',
	        						  text: '새로운 아이디를 입력해주세요.',
	        						  confirmButtonColor: 'rgb(249, 219, 122)'
	        						})
		        				$memId.val(null);
	        					$memId.focus();
	        						
	        				}else if (result == ""){ // 입력안함
	        					
	        					Swal.fire({
	        						  icon: 'error',
	        						  title: '',
	        						  text: '아이디를 입력해주세요',
	        						  confirmButtonColor: 'rgb(249, 219, 122)'
	        						})
		        				$memId.val(null);
	        					$memId.focus();
	        				}else if (result == "620") {
	        					Swal.fire({
	        						  icon: 'error',
	        						  title: '글자수를 확인해주세요.',
	        						  text: '6자 이상 20자 이하만 가능합니다.',
	        						  confirmButtonColor: 'rgb(249, 219, 122)'
	        						})
	        					$memId.val(null);
	        			
	        				}else{ // 사용가능
	        					
	        					Swal.fire({
	        						  title: '사용가능한 아이디입니다.',
	        						  text: "사용하시겠습니까?",
	        						  icon: 'success',
	        						  showCancelButton: true,
	        						  confirmButtonColor: 'rgb(249, 219, 122)',
	        						  cancelButtonColor: 'rgba(211, 211, 211, 0.653)',
	        						  confirmButtonText: '사용',
	        						  cancelButtonText: '취소'
	        						}).then((result) => {
	        						  if (result.value) {
	        							$memId.attr("readonly", true);
	  	    							$("#enrollForm :submit").removeAttr("disabled");
	        						  } else{
	        							$memId.val(null);
	        						  }
	        						})	        					
	        				}
	        			},error:function(){
	        				console.log("아이디 중복체크 통신 실패")
	        			}
	        		});
	        		
	        	}
	        	
	        	
				function emailCheck(){
	        		
	        		var $email = $("#enrollForm input[name=email]");
	        		var $emailcc = $("#enrollForm input[name=emailCC]");
	        		
	        		console.log($email.val());
	        		if( $email.val() == null || $email.val() == ""){
    					Swal.fire({
    						  icon: 'error',
    						  title: '',
    						  text: '이메일을 입력해 주세요.',
    						  confirmButtonColor: 'rgb(249, 219, 122)'
    						})
	        		} else{
	        		Swal.fire({
						  icon: 'success',
						  title: '인증번호가 발송되었습니다!',
						  text: '입력한 이메일의 수신함을 확인해주세요.',
						  confirmButtonColor: 'rgb(249, 219, 122)'
						})
	        		$(".phoneCheckInput").show();
	   				$("#enrollForm input[name=email]").attr("readonly", true);
	   				
	        		
	        		$.ajax({
	        			url:"emailCheck.me",
	        			type:"get",
	        			data:{checkEmail:$email.val()},
	        			success:function(result){
	        				
	        				console.log("인증번호는 " + result);
							
	        				$("#phoneCheckYN").on("click",function(){

	        					$.ajax({
	        	        			url:"emailCheck2.me",
	        	        			type:"get",
	        	        			data:{checkEmailcc:$emailcc.val(), result:result},
	        	        			success:function(result){
	        	        				console.log(result);
	        	        				
	        	        				if(result == 'NN'){ // 사용불가
	        	        					Swal.fire({
		      	        						  icon: 'error',
		      	        						  title: '인증번호가 일치하지 않습니다.',
		      	        						  text: '입력한 이메일로 받은 인증번호를 확인해주세요.',
		      	        						  confirmButtonColor: 'rgb(249, 219, 122)'
		      	        						})
		      	        						$("#enrollForm :submit").prop("disabled", true);
	        	        				}else if (result == ""){ // 입력안함
	        	        					Swal.fire({
	      	        						  icon: 'error',
	      	        						  title: '',
	      	        						  text: '이메일로 받은 인증번호를 입력해주세요.',
	      	        						  confirmButtonColor: 'rgb(249, 219, 122)'
	      	        						})
	      	        						$("#enrollForm :submit").prop("disabled", true);
	        	        				}else{ // 사용가능
	        	        					Swal.fire({
		      	        						  icon: 'success',
		      	        						  title: '',
		      	        						  text: '인증에 성공했습니다!',
		      	        						  confirmButtonColor: 'rgb(249, 219, 122)'
		      	        						})
		      	        						$("#enrollForm :submit").removeAttr("disabled");
	        	        						$("#enrollForm input[name=emailCC]").attr("readonly", true);
	        	        						$(" #phoneCheck").prop("disabled", true);
	        	        						$(" #phoneCheckYN").prop("disabled", true);
	        	        				}
	        	        			},error:function(){
	        	        				console.log("이메일 인증번호확인 통신 실패");
	        	        			}
	        	        		});	
								
							});	        				
	        			},error:function(){
	        				console.log("이메일 인증번호 통신 실패");
	        			}
	        			
	        		});
	        		}
	        	}
	        	
				
	        
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
			                // 커서를 상세주소 필드로 이동한다.
			                document.getElementById("sample6_detailAddress").focus();
			            }
			        }).open();
			    }
	
	            $(function(){    
	                $("#addInput").on("click",function(){
		                var Y = $(".adList").is(":text");
			                            
		                if(Y){
		                	$(".addressInput").show();
		                }else{
			                $(".addressInput").hide();
			            }
	            	});
	             });
	                        
    
                        // 이용약관 동의 
                       $(function(){
                           // 전체 동의 
                         $("#allChecked").on("click",function(){
                               //대표 checkbox 체크 여부
                               var checked = $("#allChecked").is(":checked");
                                   
                               if(checked){
                                  $(".agreeCheck").prop("checked",true);
                               }
                               else{
                                  $(".agreeCheck").prop("checked",false);
                               }
                         });
                           $(".agreeCheck").on("click", function(){
                              var selectedL = $(".agreeCheck:checkbox:checked").length;
                              var checkedL = $(".agreeCheck:checkbox").length;
                              
                               //전체동의 선택
                           if(selectedL == checkedL){
                              $("#allChecked").prop("checked",true);
                           }
                               //전체동의 해제
                           else{
                              $("#allChecked").prop("checked",false);
                           }
                           });
                           
                    	  });
                        
                        
                        // 비밀번호확인
						$(function(){
							var memPwd1 = document.getElementById("memPwd").value;
							var memPwd2 = document.getElementById("memPwd2").value;
							
							$("#memPwd:input").focusout(function(){
								$("#memPwd2:input").focus();	
							})
							
							$("#memPwd2:input").focusout(function(){
														
								if( (document.getElementById("memPwd").value) == null || (document.getElementById("memPwd").value) == ""){
		        					Swal.fire({
		        						  icon: 'error',
		        						  title: '',
		        						  text: '비밀번호를 입력해주세요.',
		        						  confirmButtonColor: 'rgb(249, 219, 122)'
		        						})
		        					$("#memPwd:input").focus();
		        					
								}else{
									if( (document.getElementById("memPwd").value) === (document.getElementById("memPwd2").value) ){
			        					$("#memName:input").focus();
										$("#enrollForm :submit").removeAttr("disabled");
									}else{
										Swal.fire({
			        						  icon: 'error',
			        						  title: '비밀번호가 일치하지 않습니다.',
			        						  text: '비밀번호를 확인해주세요.',
			        						  confirmButtonColor: 'rgb(249, 219, 122)'
			        						})
				        				$("#memPwd2:input").val(null);
			        					$memPwd2.focus();
										$("#enrollForm :submit").prop("disabled", true);
									}
								}
							})
							
							
							
							
							
		                    /*    
			                  // 휴대폰인증
			                        $("#phoneCheck").click(function(){
			                            $("#memPhone").attr("readonly", true);
			                            $("#phoneCheck").attr("disabled", true);
			                            $(".phoneCheckNumWrap").show();
			                            $(".phoneCheckInput").show();
			                        });
			                        $(".okBtn").click(function() {
			                            $(".phoneCheckNumWrap").hide();
			                            $(".phoneCheckYWrap").hide();
			                        });
			                        $("#phoneCheckYN").click(function(){
			                            $("#phoneCheckNum").attr("disabled", true);
			                            $("#phoneCheckYN").attr("disabled", true);
			                            $(".phoneCheckYWrap").show();
			                        });
			*/
			                   					
							
							
							
							
							
							
							
							
						}); // function 끝
	              
	              
	              
	              
	              
	              
	              
	              
	              
	              
	              
	              
	              
	              
        </script>
  

</body>
</html>