<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>

<title>My Wishlist</title>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

<style>

/* ===== GLOBAL ===== */
body {
	margin: 0;
	background: #F4F6F9;
	font-family: 'Segoe UI', sans-serif;
	padding-top: 90px;
}

/* ===== HEADER ===== */
.header {
	display: flex;
	align-items: center;
	padding: 15px 40px;
	background: white;
	position: fixed;
	top: 0;
	width: 100%;
	z-index: 1000;
	box-shadow: 0 2px 10px rgba(0,0,0,0.1);
}

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
	transform: rotate(-45deg);
}

/* SEARCH */
.search-bar {
	margin-left: 20px;
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

.car-title {
	font-weight: 600;
	font-size: 18px;
}

.price {
	font-size: 20px;
	font-weight: bold;
	color: #198754;
}

.car-img {
	width: 100%;
	height: 200px;
	object-fit: cover;
}

</style>

</head>

<body>

<!-- ===== HEADER ===== -->
<div class="header">

	<a href="customer-dashboard" class="logo">
		<div class="logo-icon"><span>A</span></div>
		AutoSphere
	</a>

	<div class="search-bar">
		<input type="text" placeholder="Search cars...">
	</div>

	<div class="menu">
		<a href="CustomerCarList">List Car</a>
		<a href="login">Login</a>
		<a href="CustomerSignup">Register</a>
	</div>

</div>

<!-- ===== CONTENT ===== -->
<div class="container mt-4">

	<div class="d-flex justify-content-between align-items-center mb-4">

		<h3>❤️ ${username}'s Wishlist</h3>

		<a href="CustomerCarList" class="btn btn-dark btn-sm">
			<i class="bi bi-arrow-left"></i> Back
		</a>

	</div>

	<div class="row g-4">

		<c:forEach items="${wishlist}" var="w">

			<div class="col-md-4">

				<div class="card car-card shadow-sm">

					<c:choose>

						<c:when test="${not empty w.carListing.imageUrl}">
							<img src="${w.carListing.imageUrl}" class="car-img">
						</c:when>

						<c:otherwise>
							<img src="https://cdn-icons-png.flaticon.com/512/743/743131.png"
								class="car-img">
						</c:otherwise>

					</c:choose>

					<div class="card-body">

						<h5 class="car-title">
							${w.carListing.brandName} ${w.carListing.modelName}
							<span class="text-muted">(${w.carListing.year})</span>
						</h5>

						<p class="text-muted mb-2">
							<i class="bi bi-geo-alt"></i> ${w.carListing.city}
						</p>

						<p class="mb-1">
							<b>KMS:</b> ${w.carListing.kmsDriven} KM
						</p>

						<p class="mb-1">
							<b>Ownership:</b> ${w.carListing.ownership}
						</p>

						<p class="price">₹ ${w.carListing.price}</p>

						<div class="mt-3">

							<a href="removeWishlist?wishlistId=${w.wishlistId}"
								class="btn btn-danger btn-sm me-2">
								<i class="bi bi-trash"></i> Remove
							</a>

							<a href="buyNow?listingId=${w.carListing.listingId}"
								class="btn btn-success btn-sm">
								<i class="bi bi-cart"></i> Buy
							</a>

						</div>

					</div>

				</div>

			</div>

		</c:forEach>

		<c:if test="${empty wishlist}">

			<div class="col-12 text-center">

				<div class="alert alert-warning">
					<i class="bi bi-exclamation-circle"></i> No cars in wishlist
				</div>

			</div>

		</c:if>

	</div>

</div>

<!-- ===== FOOTER ===== -->
<jsp:include page="CustomerFooter.jsp"></jsp:include>

</body>
</html>