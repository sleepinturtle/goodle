<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<!-- saved from url=(0053)file:///C:/Users/kyleb/Desktop/testing/untitled.html# -->
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>관리자 페이지</title>
    <%@ include file="/WEB-INF/views/links_head.jsp" %>
</head>

<body>
<%@ include file="/WEB-INF/views/navbar3.jsp" %>
	
    
    <!-- card -->
    <div class="container py-4 py-xl-5">
        <div class="row mb-5">
            <div class="col-md-8 col-xl-6 text-center mx-auto">
                <h2 class="font-weight-bold">Manager page</h2>
            </div>
        </div>
        <div class="row row-cols-1 row-cols-md-2 row-cols-xl-5" style="justify-content: center;">
        
        	<!-- 프로필 관리 -->
            <div class="col mb-6">
                <div class="card"><img class="card-img-top w-100 d-block fit-cover" src="${pageContext.request.contextPath}/resources/dashboard/assets/img/profile.png">
                    <div class="card-body p-4">
                        <p class="text-primary mb-0">Check Member</p>
                        <h4 class="font-weight-bold card-title">사용자 정보 관리</h4>
<!--                         <p class="card-text">간편하고 안정하게 개인정보를 수정해보세요. 배송지와 선호도까지 수정할 수 있습니다</p> -->
                        <a class="small text-black stretched-link" href="${pageContext.request.contextPath}/manager/member/list"></a>
                    </div>
                </div>
            </div>
            
            <!-- 레시피 관리 -->
            <div class="col mb-6">
                <div class="card"><img class="card-img-top w-100 d-block fit-cover" src="${pageContext.request.contextPath}/resources/dashboard/assets/img/apple.png">
                    <div class="card-body p-4">
                        <p class="text-primary mb-0">Check Recipe</p>
                        <h4 class="font-weight-bold card-title">레시피 관리</h4>
<!--                         <p class="card-text">맞춤 설정된 레시피들이 추천 됩니다. </p> -->
                        <a class="small text-black stretched-link" href="${pageContext.request.contextPath}/manager/recipe/list"></a>

                    </div>
                </div>
            </div>
            
<!--             문의사항 관리 -->
<!--             <div class="col mb-4"> -->
<%--                 <div class="card"><img class="card-img-top w-100 d-block fit-cover" src="${img_src}/receipt.png"> --%>
<!--                     <div class="card-body p-4"> -->
<!--                         <p class="text-primary mb-0">Favorite Recipe</p> -->
<!--                         <h4 class="font-weight-bold card-title">레시피 관리</h4> -->
<!-- <!--                         <p class="card-text">Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p> --> 
<%--                         <a class="small text-black stretched-link" href="${pageContext.request.contextPath}/mypage/favrecipe"></a> --%>
<!--                     </div> -->
<!--                 </div> -->
<!--             </div> -->
            
<!--             결제내역 -->
<!--             <div class="col mb-4"> -->
<%--                 <div class="card"><img class="card-img-top w-100 d-block fit-cover" src="${img_src}/saved.png"> --%>
<!--                     <div class="card-body p-4"> -->
<!--                         <p class="text-primary mb-0">Payment History</p> -->
<!--                         <h4 class="font-weight-bold card-title">결제내역</h4> -->
<!-- <!--                         <p class="card-text">Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p> -->
<%--                         <a class="small text-black stretched-link" href="${pageContext.request.contextPath}/mypage/payhistory"></a> --%>
<!--                     </div> -->
<!--                 </div> -->
<!--             </div> -->
            
            <!-- 문의사항 관리-->
            <div class="col mb-6">
                <div class="card"><img class="card-img-top w-100 d-block fit-cover" src="${img_src}/bell.png">
                    <div class="card-body p-4">
                        <p class="text-primary mb-0">Check Customer Service</p>
                        <h4 class="font-weight-bold card-title">문의사항 관리</h4>
<!--                         <p class="card-text">Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p> -->
                        <a class="small text-black stretched-link" href="${pageContext.request.contextPath}/manager/qna/list"></a>
                       
                    </div>
                </div>
            </div>
        </div>
    </div>
  <!-- /card -->
   <%@ include file="/WEB-INF/views/links_foot.jsp" %>


</body>
</html>