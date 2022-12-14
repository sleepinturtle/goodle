<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>레시피 예약</title>
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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker3.standalone.min.css">
    <%@ include file="/WEB-INF/views/links_head.jsp" %>
</head>
<body>
	<%@ include file="/WEB-INF/views/navbar2.jsp" %>
        <div class="card">
		<!-- card-header -->
        <div class="card-header">
            <ul class="nav nav-tabs card-header-tabs">
                <li class="nav-item"><a class="nav-link active" href="#">9월</a></li>
                <li class="nav-item"><a class="nav-link" href="#">10월</a></li>
            </ul>
        </div>
        <!-- /card-header -->
        
        <!-- card-body -->
        <div class="card-body">
        

            
            <!-- datepicker -->
            <div class="input-group">
				<span class="text-center"  ><h4>배송희망 날짜 </h4> 
	            <div class="input-group-append ">
				<input class="form-control" type="text" id="datePicker">
				</div>
				</span> 
			</div>
			<!-- /datepicker -->
            
            
            
            <!-- 장바구니 -->
			<div id="confirm" class="shopping-cart">
				<div class="px-4 px-lg-0">
			
				  <div class="pb-5">
				    <div class="container">
				      <div class="row">
				        <div class="col-lg-12 p-5 bg-white rounded shadow-sm mb-5">
				
				          <!-- 장바구니 -->
				          <div class="table-responsive">
				            <table class="table">
				            
				              <thead>
				                <tr>
				                  <th scope="col" class="border-0 bg-light">
				                    <div class="p-2 px-3 text-uppercase">레시피</div>
				                  </th>
<!-- 				                  <th scope="col" class="border-0 bg-light"> -->
<!-- 				                    <div class="py-2 text-uppercase">추가 금액</div> -->
<!-- 				                  </th> -->
				                  <th scope="col" class="border-0 bg-light">
				                    <div class="py-2 text-uppercase">Remove</div>
				                  </th>
				                </tr>
				              </thead>
				              <tbody>
				              <c:set var="sum_product_class_qty" value="0" />
				              <c:forEach var="dto" items="${list}" varStatus="status">
				              <c:set var="sum_product_class_qty" value="${sum_product_class_qty + 1}" />
				                <tr>
				                  <th scope="row" class="border-0">
				                    <div class="p-2">
				                      <img src="https://res.cloudinary.com/mhmd/image/upload/v1556670479/product-1_zrifhn.jpg" alt="" width="70" class="img-fluid rounded shadow-sm">
				                      <div class="ml-3 d-inline-block align-middle">
				                        <h5 class="mb-0"> <a href="#" class="text-dark d-inline-block align-middle">${dto.rcp_name}</a></h5>
				                      </div>
				                    </div>
				                  </th>
<!-- 				                  <td class="border-0 align-middle"><strong>0</strong></td> -->
				                  <td class="border-0 align-middle">
				                  	<i class="fa fa-trash">
				                  	<input type="checkbox" class="checkbox remove text-dark" checked="checked" value="${dto.rcp_no}">
				                  	<input type="hidden" id="basket_no" name="basket_no" value="${dto.basket_no}">
				                  	</i>
				                  </td>
				                </tr>
				            </c:forEach>
				              </tbody>
				            </table>
				          </div>
				          <!-- End -->
				        </div>
				      </div>
				
				      <div class="row py-5 p-4 bg-white rounded shadow-sm">
				
				        <div class="col-lg-12">
				          <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">결제 요약 </div>
				          <div class="p-4">
<!-- 				            <p class="font-italic mb-4">Shipping and additional costs are calculated based on values you have entered.</p> -->
				            <ul class="list-unstyled mb-4">
				              <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">구독 플랜</strong><strong>${login_info.price}원</strong></li>
<!-- 				              <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">추가 금액</strong><strong>$0.00</strong></li> -->
<!-- 				              <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">결제 상태</strong><strong>pending</strong></li> -->
				              <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">합계</strong>
				                <h5 class="font-weight-bold">${login_info.price}원</h5>
				              </li>
				            </ul><a href="#" class="order_btn btn btn-dark rounded-pill py-2 btn-block">예약 확정</a>
				          </div>
				        </div>
				      </div>
				
				    </div>
				  </div>
				</div>
				<a href="${pageContext.request.contextPath}/mypage/select">
				<button id="prev_btn" class="btn btn-primary" type="button">뒤로가기</button>
				</a>
			</div>
			<!-- /장바구니 -->
			
			<!-- 스킵 문구 -->
			<div id="skipped">
				<h2>이번 주는 스킵 하셨습니다.</h2>
			</div>
			<!-- 스킵 문구 -->
			
	</div>
		<!-- card-body -->
	</div>
	
	 <script src="${pageContext.request.contextPath}/resources/testing/assets/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/testing/assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/testing/assets/js/bs-init.js"></script>
    <script src="${pageContext.request.contextPath}/resources/testing/assets/js/Advanced-Pricing-Cards.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    
    <!-- datepicker -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
	<!-- /datepicker -->
	
	<script type="text/javascript">

	$().ready(function() {
		
	$('#datePicker').datepicker({
		format : "yyyy-mm-dd",
		todayHighlight : true
	});
	
	$('#click-btn').on('click', function() {
		var date = $('#datePicker').val();
		alert(date);
	});//click
	});//ready
	
	
	//div show hide
	$(document).ready(function() {
		    $("#skipped").hide();
		    
		    $("#next_btn").click(function() {
	// 	    if($("#datePicker").val() == null || $("#datePicker").val() == ""){
	// 			alert("배송일자를 선택하세요");
	// 			return;
	// 		}
		    $("#order").hide();
		    $("#confirm").show();
	       
			});//click
			
// 		$(document).ready(function() {
// 			$("#prev_btn").click(function() {
// 				$("#confirm").hide();
// 		          $("#order").show();
// 			});//click
// 		});	//ready
		
		$(document).ready(function() {
			$("#skip_order").click(function() {
				$("#confirm").hide();
				$("#skipped").show();
				alert(111);
			});//click
		});	//ready
		
		$(document).ready(function() {
			$("#week_order").click(function() {
				$("#confirm").show();
				$("#skipped").hide();
				alert(222);
			});//click
		});	//ready
	});//ready
	
	$(document).ready(function() {
		$(".checkbox").click(function() {
			
			if($(this).prop("checked") == false){
				//alert(${login_info.mem_no});alert($(this).val());return;
			$.get(
					"${pageContext.request.contextPath}/basket/delete"
					, {
						mem_no : ${login_info.mem_no} 
						,rcp_no : $(this).val()
					}
					, function(data, status) {
						if(data >= 1){
							alert("레시피 삭제됨.");
							window.location.reload();
						} else {
							alert("잠시 후 다시 시도해 주세요.");
						}
					}//call back functiion
			);//post
			}//if
		});//click
	});//ready
	
	let arr_basket_no = new Array();
	$(document).ready(function() {
		$(".order_btn").click(function() {

			let checks = $("input[type=checkbox]");
			for(let i = 0; i < checks.length; i++){

				if( checks[i].checked == true ) {
					arr_basket_no.push($("#basket_no" + i).val());
				}//if
				
			}//for
			if(arr_basket_no.length < ${login_info.rcp_qty}){
				alert("추가적으로 레시피를 담아주세요");
				location.href="${pageContext.request.contextPath}/mypage/select";
				return;
			}
			if(arr_basket_no.length > ${login_info.rcp_qty}){
				
				alert("선택 한도를 초과 하셨습니다.");
				alert("${login_info.rcp_qty}" + "개까지 선택 가능합니다 ");
				return;
			}
			
			if(arr_basket_no.length <= 0){
				alert("선택된 상품이 없습니다.");
				return;
			}
			if($("#datePicker").val() == "" ){
				alert("원하시는 배송일자를 선택해 주세요")
				return;
			}
			
			$.post(
					"${pageContext.request.contextPath}/order/insert"
					, {
						order_amt : ${login_info.price}
						,card_no : ${login_info.card_no}
						,pay_amt : ${login_info.price}
						,deli_date : $("#datePicker").val()
					  }
					, function(data, status) {
						if(data >= 1){
							alert("주문을 성공적으로 등록 하였습니다.");
							location.href="${pageContext.request.contextPath}/mypage/select";
						} else if(data <= 0){
							alert("주문 등록을 실패 하였습니다.");
						} else {
							alert("잠시 후 다시 시도해 주세요.");
						}
					}//call back function
			);//post

		});//click
	});//ready
// 	order_product_cnt : $("#span_sum_product_class_qty").text()
// 	,order_amt : ${login_info.price}
// 	,pay_amt : ${login_info.price}
// 	,deli_date : $("#datePicker").val()
	</script>
</body>
</html>