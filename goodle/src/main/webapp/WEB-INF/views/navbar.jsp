<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<%@ include file="/WEB-INF/views/var_header.jsp" %>
	<!-- navbar -->
    <nav class="navbar navbar-light navbar-expand-md py-3" style="color: var(--red);">
        <div class="container"><a class="navbar-brand d-flex align-items-center" href="file:///C:/Users/kyleb/Desktop/testing/untitled.html#"><svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" viewBox="0 0 16 16" class="bi bi-bezier">
                    </svg></span><span></span></a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-3"><span class="sr-only"></span></button>
            <div class="collapse navbar-collapse" id="navcol-3">
            </div>
        </div>
    </nav>
    
      <ul class="nav flex-column shadow d-flex sidebar">
        <li class="nav-item logo-holder">
            <div class="text-center text-white logo py-4 mx-4">
            	<a class="text-white text-decoration-none" id="title" href="${pageContext.request.contextPath}/mypage/mypage"><strong>구들구들</strong></a>
            	<a class="text-white float-right" id="sidebarToggleHolder" href="file:///C:/Users/kyleb/Desktop/testing/untitled.html#"><i class="fas fa-bars" id="sidebarToggle"></i></a></div>
        </li>
    </ul>
    <!-- navbar -->
    
 