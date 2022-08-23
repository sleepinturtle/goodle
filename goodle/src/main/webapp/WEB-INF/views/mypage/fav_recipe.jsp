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
    <%@ include file="/WEB-INF/views/links_head.jsp" %>
</head>

<body>
    <%@ include file="/WEB-INF/views/navbar2.jsp" %>
    
	<div class="card">
        <div class="card-body">


			<section id="order" class="py-5">
                <div class="container">
                    <div class="row filtr-container">
                        <div class="col-md-6 col-lg-4 filtr-item" data-category="2,3">
                            <div class="card border-dark">
                                <div class="card-header bg-white text-dark">
                                    <h5 class="m-0">Lorem Ipsum</h5>
                                </div><img class="img-fluid card-img w-100 d-block rounded-0" src="assets/img/th-01.jpg">
                                <div class="card-body">
                                    <p class="card-text">Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                                </div>
                                <div class="d-flex card-footer">
<!--                                 	<button class="btn btn-dark btn-sm" type="button"><i class="fa fa-eye"></i>&nbsp;Button 1</button> -->
									<div class="btn-group-toggle" data-toggle="buttons">
	                                	<label class="btn btn-danger btn-outline-dark ml-auto">
	                                		<input type="checkbox" > 선택
	                                	</label>
	                                	<button class="btn btn-outline-dark btn-sm ml-auto" type="button"><i class="fa fa-plus"></i>&nbsp;Button 2</button>
									</div>
                                	
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 filtr-item" data-category="1,3">
                            <div class="card border-dark">
                                <div class="card-header bg-dark text-light">
                                    <h5 class="m-0">Lorem Ipsum</h5>
                                </div><img class="img-fluid card-img w-100 d-block rounded-0" src="assets/img/th-02.jpg">
                                <div class="card-body">
                                    <p class="card-text">Nullam id dolor id nibh ultricies vehicula ut id elit.&nbsp;Peiores principem Constantium cautela sed cetera et nimia graves cetera modi in titulo causarum infudisset plagas apud sed ut siquid. Invadere tabescebat egressus ullo flagitii per parans per egressus edictus.<br></p>
                                </div>
                                <div class="d-flex card-footer"><button class="btn btn-dark btn-sm" type="button"><i class="fa fa-eye"></i>&nbsp;Button 1</button><button class="btn btn-outline-dark btn-sm ml-auto" type="button"><i class="fa fa-plus"></i>&nbsp;Button 2</button></div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 filtr-item" data-category="2,3">
                            <div class="card border-dark">
                                <div class="card-header bg-dark text-light">
                                    <h5 class="m-0">Lorem Ipsum</h5>
                                </div><img class="img-fluid card-img w-100 d-block rounded-0" src="assets/img/th-03.jpg">
                                <div class="card-body">
                                    <p class="card-text">Nullam id dolor id nibh ultricies vehicula ut id elit. Observantes habitu ignoti conspiratione poterant homines formido cognita malorum conpluribus peragranter divites fingerent poterant peragranter.<br></p>
                                </div>
                                <div class="d-flex card-footer"><button class="btn btn-dark btn-sm" type="button"><i class="fa fa-eye"></i>&nbsp;Button 1</button><button class="btn btn-outline-dark btn-sm ml-auto" type="button"><i class="fa fa-plus"></i>&nbsp;Button 2</button></div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 filtr-item" data-category="3">
                            <div class="card border-dark">
                                <div class="card-header bg-dark text-light">
                                    <h5 class="m-0">Lorem Ipsum</h5>
                                </div><img class="img-fluid card-img w-100 d-block rounded-0" src="assets/img/th-06.jpg">
                                <div class="card-body">
                                    <p class="card-text">Nullam id dolor id nibh ultricies vehicula ut id elit.&nbsp;Populique et auctoritate cum sint partes regina canities et circumspectum certamina suffragiorum reverenda et set circumspectum temporis auctoritate certamina verecundum quotquot domina per et sint auctoritate sunt omnes ubique redierit.<br></p>
                                </div>
                                <div class="d-flex card-footer"><button class="btn btn-dark btn-sm" type="button"><i class="fa fa-eye"></i>&nbsp;Button 1</button><button class="btn btn-outline-dark btn-sm ml-auto" type="button"><i class="fa fa-plus"></i>&nbsp;Button 2</button></div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 filtr-item" data-category="1,2">
                            <div class="card border-dark">
                                <div class="card-header bg-dark text-light">
                                    <h5 class="m-0">Lorem Ipsum</h5>
                                </div><img class="img-fluid card-img w-100 d-block rounded-0" src="assets/img/th-07.jpg">
                                <div class="card-body">
                                    <p class="card-text">Nullam id dolor id nibh ultricies vehicula ut id elit. Vocis indigna adlocutus prodesse custodiam ut adlocutus commune vita commune.<br></p>
                                </div>
                                <div class="d-flex card-footer"><button class="btn btn-dark btn-sm" type="button"><i class="fa fa-eye"></i>&nbsp;Button 1</button><button class="btn btn-outline-dark btn-sm ml-auto" type="button"><i class="fa fa-plus"></i>&nbsp;Button 2</button></div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 filtr-item" data-category="1,3">
                            <div class="card border-dark">
                                <div class="card-header bg-dark text-light">
                                    <h5 class="m-0">Lorem Ipsum</h5>
                                </div><img class="img-fluid card-img w-100 d-block rounded-0" src="assets/img/th-08.jpg">
                                <div class="card-body">
                                    <p class="card-text">Nullam id dolor id nibh ultricies vehicula ut id elit.&nbsp;Et admiratio incidere magis eo incidere et forte pauci una admiratio eum Pompeio Q tum dissideret querella et forte una hemicyclio ore illum admiratio hominum is saepe tum magis tum. Et admiratio incidere magis eo incidere et forte pauci una admiratio eum Pompeio Q tum dissideret querella et forte una hemicyclio ore illum admiratio hominum is saepe tum magis tum.<br></p>
                                </div>
                                <div class="d-flex card-footer"><button class="btn btn-dark btn-sm" type="button"><i class="fa fa-eye"></i>&nbsp;Button 1</button><button class="btn btn-outline-dark btn-sm ml-auto" type="button"><i class="fa fa-plus"></i>&nbsp;Button 2</button></div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 filtr-item" data-category="1,3">
                            <div class="card border-dark">
                                <div class="card-header bg-dark text-light">
                                    <h5 class="m-0">Lorem Ipsum</h5>
                                </div><img class="img-fluid card-img w-100 d-block rounded-0" src="assets/img/th-09.jpg">
                                <div class="card-body">
                                    <p class="card-text">Nullam id dolor id nibh ultricies vehicula ut id elit.&nbsp;Peiores principem Constantium cautela sed cetera et nimia graves cetera modi in titulo causarum infudisset plagas apud sed ut siquid. Invadere tabescebat egressus ullo flagitii per parans per egressus edictus.<br></p>
                                </div>
                                <div class="d-flex card-footer"><button class="btn btn-dark btn-sm" type="button"><i class="fa fa-eye"></i>&nbsp;Button 1</button><button class="btn btn-outline-dark btn-sm ml-auto" type="button"><i class="fa fa-plus"></i>&nbsp;Button 2</button></div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 filtr-item" data-category="3">
                            <div class="card border-dark">
                                <div class="card-header bg-dark text-light">
                                    <h5 class="m-0">Lorem Ipsum</h5>
                                </div><img class="img-fluid card-img w-100 d-block rounded-0" src="assets/img/th-11.jpg">
                                <div class="card-body">
                                    <p class="card-text">Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                                </div>
                                <div class="d-flex card-footer"><button class="btn btn-dark btn-sm" type="button"><i class="fa fa-eye"></i>&nbsp;Button 1</button><button class="btn btn-outline-dark btn-sm ml-auto" type="button"><i class="fa fa-plus"></i>&nbsp;Button 2</button></div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 filtr-item" data-category="1">
                            <div class="card border-dark">
                                <div class="card-header bg-dark text-light">
                                    <h5 class="m-0">Lorem Ipsum</h5>
                                </div><img class="img-fluid card-img w-100 d-block rounded-0" src="assets/img/th-12.jpg">
                                <div class="card-body">
                                    <p class="card-text">Nullam id dolor id nibh ultricies vehicula ut id elit. Vocabulis pollicitos statuuntur nominum appellatos statuuntur adminicula omnium ob pollicitos tribunos Eusebius pollicitos sub statuuntur.<br></p>
                                </div>
                                <div class="d-flex card-footer"><button class="btn btn-dark btn-sm" type="button"><i class="fa fa-eye"></i>&nbsp;Button 1</button><button class="btn btn-outline-dark btn-sm ml-auto" type="button"><i class="fa fa-plus"></i>&nbsp;Button 2</button></div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

</div>
</div>
   
    <script src="${pageContext.request.contextPath}/resources/testing/assets/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/testing/assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/testing/assets/js/bs-init.js"></script>
<%--     <script src="${pageContext.request.contextPath}/resources/testing/assets/js/-Filterable-Cards-.js"></script> --%>
    <script src="${pageContext.request.contextPath}/resources/testing/assets/js/Advanced-Pricing-Cards.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

</body>

</html>