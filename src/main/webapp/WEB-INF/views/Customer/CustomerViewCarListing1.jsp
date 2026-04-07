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

.car-card{
    border-radius:18px;
}

.car-title{
    font-size:22px;
    font-weight:600;
}

.price{
    font-size:28px;
    font-weight:bold;
    color:#198754;
}

.info-box{
    background:#f8f9fa;
    border-radius:12px;
    padding:15px;
    margin-bottom:10px;
}

.label{
    font-weight:600;
    color:#666;
}

.card{
    transition:0.3s;
}

.card:hover{
    transform:translateY(-3px);
}
</style>

</head>

<body>

<div class="container mt-5">

<div class="card shadow-lg car-card">

<!-- HEADER -->
<div class="card-header bg-dark text-white d-flex justify-content-between">

<h4 class="mb-0">
<i class="bi bi-car-front"></i> Car Details
</h4>

<a href="customer-dashboard" class="btn btn-light btn-sm">
<i class="bi bi-arrow-left"></i> Back
</a>

</div>

<div class="card-body">

<c:if test="${not empty carListing}">

<div class="row">

<!-- ================= LEFT SIDE ================= -->
<div class="col-md-7">

    <!-- 🔥 IMAGE CARD -->
    <c:if test="${not empty carListing.imageUrl}">
        <div class="card shadow-sm border-0 mb-4" style="border-radius:15px; overflow:hidden;">
            <img src="${carListing.imageUrl}" 
                 style="height:350px; width:100%; object-fit:cover;">
        </div>
    </c:if>

    <!-- 🔥 DETAILS CARD -->
    <div class="card shadow-sm border-0 p-3" style="border-radius:15px;">

        <h3 class="car-title mb-2">
            ${carListing.brandName} ${carListing.modelName}
            <span class="text-muted">(${carListing.year})</span>
        </h3>

        <p class="text-muted mb-2">
            <i class="bi bi-geo-alt"></i> ${carListing.city}
        </p>

        <div class="price mb-2">
            ₹ ${carListing.price}
        </div>

        <c:choose>
            <c:when test="${carListing.status == 'AVAILABLE'}">
                <span class="badge bg-success mb-3">Available</span>
            </c:when>
            <c:otherwise>
                <span class="badge bg-danger mb-3">Sold</span>
            </c:otherwise>
        </c:choose>

        <hr>

        <div class="row">

            <div class="col-6">
                <p class="label">KMS Driven</p>
                <p>${carListing.kmsDriven} KM</p>
            </div>

            <div class="col-6">
                <p class="label">Ownership</p>
                <p>${carListing.ownership}</p>
            </div>

        </div>

        <div class="row mt-2">

            <div class="col-6">
                <p class="label">Variant</p>
                <p>${carListing.variantName}</p>
            </div>

            <div class="col-6">
                <p class="label">Created At</p>
                <p>${carListing.createdAt}</p>
            </div>

        </div>

    </div>

</div>

<!-- ================= RIGHT SIDE ================= -->
<div class="col-md-5">

    <div class="info-box">
        <p class="label">Listing ID</p>
        <p>${carListing.listingId}</p>
    </div>

    <div class="info-box">
        <p class="label">Seller ID</p>
        <p>${carListing.userId}</p>
    </div>

    <div class="info-box">
        <p class="label">Brand</p>
        <p>${carListing.brandId} ${carListing.brandName}</p>
    </div>

    <div class="info-box">
        <p class="label">Model</p>
        <p>${carListing.modelId} ${carListing.modelName}</p>
    </div>

    <div class="info-box">
        <p class="label">Variant</p>
        <p>${carListing.variantId} ${carListing.variantName}</p>
    </div>

</div>

</div>

</c:if>

<c:if test="${empty carListing}">
    <div class="alert alert-warning">
        No Car Listing Found
    </div>
</c:if>

</div>

<!-- FOOTER -->
<div class="card-footer text-end">

<a href="addToWishlist?listingId=${carListing.listingId}"
class="btn btn-warning me-2">
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