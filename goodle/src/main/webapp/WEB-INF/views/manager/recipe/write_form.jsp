<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
		<meta charset="UTF-8">
		<title> 레시피 추가하기 </title>
		
		<%@ include file="/WEB-INF/views/links_head.jsp" %>
		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/ckeditor/ckeditor.js"></script>
		
		<style type="text/css">
		.write_label {
			color : red;
		}
		</style>
	</head>
	<%@ include file="/WEB-INF/views/navbar3.jsp" %>
	<body>
		
		<hr>
		<h3> 레시피 추가하기 </h3>
		<hr>
		<table class="table table-hover">
			<tbody>
				 
				 <tr>
					<th> 레시피 번호 </th>
					<td>
						<input type="text" id="num" name="num" maxlength="20"
								class="form-control">
						<label for="num" id="num_label" class="write_label"></label>
					</td>
				</tr>
			
				<tr>
					<th> 레시피 제목 </th>
					<td>
						<input type="text" id="title" name="title" maxlength="20"
								class="form-control">
						<label for="title" id="title_label" class="write_label"></label>
					</td>
				</tr>
				<tr>
				     <th> 조리 시간 </th>	
				     <td>
				     <input type="text" id="time" name="time" maxlength="20"
								class="form-control">
						<label for="time" id="time_label" class="write_label"></label>
				     </td>
				</tr>
				<tr>
				     <th> 재료 </th>	
				     <td>
				     <input type="text" id="ingr" name="ingr" maxlength="100"
								class="form-control">
						<label for="ingr" id="ingr_label" class="write_label"></label>
				     </td>
				</tr>
				<tr>
				     <th> 간단설명 </th>	
				     <td>
				     <input type="text" id="desc" name="desc" maxlength="30"
								class="form-control">
						<label for="desc" id="desc_label" class="write_label"></label>
				     </td>
				</tr>
				
				<tr>
					<th> 상세설명 </th>
					<td>
						<textarea class="form-contol" id="contents" name="contents"></textarea>
						<script type="text/javascript">
						CKEDITOR.replace("contents",{filebrowserUploadUrl:'${pageContext.request.contextPath}/ckfileup?pkgnm=board'});
						</script>
						<label for="contents" id="contents_label" class="write_label"></label>
					</td>
				</tr>
			</tbody>
		</table>
		<button id="write_btn" class="btn btn-primary float-right"> 글 작성 완료 </button>
		<a href="${pageContext.request.contextPath}/manager/recipe/list">
			<button class="btn btn-warning"> 글 작성 취소 </button>
		</a>
		<hr>
		<%@ include file="/WEB-INF/views/footer.jsp" %>
	
	<script type="text/javascript">
	$(document).ready(function() {
		$("#write_btn").click(function() {

			if( $.trim( $("#title").val() ) == "" ){
				$("#title_label").text("제목을 입력 하세요.");
				return;
			}

			if( CKEDITOR.instances.contents.getData() == "" ){
				$("#contents_label").text("내용을 입력 하세요.");
				return;
			}

			$.post(
					"${pageContext.request.contextPath}/manager/recipe/write"
					, {
						rcp_no  : $("#no").val()
						, rcp_name : $("#title").val()
						, rcp_time : $("#time").val()
						, rcp_ingr : $("#ingr").val()
						, rcp_desc : $("#desc").val()
						, rcp_detail : CKEDITOR.instances.contents.getData()
					}
					, function(data, status) {
						if(data >= 1){
							alert("게시글이 성공적으로 업로드 되었습니다.");
							location.href="${pageContext.request.contextPath}/manager/recipe/list";
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
	<%@ include file="/WEB-INF/views/footer.jsp" %>
	</body>
</html>
