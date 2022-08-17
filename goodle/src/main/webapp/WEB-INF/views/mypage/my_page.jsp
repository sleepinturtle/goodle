<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
    <head>
<%@ include file="/WEB-INF/views/header.jsp" %>
    </head>
	<style> 

    .card-body{
    	text-align: center;
    }
     </style> 
<%@ include file="/WEB-INF/views/navbar.jsp" %>
<%@ include file="/WEB-INF/views/var_header.jsp" %>
                <main>
            	<div id="layoutSidenav_content">
                	<c:forEach var="dto" items="${dtoFromDB}"/>
                    <div class="container-fluid px-4">
<!--                         <h1 class="mt-4">마이페이지</h1> -->
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">@${login_info.mem_id}</li>
                        </ol>
                        <div class="row">
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-light grey text-black mb-4" >
                                    <div class="card-body">
                                    	<img class="card-img-top" src="${img_src}/profile.png"  alt="Card img">
                                    	<h5 class="card_title">프로필 관리</h5>
                                    	<p class="card_text">간단히 넣어보는 프로필 관리 페이지 설명글</p>
                                    </div>
                                        <a class="small text-black stretched-link" href="${pageContext.request.contextPath}/mypage/meminfo"></a>
<!--                                     <div class="card-footer d-flex align-items-center justify-content-between"> -->
<!--                                         <div class="small text-white"><i class="fas fa-angle-right"></i></div> -->
<!--                                     </div> -->
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-light grey text-black mb-4">
                                    <div class="card-body">
	                                    <img class="card-img-top" src="${img_src}/apple.png"  alt="Card img">
	                                    <h5 class="card_title">레시피 예약/확인</h5>
	                                    <p class="card_text">간단히 넣어보는 프로필 관리 페이지 설명글</p>
                                    </div>
                                        <a class="small text-black stretched-link" href="${pageContext.request.contextPath}/mypage/order"></a>
<!--                                     <div class="card-footer d-flex align-items-center justify-content-between"> -->
<!--                                         <div class="small text-black"><i class="fas fa-angle-right"></i></div> -->
<!--                                     </div> -->
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-light grey text-black mb-4">
                                    <div class="card-body">
                                    	 <img class="card-img-top" src="${img_src}/receipt.png"  alt="Card img">
	                                    <h5 class="card_title">결제 내역</h5>
	                                    <p class="card_text">간단히 넣어보는 프로필 관리 페이지 설명글</p>
                                    </div>
                                        <a class="small text-black stretched-link" href="${pageContext.request.contextPath}/mypage/payhistory"></a>
<!--                                     <div class="card-footer d-flex align-items-center justify-content-between"> -->
<!--                                         <div class="small text-black"><i class="fas fa-angle-right"></i></div> -->
<!--                                     </div> -->
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-light grey text-black mb-4">
                                    <div class="card-body">
                                    	 <img class="card-img-top" src="${img_src}/saved.png"  alt="Card img">
	                                    <h5 class="card_title">저장된 레시피</h5>
	                                    <p class="card_text">간단히 넣어보는 프로필 관리 페이지 설명글</p>
                                    </div>
                                        <a class="small text-black stretched-link" href="${pageContext.request.contextPath}/mypage/favrecipe"></a>
<!--                                     <div class="card-footer d-flex align-items-center justify-content-between"> -->
<!--                                         <div class="small text-white"><i class="fas fa-angle-right"></i></div> -->
<!--                                     </div> -->
                                </div>
                            </div>
                        </div>
                        	</div>
                </div>
                </main> 
<%@ include file="/WEB-INF/views/footer.jsp" %>

  </body>
</html>
