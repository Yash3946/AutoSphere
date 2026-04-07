<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>User List</title>

<!-- Bootstrap -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

<!-- ✅ DataTables CSS -->
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css">

<link rel="stylesheet"
	href="https://cdn.datatables.net/buttons/2.4.1/css/buttons.dataTables.min.css">

<jsp:include page="AdminCSS.jsp" />

<style>
body {
	background: #F4F6F9;
	font-family: "Segoe UI", sans-serif;
}

.page-header {
	display: flex;
	justify-content: space-between;
	align-items: center;
	margin-bottom: 25px;
	padding-bottom: 10px;
	border-bottom: 1px solid #E5E7EB;
}

.page-title {
	font-weight: 700;
	color: #0D1B2A;
}

.search-box {
	width: 280px;
}

.dashboard-card {
	background: white;
	border-radius: 14px;
	padding: 25px;
	box-shadow: 0 5px 20px rgba(0, 0, 0, 0.08);
}

.table thead {
	background: #F1F5F9;
	font-weight: 600;
	border-bottom: 2px solid #E5E7EB;
}

.table tbody tr:hover {
	background: #F8FAFC;
	transform: scale(1.01);
	box-shadow: 0 3px 8px rgba(0, 0, 0, 0.05);
}

.user-avatar {
	width: 45px;
	height: 45px;
	border-radius: 50%;
	object-fit: cover;
	border: 2px solid #E5E7EB;
}

.user-icon {
	font-size: 40px;
	color: #9CA3AF;
	margin-right: 10px;
}

.user-name {
	font-weight: 600;
	font-size: 15px;
}

.user-email {
	font-size: 13px;
	color: #6B7280;
}

.role-admin {
	background: #111827;
	color: white;
	padding: 5px 10px;
	border-radius: 12px;
	font-size: 12px;
}

.role-user {
	background: #E0F2FE;
	color: #0369A1;
	padding: 5px 10px;
	border-radius: 12px;
	font-size: 12px;
}

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

.action-btn {
	border-radius: 8px;
	padding: 6px 10px;
	margin-right: 5px;
}

.btn-view { background: #0EA5E9; color: white; }
.btn-edit { background: #F59E0B; color: white; }
.btn-delete { background: #EF4444; color: white; }
</style>

</head>

<body>

<jsp:include page="AdminSidebar.jsp" />
<jsp:include page="AdminHeader.jsp" />

<div class="content">

	<div class="page-header">
		<div>
			<h3 class="page-title">User Management</h3>
			<p class="text-muted mb-0">Manage all registered users</p>
		</div>

		<div class="d-flex align-items-center gap-2">
			<input type="text" placeholder="Search user..."
				class="form-control search-box">
			<a href="signup" class="btn btn-primary">
				<i class="bi bi-person-plus"></i> Add User
			</a>
		</div>
	</div>

	<div class="dashboard-card">

		<div class="table-responsive">

			<table class="table table-bordered table-striped" id="myTable">

				<thead>
					<tr>
						<th>#</th>
						<th>User</th>
						<th>Role</th>
						<th>Gender</th>
						<th>Birth Year</th>
						<th>Status</th>
						<th>Actions</th>
					</tr>
				</thead>

				<tbody>
					<c:forEach var="user" items="${userList}" varStatus="s">
						<tr>
							<td>${s.count}</td>

							<td>
								<div class="d-flex align-items-center">
									<c:choose>
										<c:when test="${not empty user.profilePicURL}">
											<img src="${user.profilePicURL}" class="user-avatar me-3">
										</c:when>
										<c:otherwise>
											<i class="bi bi-person-circle user-icon"></i>
										</c:otherwise>
									</c:choose>

									<div>
										<div class="user-name">${user.firstName} ${user.lastName}</div>
										<div class="user-email">
											<i class="bi bi-envelope"></i> ${user.email}
										</div>
									</div>
								</div>
							</td>

							<td>
								<c:choose>
									<c:when test="${user.role eq 'ADMIN'}">
										<span class="role-admin">ADMIN</span>
									</c:when>
									<c:otherwise>
										<span class="role-user">CUSTOMER</span>
									</c:otherwise>
								</c:choose>
							</td>

							<td>${user.gender}</td>
							<td>${user.birthYear}</td>

							<td>
								<c:choose>
									<c:when test="${user.active}">
										<span class="status-active">Active</span>
									</c:when>
									<c:otherwise>
										<span class="status-inactive">Inactive</span>
									</c:otherwise>
								</c:choose>
							</td>

							<td>
								<a href="viewUser?userId=${user.userId}" class="btn btn-sm btn-view">
									<i class="bi bi-eye"></i>
								</a>
								<a href="editUser?userId=${user.userId}" class="btn btn-sm btn-edit">
									<i class="bi bi-pencil"></i>
								</a>
								<a href="deleteUser?userId=${user.userId}"
									class="btn btn-sm btn-delete"
									onclick="return confirm('Delete this user?');">
									<i class="bi bi-trash"></i>
								</a>
							</td>
						</tr>
					</c:forEach>

					<c:if test="${empty userList}">
						<tr>
							<td colspan="7" class="text-center text-muted py-4">
								No users available
							</td>
						</tr>
					</c:if>
				</tbody>

			</table>

		</div>
	</div>
</div>

<jsp:include page="AdminFooter.jsp" />

<!-- ✅ REQUIRED SCRIPTS -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

<script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>

<script src="https://cdn.datatables.net/buttons/2.4.1/js/dataTables.buttons.min.js"></script>

<script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.html5.min.js"></script>

<script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.print.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/pdfmake.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/vfs_fonts.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.10.1/jszip.min.js"></script>

<!-- ✅ MAIN DATATABLE -->
<script>
$(document).ready(function () {
    $('#myTable').DataTable({
        responsive: true,
        dom: 'Bfrtip',
        buttons: [
            'copy', 'csv', 'excel', 'pdf', 'print'
        ]
    });
});
</script>

</body>
</html>