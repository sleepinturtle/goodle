<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>구들구들</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/dashboard/assets/img/favicon.ico"/>
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
<%--        	<script src="${pageContext.request.contextPath}/resources/dashboard/js/scripts.js"></script> --%>
		<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    	<style type="text/css">
    		#recipe {
    			text-align: center;
    		}
    	</style>
    </head>
    <body class="sb-nav-fixed">
    <%@ include file="/WEB-INF/views/var_header.jsp"%>
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top" style="background-color: #DC3534;">
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav">
				<li class="nav-item float-right">
					<a href="${pageContext.request.contextPath}/login/login_form">
						<button id="login" name="login" class="btn btn-success">로그인</button>
					</a>
				</li>
			</ul>
				
		</div>
	</nav>
	
	<nav class="navbar navbar-expand-lg navbar-dark" id="sideNav" style="background-color: #DC3534">
            <a class="navbar-brand js-scroll-trigger" href="#page-top">
                <span class="d-block d-lg-none">구들구들</span>
                <img class="img-fluid img-profile rounded-circle mx-auto mb-2" src="${pageContext.request.contextPath}/resources/dashboard/assets/img/logo.jfif" alt="..." />
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
           
        <main>
            <section class="resume-section" id="about" style="background-repeat: no-repeat; background-image: url('${pageContext.request.contextPath}/resources/dashboard/assets/img/mainback3.jpg')">
                <div class="resume-section-content float-right" style="text-align: center; text-transform;">
                   
                  	<h1 class="mb-0">
                        	구들구들
                    </h1>
                    
                    <p class="lead mb-5" style="background-color: white; width: 100%; font-weight: bold;">건강한 식단의 시작</p>
        
                      <a href="#custom">
		                 <button type="button" class="btn btn-success btn-lg mt-5">시작하기</button>
	                  </a>
                </div>
          
            </section>
            <hr class="m-0" />
            <!-- motive-->
            
            <section class="resume-section" id="motive">
                <div class="resume-section-content">
                	<br><br>
                    <h2 class="mb-5">중요 가치</h2>
                    <div class="d-flex flex-column flex-md-row justify-content-between mb-5">
                        <div class="flex-grow-1">
                        	<img alt="..." src="${pageContext.request.contextPath}/resources/dashboard/assets/img/delivery.png" class="img-fluid">
                            <h3 class="mb-0">고객의 편의성</h3>
                            <p style="font-size: 20px; font-weight: bold;">고객의 라이프 스타일을 위해서 고객이 설정한 시간에 원하는 레시피와 신선재료들을 준비하여 보냅니다.</p>
                        </div>
                    </div>
                    <div class="d-flex flex-column flex-md-row justify-content-between mb-5">
                        <div class="flex-grow-1">
                        	<img alt="..." src="${pageContext.request.contextPath}/resources/dashboard/assets/img/custom.png" class="img-fluid">
                            <h3 class="mb-0">고객 정보를 바탕으로 레시피 추천</h3>
                            <p style="font-size: 20px; font-weight: bold;">고객의 재료 선호도 및 식습관을 바탕으로 레시피를 우선 추천합니다. 혹시 비건이시라면 비건을 위한 레시피도 준비되어 있습니다.</p>
                        </div>
                    </div>
                    <div class="d-flex flex-column flex-md-row justify-content-between mb-5">
                        <div class="flex-grow-1">
                        	<img alt="..." src="${pageContext.request.contextPath}/resources/dashboard/assets/img/share.png" class="img-fluid">
                            <h3 class="mb-0">고객의 요리 경험</h3>
                            <p style="font-size: 20px; font-weight: bold;">요리를 시작하고 싶으시거나 요리를 준비하는 과정이 싫으신 분들에게 요리의 즐거움을 드리고 경험을 공유하고 싶습니다.</p>
                        </div>
                    </div>
                </div>
                <div>
	                <img style="border: 4px solid #DC3435; margin-top: 0px;" alt="..." src="${pageContext.request.contextPath}/resources/dashboard/assets/img/second page.jpg">
                </div>
            </section>
            <hr class="m-0" />
            <!-- service-->
            <section class="resume-section" id="service">
                <div class="resume-section-content">
                    <h2 class="mb-5">서비스</h2>
						<div class="card">
							<img alt="사진" src="">
							<div class="card-body">
							<h4>제목입니다</h4>
							<p>내용입니다.</p>
							</div>
						</div>
						<div class="card">
							<img alt="사진" src="">
							<div class="card-body">
							<h4>제목입니다</h4>
							<p>내용입니다.</p>
							</div>
						</div>
						<div class="card">
							<img alt="사진" src="">
							<div class="card-body">
							<h4>제목입니다</h4>
							<p>내용입니다.</p>
							</div>
						</div>
	      
				</div>
				
				
            </section>
            <hr class="m-0" />
            <!-- RECIPE-->
            <section class="resume-section" id="recipe">
                <div class="resume-section-content">
                    
	                <div id="carousel-1" class="carousel slide" data-bs-ride="carousel">
	                	<div class="carousel-inner">
	                		<div class="carousel-item active">
	                			<div>
	                			<img src="${pageContext.request.contextPath}/resources/dashboard/assets/img/닭볶음탕.png"/>
	                			</div>
	                			<div style="background-color: #d9534f; color: white; font-weight: bold; font-size: 6em;">닭볶음탕</div>
	                		</div>
	                		<div class="carousel-item">
	                			<div>
	                			<img src="${pageContext.request.contextPath}/resources/dashboard/assets/img/바지락 클램 차우더.jpg" alt="slide" />
	                			</div>
	                			<div style="background-color: #d9534f; color: white; font-weight: bold; font-size: 6em;">바지락 클램 차우더</div>
	                		</div>
	                		<div class="carousel-item">
	                			<div>
	                			<img src="${pageContext.request.contextPath}/resources/dashboard/assets/img/사천식 마파두부.jpg" alt="slide"/>
	                			</div>
	                			<div style="background-color: #d9534f; color: white; font-weight: bold; font-size: 6em;">사천식 마파두부</div>
	                		</div>
	                		<div class="carousel-item">
	                			<div>
	                			<img src="${pageContext.request.contextPath}/resources/dashboard/assets/img/칼바사 투움바 파스타.jpg"/>
	                			</div>
	                			<div style="background-color: #d9534f; color: white; font-weight: bold; font-size: 6em;">칼바사 투움바 파스타</div>
	                		</div>
	                		<div class="carousel-item">
	                			<div>
	                			<img src="${pageContext.request.contextPath}/resources/dashboard/assets/img/만두전골.jpg"/>
	                			</div>
	                			<div style="background-color: #d9534f; color: white; font-weight: bold; font-size: 6em;">만두전골</div>
	                		</div>
	                		<div class="carousel-item">
	                			<div>
	                			<img  src="${pageContext.request.contextPath}/resources/dashboard/assets/img/밀푀유나베.jpg" alt="slide"/>
	                			</div>
	                			<div style="background-color: #d9534f; color: white; font-weight: bold; font-size: 6em;">밀푀유나베</div>
	                		</div>
	                		<div class="carousel-item">
	                			<div>
	                			<img src="${pageContext.request.contextPath}/resources/dashboard/assets/img/마라 양고기 볶음.png"/>
	                			</div>
	                			<div style="background-color: #d9534f; color: white; font-weight: bold; font-size: 6em;">마라 양고기 볶음</div>
	                		</div>
	                		<div class="carousel-item">
	                			<div>
	                			<img src="${pageContext.request.contextPath}/resources/dashboard/assets/img/양고기찹스테이크.png"/>
	                			</div>
	                			<div style="background-color: #d9534f; color: white; font-weight: bold; font-size: 6em;">양고기찹스테이크</div>
	                		</div>
	                		<div class="carousel-item">
	                			<div>
	                			<img src="${pageContext.request.contextPath}/resources/dashboard/assets/img/닭고기 치킨카레.png"/>
	                			</div>
	                			<div style="background-color: #d9534f; color: white; font-weight: bold; font-size: 6em;">닭고기 치킨카레</div>
	                		</div>
	                		<div class="carousel-item">
	                			<div>
	                			<img src="${pageContext.request.contextPath}/resources/dashboard/assets/img/소고기무국.png"/>
	                			</div>
	                			<div style="background-color: #d9534f; color: white; font-weight: bold; font-size: 6em;">소고기무국</div>
	                		</div>
	                	</div>
	                	<div>
	                		<a class="carousel-control-prev" href="#carousel-1" role="button" data-bs-slide="prev">
	                			<span class="carousel-control-prev-icon" aria-hidden="true"></span>
	                			<span class="visually-hidden">Previous</span>
	                		</a>
	                		<a class="carousel-control-next" href="#carousel-1" role="button" data-bs-slide="next">
	                			<span class="carousel-control-next-icon" aria-hidden="true"></span>
	                			<span class="visually-hidden">Next</span>
	                		</a>
	                	</div>
	                </div>
	                <ol class="carousel-indicators">
	                	<li class="active" data-bs-target="#carousel-1" data-bs-slide-to="0"></li>
	                	<li data-bs-target="#carousel-1" data-bs-slide-to="1"></li>
	                	<li data-bs-target="#carousel-1" data-bs-slide-to="2"></li>
	                	<li data-bs-target="#carousel-1" data-bs-slide-to="3"></li>
	                	<li data-bs-target="#carousel-1" data-bs-slide-to="4"></li>
	                	<li data-bs-target="#carousel-1" data-bs-slide-to="5"></li>
	                	<li data-bs-target="#carousel-1" data-bs-slide-to="6"></li>
	                	<li data-bs-target="#carousel-1" data-bs-slide-to="7"></li>
	                	<li data-bs-target="#carousel-1" data-bs-slide-to="8"></li>
	                	<li data-bs-target="#carousel-1" data-bs-slide-to="9"></li>
	                	<li data-bs-target="#carousel-1" data-bs-slide-to="10"></li>
	                </ol>
                </div>
            </section>
            <hr class="m-0" />
            
            <!-- custom-->
            <section class="resume-section" id="custom">
                <div class="resume-section-content">
                    <h2 class="mb-5">Customize</h2>
			        <div class="container py-4 py-xl-5">
			        
			        <div class="row gy-4 row-cols-1 row-cols-md-2 row-cols-xl-3">
			            <div class="col">
			                <div class="card">
			                    <div class="card-body p-4">
			                        <div class="bs-icon-md bs-icon-rounded bs-icon-primary d-flex justify-content-center align-items-center d-inline-block mb-3 bs-icon"><svg class="bi bi-bell" xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" viewBox="0 0 16 16">
			                                <path d="M8 16a2 2 0 0 0 2-2H6a2 2 0 0 0 2 2zM8 1.918l-.797.161A4.002 4.002 0 0 0 4 6c0 .628-.134 2.197-.459 3.742-.16.767-.376 1.566-.663 2.258h10.244c-.287-.692-.502-1.49-.663-2.258C12.134 8.197 12 6.628 12 6a4.002 4.002 0 0 0-3.203-3.92L8 1.917zM14.22 12c.223.447.481.801.78 1H1c.299-.199.557-.553.78-1C2.68 10.2 3 6.88 3 6c0-2.42 1.72-4.44 4.005-4.901a1 1 0 1 1 1.99 0A5.002 5.002 0 0 1 13 6c0 .88.32 4.2 1.22 6z"></path>
			                            </svg></div>
			                        <h4 class="card-title">Title</h4>
			                        <p class="card-text">Erat netus est hendrerit, nullam et quis ad cras porttitor iaculis. Bibendum vulputate cras aenean.</p>
			                    </div>
			                </div>
			            </div>
			            <div class="col">
			                <div class="card">
			                    <div class="card-body p-4">
			                        <div class="bs-icon-md bs-icon-rounded bs-icon-primary d-flex justify-content-center align-items-center d-inline-block mb-3 bs-icon"><svg class="bi bi-bezier" xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" viewBox="0 0 16 16">
			                                <path fill-rule="evenodd" d="M0 10.5A1.5 1.5 0 0 1 1.5 9h1A1.5 1.5 0 0 1 4 10.5v1A1.5 1.5 0 0 1 2.5 13h-1A1.5 1.5 0 0 1 0 11.5v-1zm1.5-.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1zm10.5.5A1.5 1.5 0 0 1 13.5 9h1a1.5 1.5 0 0 1 1.5 1.5v1a1.5 1.5 0 0 1-1.5 1.5h-1a1.5 1.5 0 0 1-1.5-1.5v-1zm1.5-.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1zM6 4.5A1.5 1.5 0 0 1 7.5 3h1A1.5 1.5 0 0 1 10 4.5v1A1.5 1.5 0 0 1 8.5 7h-1A1.5 1.5 0 0 1 6 5.5v-1zM7.5 4a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1z"></path>
			                                <path d="M6 4.5H1.866a1 1 0 1 0 0 1h2.668A6.517 6.517 0 0 0 1.814 9H2.5c.123 0 .244.015.358.043a5.517 5.517 0 0 1 3.185-3.185A1.503 1.503 0 0 1 6 5.5v-1zm3.957 1.358A1.5 1.5 0 0 0 10 5.5v-1h4.134a1 1 0 1 1 0 1h-2.668a6.517 6.517 0 0 1 2.72 3.5H13.5c-.123 0-.243.015-.358.043a5.517 5.517 0 0 0-3.185-3.185z"></path>
			                            </svg></div>
			                        <h4 class="card-title">Title</h4>
			                        <p class="card-text">Erat netus est hendrerit, nullam et quis ad cras porttitor iaculis. Bibendum vulputate cras aenean.</p>
			                    </div>
			                </div>
			            </div>
			            <div class="col">
			                <div class="card">
			                    <div class="card-body p-4">
			                        <div class="bs-icon-md bs-icon-rounded bs-icon-primary d-flex justify-content-center align-items-center d-inline-block mb-3 bs-icon"><svg class="bi bi-flag" xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" viewBox="0 0 16 16">
			                                <path d="M14.778.085A.5.5 0 0 1 15 .5V8a.5.5 0 0 1-.314.464L14.5 8l.186.464-.003.001-.006.003-.023.009a12.435 12.435 0 0 1-.397.15c-.264.095-.631.223-1.047.35-.816.252-1.879.523-2.71.523-.847 0-1.548-.28-2.158-.525l-.028-.01C7.68 8.71 7.14 8.5 6.5 8.5c-.7 0-1.638.23-2.437.477A19.626 19.626 0 0 0 3 9.342V15.5a.5.5 0 0 1-1 0V.5a.5.5 0 0 1 1 0v.282c.226-.079.496-.17.79-.26C4.606.272 5.67 0 6.5 0c.84 0 1.524.277 2.121.519l.043.018C9.286.788 9.828 1 10.5 1c.7 0 1.638-.23 2.437-.477a19.587 19.587 0 0 0 1.349-.476l.019-.007.004-.002h.001M14 1.221c-.22.078-.48.167-.766.255-.81.252-1.872.523-2.734.523-.886 0-1.592-.286-2.203-.534l-.008-.003C7.662 1.21 7.139 1 6.5 1c-.669 0-1.606.229-2.415.478A21.294 21.294 0 0 0 3 1.845v6.433c.22-.078.48-.167.766-.255C4.576 7.77 5.638 7.5 6.5 7.5c.847 0 1.548.28 2.158.525l.028.01C9.32 8.29 9.86 8.5 10.5 8.5c.668 0 1.606-.229 2.415-.478A21.317 21.317 0 0 0 14 7.655V1.222z"></path>
			                            </svg></div>
			                        <h4 class="card-title">Title</h4>
			                        <p class="card-text">Erat netus est hendrerit, nullam et quis ad cras porttitor iaculis. Bibendum vulputate cras aenean.</p>
			                    </div>
			                </div>
			            </div>
			        </div>
			        <div class="row gy-4 row-cols-1 row-cols-md-2 row-cols-xl-3">
			            <div class="col">
			                <div class="card">
			                    <div class="card-body p-4">
			                        <div class="bs-icon-md bs-icon-rounded bs-icon-primary d-flex justify-content-center align-items-center d-inline-block mb-3 bs-icon"><svg class="bi bi-bell" xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" viewBox="0 0 16 16">
			                                <path d="M8 16a2 2 0 0 0 2-2H6a2 2 0 0 0 2 2zM8 1.918l-.797.161A4.002 4.002 0 0 0 4 6c0 .628-.134 2.197-.459 3.742-.16.767-.376 1.566-.663 2.258h10.244c-.287-.692-.502-1.49-.663-2.258C12.134 8.197 12 6.628 12 6a4.002 4.002 0 0 0-3.203-3.92L8 1.917zM14.22 12c.223.447.481.801.78 1H1c.299-.199.557-.553.78-1C2.68 10.2 3 6.88 3 6c0-2.42 1.72-4.44 4.005-4.901a1 1 0 1 1 1.99 0A5.002 5.002 0 0 1 13 6c0 .88.32 4.2 1.22 6z"></path>
			                            </svg></div>
			                        <h4 class="card-title">Title</h4>
			                        <p class="card-text">Erat netus est hendrerit, nullam et quis ad cras porttitor iaculis. Bibendum vulputate cras aenean.</p>
			                    </div>
			                </div>
			            </div>
			            <div class="col">
			                <div class="card">
			                    <div class="card-body p-4">
			                        <div class="bs-icon-md bs-icon-rounded bs-icon-primary d-flex justify-content-center align-items-center d-inline-block mb-3 bs-icon"><svg class="bi bi-bezier" xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" viewBox="0 0 16 16">
			                                <path fill-rule="evenodd" d="M0 10.5A1.5 1.5 0 0 1 1.5 9h1A1.5 1.5 0 0 1 4 10.5v1A1.5 1.5 0 0 1 2.5 13h-1A1.5 1.5 0 0 1 0 11.5v-1zm1.5-.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1zm10.5.5A1.5 1.5 0 0 1 13.5 9h1a1.5 1.5 0 0 1 1.5 1.5v1a1.5 1.5 0 0 1-1.5 1.5h-1a1.5 1.5 0 0 1-1.5-1.5v-1zm1.5-.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1zM6 4.5A1.5 1.5 0 0 1 7.5 3h1A1.5 1.5 0 0 1 10 4.5v1A1.5 1.5 0 0 1 8.5 7h-1A1.5 1.5 0 0 1 6 5.5v-1zM7.5 4a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1z"></path>
			                                <path d="M6 4.5H1.866a1 1 0 1 0 0 1h2.668A6.517 6.517 0 0 0 1.814 9H2.5c.123 0 .244.015.358.043a5.517 5.517 0 0 1 3.185-3.185A1.503 1.503 0 0 1 6 5.5v-1zm3.957 1.358A1.5 1.5 0 0 0 10 5.5v-1h4.134a1 1 0 1 1 0 1h-2.668a6.517 6.517 0 0 1 2.72 3.5H13.5c-.123 0-.243.015-.358.043a5.517 5.517 0 0 0-3.185-3.185z"></path>
			                            </svg></div>
			                        <h4 class="card-title">Title</h4>
			                        <p class="card-text">Erat netus est hendrerit, nullam et quis ad cras porttitor iaculis. Bibendum vulputate cras aenean.</p>
			                    </div>
			                </div>
			            </div>
			            <div class="col">
			                <div class="card">
			                    <div class="card-body p-4">
			                        <div class="bs-icon-md bs-icon-rounded bs-icon-primary d-flex justify-content-center align-items-center d-inline-block mb-3 bs-icon"><svg class="bi bi-flag" xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" viewBox="0 0 16 16">
			                                <path d="M14.778.085A.5.5 0 0 1 15 .5V8a.5.5 0 0 1-.314.464L14.5 8l.186.464-.003.001-.006.003-.023.009a12.435 12.435 0 0 1-.397.15c-.264.095-.631.223-1.047.35-.816.252-1.879.523-2.71.523-.847 0-1.548-.28-2.158-.525l-.028-.01C7.68 8.71 7.14 8.5 6.5 8.5c-.7 0-1.638.23-2.437.477A19.626 19.626 0 0 0 3 9.342V15.5a.5.5 0 0 1-1 0V.5a.5.5 0 0 1 1 0v.282c.226-.079.496-.17.79-.26C4.606.272 5.67 0 6.5 0c.84 0 1.524.277 2.121.519l.043.018C9.286.788 9.828 1 10.5 1c.7 0 1.638-.23 2.437-.477a19.587 19.587 0 0 0 1.349-.476l.019-.007.004-.002h.001M14 1.221c-.22.078-.48.167-.766.255-.81.252-1.872.523-2.734.523-.886 0-1.592-.286-2.203-.534l-.008-.003C7.662 1.21 7.139 1 6.5 1c-.669 0-1.606.229-2.415.478A21.294 21.294 0 0 0 3 1.845v6.433c.22-.078.48-.167.766-.255C4.576 7.77 5.638 7.5 6.5 7.5c.847 0 1.548.28 2.158.525l.028.01C9.32 8.29 9.86 8.5 10.5 8.5c.668 0 1.606-.229 2.415-.478A21.317 21.317 0 0 0 14 7.655V1.222z"></path>
			                            </svg></div>
			                        <h4 class="card-title">Title</h4>
			                        <p class="card-text">Erat netus est hendrerit, nullam et quis ad cras porttitor iaculis. Bibendum vulputate cras aenean.</p>
			                    </div>
			                </div>
			            </div>
			        </div>
			    </div>
			   
                </div>
            </section>
            
            <!-- info -->       
            <section class="resume-section" id="info">
                <div class="resume-section-content">
                    <h2 class="mb-5">기본 정보 입력</h2>
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
                			
							
							<td style="font-weight: bold;">
							이름
                			<input type="text" id="mem_name" name="mem_name" placeholder="홍길동">
                			<label for="mem_name" id="mem_name_label"></label>
                			</td>
                		</tr>
                		<tr>
                			<td style="font-weight: bold;">
                				<div class="input-group">
                					
	                			 	아 이 디<input type="text" id="mem_id" name="mem_id" placeholder="아이디 입력">
                					<div class="input-group-append">
		                				<button type="button" id="dupcheck" name="dupcheck" class="btn btn-success">아이디 중복확인</button>
                						<label for="dupcheck" id="dupcheck_label"></label>
                						
                					</div>
                				</div>
                			</td>	
                		</tr>
                		<tr>
                			
                			<td style="font-weight: bold;">
                			
                			비 밀 번 호<input type="password" id="mem_pwd" name="mem_pwd" placeholder="비밀번호 입력">
                			<label for="mem_pwd" id="mem_pwd_label"></label>
                			</td>
                		</tr>
                		<tr>
                			<td style="font-weight: bold;">
                			
                			비 밀 번 호 확인<input type="password" id="pwdcheck" name="pwdcheck" placeholder="비밀번호 재입력">
                			<label for="pwdcheck" id="pwdchk_label"></label>
                			</td>
                		</tr>
                		<tr>
                			
                			<td style="font-weight: bold;">
                			기본 배송지/주소
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
                			
                			<td style="font-weight: bold;">
                			
	                			전 화 번 호<input type="text" id="tel1" name="tel1" placeholder="010">
	                			
	                			-<input type="text" id="tel2" name="tel2" placeholder="1234">
	                			
	                			-<input type="text" id="tel3" name="tel3" placeholder="5678">
	                			<label for="tel1" id="tel1_label"></label>
	                			
                			</td>
                		</tr>
                		<tr>
                			<td style="font-weight: bold;">
                				
                				이 메 일<input type="email" id="email1" name="email1" placeholder="이메일 입력">
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
                   			<td style="font-weight: bold;">
                   				사용자 이름  <input type="text" id="card_name" name="card_name" placeholder="이름 입력">
                   						<label for="card_name" id="card_name_label"></label>
                   			</td>
                   		</tr>
                   		<tr>
                   			<td style="font-weight: bold;">
                   				카드 번호  <input type="text" id="card_no" name="card_no" placeholder="'-'없이 카드 번호 입력">
                   						<label for="card_no" id="card_no_label"></label>
                   			</td>
                   		</tr>
                   		<tr>
                   			<td style="font-weight: bold;">
                   				유효 기간  <select class="form-control" id="card_exp1" name="card_exp1">
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
                   			<td style="font-weight: bold;">
                   				CVC<input type="text" id="card_cvc" name="card_cvc"> 
                   					<label for="card_cvc" id="card_cvc_label"></label>
                   			</td>
                   		</tr>
                   		<tr>
                   			<td style="font-weight: bold;">
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
                				<button type="button" class="btn btn-success" id="join">회원 가입</button>
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
        </main>
        </div>
<!--         <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script> -->
<%--         <script src="${pageContext.request.contextPath}/resources/dashboard/js/scripts.js"></script> --%>
<!--         <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script> -->
<%--         <script src="${pageContext.request.contextPath}/resources/dashboard/assets/demo/chart-area-demo.js"></script> --%>
<%--         <script src="${pageContext.request.contextPath}/resources/dashboard/assets/demo/chart-bar-demo.js"></script> --%>
        <script type="text/javascript">
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
 					return;
 				}else {
 					$("#mem_name_label").text("");
 				}
 				
 				
 				if( $("#mem_cert1").prop("checked") == false ){
 					$("#mem_cert1_label").text("필수 선택 사항 입니다.");
 					return;
 				}else { $("#mem_cert1_label").text(""); }

 				
 				if($.trim($("#mem_id").val()) == null || $.trim($("#mem_id").val()) == ""){
 					$("#dupcheck_label").text("필수 입력사항입니다.");
 					$("#dupcheck_label").css("color", "red");
 					return;
 				} else{ $("#dupcheck_label").text("");}
 				

 				if( checkedID == "" || checkedID != $("#mem_id").val() ){
 					$("#dupcheck_label").text("아이디 중복 체크를 해 주세요.");
 					$("#dupcheck_label").css("color", "red");
 					return;
 				} else { $("#dupcheck_label").text(""); }

 				
 				if( $.trim($("#mem_pwd").val()) == null || $.trim($("#mem_pwd").val()) == "" ){//허용되지 않은 글자는 null.
 					$("#mem_pwd_label").text("필수 입력 사항입니다.");
 					$("#mem_pwd_label").css("color", "red");
 					return;
 				} else { $("#mem_pwd_label").text(""); }
 				
 				
 				if( $("#mem_pwd").val().match(onlyPwd) == null ){//허용되지 않은 글자는 null.
 					$("#mem_pwd_label").text("영문 소문자, 숫자, 특수 문자만 허용 됩니다.");
 					return;
 				} else { $("#mem_pwd_label").text(""); }

 				if( $("#mem_pwd").val() != $("#pwdcheck").val() ){
 					$("#pwdchk_label").text("비밀번호가 불일치 합니다.");
 					$("#pwdchk_label").css("color", "red");
 					return;
 				} else { $("#pwdchk_label").text(""); }
 				
 				
 				if($.trim( $("#mem_addr1").val() ) == "" || $.trim( $("#mem_addr1").val() ) == null){
 					$("#mem_addr1_label").text("필수 입력 사항입니다.");
 					$("#mem_addr1_label").css("color", "red");
 					return;
 				}else {
 					$("#mem_addr1_label").text("");
 				}
 				
 				if($.trim( $("#mem_addr2").val() ) == "" || $.trim( $("#mem_addr2").val() ) == null){
 					$("#mem_addr2_label").text("필수 입력 사항입니다.");
 					$("#mem_addr2_label").css("color", "red");
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
 					return;
 				} else { $("#tel1_label").text(""); }
 				
 				
 				if($.trim( $("#tel1").val() ) == "" || $.trim( $("#tel1").val() ) == null){
 					$("#tel1_label").text("필수 입력 사항입니다.");
 					$("#tel1_label").css("color", "red");
 					return;
 				}else{
 					$("#tel1_label").text("");
 				}
 				if($.trim( $("#tel2").val() ) == "" || $.trim( $("#tel2").val() ) == null){
 					$("#tel1_label").text("필수 입력 사항입니다.");
 					$("#tel1_label").css("color", "red");
 					return;
 				}else{
 					$("#tel1_label").text("");
 				}
 				if($.trim( $("#tel3").val() ) == "" || $.trim( $("#tel3").val() ) == null){
 					$("#tel1_label").text("필수 입력 사항입니다.");
 					$("#tel1_label").css("color", "red");
 					return;
 				}else{
 					$("#tel1_label").text("");
 				}
 				

 				let tmpEmail1 = $.trim( $("#email1").val() );
 				let tmpEmail2 = $.trim( $("#email2").val() );

 				if( ( tmpEmail1 != "" && tmpEmail1.match(onlyEmail) == null )
 					|| ( tmpEmail2 != "" && tmpEmail2.match(onlyEmail) == null ) ){
 					$("#email1_label").text("영문 대소문자와 숫자만 허용 됩니다.");
 					return;
 				} else { $("#email1_label").text(""); }
 				
 				if($.trim( $("#email1").val() ) == "" || $.trim( $("#email1").val() ) == null){
 					$("#email1_label").text("필수 입력 사항입니다.");
 					$("#email1_label").css("color", "red");
 					return;
 				}else{
 					$("#email1_label").text("");
 				}
 				if($.trim( $("#email2").val() ) == "" || $.trim( $("#email2").val() ) == null){
 					$("#email2_label").text("필수 입력 사항입니다.");
 					$("#email2_label").css("color", "red");
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
 					return;
 				}else {
 					$("#card_name_label").text("");
 				}
 				
 				
 				
 				if($.trim( $("#card_no").val() ) == "" || $.trim( $("card_no").val() ) == null){
 					$("#card_no_label").text("필수 입력 사항입니다.");
 					$("#card_no_label").css("color", "red");
 					return;
 				}else {
 					$("#card_no_label").text("");
 				}
 			
 				let tmpCardNo = $.trim( $("#card_no").val() );
 				if( tmpCardNo.match(onlyNum) == null){
 					$("#card_no_label").text("숫자만 입력하세요");
 					$("#card_no_label").css("color", "red");
 					return;
 				}else {
 					$("#card_no_label").text("");
 				}
 				
 				
 				if($.trim($("#card_no").val().length) < 15){
 					$("#card_no_label").text("카드번호는 15,16자리입니다.");
 					$("#card_no_label").css("color", "red");
 					return;
 				}else if($.trim($("#card_no").val().length) > 16){
 					$("#card_no_label").text("카드번호는 15,16자리입니다.");
 					$("#card_no_label").css("color", "red");
 					return;
 				}else if($.trim($("#card_no").val().length) == 15 || $.trim($("#card_no").val().length) == 16){
 					$("#card_no_label").text("");
 				}
 				
 				
 				let tmpCard_Exp1 = $.trim( $("#card_exp1").val() );
 				let tmpCard_Exp2 = $.trim( $("#card_exp2").val() );
 				
 				if(tmpCard_Exp1 == null || tmpCard_Exp1 == ""
 					|| tmpCard_Exp2 == null || tmpCard_Exp2 == ""){
 					$("#card_exp1_label").text("필수 선택 사항입니다.");
 					$("#card_exp1_label").css("color", "red");
 					return;
 				} else {$("#card_exp1_label").text("");}
 				
 				if($.trim( $("#card_cvc").val()) == null || $.trim( $("#card_cvc").val()) == ""){
 					$("#card_cvc_label").text("필수 입력 사항입니다.");
 					$("#card_cvc_label").css("color", "red");
 					return;
 				}else {
 					$("#card_cvc_label").text("");
 				}
 				
 				if($.trim($("#card_cvc").val().length) != 3){
 					$("#card_cvc_label").text("CVC는 3자리입니다.");
 					$("#card_cvc_label").css("color", "red");
 					return;
 				}else {
 					$("#card_cvc_label").text("");
 				}
 				
 				if($("#card_cvc").val().match(onlyNum) == null){
 					$("#card_cvc_label").text("숫자만 입력하세요");
 					$("#card_cvc_label").css("color", "red");
 					return;
 				}else {
 					$("#card_cvc_label").text("");
 				}
 				
 				
 				
 				if($.trim($("#card_pwd").val().length) > 2 || $.trim($("#card_pwd").val().length) < 2){
 					$("#card_pwd_label").text("비밀번호 앞 2자리 입력해주세요");
 					$("#card_pwd_label").css("color", "red");
 					return;
 				}else if($.trim($("#card_pwd").val().length) == 2) {
 					$("#card_pwd_label").text("");
 				}
 				
 				
 				if($("#card_pwd").val().match(onlyNum) == null){
 					$("#card_pwd_label").text("숫자만 입력하세요");
 					$("#card_pwd_label").css("color", "red");
 					return;
 				}else {
 					$("#card_pwd_label").text("");
 				}
 				if($.trim( $("#card_pwd").val()) == null || $.trim( $("#card_pwd").val()) == ""){
 					$("#card_pwd_label").text("필수 입력 사항입니다.");
 					$("#card_pwd_label").css("color", "red");
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
 							}else{
 								alert("잠시 후 다시 시도해 주세요.");
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
        </script>
    </body>
</html>