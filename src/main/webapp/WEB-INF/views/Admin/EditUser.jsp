<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>Edit User</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

<jsp:include page="AdminCSS.jsp"/>

<style>
body{
	background:#F4F6F9;
	font-family:'Segoe UI', sans-serif;
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

<!-- ✅ Sidebar + Header -->
<jsp:include page="AdminSidebar.jsp"/>
<jsp:include page="AdminHeader.jsp"/>

<div class="content">

<h3 class="fw-bold mb-4 text-center">Edit User</h3>

<div class="row justify-content-center">
<div class="col-lg-8">

<div class="card">

<div class="card-header text-center">
<h4>Edit User Details</h4>
</div>

<div class="card-body">

<form action="updateUser" method="post" enctype="multipart/form-data">

<input type="hidden" name="userId" value="${user.userId}">

<!-- NAME -->
<div class="row">
<div class="col-md-6 mb-3">
<label>First Name</label>
<input type="text" name="firstName" value="${user.firstName}" class="form-control">
</div>

<div class="col-md-6 mb-3">
<label>Last Name</label>
<input type="text" name="lastName" value="${user.lastName}" class="form-control">
</div>
</div>

<!-- EMAIL -->
<div class="mb-3">
<label>Email</label>
<input type="email" name="email" value="${user.email}" class="form-control">
</div>

<!-- PASSWORD -->
<div class="mb-3">
<label>Password</label>
<input type="password" name="password" class="form-control"
placeholder="Enter new password (leave blank if not changing)">
</div>

<!-- GENDER -->
<div class="mb-3">
<label>Gender</label><br>

<input type="radio" name="gender" value="MALE"
${user.gender == 'MALE' ? 'checked' : ''}> Male

<input type="radio" name="gender" value="FEMALE"
${user.gender == 'FEMALE' ? 'checked' : ''}> Female

<input type="radio" name="gender" value="OTHER"
${user.gender == 'OTHER' ? 'checked' : ''}> Other

</div>

<!-- BIRTH + CONTACT -->
<div class="row">
<div class="col-md-6 mb-3">
<label>Birth Year</label>
<input type="number" name="birthYear" value="${user.birthYear}" class="form-control">
</div>

<div class="col-md-6 mb-3">
<label>Contact Number</label>
<input type="text" name="contactNum" value="${user.contactNum}" class="form-control">
</div>
</div>

<!-- 🌍 COUNTRY STATE CITY -->
<div class="row">

<div class="col-md-4 mb-3">
<label>Country</label>
<input type="text" name="country"
value="${userDetail != null ? userDetail.country : ''}"
class="form-control">
</div>

<div class="col-md-4 mb-3">
<label>State</label>
<input type="text" name="state"
value="${userDetail != null ? userDetail.state : ''}"
class="form-control">
</div>

<div class="col-md-4 mb-3">
<label>City</label>
<input type="text" name="city"
value="${userDetail != null ? userDetail.city : ''}"
class="form-control">
</div>

</div>

<!-- PROFILE PIC -->
<div class="mb-3">
<label>Profile Picture</label>
<input type="file" name="profilePic" class="form-control">

<br>

<c:if test="${not empty user.profilePicURL}">
<img src="${user.profilePicURL}" width="80" class="rounded">
</c:if>

</div>

<!-- SUBMIT -->
<div class="d-grid">
<button class="btn btn-primary">Update User</button>
</div>

</form>

</div>
</div>

</div>
</div>

</div>

<!-- ✅ Footer -->
<jsp:include page="AdminFooter.jsp"/>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>