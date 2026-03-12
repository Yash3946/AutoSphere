<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Of All Car</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

<style>
body {
	background: #F4F6F9;
	font-family: 'Segoe UI', sans-serif;
}

.content {
	padding: 40px;
}

.content-card {
	background: white;
	padding: 25px;
	border-radius: 15px;
	box-shadow: 0 10px 25px rgba(0, 0, 0, 0.08);
}

.table thead {
	background: #0D1B2A;
	color: white;
}
</style>

</head>

<body>

	<div class="content">

		<div class="content-card">

			<h4 class="fw-bold mb-4">List Of All Cars</h4>

			<table class="table table-hover">

				<thead>

					<tr>

						<th>ID</th>
						<th>Seller</th>
						<th>Brand</th>
						<th>Model</th>
						<th>Variant</th>
						<th>City</th>
						<th>KMS</th>
						<th>Year</th>
						<th>Ownership</th>
						<th>Price</th>
						<th>Status</th>
						<th>Date</th>
						<th>Action</th>

					</tr>

				</thead>

				<tbody>

					<c:forEach items="${customerCarList}" var="c">

						<tr>

							<td>${c.listingId}</td>
							<td>${c.userId}</td>

							<td>${c.brandId}${c.brandName}</td>
							<td>${c.modelId}${c.modelName}</td>
							<td>${c.variantId}${c.variantName}</td>

							<td>${c.city}</td>
							<td>${c.kmsDriven}</td>
							<td>${c.year}</td>
							<td>${c.ownership}</td>
							<td>₹ ${c.price}</td>
							<td>${c.status}</td>
							<td>${c.createdAt}</td>

							<td><a
								href="customerViewCarListing?listingId=${c.listingId}"
								class="btn btn-primary btn-sm"> View </a></td>

						</tr>

					</c:forEach>


					<c:if test="${empty customerCarList}">
						<tr>
							<td colspan="13" class="text-center">No car listings found</td>
						</tr>
					</c:if>

				</tbody>

			</table>

		</div>

	</div>

</body>
</html>