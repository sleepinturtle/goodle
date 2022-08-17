<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>구들구들</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/dashboard/assets/img/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:500,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Muli:400,400i,800,800i" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="${pageContext.request.contextPath}/resources/dashboard/css/styles1.css" rel="stylesheet" />
         <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
         <!-- Core theme JS-->
        <script src="${pageContext.request.contextPath}/resources/dashboard/js/scripts1.js"></script>
		<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		<script type="text/javascript">
		$(document).ready(function() {
			$("#codefinder").click(function() {

			    new daum.Postcode({
			        oncomplete: function(data) {
			        	$("#mem_post").val(data.zonecode);
			        	$("#mem_addr1").val(data.address);
			        }//call back function
			    }).open();

			});//click
		});//ready
		</script>
	</head>
	
	<body>
		<%@ include file="/WEB-INF/views/var_header.jsp"%>
	<nav class="navbar navbar-expand-lg navbar-dark bg-danger fixed-top">
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav">
				<li class="nav-item float-right">
					<a href="${pageContext.request.contextPath}/login/login_form">
						<button class="btn btn-success float-right">로그인</button>
					</a>
				</li>
			</ul>
				
		</div>
	</nav>
	
	<nav class="navbar navbar-expand-lg navbar-dark bg-danger" id="sideNav">
            <a class="navbar-brand js-scroll-trigger" href="#page-top">
                <span class="d-block d-lg-none">구들구들</span>
                <img class="img-fluid img-profile rounded-circle mx-auto mb-2" src="${pageContext.request.contextPath}/resources/dashboard/assets/img/share.png" alt="..." />
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>	
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav">
                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#about">구들구들</a></li>
                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#motive">중요가치</a></li>
                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#service">서비스 설명</a></li>
                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#recipe">RECIPE</a></li>
                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#custom">CUSTOMIZE</a></li>
                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#info">기본 정보</a></li>
                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#payinfo">결제 정보</a></li>
                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#company">COMPANY</a></li>
                </ul>
            </div>
           
        </nav>
         <!-- Page Content-->
        <div class="container-fluid p-0">
            <!-- About-->
           
            <section class="resume-section" id="about">
            	
                <div class="resume-section-content">
                    <h1 class="mb-0">
                        	구들구들
                    </h1>
                    
                    <p class="lead mb-5">당신에게 맞춘 레시피와 재료들로 요리를 하다</p>
                  
                    <div class="social-icons">
                        <a class="social-icon" href="#!"><i class="fab fa-linkedin-in"></i></a>
                        <a class="social-icon" href="#!"><i class="fab fa-github"></i></a>
                        <a class="social-icon" href="#!"><i class="fab fa-twitter"></i></a>
                        <a class="social-icon" href="#!"><i class="fab fa-facebook-f"></i></a>
                    </div>
                      <a href="#custom">
		                 <button type="button" class="btn btn-success btn-lg mt-5">시작하기</button>
	                  </a>
                </div>
               
                
            </section>
            <hr class="m-0" />
            <!-- motive-->
            
            <section class="resume-section" id="motive" style="margin-top: 30px;">
                <div class="resume-section-content">
                    <h2 class="mb-5">중요 가치</h2>
                    <div class="d-flex flex-column flex-md-row justify-content-between mb-5">
                        <div class="flex-grow-1">
                        	<img alt="..." src="${pageContext.request.contextPath}/resources/dashboard/assets/img/delivery.png" class="img-fluid">
                            <h3 class="mb-0">고객의 편의성</h3>
                            <p>고객의 라이프 스타일을 위해서 고객이 설정한 시간에 원하는 레시피와 신선재료들을 준비하여 보냅니다.</p>
                        </div>
                    </div>
                    <div class="d-flex flex-column flex-md-row justify-content-between mb-5">
                        <div class="flex-grow-1">
                        	<img alt="..." src="${pageContext.request.contextPath}/resources/dashboard/assets/img/custom.png" class="img-fluid">
                            <h3 class="mb-0">고객 정보를 바탕으로 레시피 추천</h3>
                            <p>고객의 재료 선호도 및 식습관을 바탕으로 레시피를 우선 추천합니다. 혹시 비건이시라면 비건을 위한 레시피도 준비되어 있습니다.</p>
                        </div>
                    </div>
                    <div class="d-flex flex-column flex-md-row justify-content-between mb-5">
                        <div class="flex-grow-1">
                        	<img alt="..." src="${pageContext.request.contextPath}/resources/dashboard/assets/img/share.png" class="img-fluid">
                            <h3 class="mb-0">고객의 요리 경험</h3>
                            <p>요리를 시작하고 싶으시거나 요리를 준비하는 과정이 싫으신 분들에게 요리의 즐거움을 드리고 경험을 공유하고 싶습니다.</p>
                        </div>
                    </div>
                </div>
                
                
            </section>
            <hr class="m-0" />
            <!-- service-->
            <section class="resume-section" id="service">
                <div class="resume-section-content">
                    <h2 class="mb-5">서비스</h2>
						
								<div class="container">
						        <div class="col-4 h-100 bg-info float-left">
						           		 <img src="${pageContext.request.contextPath}/resources/dashboard/assets/img/salad.jpg" width="300px" />
										<div class="card-body">
											<h4 class="card-title"> 고객의 선호도 파악 </h4>
											<p class="card-text">아름다운 꽃밭 체험은 당일 버스 투어 입니다. 아래 참여 버튼을 눌러 주세요.</p>
						           		</div>
						           
						        </div>
		                </div>
                    
				</div>
            </section>
            <hr class="m-0" />
            <!-- RECIPE-->
            <section class="resume-section" id="recipe">
                <div class="resume-section-content">
                    <h2 class="mb-5">RECIPE</h2>
	                <div>
		                 <a href="#custom">
				                 <button type="button" class="btn btn-success btn-lg mt-2">서비스 이용해보기</button>
			             </a>
			             
	                </div>
                </div>
            </section>
            <hr class="m-0" />
            
            <!-- custom-->
            <section class="resume-section" id="custom">
                <div class="resume-section-content">
                    <h2 class="mb-5">Customize</h2>
                    <table class="table table-hover">
                    	<tr>
                    		
                    			<th>재료 선호 태그 선택</th>
                    			<td>재료 태그</td>
                    		
                    	</tr>
                    	<tr>
                    			
                    			<th>인원 수 선택</th>
                    			<td>인원</td>
                    			
                    	</tr>
                    </table>
                </div>
            </section>
            
            <!-- info -->       
            <section class="resume-section" id="info">
                <div class="resume-section-content">
                    <h2 class="mb-5">기본 정보</h2>
                	<div>
                	<table class="table table-hover">
	                	<tr>
		                	<td>
		                		<textarea readonly="readonly" class="form-control mr-5">
		                			개인정보보호법 규정에 따라 회원가입을 신청하시는 분께 (주)구들구들(이하 '회사')이 수집하는 개인정보의 항목, 개인정보의 수집 및 이용 목적, 개인정보의 보유 및 이용기간을 안내 드리니 자세히 읽은 후 동의하여 주시기 바랍니다. 

								회원가입 시점의 개인정보 수집 및 이용에 대한 안내
								
								 
								
								필수적으로 수집하는 개인 정보 
								
								① 구들구들 회원 가입 시 아래의 정보를 수집합니다. 
								
								- 이메일 주소(계정명), 비밀번호, 이름, 지역 
								
								※ SNS 계정으로 회원 가입 시 회원식별자정보가 추가 수집됩니다.  
								 
								
								수집 및 이용 목적 
								1. 회원 서비스 제공 
								2. 공지사항 및 중요 정보,관련 정보 전달
								3. 고객 문의 또는 불만사항 처리 및 기록 
								4. 서비스 개선, 신규 서비스 개발, 통계분석 
								
								 
								개인정보 보유 및 이용기간 
								- 회원탈퇴 시 파기 
								
								※ 단, 개인정보 도용으로 인한 원치 않는 회원탈퇴, 결제 도용 등의 피해를 최소화하기 위해 회원탈퇴 요청 후 15일 간 개인정보를 보유합니다. 
								
								
								
								※ 귀하는 본 '개인정보 수집 및 이용 동의'에 거부할 수 있는 권리가 있습니다. 다만 동의를 거부할 경우 회원 가입이 불가합니다.
								
								※ 본 '개인정보 수집 및 이용 동의'에 명시되지 않은 사항에 대해서는 '회사'의 '개인정보처리방침'의 규정에 따릅니다. 
		                		</textarea>
		                		<input type="checkbox" checked="checked" id="mem_cert1" name="mem_cert1">위 약관에 동의합니다.
		                		<label for="mem_cert1" id="mem_cert1_label"></label>
		                	</td>
	                	</tr>
	                	<tr>
		                	<td>
		                		<textarea readonly="readonly" class="form-control">
		                			구들구들 서비스에 관한 새로운 소식, 특별한 혜택 및 추천정보 등 광고성 정보를 귀하에게 제공할 수 있습니다. 
		                			귀하는 광고성 정보 수신에 동의하지 않을 수 있고, 동의하더라도 추후 이를 철회할 권리가 있습니다.
		                		</textarea>
		                		<input type="checkbox" checked="checked" id="mem_cert2" name="mem_cert2">위 약관에 동의합니다.
		                	</td>
	                	</tr>
                		<tr>
                			<td>
                			이름<input type="text" id="mem_name" name="mem_name" placeholder="홍길동">
                			<label for="mem_name" id="mem_name_label"></label>
                			</td>
                		</tr>
                		<tr>
                			<td>
                				<div class="input-group">
	                			 	아이디<input type="text" id="mem_id" name="mem_id" placeholder="아이디 입력">
                					<div class="input-group-append">
		                				<button type="button" id="dupcheck" name="dupcheck" class="btn btn-success">아이디 중복확인</button>
                						<label for="dupcheck" id="dupcheck_label"></label>
                						
                					</div>
                				</div>
                			</td>	
                		</tr>
                		<tr>
                			<td>
                			비밀번호<input type="password" id="mem_pwd" name="mem_pwd" placeholder="비밀번호 입력">
                			<label for="mem_pwd" id="mem_pwd_label"></label>
                			</td>
                		</tr>
                		<tr>
                			<td>
                			비밀번호 확인<input type="password" id="pwdcheck" name="pwdcheck" placeholder="비밀번호 재입력">
                			<label for="pwdcheck" id="pwdchk_label"></label>
                			</td>
                		</tr>
                		<tr>
                			<td>
                			기본 배송지/주소
                			<div class="input-group">
                				<input type="text" id="mem_post" name="mem_post" placeholder="우편번호">
                			    <input type="text" id="mem_addr1" name="addr" placeholder="도로명 주소">
                				<div class="input-group-append">
                					<button type="button" class="btn btn-success" id="codefinder">우편번호 찾기</button>
	                			    <label for="mem_addr1" id="mem_addr1_label"></label>
                				</div>
                			</div>
                				 <hr>
                				<input type="text" id="mem_addr2" name="mem_addr2" class="form-control" placeholder="상세 주소">
                				<label for="mem_addr2" id="mem_addr2_label"></label>
                			</td>
                		</tr>
                		<tr>
                			<td>
	                			전화번호<input type="text" id="tel1" name="tel1" placeholder="010">
	                			
	                			-<input type="text" id="tel2" name="tel2" placeholder="1234">
	                			
	                			-<input type="text" id="tel3" name="tel3" placeholder="5678">
	                			<label for="tel1" id="tel1_label"></label>
	                			
                			</td>
                		</tr>
                		<tr>
                			<td>
                				이메일<input type="email" id="email1" placeholder="이메일 입력">
                						@<select id="email2">
                							<option value="naver.com">naver.com</option>
                							<option value="gmail.com">gmail.com</option>
                							<option value="hanmail.net">hanmail.net</option>
                							<option value="outlook.com">outlook.com</option>
                						</select>
	                					<label for="email1" id="email1_label"></label>
                						<label for="email2" id="email2_label"></label>
                			
                			</td>
                		</tr>
                		<tr>
                			<td>
                				<a href="#custom">
	                				<button type="button" class="btn btn-success" id="back" name="back">뒤로 가기</button>
                				</a>
                			</td>
                			<td>
                				<a href="#payinfo">
 		               				<button type="button" class="btn btn-success" id="next" name="next">다음</button>
                				</a>
                			</td>
                		</tr>
                	</table>
                	</div>
                	
                </div>
            </section>
             <!-- payinfo -->     
            <section class="resume-section" id="payinfo">
                <div class="resume-section-content">
                    <h2 class="mb-5">결제 정보</h2>
                     <table class="table table-hover">
                   		<tr>
                   			<td>
                   				사용자 이름  <input type="text" id="card_name" name="card_name" placeholder="이름 입력">
                   						<label for="card_name" id="card_name_label"></label>
                   			</td>
                   		</tr>
                   		<tr>
                   			<td>
                   				카드 번호  <input type="text" id="card_no" name="card_no" placeholder="카드 번호 입력">
                   						<label for="card_no" id="card_no_label"></label>
                   			</td>
                   		</tr>
                   		<tr>
                   			<td>
                   				유효 기간  <select class="form-control" id="card_exp1" name="card_exp1">
                   							<option value="" selected="selected"></option>
                   							<option value="1월">1월</option>
                   							<option value="2월">2월</option>
                   							<option value="3월">3월</option>
                   							<option value="4월">4월</option>
                   							<option value="5월">5월</option>
                   							<option value="6월">6월</option>
                   							<option value="7월">7월</option>
                   							<option value="8월">8월</option>
                   							<option value="9월">9월</option>
                   							<option value="10월">10월</option>
                   							<option value="11월">11월</option>
                   							<option value="12월">12월</option>
                   						</select>
                   						<label for="card_exp1" id="card_exp1_label"></label>
                   			
		                   				<select class="form-control" id="card_exp2" name="card_exp2">
		                   					<option value="" selected="selected"></option>
		                   					<option value="22년">22년</option>
		                   					<option value="23년">23년</option>
		                   					<option value="24년">24년</option>
		                   					<option value="25년">25년</option>
		                   					<option value="26년">26년</option>
		                   					<option value="27년">27년</option>
		                   					<option value="28년">28년</option>
		                   					<option value="29년">29년</option>
		                   					<option value="30년">30년</option>
		                   					<option value="31년">31년</option>
		                   					<option value="32년">32년</option>
		                   					<option value="33년">33년</option>
		                   				</select>
		                   				<label for="card_exp2" id="card_exp2_label"></label>
                   			</td>
                   		</tr>
                   		<tr>
                   			<td>
                   				CVC<input type="text" id="cvc" name="cvc"> 
                   					<label for="cvc" id="cvc_label"></label>
                   			</td>
                   		</tr>
                   		<tr>
                   			<td>
                   				카드 결제비밀번호 앞 2자리<input type="text" id="card_pwd" name="card_pwd"> 
                   									<label for="card_pwd" id="card_pwd_label"></label>
                   			</td>
                   		</tr>
                   		<tr>
                			<td>
                				<a href="#info">
                					<button type="button" class="btn btn-success" id="back" name="back">뒤로 가기</button>
                				</a>
                			</td>
                			<td>
                				회원 가입 절차를 완료합니다.<button type="button" class="btn btn-success" id="join">가입 완료</button>
                			</td>
                		</tr>
                   </table>
                </div>
            </section>
            <!-- complain -->
            <section class="resume-section" id="company">
                <div class="resume-section-content">
                    <h2 class="mb-5">COMPANY</h2>
                    <div class="container">
	                	<table class="table table-hover">
	                		<tr>
	                			<td><h2>회사명 : (주)구들구들</h2></td>
	                		</tr>
	                		<tr>
	                			<td><h2>02-123-4567</h2></td>
	                		</tr>
	                		<tr>
	                			<td><h2>goodle@gmail.com</h2></td>
	                		</tr>
	                		<tr>
	                			<td><h2>도로명 : 서울 마포구 백범로 23 3층</h2></td>
	                		</tr>
	                		<tr>
	                			<td><h2>지번 : 신수동 63-14 3층 </h2></td>
	                		</tr>
	                		<tr>
	                			<td><h2>우편번호 : 04108 </h2></td>
	                		</tr>
	                	</table>  
                    </div>
                </div>
            </section>
        </div>
	</body>
</html>