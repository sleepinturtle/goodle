<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<!-- saved from url=(0053)file:///C:/Users/kyleb/Desktop/testing/untitled.html# -->
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>문의 사항</title>
    <%@ include file="/WEB-INF/views/links_head.jsp" %>
</head>

<body>
<%@ include file="/WEB-INF/views/navbar2.jsp" %>
	
    
    <!-- card -->
    <div class="container py-4 py-xl-5">
        <div class="row mb-5">
            <div class="col-md-8 col-xl-6 text-center mx-auto">
                <h2 class="font-weight-bold">문의 사항</h2>
            </div>
        </div>
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
  <!-- /card -->
    <%@ include file="/WEB-INF/views/links_foot.jsp" %>


</body></html>