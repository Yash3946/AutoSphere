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

.car-card{
border-radius:15px;
transition:0.3s;
}

.car-card:hover{
transform:translateY(-5px);
box-shadow:0 10px 25px rgba(0,0,0,0.15);
}

.car-title{
font-weight:600;
font-size:18px;
}

.price{
font-size:20px;
font-weight:bold;
color:#198754;
}

</style>

</head>

<body>

<div class="container mt-5">

<div class="d-flex justify-content-between align-items-center mb-4">

<h3>
<i class="bi bi-heart-fill text-danger"></i> My Wishlist
</h3>

<a href="CustomerCarList" class="btn btn-dark btn-sm">
<i class="bi bi-arrow-left"></i> Back
</a>

</div>

<div class="row g-4">

<c:forEach items="${wishlist}" var="w">

<div class="col-md-4">

<div class="card car-card shadow-sm">

<div class="card-body">

<h5 class="car-title">

${w.carListing.brandName} ${w.carListing.modelName}

<span class="text-muted">(${w.carListing.year})</span>

</h5>

<p class="text-muted mb-2">

<i class="bi bi-geo-alt"></i>
${w.carListing.city}

</p>

<p class="mb-1">

<b>KMS:</b> ${w.carListing.kmsDriven} KM

</p>

<p class="price">

₹ ${w.carListing.price}

</p>

<div class="mt-3">

<a href="removeWishlist?wishlistId=${w.wishlistId}"
class="btn btn-danger btn-sm me-2">

<i class="bi bi-trash"></i>
Remove

</a>

<a href="buyNow?listingId=${w.carListing.listingId}"
class="btn btn-success btn-sm">

<i class="bi bi-cart"></i>
Buy

</a>

</div>

</div>

</div>

</div>

</c:forEach>

<c:if test="${empty wishlist}">

<div class="col-12 text-center">

<div class="alert alert-warning">

<i class="bi bi-exclamation-circle"></i>
No cars in wishlist

</div>

</div>

</c:if>

</div>

</div>

</body>
</html>