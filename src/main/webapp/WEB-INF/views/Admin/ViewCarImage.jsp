<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>View Car Image</title>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">

<style>
.label {
	font-weight: 600;
	color: #555;
}

.image-box {
	width: 100%;
	height: 380px;
	display: flex;
	align-items: center;
	justify-content: center;
	background: #f8f9fa;
	border-radius: 10px;
}

.image-box img {
	max-width: 100%;
	max-height: 100%;
	object-fit: contain;
	border-radius: 8px;
}
</style>

</head>

<body>

	<div class="container mt-4">

		<div class="card shadow">

			<div class="card-header bg-dark text-white">
				<h4 class="mb-0">Car Image Details</h4>
			</div>

			<div class="card-body">

				<table class="table table-borderless">

					<tr>
						<td class="label">Image ID</td>
						<td>${carImage.imageId}</td>
					</tr>

					<tr>
						<td class="label">Model Name</td>
						<td>${carImage.modelName}</td>
					</tr>

					<tr>
						<td class="label">Image Preview</td>
						<td>

							<div class="image-box">
								<img src="${carImage.imageURL}" alt="Car Image">
							</div>

						</td>
					</tr>

					<tr>
						<td class="label">Primary Image</td>
						<td><c:choose>
								<c:when test="${carImage.isPrimary}">
									<span class="badge bg-success">Yes</span>
								</c:when>
								<c:otherwise>
									<span class="badge bg-secondary">No</span>
								</c:otherwise>
							</c:choose></td>
					</tr>

				</table>

			</div>

			<div class="card-footer text-end">

				<a href="listCarImage" class="btn btn-secondary"> Back </a> <a
					href="editCarImage?imageId=${carImage.imageId}"
					class="btn btn-warning"> Edit </a>

			</div>

		</div>

	</div>

</body>
</html>