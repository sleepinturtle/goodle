<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/WEB-INF/views/header.jsp" %>
<%@ include file="/WEB-INF/views/navbar.jsp" %>
		<body>
     		<main>
            	<div id="layoutSidenav_content">
            	<div class="row">
<%-- 		<form action="${pageContext.request.contextPath}/board/member/list" method="get"> --%>
<!-- 			<div class="input-group"> -->
<!-- 				<div class="input-group-prepend"> -->
<!-- 					<select class="form-control" id="searchOption" name="searchOption"> -->
<!-- 						<option value="title" -->
<%-- 							<c:if test="${search_dto.searchOption == 'title'}">selected="selected"</c:if> --%>
<!-- 						> 제 목 </option> -->
<!-- 						<option value="writer" -->
<%-- 							<c:if test="${search_dto.searchOption == 'writer'}">selected="selected"</c:if> --%>
<!-- 						> 작 성 자 </option> -->
<!-- 					</select> -->
<!-- 				</div> -->
<!-- 				<input type="text" class="form-control" id="searchWord" name="searchWord" -->
<%-- 						value="${search_dto.searchWord}"> --%>
<!-- 				<div class="input-group-append"> -->
<!-- 					<button type="submit" class="btn btn-primary"> 검 색 </button> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</form> -->
                	<c:forEach var="dto" items="${dtoFromDB}"/>
                    <div class="container-fluid px-4">
<!--                         <h1 class="mt-4">마이페이지</h1> -->
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">@${login_info.mem_id}</li>
                        </ol>
                       
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                	문의사항
                            </div>
                            <div class="card-body">
                                <div class="clearfix">
			
		</div>
		<hr>
		<table class="table table-hover">
			<thead>
				<tr>
					<th> 글번호 </th>	<th> 제목 </th>	<th> 작성자 </th>	<th> 작성일 </th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="dto" items="${list}">
					<tr>
						<td>${dto.board_no}</td>
						<td>
							<a href="${pageContext.request.contextPath}/qna/detail?board_no=${dto.board_no}">
								${dto.title}
							</a>
						</td>
						<td>${dto.mem_id}</td>
						<td>${dto.write_date}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		
		<ul class="pagination">
			<c:if test="${startPageNum > 10}">
				<li class="page-item">
					<a class="page-link"
						href="${pageContext.request.contextPath}/qna/list?userWantPage=${startPageNum-1}&searchOption=${search_dto.searchOption}&searchWord=${search_dto.searchWord}">
						Previous
					</a>
				</li>
			</c:if>
			<c:forEach var="page_no" begin="${startPageNum}" end="${endPageNum}">
				<c:choose>
					<c:when test="${page_no == userWantPage}">
						<li class="page-item active">
							<a class="page-link">${page_no}</a>
						</li>
					</c:when>
					<c:otherwise>
						<li class="page-item">
							<a class="page-link"
								href="${pageContext.request.contextPath}/qna/list?userWantPage=${page_no}&searchOption=${search_dto.searchOption}&searchWord=${search_dto.searchWord}">
								${page_no}
							</a>
						</li>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<c:if test="${lastPageNum > endPageNum}">
				<li class="page-item">
					<a class="page-link"
						href="${pageContext.request.contextPath}/qna/list?userWantPage=${endPageNum+1}&searchOption=${search_dto.searchOption}&searchWord=${search_dto.searchWord}">
						Next
					</a>
				</li>
			</c:if>
		</ul>
                                <div class="clearfix">
									<a href="${pageContext.request.contextPath}/qna/write_form">
										<button class="btn btn-primary float-right"> 글 쓰러 가기 </button>
									</a>
								</div>
                            </div>
                        </div>
                    </div>
                    </div>
		            </div>
                </main>
<%@ include file="/WEB-INF/views/footer.jsp" %>