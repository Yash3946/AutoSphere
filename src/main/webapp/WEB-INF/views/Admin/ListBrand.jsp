<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>Car Brand List</title>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

<jsp:include page="AdminCSS.jsp" />

<style>
body {
	background: #F4F6F9;
	font-family: 'Segoe UI', sans-serif;
}

.content {
	margin-left: 260px;
	padding: 30px;
}

/* HEADER */
.page-header {
	display: flex;
	justify-content: space-between;
	align-items: center;
	margin-bottom: 25px;
}

.page-title {
	font-weight: 700;
	color: #0D1B2A;
}

/* CARD */
.dashboard-card {
	background: white;
	border-radius: 14px;
	padding: 25px;
	box-shadow: 0 5px 20px rgba(0, 0, 0, 0.08);
}

/* TABLE */
.table thead {
	background: #F1F5F9;
	font-weight: 600;
}

.table tbody tr:hover {
	background: #F8FAFC;
	transform: scale(1.01);
}

/* LOGO */
.brand-logo {
	width: 60px;
	height: 40px;
	object-fit: contain;
	background: #F8FAFC;
	padding: 5px;
	border-radius: 8px;
	border: 1px solid #E5E7EB;
}

/* STATUS */
.status-active {
	background: #DCFCE7;
	color: #166534;
	padding: 5px 10px;
	border-radius: 12px;
	font-size: 12px;
}

.status-inactive {
	background: #FEE2E2;
	color: #991B1B;
	padding: 5px 10px;
	border-radius: 12px;
	font-size: 12px;
}

/* BUTTONS */
.btn-view {
	background: #0EA5E9;
	color: white;
}

.btn-delete {
	background: #EF4444;
	color: white;
}
</style>

</head>

<body>

	<jsp:include page="AdminSidebar.jsp" />
	<jsp:include page="AdminHeader.jsp" />

	<div class="content">

		<div class="page-header">

			<div>
				<h3 class="page-title">Car Brand Management</h3>
				<p class="text-muted mb-0">Manage all car brands</p>
			</div>

			<a href="addbrand" class="btn btn-primary"> <i
				class="bi bi-plus-circle"></i> Add Brand
			</a>

		</div>

		<div class="dashboard-card">

			<div class="table-responsive">

				<table class="table align-middle">

					<thead>
						<tr>
							<th>#</th>
							<th>Logo</th>
							<th>Brand Name</th>
							<th>Status</th>
							<th>Actions</th>
						</tr>
					</thead>

					<tbody>

						<c:forEach var="car" items="${brandList}" varStatus="s">

							<tr>

								<td>${s.count}</td>

								<td><img src="${car.logoUrl}" class="brand-logo"></td>

								<td class="fw-semibold">${car.brandName}</td>

								<td><c:choose>
										<c:when test="${car.active}">
											<span class="status-active"> <i
												class="bi bi-check-circle"></i> Active
											</span>
										</c:when>

										<c:otherwise>
											<span class="status-inactive"> <i
												class="bi bi-x-circle"></i> Inactive
											</span>
										</c:otherwise>
									</c:choose></td>

								<td><a href="viewCarBrand?brandId=${car.brandId}"
									class="btn btn-sm btn-view"> <i class="bi bi-eye"></i>
									
								</a> <a href="deletebrand?brandId=${car.brandId}"
									class="btn btn-sm btn-delete"
									onclick="return confirm('Delete this brand?');"> <i
										class="bi bi-trash"></i>
								</a></td>

							</tr>

						</c:forEach>

						<c:if test="${empty brandList}">
							<tr>
								<td colspan="5" class="text-center text-muted py-4">No
									brands available</td>
							</tr>
						</c:if>

					</tbody>

				</table>

			</div>

		</div>

	</div>

	<jsp:include page="AdminFooter.jsp" />

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>