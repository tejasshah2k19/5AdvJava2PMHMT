<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Amazon Home Page</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
body {
	background-color: #f3f3f3;
}

.navbar {
	background-color: #232f3e;
}

.navbar-brand, .nav-link, .form-control {
	color: white !important;
}

.carousel-item img {
	height: 400px;
	object-fit: cover;
}

.card {
	min-height: 400px;
}

.footer {
	background-color: #232f3e;
	color: white;
	padding: 20px 0;
	margin-top: 40px;
}
</style>
</head>
<body>

	<!-- Navbar -->
	<jsp:include page="AmazonHeader.jsp"></jsp:include>



	<!-- Products -->
	<div class="container mt-5">
		<h3>Top Deals</h3>
		<div class="row">
			<!-- Product 1 -->
			<div class="col-md-3">
				<div class="card">
					<img
						src="https://images-eu.ssl-images-amazon.com/images/W/MEDIAX_1215821-T2/images/I/816ksjt+QJL._AC_UL165_SR165,165_.jpg"
						class="card-img-top" alt="Product 1">
					<div class="card-body">
						<h5 class="card-title">Product Name 1</h5>
						<p class="card-text">
							₹499 <br> Great value for money!
						</p>
						<a href="#" class="btn btn-warning btn-sm">Add to Cart</a>
					</div>
				</div>
			</div>

			<!-- Product 2 -->
			<div class="col-md-3">
				<div class="card">
					<img
						src="https://images-eu.ssl-images-amazon.com/images/W/MEDIAX_1215821-T2/images/I/816ksjt+QJL._AC_UL165_SR165,165_.jpg"
						class="card-img-top" alt="Product 2">
					<div class="card-body">
						<h5 class="card-title">Product Name 2</h5>
						<p class="card-text">
							₹999 <br> Limited Time Offer!
						</p>
						<a href="#" class="btn btn-warning btn-sm">Add to Cart</a>
					</div>
				</div>
			</div>

			<!-- Product 3 -->
			<div class="col-md-3">
				<div class="card">
					<img
						src="https://images-eu.ssl-images-amazon.com/images/W/MEDIAX_1215821-T2/images/I/61dBtQk50SL._AC_UL165_SR165,165_.jpg"
						class="card-img-top" alt="Product 3">
					<div class="card-body">
						<h5 class="card-title">Product Name 3</h5>
						<p class="card-text">
							₹1,299 <br> Best Seller!
						</p>
						<a href="#" class="btn btn-warning btn-sm">Add to Cart</a>
					</div>
				</div>
			</div>

			<!-- Product 4 -->
			<div class="col-md-3">
				<div class="card">
					<img
						src="https://images-eu.ssl-images-amazon.com/images/W/MEDIAX_1215821-T2/images/I/816ksjt+QJL._AC_UL165_SR165,165_.jpg"
						class="card-img-top" alt="Product 4">
					<div class="card-body">
						<h5 class="card-title">Product Name 4</h5>
						<p class="card-text">
							₹2,499 <br> Top Rated!
						</p>
						<a href="#" class="btn btn-warning btn-sm">Add to Cart</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Footer -->
	  <%@include file="AmazonFooter.jsp" %>
	

	<!-- Scripts -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
