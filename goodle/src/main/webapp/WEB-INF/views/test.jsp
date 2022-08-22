<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>구독 관리</title>
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
<style>
.cards-wrapper {
  display: flex;
  justify-content: center;
}
.card img {
  max-width: 100%;
  max-height: 100%;
}
.card1 {
  margin: 0 0.5em;
  box-shadow: 2px 6px 8px 0 rgba(22, 22, 26, 0.18);
  border: none;
  border-radius: 0;
  width: 18rem;
}
.carousel-inner {
  padding: 1em;
}
.carousel-control-prev,
.carousel-control-next {
  background-color: #e1e1e1;
  width: 5vh;
  height: 5vh;
  border-radius: 50%;
  top: 50%;
  transform: translateY(-50%);
}
@media (min-width: 768px) {
  .card img {
    height: 11em;
  }
}
</style>
<body>
    <%@ include file="/WEB-INF/views/navbar2.jsp" %>
    
	<div class="card">
        <div class="card-header">
            <ul class="nav nav-tabs card-header-tabs">
                <li class="nav-item"><a class="nav-link active" href="#">7월</a></li>
                <li class="nav-item"><a class="nav-link" href="#">8월</a></li>
                <li class="nav-item"><a class="nav-link" href="#">9월</a></li>
                <li class="nav-item"><a class="nav-link" href="#">10월</a></li>
            </ul>
        </div>
        <div class="card-body"><select>
                <option value="1" selected="">첫째 주</option>
                <option value="2">둘째 주</option>
                <option value="3">셋째 주</option>
                <option value="4">넷째 주</option>
                <option value="5">다섯째 주</option>
            </select>
            <fieldset>
<!--                 <legend>Bike Condition</legend> -->
				<br>
                <div class="toggle"><input type="radio" id="cond_new" name="bike_cond" checked="checked"><label for="cond_new">레시피 주문</label><input type="radio" id="cond_used" name="bike_cond"><label for="cond_used">이번주 스킵</label></div>
            </fieldset>

			<section id="order" class="py-5">
                <div class="container">
                    <div class="row filtr-container">
                        <div class="col-md-6 col-lg-4 filtr-item" data-category="2,3">
                            <div class="card border-dark">
                                <div class="card-header bg-dark text-light">
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
            <button id="order_btn" class="btn btn-primary" type="button">Button</button>
            </section>





<div id="confirm" class="shopping-cart">
	<div  class="px-4 px-lg-0">

  <div class="pb-5">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 p-5 bg-white rounded shadow-sm mb-5">

          <!-- Shopping cart table -->
          <div class="table-responsive">
            <table class="table">
              <thead>
                <tr>
                  <th scope="col" class="border-0 bg-light">
                    <div class="p-2 px-3 text-uppercase">Product</div>
                  </th>
                  <th scope="col" class="border-0 bg-light">
                    <div class="py-2 text-uppercase">추가 금액/div>
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
<!--         <div class="col-lg-6"> -->
<!--           <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Coupon code</div> -->
<!--           <div class="p-4"> -->
<!--             <p class="font-italic mb-4">If you have a coupon code, please enter it in the box below</p> -->
<!--             <div class="input-group mb-4 border rounded-pill p-2"> -->
<!--               <input type="text" placeholder="Apply coupon" aria-describedby="button-addon3" class="form-control border-0"> -->
<!--               <div class="input-group-append border-0"> -->
<!--                 <button id="button-addon3" type="button" class="btn btn-dark px-4 rounded-pill"><i class="fa fa-gift mr-2"></i>Apply coupon</button> -->
<!--               </div> -->
<!--             </div> -->
<!--           </div> -->
<!--           <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Instructions for seller</div> -->
<!--           <div class="p-4"> -->
<!--             <p class="font-italic mb-4">If you have some information for the seller you can leave them in the box below</p> -->
<!--             <textarea name="" cols="30" rows="2" class="form-control"></textarea> -->
<!--           </div> -->
<!--         </div> -->
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
</div>

<!-- card carousel -->
<div class="container py-4 py-xl-5">
        <div class="row mb-5">
            <div class="col-md-8 col-xl-6 text-center mx-auto">
                <h2 class="font-weight-bold">즐겨찾기</h2>
            </div>
        </div>
        
        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <div class="cards-wrapper">
      <div class="card1">
        <img src="${pageContext.request.contextPath}/resources/dashboard/assets/img/밀푀유나베.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title">Card title</h5>
          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
          <a href="#" class="btn btn-primary">Go somewhere</a>
        </div>
      </div>
      <div class="card1 d-none d-md-block">
        <img src="..." class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title">Card title</h5>
          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
          <a href="#" class="btn btn-primary">Go somewhere</a>
        </div>
      </div>
      <div class="card1 d-none d-md-block">
        <img src="..." class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title">Card title</h5>
          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
          <a href="#" class="btn btn-primary">Go somewhere</a>
        </div>
      </div>
    </div>
    </div>
    <div class="carousel-item">
      <div class="cards-wrapper">
        <div class="card1">
          <img src="..." class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            <a href="#" class="btn btn-primary">Go somewhere</a>
          </div>
        </div>
        <div class="card1 d-none d-md-block">
          <img src="..." class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            <a href="#" class="btn btn-primary">Go somewhere</a>
          </div>
        </div>
        <div class="card1 d-none d-md-block">
          <img src="..." class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            <a href="#" class="btn btn-primary">Go somewhere</a>
          </div>
        </div>
      </div>
    </div>
    <div class="carousel-item">
      <div class="cards-wrapper">
        <div class="card1">
          <img src="..." class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            <a href="#" class="btn btn-primary">Go somewhere</a>
          </div>
        </div>
        <div class="card1 d-none d-md-block">
          <img src="..." class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            <a href="#" class="btn btn-primary">Go somewhere</a>
          </div>
        </div>
        <div class="card1 d-none d-md-block">
          <img src="..." class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            <a href="#" class="btn btn-primary">Go somewhere</a>
          </div>
        </div>
      </div>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
 
	</div>
	<!-- card carousel -->
</div>
</div>
   
    <script src="${pageContext.request.contextPath}/resources/testing/assets/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/testing/assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/testing/assets/js/bs-init.js"></script>
<%--     <script src="${pageContext.request.contextPath}/resources/testing/assets/js/-Filterable-Cards-.js"></script> --%>
    <script src="${pageContext.request.contextPath}/resources/testing/assets/js/Advanced-Pricing-Cards.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function(){
	    $("#confirm").hide();
	    let times = 1;

	  $("#order_btn").click(function(){
	  		times++;
	      if(times%4 == 2){
	          $("#confirm").show();
	          $("#order").hide();
	   	 }
	  });

	});
	</script>
</body>

</html>