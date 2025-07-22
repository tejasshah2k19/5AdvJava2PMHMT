 <!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Product</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <div class="card shadow-lg">
        <div class="card-header bg-primary text-white">
            <h4 class="mb-0">Edit Product</h4>
        </div>
        <div class="card-body">
            <form action="DBUpdateProductServlet" method="post">
                <div class="form-group">
                    <label for="productName">Product Name</label>
                    <input type="text" class="form-control" id="productName" name="productName" value="${productName}" required>
                </div>

                <div class="form-group">
                    <label for="price">Price (₹)</label>
                    <input type="number" class="form-control" id="price" name="price" value="${price}" step="0.01" required>
                </div>

                <div class="form-group">
                    <label for="category">Category</label>
                    <input type="text" class="form-control" id="category" name="category" value="${category}"  required>
                </div>

                <div class="form-group">
                    <label for="qty">Quantity</label>
                    <input type="number" class="form-control" value="${qty}" id="qty" name="qty" required>
                </div>

                <button type="submit" class="btn btn-success">Update Product</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>
