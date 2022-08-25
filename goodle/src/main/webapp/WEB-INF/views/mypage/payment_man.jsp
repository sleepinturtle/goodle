<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>결제정보 관리</title>
    <%@ include file="/WEB-INF/views/links_head.jsp" %>
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
						     <!-- payinfo -->     
            <section class="resume-section" id="payinfo">
                <div class="resume-section-content">
                    <h2 class="mb-5">결제 정보</h2>
                     <table class="table table-hover">
                   		<tr>
                   			<th style="font-weight: bold;">사용자 이름</th>
                   			<td style="font-weight: bold;">
                   				  <input type="text" id="card_name" name="card_name" value="${login_info.card_name}">
                   						<label for="card_name" id="card_name_label"></label>
                   			</td>
                   		</tr>
                   		<tr>
                   			<th style="font-weight: bold;">카드 번호</th>
                   			<td style="font-weight: bold;">
                   				 <input type="text" id="card_no" name="card_no" value="${login_info.card_no}">
                   						<label for="card_no" id="card_no_label"></label>
                   			</td>
                   		</tr>
                   		<tr>
                   			<th style="font-weight: bold;">카드 유효 기간</th>
                   			<td style="font-weight: bold;">
                   				  <select class="form-control" id="card_exp1" name="card_exp1">
                   							<option value="" selected="selected"></option>
                   							<option value="1">1월</option>
                   							<option value="2">2월</option>
                   							<option value="3">3월</option>
                   							<option value="4">4월</option>
                   							<option value="5">5월</option>
                   							<option value="6">6월</option>
                   							<option value="7">7월</option>
                   							<option value="8">8월</option>
                   							<option value="9">9월</option>
                   							<option value="10">10월</option>
                   							<option value="11">11월</option>
                   							<option value="12">12월</option>
                   						</select>
                   			
		                   				<select class="form-control" id="card_exp2" name="card_exp2">
		                   					<option value="" selected="selected"></option>
		                   					<option value="22">22년</option>
		                   					<option value="23">23년</option>
		                   					<option value="24">24년</option>
		                   					<option value="25">25년</option>
		                   					<option value="26">26년</option>
		                   					<option value="27">27년</option>
		                   					<option value="28">28년</option>
		                   					<option value="29">29년</option>
		                   					<option value="30">30년</option>
		                   					<option value="31">31년</option>
		                   					<option value="32">32년</option>
		                   					<option value="33">33년</option>
		                   				</select>
                   						<label for="card_exp1" id="card_exp1_label"></label>
                   			</td>
                   		</tr>
                   		<tr>
                   			<th style="font-weight: bold;">CVC</th>
                   			<td style="font-weight: bold;">
                   				<input type="text" id="card_cvc" name="card_cvc"> 
                   					<label for="card_cvc" id="card_cvc_label"></label>
                   			</td>
                   		</tr>
                   		<tr>
                   			<th style="font-weight: bold;">카드 결제비밀번호 앞 2자리</th>
                   			<td style="font-weight: bold;">
                   				<input type="text" id="card_pwd" name="card_pwd"> 
                   									<label for="card_pwd" id="card_pwd_label"></label>
                   			</td>
                   		</tr>
                   		
                   </table>
                   <a href="${pageContext.request.contextPath}/mypage/mypage">
	                				<button type="button" class="btn btn-success" id="back" name="back">뒤로 가기</button>
                	</a>
                   <button type="button" class="btn btn-success" id="update" style="float: right;">수정 완료</button>
                </div>
            </section>
						   
            
    </div>
    <%@ include file="/WEB-INF/views/links_foot.jsp" %>
	
	<script type="text/javascript">
	// 결제정보 validation check
	
	let checkedID = "";
 		let onlyNum = /^[0-9]+$/;
 		let engLowerAndNum = /^[a-z0-9]+$/;
 		let onlyPwd = /^[a-z0-9~!@#$%^&*().]+$/;
 		let onlyEmail = /^[a-zA-Z@.0-9]+$/;
	
	$(document).ready(function() {
		$("#update").click(function() {
			if($.trim( $("#card_name").val() ) == "" || $.trim( $("card_name").val() ) == null){
				$("#card_name_label").text("필수 입력 사항입니다.");
				$("#card_name_label").css("color", "red");
				alert("카드 사용자명을 입력해주세요.");
				return;
			}else {
				$("#card_name_label").text("");
			}
			
			
			
			if($.trim( $("#card_no").val() ) == "" || $.trim( $("card_no").val() ) == null){
				$("#card_no_label").text("필수 입력 사항입니다.");
				$("#card_no_label").css("color", "red");
				alert("카드번호를 입력해주세요.");
				return;
			}else {
				$("#card_no_label").text("");
			}
		
			let tmpCardNo = $.trim( $("#card_no").val() );
			if( tmpCardNo.match(onlyNum) == null){
				$("#card_no_label").text("숫자만 입력하세요");
				$("#card_no_label").css("color", "red");
				alert("카드번호는 숫자만 허용됩니다..");
				return;
			}else {
				$("#card_no_label").text("");
			}
			
			
			if($.trim($("#card_no").val().length) < 15){
				$("#card_no_label").text("카드번호는 15,16자리입니다.");
				$("#card_no_label").css("color", "red");
				alert("카드번호는 15,16자리입니다.");
				return;
			}else if($.trim($("#card_no").val().length) > 16){
				$("#card_no_label").text("카드번호는 15,16자리입니다.");
				$("#card_no_label").css("color", "red");
				alert("카드번호는 15,16자리입니다.");
				return;
			}else if($.trim($("#card_no").val().length) == 15 || $.trim($("#card_no").val().length) == 16){
				$("#card_no_label").text("");
			}
			
			
			let tmpCard_Exp1 = $.trim( $("#card_exp1").val() );
			let tmpCard_Exp2 = $.trim( $("#card_exp2").val() );
			
			if(tmpCard_Exp1 == null || tmpCard_Exp1 == ""
				|| tmpCard_Exp2 == null || tmpCard_Exp2 == ""){
				$("#card_exp1_label").text("필수 사항입니다.");
				$("#card_exp1_label").css("color", "red");
				alert("카드 유효기간을 선택해주세요.");
				return;
			} else {$("#card_exp1_label").text("");}
			
			if($.trim( $("#card_cvc").val()) == null || $.trim( $("#card_cvc").val()) == ""){
				$("#card_cvc_label").text("필수 입력 사항입니다.");
				$("#card_cvc_label").css("color", "red");
				alert("CVC 번호를 입력해주세요.");
				return;
			}else {
				$("#card_cvc_label").text("");
			}
			
			if($.trim($("#card_cvc").val().length) != 3){
				$("#card_cvc_label").text("CVC는 3자리입니다.");
				$("#card_cvc_label").css("color", "red");
				alert("CVC는 3자리입니다.");
				return;
			}else {
				$("#card_cvc_label").text("");
			}
			
			if($("#card_cvc").val().match(onlyNum) == null){
				$("#card_cvc_label").text("숫자만 입력하세요");
				$("#card_cvc_label").css("color", "red");
				alert("CVC 숫자만 입력해주세요.");
				return;
			}else {
				$("#card_cvc_label").text("");
			}
			
			
			
			if($.trim($("#card_pwd").val().length) > 2 || $.trim($("#card_pwd").val().length) < 2){
				$("#card_pwd_label").text("비밀번호 앞 2자리 입력해주세요");
				$("#card_pwd_label").css("color", "red");
				alert("카드 결제비밀번호 앞 2자리를 입력해주세요");
				return;
			}else if($.trim($("#card_pwd").val().length) == 2) {
				$("#card_pwd_label").text("");
			}
			
			
			if($("#card_pwd").val().match(onlyNum) == null){
				$("#card_pwd_label").text("숫자만 입력하세요");
				$("#card_pwd_label").css("color", "red");
				alert("카드 결제비밀번호 앞 2자리 숫자를 입력해주세요.");
				return;
			}else {
				$("#card_pwd_label").text("");
			}
			if($.trim( $("#card_pwd").val()) == null || $.trim( $("#card_pwd").val()) == ""){
				$("#card_pwd_label").text("필수 입력 사항입니다.");
				$("#card_pwd_label").css("color", "red");
				alert("카드 결제비밀번호는 필수입력 사항입니다.");
				return;
			}else {
				$("#card_pwd_label").text("");
			}
		});
	});//
	
		$(document).ready(function() {
			$("#update").click(function() {
				$.post(
 						"${pageContext.request.contextPath}/mypage/updatecard"
 						, {
 							card_name : $("#card_name").val()
 							, card_no : $("#card_no").val()
 							, card_exp1 : $("#card_exp1").val()
 							, card_exp2 : $("#card_exp2").val()
 							, card_cvc : $("#card_cvc").val()
 							, card_pwd : $("#card_pwd").val() 
 							
 						}
 						, function(data, status) {
 							if(data == 1){
 								alert("카드 정보 수정 완료. ");
 								location.href="${pageContext.request.contextPath}/mypage/payment_man";
 							}else if(data == 0){
 								alert("잠시 후 다시 시도해주세요.");
 							}
 						}//call back function
 				);//post
			});
		});
	
		

		//정보 전송
	</script>

</body>
</html>