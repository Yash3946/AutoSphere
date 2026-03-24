<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>View User</title>

<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">

<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

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

.profile-pic{
    width:120px;
    height:120px;
    border-radius:50%;
    object-fit:cover;
    border:3px solid #E5E7EB;
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

.label{
    font-weight:600;
    color:#555;
}

</style>

</head>

<body>

<!-- ✅ Sidebar + Header -->
<jsp:include page="AdminSidebar.jsp"/>
<jsp:include page="AdminHeader.jsp"/>

<!-- ✅ Content -->
<div class="content">

<h3 class="fw-bold mb-4 text-center">User Details</h3>

<div class="row justify-content-center">
<div class="col-lg-10">

<div class="card">

<div class="card-header text-center">
<h4>User Profile</h4>
</div>

<div class="card-body">

<div class="row">

<!-- Profile -->
<div class="col-md-3 text-center">

<c:choose>
<c:when test="${not empty user.profilePicURL}">
<img src="${user.profilePicURL}" class="profile-pic">
</c:when>
<c:otherwise>
<i class="bi bi-person-circle" style="font-size:100px;color:#9CA3AF;"></i>
</c:otherwise>
</c:choose>

<div class="mt-3">
<span class="badge bg-info text-dark px-3 py-2">
${user.role}
</span>
</div>

</div>

<!-- Details -->
<div class="col-md-9">

<table class="table table-borderless">

<tr>
<td class="label">User ID</td>
<td>${user.userId}</td>
</tr>

<tr>
<td class="label">Full Name</td>
<td>${user.firstName} ${user.lastName}</td>
</tr>

<tr>
<td class="label">Email</td>
<td>${user.email}</td>
</tr>

<tr>
<td class="label">Gender</td>
<td>${user.gender}</td>
</tr>

<tr>
<td class="label">Birth Year</td>
<td>${user.birthYear}</td>
</tr>

<tr>
<td class="label">Contact</td>
<td>${user.contactNum}</td>
</tr>

<tr>
<td class="label">Created At</td>
<td>${user.createdAt}</td>
</tr>

<tr>
<td class="label">Status</td>
<td>
<c:choose>
<c:when test="${user.active}">
<span class="badge bg-success">Active</span>
</c:when>
<c:otherwise>
<span class="badge bg-danger">Inactive</span>
</c:otherwise>
</c:choose>
</td>
</tr>

<tr>
<td class="label">Country</td>
<td>${userDetail.country}</td>
</tr>

<tr>
<td class="label">State</td>
<td>${userDetail.state}</td>
</tr>

<tr>
<td class="label">City</td>
<td>${userDetail.city}</td>
</tr>

</table>

</div>

</div>

</div>

<div class="card-footer text-end">
<a href="listUser" class="btn btn-secondary">Back</a>
<a href="editUser?userId=${user.userId}" class="btn btn-warning">Edit</a>
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