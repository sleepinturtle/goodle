<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>divtest</title>
	<%@ include file="/WEB-INF/views/links_head.jsp" %>
</head>

<body>

	<div class="container">
		<div id="aaa">
			<h6>아무거나 쓰는 텍스트 aaaaaaaaaaaa</h6>
		</div>
		<div id="bbb">
			<h6>아무거나 쓰는 텍스트 bbbbbbbbbbb</h6>
		</div>
		<div id="ccc">
			<h6>아무거나 쓰는 텍스트ccccccccccccc</h6>
		</div>
		<div id="ddd">
			<h6>아무거나 쓰는 텍스트 dddddddddddddddddd</h6>
		</div>
		
		<button id="btn">버튼</button>
	</div>
	
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function(){
	    $("#bbb").hide();
	    $("#ccc").hide();
	    $("#ddd").hide();
	    let times = 1;

	  $("#btn").click(function(){
	  		times++;
	      if(times%4 == 1){
	          $("#aaa").show();
	          $("#bbb").hide();
	          $("#ccc").hide();
	          $("#ddd").hide();
	      } else if(times%4 == 2){
	          $("#aaa").hide();
	          $("#bbb").show();
	          $("#ccc").hide();
	          $("#ddd").hide();
	    } else if(times%4 == 3){
	          $("#aaa").hide();
	          $("#bbb").hide();
	          $("#ccc").show();
	          $("#ddd").hide();
	    } else if(times%4 == 0){
	          $("#aaa").hide();
	          $("#bbb").hide();
	          $("#ccc").hide();
	          $("#ddd").show();
	    }
	  });

	});
	</script>
</body>
</html>