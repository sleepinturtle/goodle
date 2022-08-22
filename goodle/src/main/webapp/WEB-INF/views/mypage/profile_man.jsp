<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<!-- saved from url=(0053)file:///C:/Users/kyleb/Desktop/testing/untitled.html# -->
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>개인정보 관리</title>
    <%@ include file="/WEB-INF/views/links_head.jsp" %>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>

<body>
<%@ include file="/WEB-INF/views/navbar2.jsp" %>
	
    
    <!-- card -->
    <div class="container py-4 py-xl-5">
<!--         <div class="row mb-5"> -->
<!--             <div class="col-md-8 col-xl-6 text-center mx-auto"> -->
<!--                 <h2 class="font-weight-bold">Mypage</h2> -->
<!--             </div> -->
<!--         </div> -->
<!--         <div class="row row-cols-1 row-cols-md-2 row-cols-xl-5"> -->
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
            
<!--         </div> -->
    </div>
    <%@ include file="/WEB-INF/views/links_foot.jsp" %>
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

</body>
</html>