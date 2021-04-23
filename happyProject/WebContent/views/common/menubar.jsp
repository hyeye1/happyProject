<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.member.model.vo.Member, com.kh.book.model.vo.*"%>
<%
	Member loginUser = (Member)session.getAttribute("loginUser");
	String contextPath = request.getContextPath();
%>
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
         <link rel="stylesheet" href="css/hover-min.css">
        
        <style>
            .menubarOuter{width: 1000px; height: 236px; margin: auto;}
            
            #menubarLogoImg{
                float: left; 
                margin-left: 130px;
                margin-top: 30px;
                }
            #menubarSearchInput{
                float: left;
                margin-left: 60px;
                margin-top: 86px;
                width: 330px; 
                height: 27px; 
                border-radius: 3px;
                border: 1px solid darkgray
            }
            #menubarSearchButton{
                float: left;
                margin-top: 85.5px;
                background-color:rgb(249, 219, 122); 
                color: grey; 
                width: 58px; 
                height: 32px;
                border: 1px solid rgb(260, 230, 130); 
                border-left: 1px solid darkgray;
                border-radius: 2px;
                margin-left: -58px;
            }
            #menubarLoginBtn{
                width: 28.8px;
                float: right;
                margin-right: 19.2px;
                margin-top: 82.5px;
            }
            #menubarLogoutBtn{
                width: 46.2px;
                float: right;
                margin-right: 14px;
                margin-top: 79.5px;
            }
            #menubarJoinBtn{
                width: 42px;
                float: right;
                margin-top: 79.9px;
                margin-right: 13.5px;
            }
            #menubarMypageBtn{
                width: 33.3px;
                float: right;
                margin-top: 81.8px;
                margin-right: 19.6px;
            }
            #menubarCartBtn{
                width: 42px;
                float: right;
                margin-top: 80.5px;
                margin-right: 150px;
            }
            #menubarAdminBtn{
            width: 44px;
            float: right;
            margin-top: 81px;
            margin-right: 200px;
        }
            .menubarCatWrap{
                border-top: 2px solid lightgray;
                border-bottom: 1.4px solid lightgray;
                }
            .menubarMenu {
                display: table-cell;
                height:43px;
                width:160px;  
            }
            .menubarMenu a:hover{
                color: rgb(251, 202, 72);
            }
            .menubarMenu a{
            text-decoration:none;
            color:gray;
            font-size:14px;
            line-height:43px;
            font-weight: 550;
            display:block;
            width:100%;
            height:100%;
        }
    
    
        </style>
    </head>
    <body>

        <div class="menubarOuter" >
            
            <div class="menubarHeader">
                <!-- 해피북스데이 + 검색창 + 로그인 + 회원가입 + 장바구니 -->
                <a href="<%=contextPath%>"><img src="resources/images/logo.png" style="width: 120px;" id="menubarLogoImg"></a>
                <input type="text" id="menubarSearchInput" > <input type="button" class="menubarSearch" id="menubarSearchButton" value="검색">
    			
    		<% if(loginUser == null) { %>
    		
                <!-- 로그인전 div -->
               
	                <div id="loginBefore"  >
	                    <input type="image" id="menubarCartBtn" src="resources/images/cart.png" onclick="beforeCheckCart();">
	                    <input type="image" id="menubarJoinBtn" src="resources/images/join.png" onclick="joinPage();">
	                    <input type="image" id="menubarLoginBtn" src="resources/images/login.png" onclick="loginPage();">
	                </div>
    			
    			<script>
    				function beforeCheckCart(){
    					alert("로그인 후 서비스이용 가능합니다.")
    				}
    				function loginPage(){
    					location.href = "<%= contextPath %>/loginForm.me";
    				}
    				
    				function joinPage(){
    					location.href = "<%= contextPath %>/joinForm1.me";
    				} 
    			</script>
    			
            <% }else if(loginUser.getAdminYN().equals("Y")) { %>
            <!-- 관리자 div -->
            <div id="loginAdmin">
                <input type="image" id="menubarAdminBtn" src="resources/images/admin.png" onclick="adminPage()">
                <input type="image" id="menubarLogoutBtn" src="resources/images/logout.png" onclick="logoutPage()">
            </div>

            	<script>
					function adminPage(){
						location.href = "<%= contextPath %>/adminForm.me";
					}
    				function logoutPage(){
            			location.href="<%= contextPath %>/logout.me";
            		}
    			</script>


            
    		<% }else { %>
    		
                <!-- 로그인후 div -->
                <div id="loginAfter">
                    <input type="image" id="menubarCartBtn" src="resources/images/cart.png" onclick="afterCheckCart();">
                    <input type="image" id="menubarMypageBtn" src="resources/images/mypage.png" onclick="location.href='<%=contextPath%>/mypage.me'">
                    <input type="image" id="menubarLogoutBtn" src="resources/images/logout.png" onclick="logoutPage()">
                </div>
                	<script>
                		function afterCheckCart(){
                			location.href="<%= contextPath %>/cList.or";
                		}
                		function logoutPage(){
                			location.href="<%= contextPath %>/logout.me";
                		}
                		
                	</script>
            </div>
            <% } %>
            
            
            <br clear="both">
            <br> <br>
            <div class="menubarCatWrap" align="center">
                <!-- 카테고리 -->
                <div class="menubarMenu"><a href="">베스트도서</a></div>
                <div class="menubarMenu"><a href="">신간도서</a></div>
                <div class="menubarMenu"><a href="">국내도서</a></div>
                <div class="menubarMenu"><a href="">외국도서</a></div>
                <div class="menubarMenu"><a href="<%=contextPath%>/Service.me">고객센터</a></div>
            </div>
            
        </div>
    
    </body>
    </html>