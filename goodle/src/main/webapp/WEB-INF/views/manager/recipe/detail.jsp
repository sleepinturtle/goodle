<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
		<meta charset="UTF-8">
		<title> 레시피 상세 보기 </title>
		 <%@ include file="/WEB-INF/views/links_head.jsp" %>
		
	</head>
	
		<%@ include file="/WEB-INF/views/navbar3.jsp" %>
	<body>
	<%@ include file="/WEB-INF/views/header.jsp" %>
		<hr>
		<h3 class="text-center"> 레시피 상세 보기 </h3>
		<hr>
		<table class="table table-hover">
			<tbody>
								
												
												<tr>
														<th> 레시피 번호 </th>		<td>${detail_dto.rcp_no}</td>
														
														
													</tr>
																									
											
													<tr>
														<th> 레시피 이름 </th>		<td>${detail_dto.rcp_name}</td>
														
														
													</tr>
													
													<tr>
														<th> 재료 </th>		<td>${detail_dto.rcp_ingr}</td>
														
														
													</tr>
													
										
													
													<tr>
														<th> 조리 시간 </th>	<td>${detail_dto.rcp_time}</td>
														
														
													</tr>	
											
														
													
													<tr>
													    <th> 간단설명 </th>	<td>${detail_dto.rcp_desc}</td>
													    
														
													 </tr>
													 
													 
													
													<tr>	
													
														<th> 상세설명 </th>	 <td colspan="3">${detail_dto.rcp_detail}</td>
														
													</tr>
								      
			</tbody>
		</table>
		<hr>
		
			<button id="btn_delete" class="btn btn-danger"> 게시글 삭제 </button>
			<a href="${pageContext.request.contextPath}/manager/recipe/update_form?rcp_no=${detail_dto.rcp_no}">
				<button class="btn btn-primary"> 게시글 수정하러 가기 </button>
			</a>
			<hr>
		
	<%@ include file="/WEB-INF/views/footer.jsp" %>
	<script type="text/javascript">
	$(document).ready(function() {
		$("#btn_delete").click(function() {

			$.get(
					"${pageContext.request.contextPath}/manager/recipe/delete"
					, {
						rcp_no : ${detail_dto.rcp_no}
					}
					, function(data, status) {
						if( data >= 1 ){
							alert("게시글이 삭제 되었습니다.");
							location.href="${pageContext.request.contextPath}/manager/recipe/list";
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
	<%@ include file="/WEB-INF/views/footer.jsp" %>
	</body>
</html>












