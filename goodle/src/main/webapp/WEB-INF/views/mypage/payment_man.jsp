<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>결제정보 관리</title>
    <%@ include file="/WEB-INF/views/links_head.jsp" %>
</head>

<body>
<%@ include file="/WEB-INF/views/navbar2.jsp" %>
	
    
    <!-- card -->
    <div class="container py-4 py-xl-5">
<!--         <div class="row mb-5"> -->
<!--             <div class="col-md-8 col-xl-6 text-center mx-auto"> -->
<!--                 <h2 class="font-weight-bold">Mypage</h2> -->
<!--             </div> -->
<!--         </div> -->
<!--         <div class="row row-cols-1 row-cols-md-2 row-cols-xl-5"> -->
						   <section class="resume-section" id="payinfo">
			                <div class="resume-section-content">
			                    <h2 class="mb-5">결제 정보</h2>
			                     <table class="table table-hover">
			                   		<tr>
			                   			<td>
			                   				사용자 이름  <input type="text" id="card_name" name="card_name" placeholder="이름 입력">
			                   						<label for="card_name" id="card_name_label"></label>
			                   			</td>
			                   		</tr>
			                   		<tr>
			                   			<td>
			                   				카드 번호  <input type="text" id="card_no" name="card_no" placeholder="카드 번호 입력">
			                   						<label for="card_no" id="card_no_label"></label>
			                   			</td>
			                   		</tr>
			                   		<tr>
			                   			<td>
			                   				유효 기간  <select class="form-control" id="card_exp1" name="card_exp1">
			                   							<option value="" selected="selected"></option>
			                   							<option value="1월">1월</option>
			                   							<option value="2월">2월</option>
			                   							<option value="3월">3월</option>
			                   							<option value="4월">4월</option>
			                   							<option value="5월">5월</option>
			                   							<option value="6월">6월</option>
			                   							<option value="7월">7월</option>
			                   							<option value="8월">8월</option>
			                   							<option value="9월">9월</option>
			                   							<option value="10월">10월</option>
			                   							<option value="11월">11월</option>
			                   							<option value="12월">12월</option>
			                   						</select>
			                   						<label for="card_exp1" id="card_exp1_label"></label>
			                   			
					                   				<select class="form-control" id="card_exp2" name="card_exp2">
					                   					<option value="" selected="selected"></option>
					                   					<option value="22년">22년</option>
					                   					<option value="23년">23년</option>
					                   					<option value="24년">24년</option>
					                   					<option value="25년">25년</option>
					                   					<option value="26년">26년</option>
					                   					<option value="27년">27년</option>
					                   					<option value="28년">28년</option>
					                   					<option value="29년">29년</option>
					                   					<option value="30년">30년</option>
					                   					<option value="31년">31년</option>
					                   					<option value="32년">32년</option>
					                   					<option value="33년">33년</option>
					                   				</select>
					                   				<label for="card_exp2" id="card_exp2_label"></label>
			                   			</td>
			                   		</tr>
			                   		<tr>
			                   			<td>
			                   				CVC<input type="text" id="cvc" name="cvc"> 
			                   					<label for="cvc" id="cvc_label"></label>
			                   			</td>
			                   		</tr>
			                   		<tr>
			                   			<td>
			                   				카드 결제비밀번호 앞 2자리<input type="text" id="card_pwd" name="card_pwd"> 
			                   									<label for="card_pwd" id="card_pwd_label"></label>
			                   			</td>
			                   		</tr>
			                   		<tr>
			                			<td>
			                				<a href="#info">
			                					<button type="button" class="btn btn-success" id="back" name="back">뒤로 가기</button>
			                				</a>
			                			</td>
			                			<td>
			                				회원 가입 절차를 완료합니다.<button type="button" class="btn btn-success" id="join">가입 완료</button>
			                			</td>
			                		</tr>
			                   </table>
			                </div>
			            </section>
						   
            
    </div>
    <%@ include file="/WEB-INF/views/links_foot.jsp" %>


</body></html>