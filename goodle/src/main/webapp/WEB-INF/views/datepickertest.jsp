<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker3.standalone.min.css">
	</head>
	
	<body>
	
		<div>
			<label>날짜</label> <input type="text" id="datePicker">
		</div>
		<button type="button" id="click-btn">날짜 값 확인용</button>
	
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.kr.min"></script>
		
		<script type="text/javascript">
			$('#datePicker').datepicker({
				format : "yyyy-mm-dd",
				language : "kr",
				todayHighlight : true
			});
			
			$('#click-btn').on('click', function() {
				var date = $('#datePicker').val();
				alert(date);
			});
		</script>
	</body>
</html>