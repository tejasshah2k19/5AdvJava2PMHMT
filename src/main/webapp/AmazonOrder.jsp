<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Amazon Orders</title>
  <link
    rel="stylesheet"
    href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
  />
  <style>
    body {
      background-color: #f3f3f3;
    }

    .navbar {
      background-color: #232f3e;
    }

    .navbar-brand,
    .nav-link {
      color: white !important;
    }

    .order-card {
      background: white;
      border: 1px solid #ddd;
      padding: 20px;
      margin-bottom: 20px;
    }

    .order-header {
      font-weight: bold;
      color: #555;
    }

    .product-img {
      height: 100px;
      object-fit: contain;
    }

    .btn-warning {
      background-color: #f0c14b;
      border-color: #a88734;
    }
  </style>
</head>
<body>
	
	
	<jsp:include page="AmazonHeader.jsp"></jsp:include>
	
	
  <div class="container mt-4">
    <h3>Your Orders</h3>
    <hr />

    <!-- Order 1 -->
    <div class="order-card">
      <div class="row">
        <div class="col-md-4">
          <p class="order-header">Order Placed: <span class="font-weight-normal">May 25, 2025</span></p>
        </div>
        <div class="col-md-4">
          <p class="order-header">Total: <span class="font-weight-normal">₹1,398</span></p>
        </div>
        <div class="col-md-4 text-md-right">
          <p class="order-header">Order ID: <span class="font-weight-normal">#A12345XYZ</span></p>
        </div>
      </div>
      <hr />

      <!-- Product inside order -->
      <div class="row align-items-center">
        <div class="col-md-2 text-center">
          <img src="https://via.placeholder.com/100x100?text=Product+1" class="product-img" />
        </div>
        <div class="col-md-7">
          <h5>Product Name 1</h5>
          <p>Delivered on May 27, 2025</p>
        </div>
        <div class="col-md-3 text-right">
          <button class="btn btn-warning btn-sm mb-1">Buy Again</button><br />
          <button class="btn btn-outline-secondary btn-sm">Track Package</button>
        </div>
      </div>
    </div>

    <!-- Order 2 -->
    <div class="order-card">
      <div class="row">
        <div class="col-md-4">
          <p class="order-header">Order Placed: <span class="font-weight-normal">April 12, 2025</span></p>
        </div>
        <div class="col-md-4">
          <p class="order-header">Total: <span class="font-weight-normal">₹2,499</span></p>
        </div>
        <div class="col-md-4 text-md-right">
          <p class="order-header">Order ID: <span class="font-weight-normal">#B67890LMN</span></p>
        </div>
      </div>
      <hr />

      <div class="row align-items-center">
        <div class="col-md-2 text-center">
          <img src="https://via.placeholder.com/100x100?text=Product+2" class="product-img" />
        </div>
        <div class="col-md-7">
          <h5>Product Name 2</h5>
          <p>Delivered on April 15, 2025</p>
        </div>
        <div class="col-md-3 text-right">
          <button class="btn btn-warning btn-sm mb-1">Buy Again</button><br />
          <button class="btn btn-outline-secondary btn-sm">Track Package</button>
        </div>
      </div>
    </div>
  </div>

  <!-- Footer -->
  <%@include file="AmazonFooter.jsp" %>

  <!-- Scripts -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
 