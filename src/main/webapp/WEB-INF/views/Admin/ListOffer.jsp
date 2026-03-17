<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Offer List</title>

<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

<jsp:include page="AdminCSS.jsp"/>

<style>

body{
	background:#F4F6F9;
	font-family:'Segoe UI', sans-serif;
}

/* Content Layout */
.content{
	margin-left:260px;
	padding:30px;
	min-height:calc(100vh - 120px);
}

/* Card Style */
.content-card{
	background:white;
	padding:25px;
	border-radius:15px;
	box-shadow:0 10px 25px rgba(0,0,0,0.08);
}

/* Table Header */
.table thead{
	background:linear-gradient(90deg,#0D1B2A,#1B263B);
	color:white;
}

/* Status Colors */
.status-pending{
	color:#f39c12;
	font-weight:600;
}
.status-accepted{
	color:#28a745;
	font-weight:600;
}
.status-rejected{
	color:#dc3545;
	font-weight:600;
}

/* Buttons */
.btn-admin{
	background:linear-gradient(135deg,#14213D,#1D3557);
	border:none;
	color:white;
	font-size:13px;
	padding:5px 12px;
}
.btn-admin:hover{
	background:#0077B6;
	color:white;
}

.btn-delete{
	background:#dc3545;
	color:white;
	font-size:13px;
	padding:5px 12px;
}
.btn-delete:hover{
	background:#bb2d3b;
	color:white;
}

</style>

</head>

<body>

<!-- HEADER -->
<jsp:include page="AdminHeader.jsp"/>

<!-- SIDEBAR -->
<jsp:include page="AdminSidebar.jsp"/>

<!-- CONTENT -->
<div class="content">

	<div class="content-card">

		<h4 class="fw-bold mb-4" style="color:#0D1B2A;">
			Offer List
		</h4>

		<div class="table-responsive">

			<table class="table table-hover align-middle">

				<thead>
					<tr>
						<th>Offer ID</th>
						<th>Listing ID</th>
						<th>Buyer ID</th>
						<th>Offered Price</th>
						<th>Status</th>
						<th>Created At</th>
						<th>Action</th>
					</tr>
				</thead>

				<tbody>

					<c:forEach items="${allOffer}" var="o">
						<tr>
							<td>${o.offerId}</td>
							<td>${o.listingId}</td>
							<td>${o.userId}</td>
							<td>₹ ${o.offeredPrice}</td>

							<td>
								<c:choose>
									<c:when test="${o.offerStatus == 'PENDING'}">
										<span class="status-pending">PENDING</span>
									</c:when>
									<c:when test="${o.offerStatus == 'ACCEPTED'}">
										<span class="status-accepted">ACCEPTED</span>
									</c:when>
									<c:otherwise>
										<span class="status-rejected">REJECTED</span>
									</c:otherwise>
								</c:choose>
							</td>

							<td>${o.createdAt}</td>

							<td>
								<c:if test="${o.offerStatus == 'PENDING'}">
									<a href="viewOffer?offerId=${o.offerId}"
									   class="btn btn-admin btn-sm">
									   View
									</a>

									<a href="deleteOffer?offerId=${o.offerId}"
									   class="btn btn-delete btn-sm"
									   onclick="return confirm('Are you sure?')">
									   Delete
									</a>
								</c:if>
							</td>

						</tr>
					</c:forEach>

					<c:if test="${empty allOffer}">
						<tr>
							<td colspan="7" class="text-center text-muted py-4">
								No Offers Found
							</td>
						</tr>
					</c:if>

				</tbody>

			</table>

		</div>

	</div>

</div>

<!-- FOOTER -->
<jsp:include page="AdminFooter.jsp"/>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
