<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit User</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

<style>

body{
	background:#F4F6F9;
	font-family:'Segoe UI', sans-serif;
}

.header{
	margin-left:260px;
	background:linear-gradient(90deg,#0D1B2A,#1B263B);
	color:white;
	padding:15px 25px;
	display:flex;
	justify-content:space-between;
	align-items:center;
}

.content{
	margin-left:260px;
	padding:40px;
}

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

.btn-primary{
	background:linear-gradient(135deg,#005F73,#0A9396);
	border:none;
}

</style>

</head>

<body>



<!-- Header -->

		

		<a href="logout" class="btn btn-sm btn-outline-light ms-3">
			<i class="bi bi-box-arrow-right"></i> Logout
		</a>
	</div>

</div>

<!-- Content -->
<div class="content">

<h3 class="fw-bold mb-4" style="text-align: center;">Edit User</h3>

<div class="row justify-content-center">

<div class="col-lg-8">

<div class="card">

<div class="card-header text-center">
<h4>Edit User Details</h4>
</div>

<div class="card-body">

<form action="updateUser" method="post" enctype="multipart/form-data">

<input type="hidden" name="userId" value="${user.userId}">

<div class="row">

<div class="col-md-6 mb-3">
<label class="form-label">First Name</label>
<input type="text" name="firstName" value="${user.firstName}" class="form-control">
</div>

<div class="col-md-6 mb-3">
<label class="form-label">Last Name</label>
<input type="text" name="lastName" value="${user.lastName}" class="form-control">
</div>

</div>


<div class="mb-3">
<label class="form-label">Email</label>
<input type="email" name="email" value="${user.email}" class="form-control">
</div>

<div class="mb-3">
<label class="form-label">Password</label>
<input type="password" name="password" class="form-control"
placeholder="Enter new password (leave blank if not changing)">
</div>

<div class="mb-3">
<label class="form-label">Gender</label>

<div class="form-check form-check-inline">
<input type="radio" class="form-check-input" name="gender" value="MALE"
${user.gender == 'MALE' ? 'checked' : ''}>
<label class="form-check-label">Male</label>
</div>

<div class="form-check form-check-inline">
<input type="radio" class="form-check-input" name="gender" value="FEMALE"
${user.gender == 'FEMALE' ? 'checked' : ''}>
<label class="form-check-label">Female</label>
</div>

<div class="form-check form-check-inline">
<input type="radio" class="form-check-input" name="gender" value="OTHER"
${user.gender == 'OTHER' ? 'checked' : ''}>
<label class="form-check-label">Other</label>
</div>

</div>


<div class="row">

<div class="col-md-6 mb-3">
<label class="form-label">Birth Year</label>
<input type="number" name="birthYear" value="${user.birthYear}" class="form-control">
</div>

<div class="col-md-6 mb-3">
<label class="form-label">Contact Number</label>
<input type="text" name="contactNum" value="${user.contactNum}" class="form-control">
</div>

</div>


<div class="mb-3">
<label class="form-label">Profile Picture</label>
<input type="file" name="profilePic" class="form-control">

<br>

<c:if test="${not empty user.profilePicURL}">
<img src="${user.profilePicURL}" width="80">
</c:if>

</div>


<div class="d-grid">

<button class="btn btn-primary">
Update User
</button>

</div>

</form>

</div>
</div>
</div>
</div>
</div>


</body>
</html>