<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>구독 관리</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/testing/assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lora">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,900">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/testing/assets/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/testing/assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/testing/assets/fonts/simple-line-icons.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/testing/assets/fonts/fontawesome5-overrides.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/testing/assets/css/-Filterable-Cards--Filterable-Cards.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/testing/assets/css/Advanced-Pricing-Cards.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/testing/assets/css/Article-Clean.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/testing/assets/css/Articles-Cards-images.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/testing/assets/css/Bootstrap-Calendar.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/css/swiper.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/testing/assets/css/Navbar-Right-Links-icons.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/testing/assets/css/sidebar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/testing/assets/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/testing/assets/css/Toggle-Switches.css">
    <%@ include file="/WEB-INF/views/links_head.jsp" %>
</head>

<body>
    <%@ include file="/WEB-INF/views/navbar2.jsp" %>
    
    
  <div class="pricing1 py-5 bg-white">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-md-8 text-center">
        <h3 class="mt-3 font-weight-medium mb-1">원하는 플랜을 선택해 주세요.</h3>
        <h6 class="subtitle">매주 레시피 예약하시기 전까진 자유롭게 플랜을 선택해 주세요.</h6>
<!--         <div class="switcher-box mt-4 d-flex align-items-center justify-content-center"> -->
<!--           <span class="font-14 font-weight-medium">MONTHLY</span> -->
<!--           <div class="onoffswitch position-relative mx-2"> -->
<!--             <input type="checkbox" name="onoffswitch1" class="onoffswitch-checkbox d-none" id="myonoffswitch1"> -->
<!--             <label class="onoffswitch-label d-block overflow-hidden" for="myonoffswitch1"> -->
<!-- 							<span class="onoffswitch-inner d-block"></span> -->
<!-- 							<span class="onoffswitch-switch d-block bg-white position-absolute"></span> -->
<!-- 						</label> -->
<!--           </div> -->
<!--           <span class="font-14 font-weight-medium">YEARLY</span> -->
<!--         </div> -->
      </div>
    </div>
    <!-- Row  -->
    <div class="row mt-5">
    <!-- Column -->
    <div class="col-lg-3 col-md-6">
        <div class="card text-center card-shadow on-hover border-0 mb-4">
          <div class="card-body font-14">
            <span class="badge badge-inverse bg-danger p-2 position-absolute price-badge font-weight-normal visually-hidden ">이용중</span>
            <h5 class="mt-3 mb-1 font-weight-medium">SELF</h5>
            <h6 class="subtitle font-weight-normal">1인 가구를 위한 플랜</h6>
            <div class="pricing my-3">
              <sup>원</sup>
              <span class="monthly display-5">59,000</span>
<!--               <span class="yearly display-5">1000</span> -->
              <small class="monthly">/week</small>
<!--               <small class="yearly">/yr</small> -->
<!--               <span class="d-block">Save <span class="font-weight-medium">$80</span> a Year</span> -->
            </div>
            <ul class="list-inline">
               <li class="d-block py-2">1인을 위한 3개 레시피 선택</li>
              <li class="d-block py-2">매주 새로운 레시피 추천</li>
              <li class="d-block py-2">다양하고 신선한 재료들 엄선</li>
              <li class="d-block py-2">원하는 날짜에 배송</li>
              <li class="d-block py-2">추가 레시피 선택 가능</li>
              <li class="d-block py-2">(추가 레시피 선택시 +5,000원)</li>
            </ul>
            <div class="bottom-btn">
              <a class="btn btn-danger-gradiant btn-md text-white btn-block" href="#f1"><span>Choose Plan</span></a>
            </div>
          </div>
        </div>
      </div>
      <!-- Column -->
      <div class="col-lg-3 col-md-6">
        <div class="card text-center card-shadow on-hover border-0 mb-4">
          <div class="card-body font-14">
<!--           <span class="badge badge-inverse p-2 position-absolute price-badge font-weight-normal">인기 플랜</span> -->
          <span class="badge badge-inverse bg-danger p-2 position-absolute price-badge font-weight-normal ">이용중</span>
            <h5 class="mt-3 mb-1 font-weight-medium">BASIC</h5>
            <h6 class="subtitle font-weight-normal">2인 가구를 위한 플랜</h6>
            <div class="pricing my-3">
              <sup>원</sup>
              <span class="monthly display-5">99,000</span>
<!--               <span class="yearly display-5">240</span> -->
              <small class="monthly">/week</small>
<!--               <small class="yearly">/yr</small> -->
<!--               <span class="d-block">Save <span class="font-weight-medium">$20</span> a Year</span> -->
            </div>
            <ul class="list-inline">
              <li class="d-block py-2">2인을 위한 3개 레시피 선택</li>
              <li class="d-block py-2">매주 새로운 레시피 추천</li>
              <li class="d-block py-2">다양하고 신선한 재료들 엄선</li>
              <li class="d-block py-2">원하는 날짜에 배송</li>
              <li class="d-block py-2">추가 레시피 선택 가능</li>
              <li class="d-block py-2">(추가 레시피 선택시 +10,000원)</li>
            </ul>
            <div class="bottom-btn">
              <a class="btn btn-danger-gradiant btn-md text-white btn-block" href="#f1"><span>Choose Plan</span></a>
            </div>
          </div>
        </div>
      </div>
      <!-- Column -->
      <div class="col-lg-3 col-md-6">
        <div class="card text-center card-shadow on-hover border-0 mb-4">
          <div class="card-body font-14">
            <span class="badge badge-inverse bg-danger p-2 position-absolute price-badge font-weight-normal visually-hidden">이용중</span>
            <h5 class="mt-3 mb-1 font-weight-medium">FAMILY</h5>
            <h6 class="subtitle font-weight-normal">4인 가족을 위한 플랜</h6>
            <div class="pricing my-3">
              <sup>원</sup>
              <span class="monthly display-5">189,000</span>
<!--               <span class="yearly display-5">400</span> -->
              <small class="monthly">/week</small>
<!--               <small class="yearly">/yr</small> -->
<!--               <span class="d-block">Save <span class="font-weight-medium">$30</span> a Year</span> -->
            </div>
            <ul class="list-inline">
               <li class="d-block py-2">4인 가족을 위한 4개 레시피 선택</li>
              <li class="d-block py-2">매주 새로운 레시피 추천</li>
              <li class="d-block py-2">다양하고 신선한 재료들 엄선</li>
              <li class="d-block py-2">원하는 날짜에 배송</li>
              <li class="d-block py-2">추가 레시피 선택 가능</li>
              <li class="d-block py-2">(추가 레시피 선택시 +20,000원)</li>
            </ul>
            <div class="bottom-btn">
              <a class="btn btn-danger-gradiant btn-md text-white btn-block" href="#f1"><span>Choose Plan</span></a>
            </div>
          </div>
        </div>
      </div>
      <!-- Column -->
      <div class="col-lg-3 col-md-6">
        <div class="card text-center card-shadow on-hover border-0 mb-4">
          <div class="card-body font-14">
          <span class="badge badge-inverse bg-danger p-2 position-absolute price-badge font-weight-normal visually-hidden">이용중</span>
            <h5 class="mt-3 mb-1 font-weight-medium">VEGAN</h5>
            <h6 class="subtitle font-weight-normal">비건 식단과 다이어트를 위한 2인 플랜</h6>
            <div class="pricing my-3">
              <sup>원</sup>
              <span class="monthly display-5">89,000</span>
<!--               <span class="yearly display-5">600</span> -->
              <small class="monthly">/week</small>
<!--               <small class="yearly">/yr</small> -->
<!--               <span class="d-block">Save <span class="font-weight-medium">$50</span> a Year</span> -->
            </div>
            <ul class="list-inline">
              <li class="d-block py-2">2인을 위한 3개의 비건 레시피 선택</li>
              <li class="d-block py-2">매주 새로운 레시피 추천</li>
              <li class="d-block py-2">다양하고 신선한 재료들 엄선</li>
              <li class="d-block py-2">원하는 날짜에 배송</li>
              <li class="d-block py-2">추가 레시피 선택 가능</li>
              <li class="d-block py-2">(추가 레시피 선택시 +10,000원)</li>
            </ul>
            <div class="bottom-btn">
              <a class="btn btn-danger-gradiant btn-md text-white btn-block" href="#f1"><span>Choose Plan</span></a>
            </div>
          </div>
        </div>
      </div>
      
    </div>
  </div>
</div>
    <script src="${pageContext.request.contextPath}/resources/testing/assets/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/testing/assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/testing/assets/js/bs-init.js"></script>
    <script src="${pageContext.request.contextPath}/resources/testing/assets/js/-Filterable-Cards-.js"></script>
    <script src="${pageContext.request.contextPath}/resources/testing/assets/js/Advanced-Pricing-Cards.js"></script>
</body>

</html>