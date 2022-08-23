<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>프로필 관리</title>
    <%@ include file="/WEB-INF/views/links_head.jsp" %>
</head>
		<%@ include file="/WEB-INF/views/navbar2.jsp" %>
		
		
	<body>
		<div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1 class="text-center">문의 사항</h1>
                <form>
                    <div class="form-group"><label>작성자 </label><input id="writer" class="form-control" type="text" value="${login_info.mem_id}" readonly="readonly"></div>
                    <div class="form-group"><label>제목 </label><input id="title1" class="form-control" type="text" value="${detail_dto.title1}" ></div>
                    <div class="form-group"><label>Message </label><textarea id="contents" class="form-control"  rows="5" >${detail_dto.contents}</textarea></div>
                    <div class="form-group"><label>답변</label><textarea id="answer" class="form-control" placeholder="빠른 시일내에 답변 드리겠습니다." rows="5" readonly="readonly">${detail_dto.answer}</textarea></div>
<!--                     <button class="btn btn-light" type="button">Send </button> -->
                </form>
            </div>
        </div>
    </div>
		<button id="write_btn" class="btn btn-primary float-right"> 글 작성 완료 </button>
		<a href="${pageContext.request.contextPath}/qna/list">
			<button class="btn btn-warning"> 글 작성 취소 </button>
		</a>
		<hr>
	<%@ include file="/WEB-INF/views/links_foot.jsp" %>
	<script type="text/javascript">
	$(document).ready(function() {
		$("#write_btn").click(function() {

			if( $.trim( $("#title1").val() ) == "" ){
				$("#title_label").text("제목을 입력 하세요.");
				return;
			}

			if( $.trim( $("#contents").val() ) == ""  ){
				$("#contents_label").text("내용을 입력 하세요.");
				return;
			}

			$.post(
					"${pageContext.request.contextPath}/qna/write"
					, {
						title1 : $("#title1").val()
						, contents : $("#contents").val()
					}
					, function(data, status) {
						if(data >= 1){
							alert("게시글이 성공적으로 업로드 되었습니다.");
							location.href="${pageContext.request.contextPath}/qna/list";
						} else if(data <= 0){
							alert("게시글 작성을 실패 하였습니다.");
						} else {
							alert("잠시 후 다시 시도해 주세요.");
						}
					}//call back function
			);//post
		});//click
	});//ready
	</script>
	</body>
	</html>
