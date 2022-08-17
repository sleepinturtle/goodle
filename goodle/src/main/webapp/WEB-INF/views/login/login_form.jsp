<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>goodle login</title>
        <link href="${pageContext.request.contextPath}/resources/dashboard/css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    </head>
    <style>
    .card{
    	height: 25rem;
    	margin-top : 10rem;
    	border: none;
    }
    .card-login{
    	height: 25rem;
    	margin-top : 15rem;
    	border: none;
    }
    .card-header{
    	background-color : #dc3545;
    }
   	.sb-nav-fixed{
   		overflow-y : hidden;
   	}
    </style>
    
    
    <body class="bg-white sb-nav-fixed">
    	 <div id="layoutAuthentication" class="card mx-auto">
                <main>
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
                                                <a class="small" href="join_form">회원가입</a>
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
                </main>
<!--             <div id="layoutAuthentication_footer"> -->
<!--                 <footer class="py-4 bg-light mt-auto"> include로 메인페이지 회사정보 footer를 여기에 적용 -->
<!--                     <div class="container-fluid px-4"> -->
<!--                         <div class="d-flex align-items-center justify-content-between small"> -->
<!--                             <div class="text-muted">Copyright &copy; Your Website 2022</div> -->
<!--                             <div> -->
<!--                                 <a href="#">Privacy Policy</a> -->
<!--                                 &middot; -->
<!--                                 <a href="#">Terms &amp; Conditions</a> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                 </footer> -->
<!--             </div> -->
        </div>
    	 <nav class="sb-topnav navbar navbar-expand navbar-dark bg-danger">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="${pageContext.request.contextPath}/main">구들구들</a>
            <!-- Sidebar Toggle-->
<!--             <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button> -->
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
<!--                 <div class="input-group"> -->
<!--                     <input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..." aria-describedby="btnNavbarSearch" /> -->
<!--                     <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i class="fas fa-search"></i></button> -->
<!--                 </div> -->
            </form>
           
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        
                    </div>
<!--                     <div class="sb-sidenav-footer"> -->
<!--                         <div class="small">Logged in as:</div> -->
<!--                         Start Bootstrap -->
<!--                     </div> -->
                </nav>
            </div>
        </div>
       
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="${pageContext.request.contextPath}/resources/dashboard/js/scripts.js"></script>
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
						}else{
							alert("잠시 후 다시 시도해 주세요");
						}
					}//callback function
				);//post
			});//click
		});//ready
	</script>
</html>
