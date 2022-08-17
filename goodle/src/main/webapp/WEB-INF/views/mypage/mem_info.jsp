<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
    <head>
<%@ include file="/WEB-INF/views/header.jsp" %>
    </head>
	<style> 

    .card-body{
    	text-align: center;
    }
     </style> 
<%@ include file="/WEB-INF/views/navbar.jsp" %>
<%@ include file="/WEB-INF/views/var_header.jsp" %>
     		<main>
            	<div id="layoutSidenav_content">
                	<c:forEach var="dto" items="${dtoFromDB}"/>
                    <div class="container-fluid px-4">
<!--                         <h1 class="mt-4">마이페이지</h1> -->
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">@${login_info.mem_id}</li>
                        </ol>
                         <section class="resume-section">
                         <h1>입력값 그림으로 배경 때우기</h1>
                         </section>
                        <section class="resume-section" id="info">
			                <div class="resume-section-content">
			                <h2 class="mb-5">기본정보 수정</h2>
			                	<div>
			                	<table class="table table-hover">
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
<!-- 					                				<button type="button" id="dupcheck" name="dupcheck" class="btn btn-success">아이디 중복확인</button> -->
<!-- 			                						<label for="dupcheck" id="dupcheck_label"></label> -->
			                						
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
			 		               				<button type="button" class="btn btn-success" id="next" name="next">다음</button>
			                				</a>
			                			</td>
			                		</tr>
			                	</table>
			                	</div>
			                	
			                </div>
			            </section>
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
			           
			           	</div>
                	</div>
                </main> 
                    <%@ include file="/WEB-INF/views/footer.jsp" %>
            </body>        
          </html>
