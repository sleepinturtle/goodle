<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<!-- saved from url=(0053)file:///C:/Users/kyleb/Desktop/testing/untitled.html# -->
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>sidebar (1)</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/testing/assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lora">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/testing/assets/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/testing/assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/testing/assets/fonts/fontawesome5-overrides.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/testing/assets/css/Article-Clean.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/testing/assets/css/Articles-Cards-images.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/testing/assets/css/Navbar-Right-Links-icons.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/testing/assets/css/sidebar.css">
</head>

<body>
<%@ include file="/WEB-INF/views/var_header.jsp" %>
	<!-- navbar -->
    <nav class="navbar navbar-light navbar-expand-md py-3" style="color: var(--red);">
        <div class="container"><a class="navbar-brand d-flex align-items-center" href="file:///C:/Users/kyleb/Desktop/testing/untitled.html#"><span class="bs-icon-sm bs-icon-rounded bs-icon-primary d-flex justify-content-center align-items-center mr-2 bs-icon"><svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" viewBox="0 0 16 16" class="bi bi-bezier">
                        <path fill-rule="evenodd" d="M0 10.5A1.5 1.5 0 0 1 1.5 9h1A1.5 1.5 0 0 1 4 10.5v1A1.5 1.5 0 0 1 2.5 13h-1A1.5 1.5 0 0 1 0 11.5v-1zm1.5-.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1zm10.5.5A1.5 1.5 0 0 1 13.5 9h1a1.5 1.5 0 0 1 1.5 1.5v1a1.5 1.5 0 0 1-1.5 1.5h-1a1.5 1.5 0 0 1-1.5-1.5v-1zm1.5-.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1zM6 4.5A1.5 1.5 0 0 1 7.5 3h1A1.5 1.5 0 0 1 10 4.5v1A1.5 1.5 0 0 1 8.5 7h-1A1.5 1.5 0 0 1 6 5.5v-1zM7.5 4a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1z"></path>
                        <path d="M6 4.5H1.866a1 1 0 1 0 0 1h2.668A6.517 6.517 0 0 0 1.814 9H2.5c.123 0 .244.015.358.043a5.517 5.517 0 0 1 3.185-3.185A1.503 1.503 0 0 1 6 5.5v-1zm3.957 1.358A1.5 1.5 0 0 0 10 5.5v-1h4.134a1 1 0 1 1 0 1h-2.668a6.517 6.517 0 0 1 2.72 3.5H13.5c-.123 0-.243.015-.358.043a5.517 5.517 0 0 0-3.185-3.185z"></path>
                    </svg></span><span>???</span></a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-3"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navcol-3">
                <ul class="navbar-nav mx-auto"></ul><a class="btn btn-primary" role="button" href="file:///C:/Users/kyleb/Desktop/testing/untitled.html#">Logout</a>
            </div>
        </div>
    </nav>
    
      <ul class="nav flex-column shadow d-flex sidebar">
        <li class="nav-item logo-holder">
            <div class="text-center text-white logo py-4 mx-4">
            	<a class="text-white text-decoration-none" id="title" href="file:///C:/Users/kyleb/Desktop/testing/untitled.html#"><strong>구들구들</strong></a>
            	<a class="text-white float-right" id="sidebarToggleHolder" href="file:///C:/Users/kyleb/Desktop/testing/untitled.html#"><i class="fas fa-bars" id="sidebarToggle"></i></a></div>
        </li>
        <li class="nav-item"></li>
        <li class="nav-item"></li>
        <li class="nav-item dropdown"><a class="dropdown-toggle nav-link text-left text-white py-1 px-0 position-relative" aria-expanded="false" data-toggle="dropdown" href="file:///C:/Users/kyleb/Desktop/testing/untitled.html#"><i class="fas fa-user mx-3"></i><span class="text-nowrap mx-2">프로필 관리</span><i class="fas fa-caret-down float-none float-lg-right fa-sm"></i></a>
            <div class="dropdown-menu border-0 animated fadeIn" style="">
            <a class="dropdown-item text-white" href="file:///C:/Users/kyleb/Desktop/testing/untitled.html#"><span>개인정보 관리</span></a>
            <a class="dropdown-item text-white" href="file:///C:/Users/kyleb/Desktop/testing/untitled.html#"><span>선호도 변경</span></a>
            <a class="dropdown-item text-white" href="file:///C:/Users/kyleb/Desktop/testing/untitled.html#"><span>결제정보 관리</span></a></div>
        </li>
        <li class="nav-item"><a class="nav-link text-left text-white py-1 px-0" href="file:///C:/Users/kyleb/Desktop/testing/untitled.html#"><i class="far fa-life-ring mx-3"></i><span class="text-nowrap mx-2">레시피 예약</span></a></li>
        <li class="nav-item"><a class="nav-link text-left text-white py-1 px-0" href="file:///C:/Users/kyleb/Desktop/testing/untitled.html#"><i class="fas fa-archive mx-3"></i><span class="text-nowrap mx-2">레시피 즐겨찾기</span></a></li>
        <li class="nav-item"><a class="nav-link text-left text-white py-1 px-0" href="file:///C:/Users/kyleb/Desktop/testing/untitled.html#"><i class="fas fa-chart-bar mx-3"></i><span class="text-nowrap mx-2">결제내역</span></a></li>
        <li class="nav-item"><a class="nav-link text-left text-white py-1 px-0" href="file:///C:/Users/kyleb/Desktop/testing/untitled.html#"><i class="fas fa-chart-bar mx-3"></i><span class="text-nowrap mx-2">문의사항</span></a></li>
        <li class="nav-item"><a class="nav-link text-left text-white py-1 px-0" href="file:///C:/Users/kyleb/Desktop/testing/untitled.html#"><i class="fas fa-sign-out-alt mx-3"></i><i class="fa fa-caret-right d-none position-absolute"></i><span class="text-nowrap mx-2">Log out</span></a></li>
    </ul>
    <!-- navbar -->
    
    <!-- card -->
    <div class="container py-4 py-xl-5">
        <div class="row mb-5">
            <div class="col-md-8 col-xl-6 text-center mx-auto">
                <h2 class="font-weight-bold">mypage</h2>
            </div>
        </div>
        
    </div>
  <!-- /card -->
    <script src="${pageContext.request.contextPath}/resources/testing/assets/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/testing/assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/testing/assets/js/sidebar.js"></script>


</body></html>