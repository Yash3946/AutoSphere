<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<title>Car Details</title>

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

.card-header{
display:flex;
justify-content:space-between;
align-items:center;
}

.label{
font-weight:600;
color:#444;
}

.value{
font-weight:500;
}

.action-btn{
margin-right:10px;
}

</style>

</head>

<body>

<div class="container mt-5">

<div class="card shadow-lg">

<!-- HEADER -->

<div class="card-header bg-dark text-white">

<h4 class="mb-0">
<i class="bi bi-car-front"></i> Car Details
</h4>

<a href="customerCarList" class="btn btn-light btn-sm">
<i class="bi bi-arrow-left"></i> Back
</a>

</div>

<!-- BODY -->

<div class="card-body">

<c:if test="${not empty carListing}">

<table class="table table-borderless">

<tr>
<td class="label">Listing ID</td>
<td class="value">${carListing.listingId}</td>
</tr>

<tr>
<td class="label">Seller ID</td>
<td class="value">${carListing.userId}</td>
</tr>

<tr>
<td class="label">Brand</td>
<td class="value">
${carListing.brandId}  ${carListing.brandName}
</td>
</tr>

<tr>
<td class="label">Model</td>
<td class="value">
${carListing.modelId}  ${carListing.modelName}
</td>
</tr>

<tr>
<td class="label">Variant</td>
<td class="value">
${carListing.variantId}  ${carListing.variantName}
</td>
</tr>

<tr>
<td class="label">City</td>
<td class="value">${carListing.city}</td>
</tr>

<tr>
<td class="label">KMS Driven</td>
<td class="value">${carListing.kmsDriven} KM</td>
</tr>

<tr>
<td class="label">Year</td>
<td class="value">${carListing.year}</td>
</tr>

<tr>
<td class="label">Ownership</td>
<td class="value">${carListing.ownership}</td>
</tr>

<tr>
<td class="label">Price</td>
<td class="value text-success fw-bold">
₹ ${carListing.price}
</td>
</tr>

<tr>
<td class="label">Status</td>

<td>

<c:choose>

<c:when test="${carListing.status == 'AVAILABLE'}">
<span class="badge bg-success">Available</span>
</c:when>

<c:otherwise>
<span class="badge bg-danger">Sold</span>
</c:otherwise>

</c:choose>

</td>

</tr>

<tr>
<td class="label">Created At</td>
<td class="value">${carListing.createdAt}</td>
</tr>

</table>

</c:if>


<c:if test="${empty carListing}">
<div class="alert alert-warning">
No Car Listing Found
</div>
</c:if>

</div>

<!-- FOOTER BUTTONS -->

<div class="card-footer text-end">

<a href="addToWishlist?listingId=${carListing.listingId}"
class="btn btn-warning action-btn">
<i class="bi bi-heart"></i> Add To Wishlist
</a>

<a href="buyNow?listingId=${carListing.listingId}"
class="btn btn-success">
<i class="bi bi-cart"></i> Buy Now
</a>

</div>

</div>

</div>

</body>
</html>