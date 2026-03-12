<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<title>Car Details</title>

<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">

<style>

body{
background:#F4F6F9;
}

.label{
font-weight:600;
color:#555;
}

.card{
border-radius:12px;
}

</style>

</head>

<body>

<div class="container mt-5">

<div class="card shadow">

<div class="card-header bg-dark text-white">
<h4 class="mb-0">Car Details</h4>
</div>


<div class="card-body">

<c:if test="${not empty carListing}">

<table class="table table-borderless">

<tr>
<td class="label">Listing ID</td>
<td>${carListing.listingId}</td>
</tr>

<tr>
<td class="label">Seller ID</td>
<td>${carListing.userId}</td>
</tr>

<tr>
<td class="label">Brand</td>
<td>${carListing.brandId}</td>
</tr>

<tr>
<td class="label">Model</td>
<td>${carListing.modelId}</td>
</tr>

<tr>
<td class="label">Variant</td>
<td>${carListing.variantId}</td>
</tr>

<tr>
<td class="label">City</td>
<td>${carListing.city}</td>
</tr>

<tr>
<td class="label">KMS Driven</td>
<td>${carListing.kmsDriven}</td>
</tr>

<tr>
<td class="label">Year</td>
<td>${carListing.year}</td>
</tr>

<tr>
<td class="label">Ownership</td>
<td>${carListing.ownership}</td>
</tr>

<tr>
<td class="label">Price</td>
<td>₹ ${carListing.price}</td>
</tr>

<tr>
<td class="label">Status</td>

<td>

<c:choose>

<c:when test="${carListing.status == 'Active'}">
<span class="badge bg-success">Active</span>
</c:when>

<c:otherwise>
<span class="badge bg-danger">Inactive</span>
</c:otherwise>

</c:choose>

</td>

</tr>

<tr>
<td class="label">Created At</td>
<td>${carListing.createdAt}</td>
</tr>

</table>

</c:if>


<c:if test="${empty carListing}">
<div class="alert alert-warning">
No Car Listing Found
</div>
</c:if>

</div>


<a href="addToWishlist?listingId=${carListing.listingId}">
<button>Add To Wishlist</button>
</a>

<a href="buyNow?listingId=${carListing.listingId}">
<button>Buy Now</button>
</a>

</div>

</div>

</body>
</html>