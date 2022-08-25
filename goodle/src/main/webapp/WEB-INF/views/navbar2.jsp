<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<%@ include file="/WEB-INF/views/var_header.jsp" %>
	<!-- navbar -->
    <nav class="navbar navbar-light navbar-expand-md py-3" style="color: var(--red);">
        <div class="container"><a class="navbar-brand d-flex align-items-center" href="file:///C:/Users/kyleb/Desktop/testing/untitled.html#"><svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" viewBox="0 0 16 16" class="bi bi-bezier">
                    </svg></span></a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-3"><span class="sr-only"></span><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navcol-3">
                <ul class="navbar-nav mx-auto"></ul><a class="btn btn-success" role="button" href="${pageContext.request.contextPath}/login/logout">Logout</a>
            </div>
        </div>
    </nav>
    
    <ul class="nav flex-column shadow d-flex sidebar">
        <li class="nav-item logo-holder">
            <div class="text-center text-white logo py-4 mx-4">
            	<a class="text-white text-decoration-none" id="title" href="${pageContext.request.contextPath}/mypage/mypage"><strong>구들구들</strong></a>
            	<a class="text-white float-right" id="sidebarToggleHolder" href="file:///C:/Users/kyleb/Desktop/testing/untitled.html#"><i class="fas fa-bars" id="sidebarToggle"></i></a></div>
        </li>
        <li class="nav-item"></li>
        <li class="nav-item"></li>
        <li class="nav-item dropdown"><a class="dropdown-toggle nav-link text-left text-white py-1 px-0 position-relative" aria-expanded="false" data-toggle="dropdown" href="file:///C:/Users/kyleb/Desktop/testing/untitled.html#"><i class="fas fa-user mx-3"></i><span class="text-nowrap mx-2">프로필 관리</span><i class="fas fa-caret-down float-none float-lg-right fa-sm"></i></a>
            <div class="dropdown-menu border-0 animated fadeIn" style="">
            <a class="dropdown-item text-white" href="${pageContext.request.contextPath}/mypage/profile_man"><span>개인정보 관리</span></a>
            <a class="dropdown-item text-white" href="${pageContext.request.contextPath}/mypage/preference_man"><span>구독 관리</span></a>
            <a class="dropdown-item text-white" href="${pageContext.request.contextPath}/mypage/payment_man"><span>결제정보 관리</span></a></div>
        </li>
        <li class="nav-item"><a class="nav-link text-left text-white py-1 px-0" href="${pageContext.request.contextPath}/mypage/select"><i class="far fa-life-ring mx-3"></i><span class="text-nowrap mx-2">레시피 예약</span></a></li>
<%--         <li class="nav-item"><a class="nav-link text-left text-white py-1 px-0" href="${pageContext.request.contextPath}/mypage/favrecipe"><i class="fas fa-archive mx-3"></i><span class="text-nowrap mx-2">레시피 즐겨찾기</span></a></li> --%>
        <li class="nav-item"><a class="nav-link text-left text-white py-1 px-0" href="${pageContext.request.contextPath}/mypage/payhistory"><i class="fas fa-chart-bar mx-3"></i><span class="text-nowrap mx-2">결제내역</span></a></li>
        <li class="nav-item"><a class="nav-link text-left text-white py-1 px-0" href="${pageContext.request.contextPath}/qna/list"><i class="fas fa-chart-bar mx-3"></i><span class="text-nowrap mx-2">문의사항</span></a></li>
        <li class="nav-item"><a class="nav-link text-left text-white py-1 px-0" href="${pageContext.request.contextPath}/login/logout"><i class="fas fa-sign-out-alt mx-3"></i><i class="fa fa-caret-right d-none position-absolute"></i><span class="text-nowrap mx-2">Log out</span></a></li>
    </ul>
    <!-- navbar -->
    
 