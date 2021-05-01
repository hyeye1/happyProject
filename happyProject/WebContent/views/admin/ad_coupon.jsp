<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.admin.model.vo.Ad_Coupon"%>
<%
	ArrayList<Ad_Coupon> list = (ArrayList<Ad_Coupon>) request.getAttribute("list");

	
%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
		Date nowTime = new Date();
		SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일 a hh:mm:ss");
		
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>CouponList</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<style>
    .wrap{width:1000px; height:700px; margin: auto; margin-top:15px; outline: auto;}
    .wrap>div{height: 100%; float: left;}
    #menubar{width: 20%;}
    #content{width: 80%;}

    #menubar>div{width:100%; float: left;}
    #home{height: 20%;}
    #title_name{height: 15%;}
    #title_Btn{height: 65%;}

    #content>div{width: 100%; float: left;}
    #login{height: 5%;}
    #sub_title{height: 12%;}
    #list{height:10%;}
    #table{height: 73%;}

    /* left-menubar */
    #menubar{
        background-color: rgb(224, 224, 224);
    }
    #content{
        border-left: 5px double rgb(249, 219, 122);
    }
    #sub_title{
        border-bottom: 3px solid rgb(249, 219, 122);
    }

    #homelogo{
    color: #505050;
    font-size:x-large;
    font-weight: bold;
    padding:10px;
    }
    #title_name{
        font-size: 50px;
        font-weight: bold;
        text-shadow:1px 4px 10px rgb(133, 133, 133);
        text-align: center;     
    }    
    #btns{
        list-style: none;
        padding-left: 26px;
    }
    .menuBtn{
        font-size:large;
        font-weight: bold;
        background-color: white;
        width: 150px;
        height: 70px;
        margin-top: 30px;
        border-radius: 15px;
        font-size:large;
        cursor: pointer;
        border-width: 4px;
        border-style: solid;
        border-color: rgb(249, 219, 122); 
        color: #3c3c3c;
    }
    .menuBtn:hover{
        opacity: 100%;
        background-color:rgb(249, 219, 122);
    }
    #sub_title{
        font-size: 40px;
        padding: 10px 20px;
    }
    #enrollCou{
        background-color: rgb(249, 219, 122);
        border: none;
    }
    #deleteCou{
        background-color:#f3f3f3;
        border: none;
    }
    #table{
        text-align: center;
        padding-left: 10px;
        padding-right: 10px;
        font-size: smaller;
    }
    #table>table>thead>tr>th{
        background-color: rgb(230, 230, 230);
        border: 1px solid gray;
        font-size: small;
        height: 31px;
        border-bottom: 4px double;
        
    }
    #table>table>tbody>tr>td{
        border: 1px solid gray;
        height: 30px;
    }
    .btn{
        background-color: #f3f3f3;
        border: none;
        color: #505050;
    }
    .btn:hover{
        background-color: rgb(249, 219, 122);
        color: white;
    }
    #adLogo{
        width: 70px;
        padding:2px;
        float:right;
        margin-right: 5px;
        margin-top: 3px;
    }
    #adLock{
        width:30px;
        float: right;
        margin-right: 17px;
        margin-top: 2px;
    }
    
    #end__coupon{
        background-color: rgb(249, 219, 122);
    }
     #select__delete{
        background-color: #e0e0e0;
    }
     /* 완료 쿠폰내역 팝업창 */
    #couEndWrap{
        position: absolute;
        top:38%;
        left:67%;
        z-index: 10;
        width: 410px; 
        height: 200px; 
        margin-top: -75px;
        margin-left: -150px;
        display: none; 
    }
	#couEndWrap>div{border: 1px solid #3c3c3c; box-sizing: border-box;}

    #couEndWrap>*{width: 100%;}
    #couEndTitle{height: 35px; background-color: rgb(249, 219, 122);}
    #couEndContent{height: 165px; background-color: white;}

    #couEndName{
        display:inline-block;
        margin-left:175px;
        margin-top:6px;
        font-size: 15px;
        font-weight: bold;
        margin-top: 1;
        color: #3c3c3c;
    }
    #couEndContent{
        font-size: smaller;
        text-align: center;
    }
    #couEndTable{
        margin: 3px;
        width: 400px;
        height: 120px;
    }
    #couEndTable tr{
        height: 30px;
    }
    .couponText{
        border: 1px solid gray;
        height: 28px;
        border-radius: 3px;
        color: #5a5a5a;
        padding-top: 3px;
    }
    #couCloseBtn { 
        float: right; 
        width: 20px; 
        line-height: 20px;
        margin-right: 5px;
        margin-top: 5px;
        text-align: center; 
        cursor: pointer; 
        border-radius: 5px;
        background-color: #f3f3f3; 
        } 
    #couCloseBtn:hover { background-color: lightgray;} 
    #modal{
        width: 100%; height: 100%; position: absolute; background: rgba(32, 32, 32, 0.3);
        top: 0; left: 0; z-index: 999; display: none;
    }
    .show-popup{
        display:block !important;
    }

    /* 관리자모드 종료 팝업창 */
    .adEndWrap{
        position: absolute;
        top:42%;
        left:50%;
        z-index: 10;
        box-sizing: border-box;
        width: 280px; 
        height: 160px; 
        margin-top: -75px;
        margin-left: -150px; 
        display: none;
    }
    .adEndWrap>*{width:100%;}
    #adEndTitle{height: 35px; background-color: rgb(249, 219, 122);border: 1px solid #3c3c3c;}
    #adEndContent{height: 125px; background-color: white;border: 1px solid #3c3c3c;}
    
    #adEndContent>*{width: 100%;}
    #adEndText{height: 30%;}
    #adEndIntro{height:30%;}
    #adEndBtn{height: 40%;}

    #adEndTitleName{
        margin-top:6px;
        font-size: 15px;
        font-weight: bold;
        margin-top: 1;
        color: #3c3c3c;
    }
    #modal_End{
        width: 100%; height: 100%; position: absolute; background: rgba(32, 32, 32, 0.6);
        top: 0; left: 0; z-index: 999; display: none;
    }
    .show-popup_End{
        display:block !important;
    }

</style>
</head>

<body>
    <div class="wrap">
        <div id="menubar">
            <div id="home">
                <a href="${pageContext.request.contextPath}/views/admin/ad_home.jsp" id="homelogo">HOME</a>
            </div>
            <div id="title_name">
                쿠폰
            </div>
            <div id="title_Btn">
                <ul id="btns">
                    <li><button class="menuBtn" id="couListBtn" type="button" style="background-color: rgb(249, 219, 122);">쿠폰 조회</button></li>
                    <li><button class="menuBtn" id="couEnrollBtn" type="button" >쿠폰 등록</button></li>
                </ul>
                <script>
                const couListBtn = document.getElementById('couListBtn');
                couListBtn.addEventListener('click', function(){
            		location.href='<%=request.getContextPath()%>/list.cou';
            	});
                const couEnrollBtn = document.getElementById('couEnrollBtn');
                couEnrollBtn.addEventListener('click', function(){
            		location.href='<%=request.getContextPath()%>/enrollForm.cou';
            	});
                </script>
            </div>
        </div>
        <div id="content">
            <div id="login">
                <input type="image" id="adLock" src="${pageContext.request.contextPath}/resources/images/admin/adminlock.png" >
                <img src="${pageContext.request.contextPath}/resources/images/admin/adminlogo.png"  id="adLogo">
            </div>
            <div id="sub_title">쿠폰 관리</div>
            <div id="list"style="padding: 20px 20px; " align="right" >
                <button class= "btn btn-primary" id="end__coupon">완료쿠폰</button>
                <button class= "btn btn-primary" id="select__delete">삭제</button>
            </div>
            
            <div id="table">
                <table>
                    <thead>
                        <tr>
                        	<th width="20"><input id="coupon__all__check" type="checkbox"></th>
                            <th width="40">번호</th>
                            <th width="268">쿠폰이름</th>
                            <th width="80">할인액</th>
                            <th width="115">시작일</th>
                            <th width="115">종료일</th>
                            <th width="130">사용조건(최소금액)</th>
                           
                        </tr>
                    </thead>
                    <tbody>
                        <!-- 조회된 결과가 없을 경우 -->
		                <% if(list.isEmpty()) { %>
			                <tr>
			                    <td colspan="7">조회된 리스트가 없습니다.</td>
			                </tr>
		                <% }else { %>
			                <!-- 조회된 결과가 있을 경우 -->
			                <% for(Ad_Coupon c : list) { %>
		                       <tr>
		                       		<td><input class="coupon__checkbox" type="checkbox" data-couNo="<%= c.getCouNo() %>"></td>
		                        	<td style="font-size: small;"><%= c.getCouNo() %></td>
		                            <td><%= c.getCouName() %></td>
		                            <td><%= c.getDiscount() %></td>
		                            <td><%= c.getCouStart() %></td>
		                            <td><%= c.getCouEnd() %></td>
		                            <td><%= c.getCouCondition() %></td>
		                     
	                           </tr>
  							<% } %>
                		<% } %>
                    </tbody>                    
                </table>
            </div>
        </div>
    </div>

     <!-- 완료 쿠폰 팝업 -->
     <div id="modal">
        <div id="couEndWrap">
            <div id="couEndTitle">
                <h3 id=couEndName>완료/만료 쿠폰</h3>
                <div id="couCloseBtn">&times;</div>
                
            </div>
            <div id="couEndContent">
                <table id="couEndTable" >
                    <tr>
                        <th width="30%">쿠폰명</th>
                        <td>
                            <select name="selectCou" id="selectCou" style="width: 292px; height:28px">
                                <option>4월맞이 할인 쿠폰</option>
                                <option>4월 신규가입 할인쿠폰</option>
                                <option>비오는 날엔 해피북스데이</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                    	<th>쿠폰 번호</th>
                    	<td>
                    		<div class="couponText" id="cou__no">
                    			3
                    		</div>
                    	</td>
                    </tr>
                    <tr>
                        <th>할인액</th>
                        <td>
                            <div class="couponText" id="cou__discount">
                                1000
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th width="30%">유효기간</th>
                        <td>
                            <div class="couponText" id="cou__date">
                                2021-03-15 ~ 2021-03-22
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th>사용조건</th>
                        <td>
                            <div class="couponText" id="cou__condition">
                                구매금액 10000원 이상
                            </div>
                        </td>
                    </tr>
                </table>


            </div>
        </div>
    </div>

    <script>
    	let couponListTemp;

    	// 완료된 쿠폰 클릭 시 
        $("#end__coupon").on("click",function(){
        	
        	$.ajax({
     			url:"/happyProject/endList.cou",
     			type:"get",
        		success:function(resp){
        			couponListTemp = resp;
        			
        			
        			let optionStr = "";
        			for(var i = 0;i < resp.length;i++){
        				optionStr+=`<option name="\${resp[i].couName}" value="\${resp[i].couNo}">\${resp[i].couName}</option>`;
        			}
        			$("#selectCou").html(optionStr);
        			$("#cou__no").text(resp[0].couNo);
        			$("#cou__discount").text(resp[0].discount);
        			$("#cou__date").text(resp[0].couStart + " ~ " + resp[0].couEnd);
        			$("#cou__condition").text("구매금액 " + resp[0].couCondition + "원 이상");
        			
        			
        			$("#couEndWrap").css({display:"block"});
                    $("#modal").addClass('show-popup');
        		},
        		error:function(err){
        			
        		}
        	});
        });
        $("#couCloseBtn").on("click",function(){
            $(".couEndWrap").css({display:"none"});
            $("#modal").removeClass('show-popup');
        });
        
        
      // 지난 쿠폰 셀렉트박스 체인지 이벤트 
        $("#selectCou").on("change",function(){
            couponListTemp.forEach(function(coupon){
	            if(coupon.couNo == $("#selectCou").val()){
	            	$("#cou__no").text(coupon.couNo);
	        	    $("#cou__discount").text(coupon.discount);
	    			$("#cou__date").text(coupon.couStart + " ~ " + coupon.couEnd);
	    			$("#cou__condition").text("구매금액 " + coupon.couCondition + "원 이상");
	        	}
        	});
        });
    </script> 
   


    <!-- 관리자모드 종료 팝업 -->
    <div id="modal_End">
        <div class="adEndWrap">
            <div id="adEndTitle">
                <h3 id=adEndTitleName align="center">CONFIRM</h3>        
            </div>
            <div id="adEndContent">
                <div id="adEndText" style="text-align: center; font-size:large; margin-top:10px; font-weight: bold;">
                    관리메뉴를 종료하시겠습니까?
                </div>    
				<div id="adEndIntro" style="text-align: center; font-size:small;">
          		     <%= sf.format(nowTime)%>
           		</div>	
            	<div id="adEndBtn" style="margin-left: 26%;">
                	<a href="#" onClick="self.close();" class="btn btn-info btn-sm" style="margin-left: 3px; width:55px; border: none; background-color: rgb(249, 219, 122);">종료</a>
                	&nbsp;&nbsp;
                	<button type="button" id="cancleEndBtn"  class="btn btn-info btn-sm" style="width: 55px; border: none; background-color: #e0e0e0;">취소</button>
            	</div>    
            </div>    
        </div>
    </div>

    <script>
        $(function(){
            $("#adLock").on("click",function(){
                $(".adEndWrap").show();
                $("#modal_End").addClass('show-popup_End');
            });
            $("#cancleEndBtn").on("click",function(){
                $(".adEndWrap").hide();
                $("#modal_End").removeClass('show-popup_End');
            });
        });
        
       
    </script>
    
    
    <!-- 전체선택/삭제 체크박스 -->
    <script>
    $("#coupon__all__check").off().on('click',function(){
        var checked = $(this).prop('checked');
        $(".coupon__checkbox").each(function(){
            $(this).prop('checked',checked);
        });
    });
    
    $('#select__delete').off().on('click',function(){
    	if(!confirm('선택항목을 삭제하시겠습니까?')){
    		return;
    	}
    	
    	var chkCou = [];
    	
    	$(".coupon__checkbox").each(function(){
    	    if($(this).prop('checked')){
    	        chkCou.push($(this).attr("data-couNo"));
    	    }
    	});
    	
    	if(chkCou.length==0){
    		alert('쿠폰을 선택해주세요 :(');
    		return;
    	}
    	
    	$.ajax({
 			url:"/happyProject/deleteChk.cou",
 			type:"post",
 			data:{"couNoList":chkCou},
    		success:function(resp){
    			if(resp.ok){
    				alert("삭제완료!");
    				location.href = "/happyProject/list.cou";
    			}
    		},
    		error:function(err){
    			
    		}
    	});
    	
    	console.log(chkCou);
    });
    
    </script>


</body>
</html>