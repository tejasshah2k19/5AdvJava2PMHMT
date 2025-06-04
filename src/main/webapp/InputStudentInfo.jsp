<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Form</title>
<!-- Bootstrap 5 CDN -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>

	<div class="container mt-5">
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-6">
				<h2 class="mb-4">Student Registration Form</h2>

				<form action="StudentServlet" method="post">

					<!-- First Name -->
					<div class="mb-3">
						<label for="firstName" class="form-label">First Name:</label> <input
							type="text" class="form-control" id="firstName" name="firstName"
							required>
					</div>

					<!-- Email -->
					<div class="mb-3">
						<label for="email" class="form-label">Email:</label> <input
							type="email" class="form-control" id="email" name="email"
							required>
					</div>

					<!-- Password -->
					<div class="mb-3">
						<label for="password" class="form-label">Password:</label> <input
							type="password" class="form-control" id="password"
							name="password" required>
					</div>

					<!-- Gender -->
					<div class="mb-3">
						<label class="form-label">Gender:</label><br>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" id="male"
								name="gender" value="Male"> <label
								class="form-check-label" for="male">Male</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" id="female"
								name="gender" value="Female"> <label
								class="form-check-label" for="female">Female</label>
						</div>
					</div>

					<!-- Address -->
					<div class="mb-3">
						<label for="address" class="form-label">Address:</label>
						<textarea class="form-control" id="address" name="address"
							rows="3"></textarea>
					</div>

					<!-- Hobbies -->
					<div class="mb-3">
						<label class="form-label">Hobbies:</label><br>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" name="hobby"
								value="Reading" id="reading"> <label
								class="form-check-label" for="reading">Reading</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" name="hobby"
								value="Traveling" id="traveling"> <label
								class="form-check-label" for="traveling">Traveling</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" name="hobby"
								value="Sports" id="sports"> <label
								class="form-check-label" for="sports">Sports</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" name="hobby"
								value="Music" id="music"> <label
								class="form-check-label" for="music">Music</label>
						</div>
					</div>

					<!-- City -->
					<div class="mb-3">
						<label for="city" class="form-label">City:</label> <select
							class="form-select" id="city" name="city">
							<option value="Mumbai">Mumbai</option>
							<option value="Delhi">Delhi</option>
							<option value="Bangalore">Bangalore</option>
							<option value="Ahmedabad">Ahmedabad</option>
						</select>
					</div>

					<!-- Submit Button -->
					<button type="submit" class="btn btn-primary">Submit</button>

				</form>
			</div>
		</div>

	</div>  
	<!-- Bootstrap JS (Optional, for interactivity) -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
