<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<title>My Wishlist</title>

<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">

<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

<style>

body{
background:#F4F6F9;
font-family:'Segoe UI',sans-serif;
}

.card{
border-radius:15px;
}

.table thead{
background:#0D1B2A;
color:white;
}

.car-name{
font-weight:600;
color:#333;
}

.price{
font-weight:bold;
color:#198754;
}

</style>

</head>

<body>

<div class="container mt-5">

<div class="card shadow-lg">

<div class="card-header bg-dark text-white d-flex justify-content-between">

<h4 class="mb-0">
<i class="bi bi-heart-fill"></i> My Wishlist
</h4>

<a href="customerCarList" class="btn btn-light btn-sm">
<i class="bi bi-arrow-left"></i> Back
</a>

</div>


<div class="card-body">

<div class="table-responsive">

<table class="table table-hover align-middle">

<thead>

<tr>
<th>Car</th>
<th>City</th>
<th>KMS</th>
<th>Price</th>
<th>Action</th>
</tr>

</thead>

<tbody>

<c:forEach items="${wishlist}" var="w">

<tr>

<td class="car-name">
${w.carListing.brandName} 
${w.carListing.modelName} 
(${w.carListing.year})
</td>

<td>
<i class="bi bi-geo-alt"></i>
${w.carListing.city}
</td>

<td>
${w.carListing.kmsDriven} KM
</td>

<td class="price">
₹ ${w.carListing.price}
</td>

<td>

<a href="removeWishlist?wishlistId=${w.wishlistId}"
class="btn btn-danger btn-sm">
<i class="bi bi-trash"></i> Remove
</a>

<a href="buyNow?listingId=${w.carListing.listingId}"
class="btn btn-success btn-sm">
<i class="bi bi-cart"></i> Buy
</a>

</td>

</tr>

</c:forEach>

<c:if test="${empty wishlist}">
<tr>
<td colspan="5" class="text-center text-muted">
No cars in wishlist
</td>
</tr>
</c:if>

</tbody>

</table>

</div>

</div>

</div>

</div>

</body>
</html>