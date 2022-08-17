<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="/WEB-INF/views/header.jsp" %>
<%@include file="/WEB-INF/views/navbar.jsp" %>

    

    <div id="layoutSidenav_content">
        <div class="container">
            <div class="row">
            <c:forEach var="dto" items="${dtoFromDB}"/>
                        <h1 class="mt-4">저장된 레시피</h1>
                        <h6> @${login_info.mem_id} </h6>
                <div class="splide">
                    <div class="splide__track">
                        <div class="splide__list">
                            <div class="col-sm-4 splide__slide m-2">
                                <div class="card card-cascade">

      <!--Card image-->
      <div class="view view-cascade">
        <img src="https://mdbootstrap.com/img/Photos/Others/men.webp" class="card-img-top" alt="">
        <a>
          <div class="mask rgba-white-slight"></div>
        </a>
      </div>
      <!--/.Card image-->

      <!--Card content-->
      <div class="card-body card-body-cascade text-center">
        <!--Title-->
        <h4 class="card-title"><strong>Billy Cullen</strong></h4>
        <h5>Web developer</h5>

        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatibus, ex,
          recusandae. Facere modi
          sunt, quod quibusdam.
        </p>

        <!--Facebook-->
        <a type="button" class="btn-floating btn-small btn-fb"><i class="fab fa-facebook-f"></i></a>
        <!--Twitter-->
        <a type="button" class="btn-floating btn-small btn-tw"><i class="fab fa-twitter"></i></a>
        <!--Google +-->
        <a type="button" class="btn-floating btn-small btn-dribbble"><i class="fab fa-dribbble"></i></a>

      </div>
      <!--/.Card content-->

    </div>
                            </div>
                            <div class="col-sm-4 splide__slide m-2">
                                <div class="card card-cascade">

      <!--Card image-->
      <div class="view view-cascade">
        <img src="https://mdbootstrap.com/img/Photos/Others/men.webp" class="card-img-top" alt="">
        <a>
          <div class="mask rgba-white-slight"></div>
        </a>
      </div>
      <!--/.Card image-->

      <!--Card content-->
      <div class="card-body card-body-cascade text-center">
        <!--Title-->
        <h4 class="card-title"><strong>Billy Cullen</strong></h4>
        <h5>Web developer</h5>

        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatibus, ex,
          recusandae. Facere modi
          sunt, quod quibusdam.
        </p>

        <!--Facebook-->
        <a type="button" class="btn-floating btn-small btn-fb"><i class="fab fa-facebook-f"></i></a>
        <!--Twitter-->
        <a type="button" class="btn-floating btn-small btn-tw"><i class="fab fa-twitter"></i></a>
        <!--Google +-->
        <a type="button" class="btn-floating btn-small btn-dribbble"><i class="fab fa-dribbble"></i></a>

      </div>
      <!--/.Card content-->

    </div>
                            </div>
                            <div class="col-sm-4 splide__slide m-2">
                                <div class="card card-cascade">

      <!--Card image-->
      <div class="view view-cascade">
        <img src="https://mdbootstrap.com/img/Photos/Others/men.webp" class="card-img-top" alt="">
        <a>
          <div class="mask rgba-white-slight"></div>
        </a>
      </div>
      <!--/.Card image-->

      <!--Card content-->
      <div class="card-body card-body-cascade text-center">
        <!--Title-->
        <h4 class="card-title"><strong>Billy Cullen</strong></h4>
        <h5>Web developer</h5>

        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatibus, ex,
          recusandae. Facere modi
          sunt, quod quibusdam.
        </p>

        <!--Facebook-->
        <a type="button" class="btn-floating btn-small btn-fb"><i class="fab fa-facebook-f"></i></a>
        <!--Twitter-->
        <a type="button" class="btn-floating btn-small btn-tw"><i class="fab fa-twitter"></i></a>
        <!--Google +-->
        <a type="button" class="btn-floating btn-small btn-dribbble"><i class="fab fa-dribbble"></i></a>

      </div>
      <!--/.Card content-->

    </div>
                            </div>
                            <div class="col-sm-4 splide__slide m-2">
                                <div class="card card-cascade">

      <!--Card image-->
      <div class="view view-cascade">
        <img src="https://mdbootstrap.com/img/Photos/Others/men.webp" class="card-img-top" alt="">
        <a>
          <div class="mask rgba-white-slight"></div>
        </a>
      </div>
      <!--/.Card image-->

      <!--Card content-->
      <div class="card-body card-body-cascade text-center">
        <!--Title-->
        <h4 class="card-title"><strong>Billy Cullen</strong></h4>
        <h5>Web developer</h5>

        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatibus, ex,
          recusandae. Facere modi
          sunt, quod quibusdam.
        </p>

        <!--Facebook-->
        <a type="button" class="btn-floating btn-small btn-fb"><i class="fab fa-facebook-f"></i></a>
        <!--Twitter-->
        <a type="button" class="btn-floating btn-small btn-tw"><i class="fab fa-twitter"></i></a>
        <!--Google +-->
        <a type="button" class="btn-floating btn-small btn-dribbble"><i class="fab fa-dribbble"></i></a>

      </div>
      <!--/.Card content-->

    </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
        

        <%@include file="/WEB-INF/views/footer.jsp" %>
        <script>
            var splide = new Splide('.splide', {
                type: 'loop',
                perPage: 3,
                rewind: true,
                breakpoints: {
                    640: {
                        perPage: 2,
                        gap: '.7rem',
                        height: '12rem',
                    },
                    480: {
                        perPage: 1,
                        gap: '.7rem',
                        height: '12rem',
                    },
                },
            });
            splide.mount();
        </script>
    </body>

</html>