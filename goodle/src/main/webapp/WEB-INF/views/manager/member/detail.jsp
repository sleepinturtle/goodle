<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
		<meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>멤버 게시판 상세 보기</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/resources/dashboard/css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
	</head>
	<body>
	
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
				
			</tbody>
		</table>
		<hr>
		
	<script type="text/javascript">
	
	</script>
	</body>
</html>

