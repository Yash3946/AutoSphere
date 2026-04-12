<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Car Details</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css" rel="stylesheet">

<style>
:root{
  --accent:#6a1b9a;
  --logo-bg:#ff4d6d;
  --body-bg:#f4f6f9;
  --card-shadow: 0 15px 40px rgba(0,0,0,0.12);
  --muted: #6c757d;
}
body {
    margin: 0;
    font-family: 'Segoe UI', sans-serif;
    background: linear-gradient(90deg, #f4f6f9 0%, #eef1f5 100%);
    padding-top: 92px;
}

/* HEADER */
.header {
    display: flex;
    align-items: center;
    gap: 16px;
    padding: 14px 36px;
    background: white;
    border-bottom: 1px solid #eee;
    position: fixed;
    top: 0;
    width: 100%;
    z-index: 1100;
}

/* LOGO */
.logo {
    display: flex;
    align-items: center;
    gap: 12px;
    font-size: 22px;
    font-weight: 700;
    color: var(--accent);
    text-decoration: none;
}
.logo-icon {
    width: 44px;
    height: 44px;
    background: var(--logo-bg);
    display: flex;
    align-items: center;
    justify-content: center;
    transform: rotate(45deg);
    border-radius: 10px;
}
.logo-icon span {
    color: white;
    transform: rotate(-45deg);
}

/* MAIN CARD */
.main-card {
    max-width: 1100px;
    margin: 18px auto;
    border-radius: 18px;
    background: white;
    box-shadow: var(--card-shadow);
}

.car-img {
    width: 100%;
    height: 300px;
    object-fit: cover;
}

.left-content {
    padding: 20px;
}

.price {
    font-size: 26px;
    font-weight: 800;
    color: #16a34a;
}

.section {
    background: white;
    border-radius: 10px;
    padding: 12px 14px;
    margin-bottom: 14px;
}

.section-title {
    font-weight: 700;
    margin-bottom: 8px;
}

.detail-row {
    display:flex;
    justify-content:space-between;
    padding:10px 6px;
    border-bottom:1px solid #f0f0f0;
}

.label { color: #6b6b6b; }
.value { font-weight:700; }

/* BUTTONS */
.btn-buy {
    background: #16a34a;
    color:white;
}
.btn-wishlist {
    background:#ffd54d;
}
</style>
</head>

<body>

<!-- HEADER -->
<div class="header">
  <a href="customer-dashboard" class="logo">
    <div class="logo-icon"><span>A</span></div>
    AutoSphere
  </a>
</div>

<div class="container">

<c:if test="${not empty carListing}">

<div class="main-card">
<div class="row g-0">

<!-- LEFT -->
<div class="col-lg-5">
<img src="${carListing.imageUrl}" class="car-img">

<div class="left-content">
<h4>
${carListing.brandName} ${carListing.modelName}
(${carListing.year})
</h4>

<p>${carListing.city}</p>

<div class="price">₹ ${carListing.price}</div>

<div style="margin-top:10px;">
<c:choose>
<c:when test="${carListing.status == 'AVAILABLE'}">
<span class="badge bg-success">AVAILABLE</span>
</c:when>
<c:otherwise>
<span class="badge bg-danger">SOLD</span>
</c:otherwise>
</c:choose>
</div>

</div>
</div>

<!-- RIGHT -->
<div class="col-lg-7 p-3">

<!-- BASIC INFO -->
<div class="section">
<div class="section-title">Basic Info</div>

<div class="detail-row">
<div class="label">Listing ID</div>
<div class="value">${carListing.listingId}</div>
</div>

<div class="detail-row">
<div class="label">Brand</div>
<div class="value">${carListing.brandName}</div>
</div>

<div class="detail-row">
<div class="label">Model</div>
<div class="value">${carListing.modelName}</div>
</div>

<div class="detail-row">
<div class="label">Variant</div>
<div class="value">${carListing.variantName}</div>
</div>

<div class="detail-row">
<div class="label">Year</div>
<div class="value">${carListing.year}</div>
</div>

</div>

<!-- CAR DETAILS -->
<div class="section">
<div class="section-title">Car Details</div>

<div class="detail-row">
<div class="label">KMS Driven</div>
<div class="value">${carListing.kmsDriven}</div>
</div>

<div class="detail-row">
<div class="label">Ownership</div>
<div class="value">${carListing.ownership}</div>
</div>

<!-- 🔥 ADDED -->
<div class="detail-row">
<div class="label">Fuel Type</div>
<div class="value">${carListing.fuelType}</div>
</div>

<div class="detail-row">
<div class="label">Transmission</div>
<div class="value">${carListing.transmission}</div>
</div>

<div class="detail-row">
<div class="label">Created Date</div>
<div class="value">${carListing.createdAt}</div>
</div>

</div>

<!-- SELLER -->
<div class="section">
<div class="section-title">Seller Info</div>

<div class="detail-row">
<div class="label">Seller ID</div>
<div class="value">${carListing.userId}</div>
</div>

</div>

<!-- BUTTONS -->
<div class="d-grid gap-2">
<a href="addToWishlist?listingId=${carListing.listingId}" class="btn btn-wishlist">
❤️ Add to Wishlist
</a>

<a href="buyNow?listingId=${carListing.listingId}" class="btn btn-buy">
🛒 Buy Now
</a>
</div>

</div>

</div>
</div>

</c:if>

</div>

</body>
</html>