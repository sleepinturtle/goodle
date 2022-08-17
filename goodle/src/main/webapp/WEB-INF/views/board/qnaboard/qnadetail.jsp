<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/WEB-INF/views/header.jsp" %>
<%@ include file="/WEB-INF/views/navbar.jsp" %>
	
	<main>
    <div id="layoutSidenav_content">
		<table class="table table-hover">
			<tbody>
				<tr>
					<th> 글 번 호 </th>	<td>${detail_dto.board_no}</td>
					<th> 제 목 </th>		<td>${detail_dto.title}</td>
				</tr>
				<tr>
					<th> 작 성 자 </th>	<td>${detail_dto.mem_id}</td>
					<th> 작 성 일 </th>	<td>${detail_dto.write_date}</td>
				</tr>
				<tr>
					<th> 내 용 </th>		<td colspan="3">${detail_dto.contents}</td>
				</tr>
				<tr>
					<th> 답변 </th>		<td colspan="3">${detail_dto.answer}</td>
				</tr>
			</tbody>
		</table>
		<hr>
		<c:if test="${detail_dto.mem_no == login_info.mem_no}">
			<hr>
		</c:if>
	</div>
    </main>
	<script type="text/javascript">
// 	$(document).ready(function() {
// 		$("#btn_delete").click(function() {

// 			$.get(
// 					"${pageContext.request.contextPath}/board/member/delete"
// 					, {
// 						board_no : ${detail_dto.board_no}
// 					}
// 					, function(data, status) {
// 						if( data >= 1 ){
// 							alert("게시글이 삭제 되었습니다.");
// 							location.href="${pageContext.request.contextPath}/board/member/list";
// 						} else if( data <= 0 ) {
// 							alert("게시글 삭제를 실패 하였습니다.");
// 						} else {
// 							alert("잠시 후 다시 시도해 주세요.");
// 						}
// 					}//call back function
// 			);//get

// 		});//click
// 	});//ready
 	</script> 
<%@ include file="/WEB-INF/views/footer.jsp" %>














