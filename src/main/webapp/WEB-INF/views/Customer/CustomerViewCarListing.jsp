<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Car Details</title>

<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css" rel="stylesheet">

<style>
/* ===== GLOBAL ===== */
:root{
  --accent:#6a1b9a;
  --logo-bg:#ff4d6d;
  --body-bg:#f4f6f9;
  --card-shadow: 0 15px 40px rgba(0,0,0,0.12);
  --muted: #6c757d;
}
html,body{height:100%;}
body {
    margin: 0;
    font-family: 'Segoe UI', sans-serif;
    background: linear-gradient(90deg, #f4f6f9 0%, #eef1f5 100%);
    padding-top: 92px; /* header height + spacing */
}

/* ===== HEADER ===== */
.header {
    display: flex;
    align-items: center;
    gap: 16px;
    padding: 14px 36px;
    background: white;
    border-bottom: 1px solid #eee;
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    z-index: 1100;
    box-shadow: 0 2px 10px rgba(0,0,0,0.04);
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
    box-shadow: 0 4px 12px rgba(0,0,0,0.06);
}
.logo-icon span {
    color: white;
    font-size: 20px;
    font-weight: 800;
    transform: rotate(-45deg);
}

/* SEARCH / CITY */
.city-select {
    padding: 8px 14px;
    border-radius: 22px;
    border: 1px solid #e6dff5;
    background: #f7eefb;
    margin-left: 8px;
    min-width: 140px;
}
.search-bar {
    display: flex;
    align-items: center;
    background: #fff;
    padding: 6px 12px;
    border-radius: 26px;
    border: 1px solid #ececec;
    width: 420px;
    margin-left: 8px;
    box-shadow: 0 2px 6px rgba(0,0,0,0.02);
}
.search-bar input {
    border: none;
    background: transparent;
    outline: none;
    width: 100%;
    font-size: 14px;
}

/* MENU (right) */
.menu {
    margin-left: auto;
    display:flex;
    gap:14px;
    align-items:center;
}
.menu a {
    color:#1f2937;
    text-decoration: none;
    font-size:14px;
}
.menu a:hover{ color: var(--accent); }

/* ===== MAIN CARD (SPLIT) ===== */
.main-card {
    max-width: 1100px;
    margin: 18px auto;
    border-radius: 18px;
    overflow: hidden;
    background: white;
    box-shadow: var(--card-shadow);
}

/* left column */
.left-section { background: #fff; }
.car-img {
    width: 100%;
    height: 300px;
    object-fit: cover;
    display:block;
}

/* left content under image */
.left-content {
    padding: 20px;
}
.car-title {
    font-size: 22px;
    font-weight: 700;
    margin-bottom:6px;
}
.text-muted { color: var(--muted); }

/* price */
.price {
    font-size: 26px;
    font-weight: 800;
    color: #16a34a;
    margin-top:8px;
}

/* right column */
.right-section {
    padding: 22px;
    background: #f7f9fb;
    min-height: 100%;
}

/* section boxes inside right */
.section {
    background: white;
    border-radius: 10px;
    padding: 12px 14px;
    margin-bottom: 14px;
    box-shadow: 0 4px 10px rgba(0,0,0,0.02);
}
.section-title {
    font-weight: 700;
    margin-bottom: 8px;
}

/* detail rows */
.detail-row {
    display:flex;
    justify-content:space-between;
    padding:10px 6px;
    border-bottom:1px solid #f0f0f0;
    align-items:center;
}
.detail-row:last-child{ border-bottom: none; }
.label { color: #6b6b6b; font-size: 14px; }
.value { font-weight:700; color:#111827; }

/* badges & buttons */
.badge-available { background:#e6f4ea; color:#0f9a4a; padding:6px 10px; border-radius:8px; font-weight:700; font-size:13px; display:inline-block; }
.btn-buy { background: linear-gradient(135deg,#16a34a,#22c55e); color:white; border:none; padding:10px 14px; border-radius:8px; font-weight:700; }
.btn-wishlist { background:#ffd54d; color:#111827; border:none; padding:10px 14px; border-radius:8px; font-weight:700; }

/* responsive */
@media (max-width: 992px) {
  .main-card { margin: 12px; }
  .search-bar{ width:220px; }
  .car-img{ height:220px; }
}
@media (max-width: 768px) {
  .header { padding: 10px 14px; }
  .search-bar{ display:none; }
  .city-select{ display:none; }
}
</style>
</head>

<body>

<!-- ===== HEADER START (exact same header used on listing) ===== -->
<div class="header">

  <a href="customer-dashboard" class="logo">
    <div class="logo-icon"><span>A</span></div>
    AutoSphere
  </a>

  <input type="text" class="city-select" placeholder="Select City">

  <div class="search-bar">
    <input type="text" placeholder="Search cars...">
  </div>

  <div class="menu">
    <a href="wishlist">My Cart</a>
    <a href="login">Login</a>
    <a href="CustomerSignup">Register</a>
  </div>

</div>
<!-- ===== HEADER END ===== -->

<!-- ===== MAIN CONTENT ===== -->
<div class="container">

  <c:if test="${not empty carListing}">

    <div class="main-card">
      <div class="row g-0">

        <!-- LEFT: image + summary -->
        <div class="col-lg-5 left-section">
          <img src="${carListing.imageUrl}" alt="Car Image" class="car-img">
          <div class="left-content">
            <div class="car-title">
              ${carListing.brandName} ${carListing.modelName}
              <span class="text-muted">(${carListing.year})</span>
            </div>

            <p class="text-muted"><i class="bi bi-geo-alt"></i> ${carListing.city}</p>

            <div class="price">₹ ${carListing.price}</div>

            <div style="margin-top:10px;">
              <c:choose>
                <c:when test="${carListing.status == 'AVAILABLE'}">
                    <span class="badge-available">AVAILABLE</span>
                </c:when>
                <c:otherwise>
                    <span class="badge bg-danger">SOLD</span>
                </c:otherwise>
              </c:choose>
            </div>
          </div>
        </div>

        <!-- RIGHT: full details -->
        <div class="col-lg-7 right-section">

          <!-- Basic Info -->
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

          <!-- Car Details -->
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

            <div class="detail-row">
              <div class="label">Created Date</div>
              <div class="value">${carListing.createdAt}</div>
            </div>
          </div>

          <!-- Seller Info -->
          <div class="section">
            <div class="section-title">Seller Info</div>

            <div class="detail-row">
              <div class="label">Seller ID</div>
              <div class="value">${carListing.userId}</div>
            </div>
          </div>

          <!-- Buttons -->
          <div style="margin-top:6px;">
            <div class="d-grid gap-2">
              <a href="addToWishlist?listingId=${carListing.listingId}" class="btn btn-wishlist">❤️ Add to Wishlist</a>
              <a href="buyNow?listingId=${carListing.listingId}" class="btn btn-buy">🛒 Buy Now</a>
            </div>
          </div>

        </div>
      </div>
    </div>

  </c:if>

</div>

<!-- INCLUDE FOOTER -->
<jsp:include page="CustomerFooter.jsp"></jsp:include>

</body>
</html>