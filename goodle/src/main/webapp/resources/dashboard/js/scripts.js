 let checkedID = "";
 		let onlyNum = /^[0-9]+$/;
 		let engLowerAndNum = /^[a-z0-9]+$/;
 		let onlyPwd = /^[a-z0-9~!@#$%^&*().]+$/;
 		let onlyEmail = /^[a-zA-Z@.0-9]+$/;
 		
 	
 		
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
 			$("#join").click(function() {
 				//기본 정보 validation check
 				
 				
 				if($.trim( $("#mem_name").val() )== "" || $.trim( $("#mem_name").val() ) == null){
 					$("#mem_name_label").text("필수 입력 사항입니다.");
 					$("#mem_name_label").css("color", "red");
 					alert("이름을 적어주세요");
 					return;
 				}else {
 					$("#mem_name_label").text("");
 				}
 				
 				
 				if($.trim($("#mem_id").val()) == null || $.trim($("#mem_id").val()) == ""){
 					$("#dupcheck_label").text("필수 입력사항입니다.");
 					$("#dupcheck_label").css("color", "red");
 					alert("아이디를 입력해주세요.");
 					return;
 				} else{ $("#dupcheck_label").text("");}
 				

 				if( checkedID == "" || checkedID != $("#mem_id").val() ){
 					$("#dupcheck_label").text("아이디 중복확인 해주세요.");
 					$("#dupcheck_label").css("color", "red");
 					alert("아이디 중복확인 해주세요");
 					return;
 				} else { $("#dupcheck_label").text(""); }

 				
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
 				// 결제정보 validation check
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

 				//정보 전송
 				$.post(
 						"${pageContext.request.contextPath}/join"
 						, {
 							mem_cert1 : $("#mem_cert1").prop("checked")
 							, mem_cert2 : $("#mem_cert2").prop("checked")
 							, mem_name : $("#mem_name").val()
 							, mem_id : $("#mem_id").val()
 							, mem_pwd : $("#mem_pwd").val()
 							, mem_post : $("#mem_post").val()
 							, mem_addr1 : $("#mem_addr1").val()
 							, mem_addr2 : $("#mem_addr2").val()
 							, tel1 : $("#tel1").val()
 							, tel2 : $("#tel2").val()
 							, tel3 : $("#tel3").val()
 							, email1 : $("#email1").val()
 							, email2 : $("#email2").val()
 							, card_name : $("#card_name").val()
 							, card_no : $("#card_no").val()
 							, card_exp1 : $("#card_exp1").val()
 							, card_exp2 : $("#card_exp2").val()
 							, card_cvc : $("#card_cvc").val()
 							, card_pwd : $("#card_pwd").val()
 						}
 						, function(data, status) {
 							if(data == 1){
 								alert("회원 가입에 성공하셨습니다. 로그인 해주세요");
 								location.href="${pageContext.request.contextPath}/login/login_form";
 							}else if(data == 0){
 								alert("잠시 후 다시 시도해주세요.");
 							}
 						}//call back function
 				);//post
 				
 				

 			});//click
 		});//ready

 		$(document).ready(function() {
 			$("#dupcheck").click(function() {

 				if( $.trim( $("#mem_id").val() ) == "" ){
 					return;
 				}
 				if( $("#mem_id").val().match(engLowerAndNum) == null ){//허용되지 않은 글자는 null.
 					$("#dupcheck_label").text("영문 소문자와 숫자만 허용 됩니다.");
 					return;
 				} else { $("dupcheck_label").text(""); }

 				$.get(
 						$("#contextPath").val() + "/dupcheck"
 						, { mem_id : $("#mem_id").val() }
 						, function(data, status) {
 							if(data == 0){
 								$("#dupcheck_label").text("사용 가능한 아이디 입니다.");
 								$("#dupcheck_label").css("color", "blue");
 								checkedID = $("#mem_id").val();
 							} else if(data >= 1){
 								$("#dupcheck_label").text("이미 사용 중인 아이디 입니다.");
 								$("#dupcheck_label").css("color", "red");
 							} else {
 								alert("잠시 후 다시 시도해 주세요.");
 							}
 						}//call back function
 				);//get

 			});//click
 		});//ready

	 
 //=================================================
 var scrollElement = document.querySelector('#scroll');

 window.addEventListener('scroll', function(){
   var height = document.body.scrollHeight - this.innerHeight;
   var scrolledPixels = this.scrollY;
   var width = ((scrolledPixels / height) * 100).toFixed(2);
  
 });
 window.addEventListener('DOMContentLoaded', event => {

     // Activate Bootstrap scrollspy on the main nav element
     const sideNav = document.body.querySelector('#sideNav');
     if (sideNav) {
         new bootstrap.ScrollSpy(document.body, {
             target: '#sideNav',
             offset: 74,
         });
     };

     // Collapse responsive navbar when toggler is visible
     const navbarToggler = document.body.querySelector('.navbar-toggler');
     const responsiveNavItems = [].slice.call(
         document.querySelectorAll('#navbarResponsive .nav-link')
     );
     responsiveNavItems.map(function (responsiveNavItem) {
         responsiveNavItem.addEventListener('click', () => {
             if (window.getComputedStyle(navbarToggler).display !== 'none') {
                 navbarToggler.click();
             }
         });
     });

 });