<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

		<%@ include file="/WEB-INF/views/links_head.jsp" %>
		<%@ include file="/WEB-INF/views/navbar2.jsp" %>
		
		
	<body>
		<main>		
		<div id="layoutSidenav_content">	
		<table class="table table-hover">
			<tbody>
			<tr>
				<th>제목</th>
				<td>
					<input type="text" id="title" name="title" maxlength="50" class="form-control">
					<label id="title_label" for="title" class="write_label"></label>
				</td>
			</tr>
			<tr>
				<th>내용</th>
				<td>
					<textarea rows="5" id="contents" name="contents" class="form-control"></textarea>
					<script type="text/javascript">
						CKEDITOR.replace('contents');
					</script>
					<label id="contents_label" for="contents" class="write_label"></label>
				</td>
			</tr>
			</tbody>
			
		</table>
			<button id="write_btn" class="btn btn-primary">글 작성 완료</button>
			<a href="${pageContext.request.contextPath}/qna/list">
			<button class="btn btn-secondary"> 글 작성 취소 </button>
			</a>
			</div>
		</main>
		
		
		<script type="text/javascript">
			$(document).ready(function() {
				$("#write_btn").click(function() {
					alert(11);
					if($.trim( $("#title").val() ) == ""){
						$("#title_label").text("제목을 입력 하세요");
						return;
					}else {$("#title_label").text("");}
					if(CKEDITOR.instances.contents.getData()==""){
						$("#contents_label").text("내용을 입력하세요");
						return;
					}else {$("#contents_label").text("");}
					
					$.post(
						"${pageContext.request.contextPath}/qna/write"
						, {
							title : $("#title").val()
							,contents : CKEDITOR.instances.contents.getData()
						}
						,function(data, status){//data: 서버가 보내주는 data, status: 통신 성공여부
							if(data >= 1){
								alert("게시글이 등록 되었습니다.");
								location.href = "${pageContext.request.contextPath}/qna/list";
							}else if (data <= 0){
								alert("게시글 작성을 실패했습니다.");
							}else{
								alert("예상하지 못한 에러, 잠시 후 다시 시도해 주세요.")
							}
							
						}//callback function
					);//post
					
				});//click
			});//ready
		</script>
<%@ include file="/WEB-INF/views/footer.jsp" %>