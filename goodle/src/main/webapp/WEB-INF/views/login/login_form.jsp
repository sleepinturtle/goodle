<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
<!--         <meta charset="utf-8" /> -->
<!--         <meta http-equiv="X-UA-Compatible" content="IE=edge" /> -->
<!--         <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" /> -->
<!--         <meta name="description" content="" /> -->
<!--         <meta name="author" content="" /> -->
<!--         <title>goodle login</title> -->
<%--         <link href="${pageContext.request.contextPath}/resources/dashboard/css/styles.css" rel="stylesheet" /> --%>
<!--         <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script> -->
<!--         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script> -->
	<%@ include file="/WEB-INF/views/links_head.jsp" %>
    </head>
    
    <body>
    	 
                    
		<%@ include file="/WEB-INF/views/navbar.jsp" %>
		
		<div id="layoutAuthentication" class="card mx-auto border-0">
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-5">
                                <div class="card-login shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">구들구들</h3></div>
                                    <div class="card-body">
                                        <form>
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="mem_id" type="text" placeholder="ID" />
                                                <label for="mem_id">ID</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="mem_pwd" type="password" placeholder="Password" />
                                                <label for="mem_pwd">Password</label>
                                            </div>
                                            <div class="form-check mb-3">
                                                <input class="form-check-input" id="inputRememberPassword" type="checkbox" value="" />
                                                <label class="form-check-label" for="inputRememberPassword">비밀번호 저장</label>
                                            </div>
                                            <div class="d-flex align-items-center justify-content-between mt-4 mb-0">
                                                <a class="small" href="${pageContext.request.contextPath}/main#info">회원가입</a>
                                                <button id="login_btn" type="button" class="btn btn-primary float-right">로그인</button>
<!--                                                 <a class="btn btn-primary" href="index.html">Login</a> -->
                                            </div>
                                        </form>
                                    </div>
                                    
<!--                                     <div class="card-footer text-center py-3"> -->
<!--                                         <div class="small"><a href="register.html">Need an account? Sign up!</a></div> -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
         <%@ include file="/WEB-INF/views/links_foot.jsp" %>
    </body>
    <script type="text/javascript">
		$(document).ready(function() {
			$("#login_btn").click(function() {
				$.post(
					"${pageContext.request.contextPath}/login/login"
					, {
						  mem_id : $("#mem_id").val()
						, mem_pwd : $("#mem_pwd").val()
					}
					, function(data, status){
						alert(data);
						if(data == 0){
							alert("아이디와 패스워드가 올바르지 않습니다.")
						}else if(data == 1){
							location.href ="${pageContext.request.contextPath}/mgrpage/mgrpage"
						}else if(data == 2){
							location.href ="${pageContext.request.contextPath}/mypage/mypage"
						}else if(data == 3){
							alert("탈퇴 처리된 회원입니다. 고객센터에 문의하세요.")
							location.href ="${pageContext.request.contextPath}/main"
						}else{
							alert("잠시 후 다시 시도해 주세요");
						}
					}//callback function
				);//post
			});//click
		});//ready
	</script>
</html>
