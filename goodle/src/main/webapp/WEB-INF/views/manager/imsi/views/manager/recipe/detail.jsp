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
												<th> 이름 </th>		<td>${detail_dto.rcp_name}</td>
												<td><textarea name="bbs_content" cols="15" rows="1"></textarea></td>
												
											</tr>
											
											<tr>
												<th> 조리 시간 </th>	<td>${detail_dto.rcp_time}</td>
												<td><textarea name="bbs_content" cols="15" rows="1"></textarea></td>
												
											</tr>	
									
											<tr>
												<th> 분류 </th>	
												<td>
															<select id="rcp_type" name="rcp_type" class="form-control">
																	<option value="0"> 육류 </option>
																	<option value="1"> 해산물 </option>
																	<option value="2"> 비건 </option>
																</select>
																
												</td>
												
											</tr>	
											
											<tr>
											    <th> 간단설명 </th>	<td>${detail_dto.rcp_desc}</td>
											    <td><textarea name="bbs_content" cols="30" rows="10"></textarea></td>
												
											 </tr>
											 
											 <tr>
												<th>  이미지 </th>	<td>${detail_dto.rcp_imgpath}</td>
											</tr>
											
											<tr>	
												<th> 상세설명 </th>	 <td>${detail_dto.rcp_detail}</td>
												<td><textarea name="bbs_content" cols="60" rows="20"></textarea></td>
											</tr>
								       <tr align="right">
											<td>&nbsp;</td>
											<td colspan="2"><input type=button value="확인">
											<td>&nbsp;</td>
										</tr>
			</tbody>
		</table>
		<hr>
		
	<%@ include file="/WEB-INF/views/footer.jsp" %>
	
	</body>
</html>














