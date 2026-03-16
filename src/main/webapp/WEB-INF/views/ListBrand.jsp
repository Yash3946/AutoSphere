<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Car Brand List</title>

<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
rel="stylesheet">

<!-- Bootstrap Icons (Important for Sidebar Icons) -->
<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

<jsp:include page="AdminCSS.jsp"/>

<style>

body{
background:#F4F6F9;
font-family:'Segoe UI', sans-serif;
}

/* Content layout */

.content{
margin-left:260px;
padding:30px;
display:flex;
justify-content:center;
}

/* Card */

.content-card{
width:100%;
max-width:1000px;
background:white;
padding:25px;
border-radius:15px;
box-shadow:0 10px 25px rgba(0,0,0,0.08);
}

/* Buttons */

.btn-edit{
background:#007bff;
color:white;
border:none;
}

.btn-edit:hover{
background:#0056b3;
color:white;
}

.btn-delete{
background:#dc3545;
color:white;
border:none;
}

.btn-delete:hover{
background:#a71d2a;
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

<h4 class="fw-bold mb-3 text-center">Car Brand List</h4>

<div class="mb-3">
<a href="addbrand" class="btn btn-info">
+ Add Brand
</a>
</div>

<div class="table-responsive">

<table class="table table-bordered table-striped align-middle">

<thead class="table-dark">

<tr>
<th>Brand ID</th>
<th>Brand Name</th>
<th>Logo URL</th>
<th>Active</th>
<th>Action</th>
</tr>

</thead>

<tbody>

<c:forEach var="car" items="${brandList}">

<tr>

<td>${car.brandId}</td>

<td>${car.brandName}</td>

<td>${car.logoUrl}</td>

<td>${car.active}</td>

<td>

<a href="viewCarBrand?brandId=${car.brandId}"
class="btn btn-primary btn-sm">
View
</a>

<a href="deletebrand?brandId=${car.brandId}"
class="btn btn-danger btn-sm"
onclick="return confirm('Are you sure you want to delete this brand?');">
Delete
</a>

</td>

</tr>

</c:forEach>

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