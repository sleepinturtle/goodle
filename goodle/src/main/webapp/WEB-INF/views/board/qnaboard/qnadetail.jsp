<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>문의 사항</title>
    <%@ include file="/WEB-INF/views/links_head.jsp" %>
</head>

<%@ include file="/WEB-INF/views/navbar2.jsp" %>
	
   
	<div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1 class="text-center">문의 사항</h1>
                <form>
                    <div class="form-group"><label>문의 번호 </label><input class="form-control" type="text" value="${detail_dto.board_no}" readonly="readonly"></div>
                    <div class="form-group"><label>작성자 </label><input class="form-control" type="text" value="${detail_dto.mem_id}" readonly="readonly"></div>
                    <div class="form-group"><label>작성자 </label><input class="form-control" type="text" value="${detail_dto.title1}" readonly="readonly"></div>
                    <div class="form-group"><label>Message </label><textarea class="form-control"  rows="5" readonly="readonly">${detail_dto.contents}</textarea></div>
                    <div class="form-group"><label>답변</label><textarea class="form-control" placeholder="빠른 시일내에 답변 드리겠습니다." rows="5" readonly="readonly">${detail_dto.answer}</textarea></div>
<!--                     <button class="btn btn-light" type="button">Send </button> -->
                </form>
            </div>
        </div>
    </div>
	<script type="text/javascript">
	$(document).ready(function() {
		$("#btn_delete").click(function() {

			$.get(
					"${pageContext.request.contextPath}/board/member/delete"
					, {
						board_no : ${detail_dto.board_no}
					}
					, function(data, status) {
						if( data >= 1 ){
							alert("게시글이 삭제 되었습니다.");
							location.href="${pageContext.request.contextPath}/board/member/list";
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














