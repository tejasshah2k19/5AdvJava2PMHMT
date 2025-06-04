<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Simple Calculator</title>
<!-- Bootstrap CSS CDN -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<div class="container mt-5">
		<h2 class="mb-4">Simple Calculator</h2>
		<form action="CalcServlet" method="post">
			<div class="mb-3">
				<label for="no1" class="form-label">Number 1</label> <input
					type="text" class="form-control" id="no1" name="no1"
					placeholder="Enter first number">
			</div>
			<div class="mb-3">
				<label for="no2" class="form-label">Number 2</label> <input
					type="text" class="form-control" id="no2" name="no2"
					placeholder="Enter second number">
			</div>
			<div class="mb-3">
				<label for="operation" class="form-label">Select Operation</label> 
				<select
					class="form-select" id="operation" name="operation" multiple="multiple">
					<option value="add">Add</option>
					<option value="sub">Subtract</option>
					<option value="mul">Multiply</option>
					<option value="div">Divide</option>
				</select>
			</div>
			<button type="submit" class="btn btn-primary">Submit</button>
		</form>
	</div>

	<!-- Bootstrap JS (Optional) -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
