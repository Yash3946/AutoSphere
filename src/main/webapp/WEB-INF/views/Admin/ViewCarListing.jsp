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
    font-family:'Segoe UI', sans-serif;
}

/* CARD */
.card{
    border-radius:15px;
    overflow:hidden;
}

/* HEADER */
.card-header{
    background:#1f2a36;
    color:white;
}

/* IMAGE - FULL SIZE FIXED */
.car-img-container {
    width: 100%;
    height: 400px;
    background: #f8f9fa;
    display: flex;
    align-items: center;
    justify-content: center;
    overflow: hidden;
    border-radius: 12px;
    margin-bottom: 15px;
}

.car-img{
    width: 100%;
    height: 100%;
    object-fit: contain;  /* Shows FULL image without cropping */
    object-position: center;
}

/* LEFT BOX */
.left-box{
    background:#fff;
    padding:20px;
    border-radius:12px;
    box-shadow: 0 2px 8px rgba(0,0,0,0.05);
}

/* RIGHT INFO BOX */
.info-box{
    background:#f8f9fa;
    padding:15px;
    border-radius:12px;
    margin-bottom:15px;
    border: 1px solid #e9ecef;
}

/* PRICE */
.price{
    color:#d32f2f;
    font-size:32px;
    font-weight:bold;
}

/* STATUS BAR */
.status-bar{
    height:8px;
    border-radius:10px;
    background:#198754;
    width: 100%;
    margin-top: 10px;
}

.status-text {
    font-size: 14px;
    color: #198754;
    font-weight: 600;
    margin-top: 8px;
}

/* LABEL */
.label{
    font-weight:700;
    color:#495057;
    font-size: 13px;
    text-transform: uppercase;
    letter-spacing: 0.5px;
}

.value-text {
    font-size: 16px;
    font-weight: 500;
    color: #212529;
    margin-top: 5px;
}

/* BUTTONS */
.btn-wishlist {
    background: #ff6b6b;
    color: white;
    border: none;
    padding: 10px 25px;
    border-radius: 8px;
    transition: all 0.3s ease;
}

.btn-wishlist:hover {
    background: #ff4757;
    transform: translateY(-2px);
}

.btn-buy {
    background: #28a745;
    color: white;
    border: none;
    padding: 10px 30px;
    border-radius: 8px;
    transition: all 0.3s ease;
}

.btn-buy:hover {
    background: #218838;
    transform: translateY(-2px);
}

/* SEPARATOR */
hr {
    margin: 20px 0;
    background: #e9ecef;
}

/* SPECS GRID */
.specs-grid {
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    gap: 15px;
    margin-top: 10px;
}

.spec-item {
    padding: 8px 0;
}

</style>

</head>

<body>

<div class="container mt-4 mb-4">

<div class="card shadow">

<div class="card-header d-flex justify-content-between align-items-center">
<h5 class="mb-0">🚗 Car Details</h5>
<a href="allCarList" class="btn btn-light btn-sm">← Back to List</a>
</div>

<div class="card-body">

<c:if test="${not empty carListing}">

<div class="row">

<!-- LEFT SIDE -->
<div class="col-md-7">

    <!-- IMAGE CONTAINER - FULL IMAGE DISPLAY -->
    <div class="car-img-container">
        <img src="${carListing.imageUrl}" 
             class="car-img"
             alt="${carListing.brandName} ${carListing.modelName}"
             onerror="this.src='https://via.placeholder.com/600x400?text=No+Image+Available'"/>
    </div>

    <div class="left-box">

        <h3>${carListing.brandName} ${carListing.modelName}</h3>
        <p class="text-muted">
            <i class="bi bi-geo-alt-fill"></i> 📍 ${carListing.city} 
            | 🏷️ ${carListing.year}
        </p>

        <div class="price">₹ ${carListing.price}</div>
        
        <div class="status-bar"></div>
        <div class="status-text">✓ ${carListing.status}</div>

        <hr>

        <h6>📋 Specifications</h6>
        
        <div class="specs-grid">
            <div class="spec-item">
                <div class="label">KMS Driven</div>
                <div class="value-text">${carListing.kmsDriven} KM</div>
            </div>
            
            <div class="spec-item">
                <div class="label">Variant</div>
                <div class="value-text">${carListing.variantName}</div>
            </div>
            
            <div class="spec-item">
                <div class="label">Ownership</div>
                <div class="value-text">${carListing.ownership}</div>
            </div>
            
            <div class="spec-item">
                <div class="label">Listed On</div>
                <div class="value-text">${carListing.createdAt}</div>
            </div>
        </div>

    </div>

</div>

<!-- RIGHT SIDE -->
<div class="col-md-5">

    <div class="info-box">
        <div class="label">Listing ID</div>
        <div class="value-text">#${carListing.listingId}</div>
    </div>

    <div class="info-box">
        <div class="label">Seller ID</div>
        <div class="value-text">${carListing.userId}</div>
    </div>

    <div class="info-box">
        <div class="label">Brand</div>
        <div class="value-text">${carListing.brandName}</div>
    </div>

    <div class="info-box">
        <div class="label">Model</div>
        <div class="value-text">${carListing.modelName}</div>
    </div>

    <div class="info-box">
        <div class="label">Variant</div>
        <div class="value-text">${carListing.variantName}</div>
    </div>
    
    <div class="info-box">
        <div class="label">Registration Year</div>
        <div class="value-text">${carListing.year}</div>
    </div>

</div>

</div>

</c:if>

<c:if test="${empty carListing}">
<div class="alert alert-warning text-center">
    <i class="bi bi-exclamation-triangle"></i> No Car Listing Found.
</div>
</c:if>

</div>

<div class="card-footer text-end" style="background: white; border-top: 1px solid #e9ecef;">
    
</div>

</div>

</div>

</body>
</html>