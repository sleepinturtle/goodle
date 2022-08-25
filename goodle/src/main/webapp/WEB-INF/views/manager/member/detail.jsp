<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>멤버 정보 관리</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <%@ include file="/WEB-INF/views/links_head.jsp" %>
</head>

<%@ include file="/WEB-INF/views/navbar3.jsp" %>
	
   
	<div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1 class="text-center">멤버 정보 관리</h1>
                <form>
                    <div class="form-group"><label>이름 </label><input class="form-control" type="text" value="${detail_dto.mem_name}" readonly="readonly"></div>
                    <div class="form-group"><label>아이디 </label><input class="form-control" type="text" value="${detail_dto.mem_id}" readonly="readonly"></div>
                    <div class="form-group"><label>비밀번호 </label><input class="form-control" type="text" value="${detail_dto.mem_pwd}" readonly="readonly"></div>
                    <div class="form-group"><label>주소 </label><textarea class="form-control"  rows="5" readonly="readonly">${detail_dto.mem_addr1}</textarea></div>
                    <div class="form-group"><label>우편번호 </label><input class="form-control" type="text" value="${detail_dto.mem_post}" readonly="readonly"></div>
                    <div class="form-group"><label>상세주소</label><input class="form-control" type="text" value="${detail_dto.mem_addr2}" readonly="readonly"></div>
                    <div class="form-group"><label>전화번호 </label><input class="form-control" type="text" value="${detail_dto.mem_tel}" readonly="readonly"></div>
                    <div class="form-group"><label>특이 사항</label><textarea id="reply_textarea" class="form-control" placeholder="특별 사항을 적어주세요" rows="5">${detail_dto.mem_comp}</textarea></div>
                    <button type="button" class="btn btn-primary btn-lg" id="reply_insert_btn"> Send </button>
                </form>
            </div>
        </div>
    </div>

	<script type="text/javascript">
	$(document).ready(function() {

		$("#reply_insert_btn").click(function() {

			if( $.trim( $("#reply_textarea").val() ) == '' ){
				alert("글의 내용을 입력해 주세요.");
				return;
			}

			$.post(
					"${pageContext.request.contextPath}/manager/member/reply_insert"
					, {
						mem_name : "${detail_dto.mem_name}"
						, mem_comp : $.trim( $("#reply_textarea").val() )
					}
					, function(data, status) {
						if(data >= 1){
							alert("입력이 완료되었습니다.");
							location.href="${pageContext.request.contextPath}/mgrpage/mgrpage";
						} else {
							alert("잠시 후 다시 시도해 주세요.");
						}
					}//call back functiion
			);//post

		});//click

	});//ready
	</script>
<%@ include file="/WEB-INF/views/footer.jsp" %>














