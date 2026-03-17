<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Available Cars</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

<style>
body {
	background: #F4F6F9;
	font-family: 'Segoe UI', sans-serif;
}

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
</style>

</head>

<body>

	<div class="container mt-5">

		<h3 class="mb-4 fw-bold">
			<i class="bi bi-car-front"></i> Available Cars
		</h3>

		<div class="row g-4">

			<c:forEach items="${customerCarList}" var="c">

				<div class="col-md-4">

					<div class="card car-card shadow-sm">

						<!-- CAR IMAGE -->

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

								${c.brandName} ${c.modelName} <span class="text-muted">(${c.year})</span>

							</h5>

							<p class="text-muted mb-2">

								<i class="bi bi-geo-alt"></i> ${c.city}

							</p>

							<p class="mb-1">

								<b>KMS:</b> ${c.kmsDriven} KM

							</p>

							<p class="mb-1">

								<b>Ownership:</b> ${c.ownership}

							</p>

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
									class="btn btn-primary btn-sm"> <i class="bi bi-eye"></i>
									View Details

								</a> <a href="buyNow?listingId=${c.listingId}"
									class="btn btn-success btn-sm"> <i class="bi bi-cart"></i>
									Buy Now

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

</body>
</html>