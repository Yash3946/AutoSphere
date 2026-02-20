<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Car Offer</title>

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
	min-height:calc(100vh - 120px);
	display:flex;
	justify-content:center;
	align-items:center;
	padding:30px;
}

/* Card */
.content-card{
	width:100%;
	max-width:500px;
	background:white;
	padding:30px;
	border-radius:15px;
	box-shadow:0 10px 25px rgba(0,0,0,0.08);
}

/* Small Inputs */
.small-input{
	height:38px;
	font-size:14px;
}

/* Admin Gradient Button */
.btn-admin{
	background:linear-gradient(135deg,#14213D,#1D3557);
	border:none;
	color:white;
}
.btn-admin:hover{
	background:#0077B6;
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

		<h4 class="fw-bold mb-4 text-center" style="color:#0D1B2A;">
			Add Car Offer
		</h4>

		<form action="saveCarOffer" method="post">

			<!-- Listing -->
			<div class="mb-3">
				<label class="form-label">Listing</label>
				<select name="listingId" class="form-select small-input" required>
					<option value="">Select Listing</option>
					<c:forEach items="${allCarList}" var="l">
						<option value="${l.listingId}">
							${l.listingId}
						</option>
					</c:forEach>
				</select>
			</div>

			<!-- Buyer -->
			<div class="mb-3">
				<label class="form-label">Buyer</label>
				<select name="userId" class="form-select small-input" required>
					<option value="">Select Buyer</option>
					<c:forEach items="${allUser}" var="u">
						<option value="${u.userId}">
							${u.userId} - ${u.firstName}
						</option>
					</c:forEach>
				</select>
			</div>

			<!-- Offered Price -->
			<div class="mb-3">
				<label class="form-label">Offered Price</label>
				<input type="number" name="offeredPrice"
					   class="form-control small-input"
					   required>
			</div>

			<!-- Offer Status -->
			<div class="mb-3">
				<label class="form-label">Offer Status</label>
				<select name="offerStatus" class="form-select small-input">
					<option value="PENDING">PENDING</option>
					<option value="ACCEPTED">ACCEPTED</option>
					<option value="REJECTED">REJECTED</option>
				</select>
			</div>

			<!-- Created Date -->
			<div class="mb-3">
				<label class="form-label">Created Date</label>
				<input type="date" name="createdAt"
					   class="form-control small-input"
					   required>
			</div>

			<div class="d-grid mt-4">
				<button type="submit" class="btn btn-admin">
					Save Offer
				</button>
			</div>

		</form>

	</div>

</div>

<!-- FOOTER -->
<jsp:include page="AdminFooter.jsp"/>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
