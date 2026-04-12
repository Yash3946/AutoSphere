<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/dataTables.bootstrap5.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/buttons/2.4.1/css/buttons.bootstrap5.min.css">
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

/* CONTENT */
.content{
	margin-left:260px;
	margin-top:90px;
	padding:30px;
	min-height:calc(100vh - 120px);
}

/* CARD */
.content-card{
	background:white;
	padding:25px;
	border-radius:15px;
	box-shadow:0 10px 25px rgba(0,0,0,0.08);
}

/* TABLE */
.table thead{
	background:linear-gradient(90deg,#0D1B2A,#1B263B);
	color:white;
}

/* STATUS */
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

/* BUTTONS */
.btn-view{
	background:#4361ee;
	color:white;
	border:none;
}
.btn-view:hover{
	background:#3651d4;
}

.btn-edit{
	background:#fca311;
	color:white;
	border:none;
}
.btn-edit:hover{
	background:#e59500;
}

.btn-delete{
	background:#dc3545;
	color:white;
	border:none;
}
.btn-delete:hover{
	background:#bb2d3b;
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
			<i class="bi bi-cash-coin"></i> Offer List
		</h4>

		<div class="table-responsive">

			<table class="table table-hover align-middle" id="myTable">

				<thead>
					<tr>
						<th>Offer ID</th>
						<th>Listing ID</th>
						<th>Buyer ID</th>
						<th>Offered Price</th>
						<th>Status</th>
						<th>Created At</th>
						<th class="text-center">Action</th>
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

							<td class="text-center">

								<!-- 🔥 ACTION -->
								<c:if test="${o.offerStatus == 'PENDING'}">

									<a href="viewOffer?offerId=${o.offerId}" class="btn btn-view btn-sm">
										<i class="bi bi-eye"></i>
									</a>

									<a href="editOffer?offerId=${o.offerId}" class="btn btn-edit btn-sm">
										<i class="bi bi-pencil-square"></i>
									</a>

									<a href="deleteOffer?offerId=${o.offerId}"
									   class="btn btn-delete btn-sm"
									   onclick="return confirm('Delete this offer?')">
										<i class="bi bi-trash"></i>
									</a>

								</c:if>

								<c:if test="${o.offerStatus != 'PENDING'}">

									<a href="viewOffer?offerId=${o.offerId}" class="btn btn-view btn-sm">
										<i class="bi bi-eye"></i>
									</a>

								</c:if>

							</td>

						</tr>
					</c:forEach>

					<c:if test="${empty allOffer}">
						<tr>
							<td colspan="7" class="text-center text-muted py-4">
								<i class="bi bi-exclamation-circle"></i> No Offers Found
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
<!-- ✅ 1. jQuery -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

<!-- ✅ 2. DataTables -->
<script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.13.6/js/dataTables.bootstrap5.min.js"></script>

<!-- ✅ 3. Buttons -->
<script src="https://cdn.datatables.net/buttons/2.4.1/js/dataTables.buttons.min.js"></script>
<script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.bootstrap5.min.js"></script>

<!-- Excel -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.10.1/jszip.min.js"></script>

<!-- PDF -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/pdfmake.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/vfs_fonts.js"></script>

<!-- Buttons -->
<script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.html5.min.js"></script>
<script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.print.min.js"></script>

<!-- ✅ 4. INIT SCRIPT (LAST ME) -->
<script>
$(document).ready(function() {
    $('#myTable').DataTable({
        dom: 'Bfrtip',
        buttons: ['copy', 'csv', 'excel', 'pdf', 'print']
    });
});
</script>

</body>
</html>