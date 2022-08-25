<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<!-- saved from url=(0053)file:///C:/Users/kyleb/Desktop/testing/untitled.html# -->
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>프로필 관리</title>
    <%@ include file="/WEB-INF/views/links_head.jsp" %>
</head>

<body>
<%@ include file="/WEB-INF/views/navbar2.jsp" %>
	
    
    <!-- card -->
    <div class="container py-4 py-xl-5">
        <h2 class="mb-5" style="margin-top: 30px;">기본 정보 입력</h2>
                	<div>
                	<table class="table table-hover">
	                	
	                	<tr>
	                		<th style="font-weight: bold;">SMS 수신동의</th>
		                	<td>
				                <textarea readonly="readonly" class="form-control">
		                			구들구들 서비스에 관한 새로운 소식, 특별한 혜택 및 추천정보 등 광고성 정보를 귀하에게 제공할 수 있습니다. 
		                			귀하는 광고성 정보 수신에 동의하지 않을 수 있고, 동의하더라도 추후 이를 철회할 권리가 있습니다.
		                		</textarea>
		                		<input type="checkbox" checked="checked" id="mem_cert2" name="mem_cert2">위 약관에 동의합니다.
		                	</td>
	                	</tr>
                		<tr>
                			
							<th style="font-weight: bold;">이름</th>
							<td>
                			<input type="text" id="mem_name" name="mem_name" value="${login_info.mem_name }" readonly="readonly">
                			<label for="mem_name" id="mem_name_label"></label>
                			</td>
                		</tr>
                		<tr>
                			<th style="font-weight: bold;">아이디</th>
                			<td style="font-weight: bold;">
                				<div class="input-group">
                					
	                			 	<input type="text" id="mem_id" name="mem_id" placeholder="아이디 입력" readonly="readonly">
                				</div>
                			</td>	
                		</tr>
                		<tr>
                			<th style="font-weight: bold;">비 밀 번 호</th>
                			<td style="font-weight: bold;">
                			
                			<input type="password" id="mem_pwd" name="mem_pwd" placeholder="비밀번호 입력">
                			<label for="mem_pwd" id="mem_pwd_label"></label>
                			</td>
                		</tr>
                		<tr>
                			<th style="font-weight: bold;">비 밀 번 호 확인</th>
                			<td style="font-weight: bold;">
                			
                			<input type="password" id="pwdcheck" name="pwdcheck" placeholder="비밀번호 재입력">
                			<label for="pwdcheck" id="pwdchk_label"></label>
                			</td>
                		</tr>
                		<tr>
                			<th style="font-weight: bold;">주소/배송지</th>
                			<td style="font-weight: bold;">
                			<div class="input-group">
                				<input type="text" id="mem_post" name="mem_post" placeholder="우편번호" readonly="readonly">
                			    <input type="text" id="mem_addr1" name="mem_addr1" placeholder="도로명 주소" readonly="readonly">
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
                			<th style="font-weight: bold;">전화번호</th>
                			<td style="font-weight: bold;">
                			
	                			<input type="text" id="tel1" name="tel1" placeholder="010">
	                			
	                			-<input type="text" id="tel2" name="tel2" placeholder="1234">
	                			
	                			-<input type="text" id="tel3" name="tel3" placeholder="5678">
	                			<label for="tel1" id="tel1_label"></label>
	                			
                			</td>
                		</tr>
                		<tr>
                			<th style="font-weight: bold;">이메일</th>
                			<td style="font-weight: bold;">
                				
                				<input type="email" id="email1" name="email1" placeholder="이메일 입력">
                						@<select id="email2" name="email2">
                							<option value="naver.com">naver.com</option>
                							<option value="gmail.com">gmail.com</option>
                							<option value="hanmail.net">hanmail.net</option>
                							<option value="outlook.com">outlook.com</option>
                						</select>
	                					<label for="email1" id="email1_label"></label>
                						<label for="email2" id="email2_label"></label>
                			
                			</td>
                		</tr>
                		
                	</table>
                	<a href="#custom">
	                				<button type="button" class="btn btn-success" id="back" name="back">뒤로 가기</button>
                	</a>
                	<a href="#payinfo" style="float: right;">
 		               				<button type="button" class="btn btn-success" id="update_btn" name="update_btn">수정 완료</button>
                	</a>
                	</div>
    </div>
  <!-- /card -->
    <%@ include file="/WEB-INF/views/links_foot.jsp" %>


</body></html>