<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
		<meta charset="UTF-8">
		<title> 멤버 게시판 목록 </title>
		<%@ include file="/WEB-INF/views/links_head.jsp" %>
	</head>
	<body>
	<%@ include file="/WEB-INF/views/navbar3.jsp" %>
		<hr>
		<h3 class="text-center"> 멤버 게시판 목록 </h3>
		<hr>
		<form action="${pageContext.request.contextPath}/manager/member/list" method="get">
			<div class="input-group">
				<div class="input-group-prepend">
					<select class="form-control" id="searchOption" name="searchOption">
						<option value="mem_no"
							<c:if test="${search_dto.searchOption == 'mem_no'}">selected="selected"</c:if>
						> 멤버 번호 </option>
						<option value="mem_name"
							<c:if test="${search_dto.searchOption == 'mem_name'}">selected="selected"</c:if>
						> 멤버 이름 </option>
					</select>
				</div>
				<input type="text" class="form-control" id="searchWord" name="searchWord"
						value="${search_dto.searchWord}">
				<div class="input-group-append">
					<button type="submit" class="btn btn-primary"> 검 색 </button>
				</div>
			</div>
		</form>
		<hr>
		<hr>
		<table class="table table-hover">
			<thead>
				<tr>
					<th> 회원 번호 </th>	<th> 이름 </th>	<th> 이메일 </th>	<th> 가입일자 </th>	
				</tr>
			</thead>
			<tbody>
				<c:forEach var="dto" items="${list}">
					<tr>
						<td>${dto.mem_no}</td>
						<td>
							<a href="${pageContext.request.contextPath}/manager/member/detail?mem_no=${dto.mem_no}">
								${dto.mem_name}
							</a>
						</td>
						<td>${dto.mem_email}</td>
						<td>${dto.mem_date}</td>
						
					</tr>
					<tr>
					
					
					
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<hr>
		<ul class="pagination">
			<c:if test="${startPageNum > 10}">
				<li class="page-item">
					<a class="page-link"
						href="${pageContext.request.contextPath}/manager/member/list?userWantPage=${startPageNum-1}&searchOption=${search_dto.searchOption}&searchWord=${search_dto.searchWord}">
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
								href="${pageContext.request.contextPath}/manager/member/list?userWantPage=${page_no}&searchOption=${search_dto.searchOption}&searchWord=${search_dto.searchWord}">
								${page_no}
							</a>
						</li>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<c:if test="${lastPageNum > endPageNum}">
				<li class="page-item">
					<a class="page-link"
						href="${pageContext.request.contextPath}/board/member/list?userWantPage=${endPageNum+1}&searchOption=${search_dto.searchOption}&searchWord=${search_dto.searchWord}">
						Next
					</a>
				</li>
			</c:if>
		</ul>
		<hr>
	<%@ include file="/WEB-INF/views/footer.jsp" %>
	</body>
</html>














