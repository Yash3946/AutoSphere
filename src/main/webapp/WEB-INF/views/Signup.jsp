<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Registration</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

<style>
body{
	background:#F4F6F9;
	font-family:'Segoe UI', sans-serif;
}

/* ===== Sidebar ===== */
.sidebar{
	width:260px;
	height:100vh;
	position:fixed;
	background:linear-gradient(180deg,#0D1B2A,#1B263B);
	color:white;
	overflow-y:auto;
	box-shadow:3px 0 15px rgba(0,0,0,0.2);
}

.sidebar h5{ color:white; }

.sidebar a{
	display:block;
	padding:12px 20px;
	color:#ADB5BD;
	text-decoration:none;
	transition:0.3s;
	font-size:14px;
}

.sidebar a:hover{
	background:#1B263B;
	color:white;
	padding-left:28px;
}

/* ===== Header ===== */
.header{
	margin-left:260px;
	background:linear-gradient(90deg,#0D1B2A,#1B263B);
	color:white;
	padding:15px 25px;
	display:flex;
	justify-content:space-between;
	align-items:center;
}

/* ===== Content ===== */
.content{
	margin-left:260px;
	padding:40px;
}

/* Card Styling */
.card{
	border:none;
	border-radius:15px;
	box-shadow:0 8px 20px rgba(0,0,0,0.08);
}

.card-header{
	background:linear-gradient(135deg,#14213D,#1D3557);
	color:white;
	border-top-left-radius:15px !important;
	border-top-right-radius:15px !important;
}

/* Button Styling */
.btn-success{
	background:linear-gradient(135deg,#005F73,#0A9396);
	border:none;
}

.btn-success:hover{
	background:#0077B6;
}
</style>
</head>

<body>

<!-- ===== Sidebar Include ===== -->
<jsp:include page="AdminSidebar.jsp"/>

<!-- ===== Header ===== -->
<div class="header">
	<h5>AutoSphere Admin Panel</h5>
	<div>
		Welcome, <b>${sessionScope.user.firstName}</b>
		<a href="logout" class="btn btn-sm btn-outline-light ms-3">
			<i class="bi bi-box-arrow-right"></i> Logout
		</a>
	</div>
</div>

<!-- ===== Content ===== -->
<div class="content">

	<h2 class="fw-bold mb-4" style="color:#0D1B2A;"></h2>

	<div class="row justify-content-center">
		<div class="col-lg-8">

			<div class="card">
				<div class="card-header text-center">
					<h4 class="mb-0">Register New User</h4>
				</div>

				<div class="card-body p-4">
					<form action="register" method="post">

						<div class="row">
							<div class="col-md-6 mb-3">
								<label class="form-label">First Name</label>
								<input type="text" name="firstName" class="form-control" required>
							</div>

							<div class="col-md-6 mb-3">
								<label class="form-label">Last Name</label>
								<input type="text" name="lastName" class="form-control" required>
							</div>
						</div>

						<div class="mb-3">
							<label class="form-label">Email</label>
							<input type="email" name="email" class="form-control" required>
						</div>

						<div class="mb-3">
							<label class="form-label">Password</label>
							<input type="password" name="password" class="form-control" required>
						</div>

						<div class="mb-3">
							<label class="form-label d-block">Gender</label>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="gender" value="MALE" required>
								<label class="form-check-label">Male</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="gender" value="FEMALE">
								<label class="form-check-label">Female</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="gender" value="OTHER">
								<label class="form-check-label">Other</label>
							</div>
						</div>

						<div class="row">
							<div class="col-md-6 mb-3">
								<label class="form-label">Birth Year</label>
								<input type="number" name="birthYear" class="form-control" min="1900" max="2100" required>
							</div>

							<div class="col-md-6 mb-3">
								<label class="form-label">Contact Number</label>
								<input type="text" name="contactNum" class="form-control" required>
							</div>
						</div>

						<div class="mb-3">
							<label class="form-label">Qualification</label>
							<input type="text" name="qualification" class="form-control" required>
						</div>

						<div class="row">
							<div class="col-md-4 mb-3">
								<label class="form-label">City</label>
								<input type="text" name="city" class="form-control" required>
							</div>

							<div class="col-md-4 mb-3">
								<label class="form-label">State</label>
								<input type="text" name="state" class="form-control" required>
							</div>

							<div class="col-md-4 mb-3">
								<label class="form-label">Country</label>
								<input type="text" name="country" value="India" class="form-control" required>
							</div>
						</div>

						<div class="mb-3">
							<label class="form-label">Profile Picture</label>
							<input type="file" name="profilePicURL" class="form-control">
						</div>

						<div class="d-grid">
							<button type="submit" class="btn btn-success">
								Save User
							</button>
						</div>

					</form>
				</div>
			</div>

		</div>
	</div>
</div>

<!-- ===== Footer ===== -->
<div class="footer" style="margin-left:260px;background:#0D1B2A;color:white;text-align:center;padding:15px;margin-top:40px;">
<jsp:include page="AdminFooter.jsp"/>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
