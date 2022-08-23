<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
<%@ include file="/WEB-INF/views/header.jsp" %>
    </head>
	<style> 

    .card-body{
    	text-align: center;
    }
     </style> 
<%@ include file="/WEB-INF/views/navbar.jsp" %>
<%@ include file="/WEB-INF/views/var_header.jsp" %>
    
                <main>
            	<div id="layoutSidenav_content">
                	<c:forEach var="dto" items="${dtoFromDB}"/>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">결제내역</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">@${login_info.mem_id}</li>
                        </ol>
                        <h2> 영역 시험용 </h2>
                     </div>
                   </div>
                </main>   
<%@ include file="/WEB-INF/views/footer.jsp" %> 
</body>
</html>   