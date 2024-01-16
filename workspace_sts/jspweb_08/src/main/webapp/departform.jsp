<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="utils.DBConfig" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body{
		font-family: Arial, sans-serif;
		background-color: #f2f2f2;
		margin: 0;
		padding: 0;
		display: flex;
		justify-content: center;
		align-items: center;
		height: 100vh;
	}
	.department-form{
		background-color: #ffff;
		padding: 20px;
		border-radius: 5px;
		box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	}
	form{
		display: flex;
		flex-direction: column;
	}
	label{
		margin-bottom: 5px;
	}
	input{
		padding: 8px;
		margin-bottom: 10px;
		border: 1px solid #ccc;
		border-radius: 3px;
	}
	button {
		background-color: #3498db;
		color: #fff;
		padding: 10px;
		border: none;
		border-radius: 3px;
		cursor: pointer;
	}
	button:hover{
		background-color: #217dbb;
	}
</style>
</head>
<body>
	<div class="department-form">
		<h2>부서 정보 등록</h2>
		<form id="departmentform" action="departreg.jsp">
			<label for="departId">부서번호:</label>
			<input type="text" id="departId" name="departId" required>
			
			<label for="departName">부서이름:</label>
			<input type="text" id="departName" name="departName" required>
			
			<label for="location">지역:</label>
			<input type="text" id="location" name="location" required>
			
			<label for="departnumber">부서 전화번호:</label>
			<input type="text" id="departnumber" name="departnumber" required>
			
			<button type="submit">등록</button>
		</form>
	</div>
    <script src="js/jquery-3.7.1.min.js"></script>
	<script>
		$(document).ready(function(){
			$('#departmentform').submit(function(event){
				//event.preventDefault();
				
				var departId=$('#departId').val();
				var departName=$('#departName').val();
				var location=$('#location').val();
				var departnumber=$('#departnumber').val();
				
				console.log('부서번호',departId);
				console.log('부서이름',departName);
				console.log('부서지역',location);
				console.log('부서번호',departnumber);
			});
		});
	</script>
</body>
</html>