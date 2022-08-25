<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
		<meta charset="UTF-8">
		<title> 멤버 게시판 상세 보기 </title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	</head>
	<body>
	<%@ include file="/WEB-INF/views/header.jsp" %>
		<hr>
		<h3> 멤버 게시판 상세 보기 </h3>
		<hr>
		<table class="table table-hover">
			<tbody>
				<tr>
					<th> 멤버 이름 </th>		<td>${detail_dto.mem_name}</td>
				</tr>
				<tr>
					<th> 전화번호 </th>	<td>${detail_dto.mem_tel}</td>
					<th> 이메일 </th>	<td>${detail_dto.mem_email}</td>
				    <th> 가입일자 </th>	<td>${detail_dto.mem_date}</td>
				 </tr>
				 <tr>
					<th>  주소 </th>	<td>${detail_dto.mem_addr1}</td>
					<th> 상세주소 </th>	<td>${detail_dto.mem_addr2}</td>	
				</tr>
				<tr>
				<th> 우편번호 </th>	<td>${detail_dto.mem_post}</td>
			</tbody>
		</table>
		<!-- <hr>
		
			    <button id="btn_order" class="btn order"> 주문 내역 </button>
			<a href="${pageContext.request.contextPath}/manager/member/update_form?mem_no=${detail_dto.mem_no}">
				//질문
		
			<hr> -->
	<%@ include file="/WEB-INF/views/footer.jsp" %>
	<script type="text/javascript">
	$(document).ready(function() {
		$("#btn_delete").click(function() {

			$.get(
					"${pageContext.request.contextPath}/manager/member/delete"
					, {
						mem_no : ${detail_dto.mem_no}
					
					}
					, function(data, status) {
						if( data >= 1 ){
							alert("게시글이 삭제 되었습니다.");
							location.href="${pageContext.request.contextPath}/manager/member/list";
						} else if( data <= 0 ) {
							alert("게시글 삭제를 실패 하였습니다.");
						} else {
							alert("잠시 후 다시 시도해 주세요.");
						}
					}//call back function
			);//get

		});//click
	});//ready
	</script>
	</body>
</html>

		
	<%@ include file="/WEB-INF/views/footer.jsp" %>
	
	</body>
</html>














