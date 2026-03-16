<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>List Of All Cars</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
rel="stylesheet">

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
max-width:1200px;
background:white;
padding:30px;
border-radius:15px;
box-shadow:0 10px 25px rgba(0,0,0,0.08);
}

/* Table Header */

.table thead{
background:linear-gradient(90deg,#0D1B2A,#1B263B);
color:white;
}

/* Price */

.price{
font-weight:600;
color:#198754;
}

/* Status */

.status-available{
color:#198754;
font-weight:600;
}

/* Buttons */

.btn-view{
background:#1D3557;
color:white;
border:none;
}

.btn-view:hover{
background:#16324d;
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

<!-- SIDEBAR -->
<jsp:include page="AdminSidebar.jsp"/>

<!-- HEADER -->
<jsp:include page="AdminHeader.jsp"/>

<!-- CONTENT -->

<div class="content">

<div class="content-card">

<h4 class="fw-bold mb-4">List Of All Cars</h4>

<div class="table-responsive">

<table class="table table-hover align-middle">

<thead>
<tr>
<th>ID</th>
<th>Seller</th>
<th>Brand</th>
<th>Model</th>
<th>Variant</th>
<th>City</th>
<th>KMS</th>
<th>Year</th>
<th>Ownership</th>
<th>Price</th>
<th>Status</th>
<th>Date</th>
<th>Action</th>
</tr>
</thead>

<tbody>

<c:forEach items="${allCarList}" var="c">

<tr>

<td>${c.listingId}</td>
<td>${c.userId}</td>
<td>${c.brandName}</td>
<td>${c.modelName}</td>
<td>${c.variantName}</td>
<td>${c.city}</td>
<td>${c.kmsDriven}</td>
<td>${c.year}</td>
<td>${c.ownership}</td>

<td class="price">₹ ${c.price}</td>

<td>
<span class="status-available">
<i class="bi bi-check-circle"></i> Available
</span>
</td>

<td>${c.createdAt}</td>

<td>

<a href="viewCarListing?listingId=${c.listingId}"
class="btn btn-view btn-sm">

<i class="bi bi-eye"></i> View

</a>

<a href="deleteCarListing?listingId=${c.listingId}"
class="btn btn-delete btn-sm"
onclick="return confirm('Are you sure?')">

<i class="bi bi-trash"></i>

</a>

</td>

</tr>

</c:forEach>

<c:if test="${empty allCarList}">

<tr>
<td colspan="13" class="text-center text-muted py-4">
No car listings found
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