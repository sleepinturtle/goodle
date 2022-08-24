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
        
        	<!-- week select -->
        	<select>
                <option value="1" selected="">첫째 주</option>
                <option value="2">둘째 주</option>
                <option value="3">셋째 주</option>
                <option value="4">넷째 주</option>
                <option value="5">다섯째 주</option>
            </select>
           
			<fieldset>
				<br>
				<button class="btn btn-primary" id="week_order">주문하기</button>
				<button class="btn btn-primary" id="skip_order">이번 주 넘기기</button>
			</fieldset>
            
            
            <!-- section card -->
			<section id="order" class="py-5">
			
            <!-- datepicker -->
            <div class="input-group">
				<span class="text-center"  ><h4>배송희망 날짜 </h4> 
	            <div class="input-group-append ">
				<input class="form-control" type="text" id="datePicker">
				</div>
				
				
				</span> 
			</div>
			
			<!-- /datepicker -->

			
			<!-- 레시피 선택 -->
                <div class="container" id="select">
                    <div class="row filtr-container">
                    
                    <c:forEach var="dto" items="${week1}" varStatus="status">
						<div class="col-md-6 col-lg-4 filtr-item" data-category="2,3">
                            <div class="card border-dark">
                                <div class="card-header bg-white text-dark">
                                    <h5 class="m-0">${dto.rcp_name}</h5>
                                </div><img class="img-fluid card-img w-100 h-50 d-block rounded-0" src="${pageContext.request.contextPath}/resources/testing/assets/img/나가사키 짬뽕.png">
                                <div class="card-body overflow-auto" style="height: 8rem;">
                                    <p class="card-text">${dto.rcp_desc}</p>
                                </div>
                                <div class="d-flex card-footer">
	                                	<label class="btn_select btn btn-dark btn-outline-white ml-auto">
	                                		<input class="checkbox "type="checkbox" > 선택
	                                	</label>
                                	
                                </div>
                            </div>
                        </div>
					</c:forEach>
 

                    </div>
            		<button id="next_btn" class="btn btn-primary" style="float:right" type="button">다음</button>
                </div>
            </section>
            
            <!-- 장바구니 -->
			<div id="confirm" class="shopping-cart">
				<div  class="px-4 px-lg-0">
			
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
				                    <div class="p-2 px-3 text-uppercase">Product</div>
				                  </th>
				                  <th scope="col" class="border-0 bg-light">
				                    <div class="py-2 text-uppercase">추가 금액</div>
				                  </th>
				                  <th scope="col" class="border-0 bg-light">
				                    <div class="py-2 text-uppercase">수량</div>
				                  </th>
				                  <th scope="col" class="border-0 bg-light">
				                    <div class="py-2 text-uppercase">Remove</div>
				                  </th>
				                </tr>
				              </thead>
				              <tbody>
				                <tr>
				                  <th scope="row" class="border-0">
				                    <div class="p-2">
				                      <img src="https://res.cloudinary.com/mhmd/image/upload/v1556670479/product-1_zrifhn.jpg" alt="" width="70" class="img-fluid rounded shadow-sm">
				                      <div class="ml-3 d-inline-block align-middle">
				                        <h5 class="mb-0"> <a href="#" class="text-dark d-inline-block align-middle">Timex Unisex Originals</a></h5><span class="text-muted font-weight-normal font-italic d-block">Category: Watches</span>
				                      </div>
				                    </div>
				                  </th>
				                  <td class="border-0 align-middle"><strong>$79.00</strong></td>
				                  <td class="border-0 align-middle"><strong>3</strong></td>
				                  <td class="border-0 align-middle"><a href="#" class="text-dark"><i class="fa fa-trash"></i></a></td>
				                </tr>
				                <tr>
				                  <th scope="row">
				                    <div class="p-2">
				                      <img src="https://res.cloudinary.com/mhmd/image/upload/v1556670479/product-3_cexmhn.jpg" alt="" width="70" class="img-fluid rounded shadow-sm">
				                      <div class="ml-3 d-inline-block align-middle">
				                        <h5 class="mb-0"><a href="#" class="text-dark d-inline-block">Lumix camera lense</a></h5><span class="text-muted font-weight-normal font-italic">Category: Electronics</span>
				                      </div>
				                    </div>
				                  </th>
				                  <td class="align-middle"><strong>$79.00</strong></td>
				                  <td class="align-middle"><strong>3</strong></td>
				                  <td class="align-middle"><a href="#" class="text-dark"><i class="fa fa-trash"></i></a>
				                  </td>
				                </tr>
				                <tr>
				                  <th scope="row">
				                    <div class="p-2">
				                      <img src="https://res.cloudinary.com/mhmd/image/upload/v1556670479/product-2_qxjis2.jpg" alt="" width="70" class="img-fluid rounded shadow-sm">
				                      <div class="ml-3 d-inline-block align-middle">
				                        <h5 class="mb-0"> <a href="#" class="text-dark d-inline-block">Gray Nike running shoe</a></h5><span class="text-muted font-weight-normal font-italic">Category: Fashion</span>
				                      </div>
				                    </div>
				                    <td class="align-middle"><strong>$79.00</strong></td>
				                    <td class="align-middle"><strong>3</strong></td>
				                    <td class="align-middle"><a href="#" class="text-dark"><i class="fa fa-trash"></i></a>
				                    </td>
				                </tr>
				              </tbody>
				            </table>
				          </div>
				          <!-- End -->
				        </div>
				      </div>
				
				      <div class="row py-5 p-4 bg-white rounded shadow-sm">
				
				        <div class="col-lg-12">
				          <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Order summary </div>
				          <div class="p-4">
				            <p class="font-italic mb-4">Shipping and additional costs are calculated based on values you have entered.</p>
				            <ul class="list-unstyled mb-4">
				              <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">구독 플랜</strong><strong>$390.00</strong></li>
				              <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">추가 금액</strong><strong>$0.00</strong></li>
				              <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">결제 상태</strong><strong>pending</strong></li>
				              <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Total</strong>
				                <h5 class="font-weight-bold">$400.00</h5>
				              </li>
				            </ul><a href="#" class="btn btn-dark rounded-pill py-2 btn-block">예약 확정</a>
				          </div>
				        </div>
				      </div>
				
				    </div>
				  </div>
				</div>
				<button id="prev_btn" class="btn btn-primary" type="button">뒤로가기</button>
			</div>
			<!-- /장바구니 -->
			
			<!-- 스킵 문구 -->
			<div id="skipped">
				<h2>이번 주는 스킵 하셨습니다.</h2>
			</div>
			<!-- 스킵 문구 -->
			
	</div>
		<!-- card-body -->
	
	 <script src="${pageContext.request.contextPath}/resources/testing/assets/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/testing/assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/testing/assets/js/bs-init.js"></script>
    <script src="${pageContext.request.contextPath}/resources/testing/assets/js/Advanced-Pricing-Cards.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    
    <!-- datepicker -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
	<!-- /datepicker -->
	
	<script type="text/javascript">
	$(document).ready(function() {
	      $("#skip_order").click(function() {
	         $("#order").hide();
	         $("#confirm").hide();
	         $("#skipped").show();
	      });//click
	   });   //ready
	   
	   $(document).ready(function() {
	      $("#week_order").click(function() {
	         $("#order").show();
	         $("#confirm").hide();
	         $("#skipped").hide();
	      });//click
	   });   //ready
	
	
	
	
	$(document).ready(function() {   
		
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
		$("#confirm").hide();
	    $("#skipped").hide();
	    
	    $("#next_btn").click(function() {
// 	    if($("#datePicker").val() == null || $("#datePicker").val() == ""){
// 			alert("배송일자를 선택하세요");
// 			return;
// 		}
	    $("#order").hide();
	    $("#confirm").show();
       
		});//click
		
	$(document).ready(function() {
		$("#prev_btn").click(function() {
			$("#confirm").hide();
	          $("#order").show();
		});//click
		
		
	});	//ready
	
	
		
		
		
		
		
	});//ready
	
	</script>
</body>
</html>