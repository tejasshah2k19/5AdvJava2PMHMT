<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Amazon Cart</title>
  <link
    rel="stylesheet"
    href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
  />
  <style>
    body {
      background-color: #f7f7f7;
    }

    .navbar {
      background-color: #232f3e;
    }

    .navbar-brand,
    .nav-link {
      color: white !important;
    }

    .cart-item img {
      height: 100px;
      object-fit: contain;
    }

    .price {
      font-size: 1.2rem;
      font-weight: bold;
      color: #b12704;
    }

    .btn-warning {
      background-color: #f0c14b;
      border-color: #a88734;
    }

    .summary-box {
      background-color: white;
      border: 1px solid #ddd;
      padding: 20px;
    }
  </style>
</head>
<body>
  <!-- Navbar -->
   <jsp:include page="AmazonHeader.jsp"></jsp:include>

  <!-- Cart Section -->
  <div class="container mt-4">
    <h3>Your Shopping Cart</h3>
    <hr />

    <div class="row">
      <!-- Cart Items -->
      <div class="col-md-8">
        <!-- Item 1 -->
        <div class="card mb-3 p-3 cart-item">
          <div class="row no-gutters">
            <div class="col-md-3 text-center">
              <img src="https://images-eu.ssl-images-amazon.com/images/W/MEDIAX_1215821-T2/images/I/61Erolb0K4L._AC_UL165_SR165,165_.jpg" class="img-fluid" alt="Product 1" />
            </div>
            <div class="col-md-6">
              <h5>Product Name 1</h5>
              <p class="price">₹499</p>
              <small>In stock</small><br />
              <a href="#" class="text-danger">Remove</a>
            </div>
            <div class="col-md-3">
              <label>Qty:</label>
              <select class="form-control">
                <option>1</option>
                <option>2</option>
                <option>3</option>
              </select>
            </div>
          </div>
        </div>

        <!-- Item 2 -->
        <div class="card mb-3 p-3 cart-item">
          <div class="row no-gutters">
            <div class="col-md-3 text-center">
              <img src="https://images-eu.ssl-images-amazon.com/images/W/MEDIAX_1215821-T2/images/I/816ksjt+QJL._AC_UL165_SR165,165_.jpg" class="img-fluid" alt="Product 2" />
            </div>
            <div class="col-md-6">
              <h5>Product Name 2</h5>
              <p class="price">₹899</p>
              <small>In stock</small><br />
              <a href="#" class="text-danger">Remove</a>
            </div>
            <div class="col-md-3">
              <label>Qty:</label>
              <select class="form-control">
                <option>1</option>
                <option>2</option>
              </select>
            </div>
          </div>
        </div>
      </div>

      <!-- Cart Summary -->
      <div class="col-md-4">
        <div class="summary-box">
          <h5>Cart Summary</h5>
          <hr />
          <p>Subtotal (2 items): <strong>₹1,398</strong></p>
          <button class="btn btn-warning btn-block">Proceed to Checkout</button>
        </div>
      </div>
    </div>
  </div>
	<br><BR><br><Br>   
  <!-- Footer -->
    <%@include file="AmazonFooter.jsp" %>
  

  <!-- Scripts -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
 