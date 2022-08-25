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
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>

<body>
<%@ include file="/WEB-INF/views/navbar2.jsp" %>
	
    
    <!-- card -->
    <div class="container py-4 py-xl-5">
        <h2 class="mb-5" style="margin-top: 30px;">기본 정보 수정</h2>
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
                					
	                			 	<input type="text" id="mem_id" name="mem_id" value="${login_info.mem_id}" readonly="readonly">
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
                				<input type="text" id="mem_post" name="mem_post" value="${login_info.mem_post}" readonly="readonly">
                			    <input type="text" id="mem_addr1" name="mem_addr1" value="${login_info.mem_addr1}" readonly="readonly">
                				<div class="input-group-append">
                					<button type="button" class="btn btn-success" id="codefinder">우편번호 찾기</button>
	                			    <label for="mem_addr1" id="mem_addr1_label"></label>
                				</div>
                			</div>
                				 <hr>
                				<input type="text" id="mem_addr2" name="mem_addr2" class="form-control" value="${login_info.mem_addr2}">
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
                	<a href="${pageContext.request.contextPath}/mypage/mypage">
	                				<button type="button" class="btn btn-success" id="back" name="back">뒤로 가기</button>
                	</a>
                	<a href="${pageContext.request.contextPath}" style="float: right;">
 		               				<button type="button" class="btn btn-success" id="update_btn" name="update_btn">수정 완료</button>
                	</a>
                	</div>
    </div>
  <!-- /card -->
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
 		
 		$(document).ready(function() {
 			$("#update_btn").click(function() {
 				
 				//기본 정보 validation check
 				
 				if( $.trim($("#mem_pwd").val()) == null || $.trim($("#mem_pwd").val()) == "" ){//허용되지 않은 글자는 null.
 					$("#mem_pwd_label").text("필수 입력 사항입니다.");
 					$("#mem_pwd_label").css("color", "red");
 					alert("비밀번호를 입력해주세요");
 					return;
 				} else { $("#mem_pwd_label").text(""); }
 				
 				
 				if( $("#mem_pwd").val().match(onlyPwd) == null ){//허용되지 않은 글자는 null.
 					$("#mem_pwd_label").text("영문 소문자, 숫자, 특수 문자만 허용 됩니다.");
 					alert("비밀번호 조건에 맞지 않습니다.");
 					return;
 				} else { $("#mem_pwd_label").text(""); }

 				if( $("#mem_pwd").val() != $("#pwdcheck").val() ){
 					$("#pwdchk_label").text("비밀번호가 불일치 합니다.");
 					$("#pwdchk_label").css("color", "red");
 					alert("비밀번호를 다시 확인해주세요.");
 					return;
 				} else { $("#pwdchk_label").text(""); }
 				
 				
 				if($.trim( $("#mem_addr1").val() ) == "" || $.trim( $("#mem_addr1").val() ) == null){
 					$("#mem_addr1_label").text("필수 입력 사항입니다.");
 					$("#mem_addr1_label").css("color", "red");
 					alert("우편번호 찾기를 이용하여 주소를 입력해주세요.");
 					return;
 				}else {
 					$("#mem_addr1_label").text("");
 				}
 				
 				if($.trim( $("#mem_addr2").val() ) == "" || $.trim( $("#mem_addr2").val() ) == null){
 					$("#mem_addr2_label").text("필수 입력 사항입니다.");
 					$("#mem_addr2_label").css("color", "red");
 					alert("상세주소를 입력해주세요.");
 					return;
 				}else {
 					$("#mem_addr2_label").text("");
 				}
 				

 				let tmpTel1 = $.trim( $("#tel1").val() );
 				let tmpTel2 = $.trim( $("#tel2").val() );
 				let tmpTel3 = $.trim( $("#tel3").val() );

 				if( ( tmpTel1 != "" && tmpTel1.match(onlyNum) == null )
 					|| ( tmpTel2 != "" && tmpTel2.match(onlyNum) == null )
 					|| ( tmpTel3 != "" && tmpTel3.match(onlyNum) == null ) ){
 					$("#tel1_label").text("숫자만 허용 됩니다.");
 					alert("전화번호는 숫자만 허용됩니다.");
 					return;
 				} else { $("#tel1_label").text(""); }
 				
 				
 				if($.trim( $("#tel1").val() ) == "" || $.trim( $("#tel1").val() ) == null){
 					$("#tel1_label").text("필수 입력 사항입니다.");
 					$("#tel1_label").css("color", "red");
 					alert("전화번호를 입력해주세요.");
 					return;
 				}else{
 					$("#tel1_label").text("");
 				}
 				if($.trim( $("#tel2").val() ) == "" || $.trim( $("#tel2").val() ) == null){
 					$("#tel1_label").text("필수 입력 사항입니다.");
 					$("#tel1_label").css("color", "red");
 					alert("전화번호를 입력해주세요.");
 					return;
 				}else{
 					$("#tel1_label").text("");
 				}
 				if($.trim( $("#tel3").val() ) == "" || $.trim( $("#tel3").val() ) == null){
 					$("#tel1_label").text("필수 입력 사항입니다.");
 					$("#tel1_label").css("color", "red");
 					alert("전화번호를 입력해주세요.");
 					return;
 				}else{
 					$("#tel1_label").text("");
 				}
 				

 				let tmpEmail1 = $.trim( $("#email1").val() );
 				let tmpEmail2 = $.trim( $("#email2").val() );

 				if( ( tmpEmail1 != "" && tmpEmail1.match(onlyEmail) == null )
 					|| ( tmpEmail2 != "" && tmpEmail2.match(onlyEmail) == null ) ){
 					$("#email1_label").text("영문 대소문자와 숫자만 허용 됩니다.");
 					alert("이메일 확인해주세요.");
 					return;
 				} else { $("#email1_label").text(""); }
 				
 				if($.trim( $("#email1").val() ) == "" || $.trim( $("#email1").val() ) == null){
 					$("#email1_label").text("필수 입력 사항입니다.");
 					$("#email1_label").css("color", "red");
 					alert("이메일 입력해주세요.");
 					return;
 				}else{
 					$("#email1_label").text("");
 				}
 				if($.trim( $("#email2").val() ) == "" || $.trim( $("#email2").val() ) == null){
 					$("#email2_label").text("필수 사항입니다.");
 					$("#email2_label").css("color", "red");
 					alert("이메일 선택해주세요.");
 					return;
 				}else{
 					$("#email2_label").text("");
 				}
 				//alert( service_agree.checked );//javascript
 				//alert( $("#service_agree").prop("checked") );//jquery
 				
// 				//================================================================
 				//정보 전송
 				$.post(
 						"${pageContext.request.contextPath}/mypage/update"
 						, {
 							 mem_cert2 : $("#mem_cert2").prop("checked")
 							, mem_pwd : $("#mem_pwd").val()
 							, mem_post : $("#mem_post").val()
 							, mem_addr1 : $("#mem_addr1").val()
 							, mem_addr2 : $("#mem_addr2").val()
 							, tel1 : $("#tel1").val()
 							, tel2 : $("#tel2").val()
 							, tel3 : $("#tel3").val()
 							, email1 : $("#email1").val()
 							, email2 : $("#email2").val()
 							
 						}
 						, function(data, status) {
 							if(data == 1){
 								alert("회원 정보 수정 완료. ");
 								location.href="${pageContext.request.contextPath}/mypage/profile_man";
 							}else if(data == 0){
 								alert("잠시 후 다시 시도해주세요.");
 							}
 						}//call back function
 				);//post
 				
 				

 			});//click
 		});//ready
 		</script>
</body>
</html>