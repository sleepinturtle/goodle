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
            <!-- /week select -->
            <!--order skip -->
            <fieldset>
            <br>
				<button class="btn btn-primary" id="week_order">주문하기</button>
				<button class="btn btn-primary" id="skip_order">이번 주 넘기기</button>
			</fieldset>
           
            
            <!-- section card 1-->
			<section id="order" class="order order1 py-5">
			<!-- 레시피 선택 -->
                <div class="container" id="select">
                    <div class="row filtr-container">
                    
                    <c:forEach var="dto" items="${week1}" varStatus="status">
						<div class="col-md-6 col-lg-4 filtr-item" data-category="2,3">
                            <div class="card border-dark">
                                <div class="card-header bg-white text-dark">
                                    <h5 class="m-0">${dto.rcp_name}</h5>
                                </div><img class="img-fluid card-img w-100 h-50 d-block rounded-0" src="${dto.thumbnail_path}">
                                <div class="card-body overflow-auto" style="height: 8rem;">
                                    <p class="card-text">${dto.rcp_desc}</p>
                                </div>
                                <div class="d-flex card-footer">
	                                	<label class="btn_select btn btn-dark btn-outline-white ml-auto">
	                                		<input  id="check_select "class="checkbox "type="checkbox" value="${dto.rcp_no}" > 선택
	                                	</label>
                                	
                                </div>
                            </div>
                        </div>
					</c:forEach>
 

                    </div>
                    <a href="${pageContext.request.contextPath}/basket/list">
            		<button id="next_btn" class="btn btn-primary" style="float:right" type="button" >다음</button>
                    </a>
                </div>
            </section>
            
            <!-- section card 2 -->
			<section id="order" class="order order2 py-5">
			<!-- 레시피 선택 week2 -->
                <div class="container" id="select">
                    <div class="row filtr-container">
                    
                    <c:forEach var="dto" items="${week1}" varStatus="status">
						<div class="col-md-6 col-lg-4 filtr-item" data-category="2,3">
                            <div class="card border-dark">
                                <div class="card-header bg-white text-dark">
                                    <h5 class="m-0">${dto.rcp_name}</h5>
                                </div><img class="img-fluid card-img w-100 h-50 d-block rounded-0" src="${dto.thumbnail_path}">
                                <div class="card-body overflow-auto" style="height: 8rem;">
                                    <p class="card-text">${dto.rcp_desc}</p>
                                </div>
                                <div class="d-flex card-footer">
	                                	<label class="btn_select btn btn-dark btn-outline-white ml-auto">
	                                		<input  id="check_select "class="checkbox "type="checkbox" value="${dto.rcp_no}" > 선택
	                                	</label>
                                	
                                </div>
                            </div>
                        </div>
					</c:forEach>
 

                    </div>
                    <a href="${pageContext.request.contextPath}/basket/list">
            		<button id="next_btn" class="btn btn-primary" style="float:right" type="button" >다음</button>
                    </a>
                </div>
            </section>
            
            
			
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
// 			$("#confirm").hide();
		    $("#skipped").hide();
		    
			
		$(document).ready(function() {
			$("#prev_btn").click(function() {
				$("#confirm").hide();
		          $("#order").show();
			});//click
		});	//ready
		
		$(document).ready(function() {
			$("#skip_order").click(function() {
				$(".order").hide();
				$("#confirm").hide();
				$("#skipped").show();
				alert(111);
			});//click
		});	//ready
		
		$(document).ready(function() {
			$("#week_order").click(function() {
				$(".order").show();
				$("#confirm").hide();
				$("#skipped").hide();
				alert(222);
			});//click
		});	//ready
	});//ready
	$(document).ready(function() {
		$(".checkbox").click(function() {
			
			if($(this).prop("checked") == true){
				//alert(${login_info.mem_no});alert($(this).val());return;
			$.post(
					"${pageContext.request.contextPath}/basket/insert"
					, {
						mem_no : ${login_info.mem_no} 
						,rcp_no : $(this).val()
					}
					, function(data, status) {
						if(data >= 1){
							alert("레시피 선택됨.");
// 							window.location.reload();
						} else {
							alert("잠시 후 다시 시도해 주세요.");
						}
					}//call back functiion
			);//post
			}
			
			if($(this).prop("checked") == false){
// 				alert(${login_info.mem_no});alert($(this).val());return;
			$.get(
					"${pageContext.request.contextPath}/basket/delete"
					, {
						mem_no : ${login_info.mem_no} 
						,rcp_no : $(this).val()
					}
					, function(data, status) {
						if(data >= 1){
							alert("레시피 선택해제.");
// 							window.location.reload();
						} else {
							alert("잠시 후 다시 시도해 주세요.");
						}
					}//call back functiion
			);//post
			}
		});//click
	});//ready
	
	</script>
</body>
</html>