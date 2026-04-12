<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Available Cars</title>

<!-- Bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

<style>

/* ===== GLOBAL ===== */
body {
	margin: 0;
	font-family: 'Segoe UI', sans-serif;
	background: #F4F6F9;
	padding-top: 90px; /* header ke liye space */
}

/* ===== HEADER ===== */
.header {
	display: flex;
	align-items: center;
	padding: 15px 40px;
	background: white;
	border-bottom: 1px solid #ddd;

	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	z-index: 1000;

	box-shadow: 0 2px 10px rgba(0,0,0,0.1);
}

/* LOGO */
.logo {
	display: flex;
	align-items: center;
	gap: 12px;
	font-size: 26px;
	font-weight: bold;
	color: #6a1b9a;
	text-decoration: none;
}

.logo-icon {
	width: 40px;
	height: 40px;
	background: #ff4d6d;
	display: flex;
	align-items: center;
	justify-content: center;
	transform: rotate(45deg);
	border-radius: 10px;
}

.logo-icon span {
	color: white;
	font-size: 20px;
	font-weight: 700;
	transform: rotate(-45deg);
}

/* CITY */
.city-select {
	padding: 8px 16px;
	border-radius: 22px;
	border: 1px solid #d1c4e9;
	background: #f3e5f5;
	margin: 0 20px;
}

/* SEARCH */
.search-bar {
	display: flex;
	align-items: center;
	background: #f3e5f5;
	padding: 8px 14px;
	border-radius: 25px;
	width: 300px;
}

.search-bar input {
	border: none;
	background: transparent;
	outline: none;
	width: 100%;
}

/* MENU */
.menu {
	margin-left: auto;
}

.menu a {
	margin-left: 18px;
	text-decoration: none;
	color: #333;
	font-size: 14px;
}

.menu a:hover {
	color: #6a1b9a;
}

/* ===== CAR CARD ===== */
.car-card {
	border-radius: 15px;
	transition: 0.3s;
	overflow: hidden;
}

.car-card:hover {
	transform: translateY(-5px);
	box-shadow: 0 10px 25px rgba(0, 0, 0, 0.15);
}

.price {
	font-size: 20px;
	font-weight: bold;
	color: #198754;
}

.car-title {
	font-weight: 600;
	font-size: 18px;
}

.car-img {
	width: 100%;
	height: 200px;
	object-fit: cover;
}

/* ===== RESPONSIVE ===== */
@media (max-width:768px) {

	.search-bar {
		width: 180px;
	}

	.menu a {
		font-size: 12px;
		margin-left: 10px;
	}

	.logo {
		font-size: 20px;
	}

	.logo-icon {
		width: 30px;
		height: 30px;
	}

	.logo-icon span {
		font-size: 14px;
	}
}

</style>

</head>

<body>

<!-- ===== HEADER START ===== -->
<div class="header">

	<a href="customer-dashboard" class="logo">
		<div class="logo-icon">
			<span>A</span>
		</div>
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
<div class="container mt-4">

	<h3 class="mb-4 fw-bold">
		<i class="bi bi-car-front"></i> Available Cars
	</h3>

	<div class="row g-4">

		<c:forEach items="${customerCarList}" var="c">

			<div class="col-md-4">

				<div class="card car-card shadow-sm">

					<c:choose>
						<c:when test="${not empty c.imageUrl}">
							<img src="${c.imageUrl}" class="car-img">
						</c:when>
						<c:otherwise>
							<img src="https://cdn-icons-png.flaticon.com/512/743/743131.png"
								class="car-img">
						</c:otherwise>
					</c:choose>

					<div class="card-body">

						<h5 class="car-title">
							${c.brandName} ${c.modelName}
							<span class="text-muted">(${c.year})</span>
						</h5>

						<p class="text-muted mb-2">
							<i class="bi bi-geo-alt"></i> ${c.city}
						</p>

						<p><b>KMS:</b> ${c.kmsDriven} KM</p>
						<p><b>Ownership:</b> ${c.ownership}</p>

						<p class="price">₹ ${c.price}</p>

						<c:choose>
							<c:when test="${c.status == 'AVAILABLE'}">
								<span class="badge bg-success">Available</span>
							</c:when>
							<c:otherwise>
								<span class="badge bg-danger">Sold</span>
							</c:otherwise>
						</c:choose>

						<div class="mt-3">
							<a href="customerViewCarListing?listingId=${c.listingId}"
								class="btn btn-primary btn-sm">
								<i class="bi bi-eye"></i> View Details
							</a>

							<a href="buyNow?listingId=${c.listingId}"
								class="btn btn-success btn-sm">
								<i class="bi bi-cart"></i> Buy Now
							</a>
						</div>

					</div>

				</div>

			</div>

		</c:forEach>

		<c:if test="${empty customerCarList}">
			<div class="col-12 text-center">
				<p class="text-muted">No cars available</p>
			</div>
		</c:if>

	</div>

</div>

<jsp:include page="CustomerFooter.jsp"></jsp:include>

</body>
</html>