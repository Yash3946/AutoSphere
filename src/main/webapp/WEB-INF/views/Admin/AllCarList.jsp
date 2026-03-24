<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>

<html>
<head>

<meta charset="UTF-8">
<title>Car Listings</title>

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

/* 🔥 IMPORTANT (HEADER FIX SPACE) */
.content{
margin-left:260px;
margin-top:90px;
padding:40px;
}

.content-card{
background:white;
border-radius:16px;
padding:30px;
box-shadow:0 10px 30px rgba(0,0,0,0.08);
}

.page-header{
display:flex;
justify-content:space-between;
align-items:center;
margin-bottom:25px;
}

.page-title{
font-weight:700;
font-size:22px;
color:#1B263B;
}

.counter-badge{
background:#4361ee;
color:white;
padding:6px 14px;
border-radius:20px;
font-size:14px;
}

.table{
min-width:1300px;
border-radius:10px;
overflow:hidden;
}

.table th{
padding:14px;
white-space:nowrap;
font-size:14px;
}

.table td{
padding:14px;
vertical-align:middle;
white-space:nowrap;
}

.table thead{
background:#1B263B;
color:white;
}

.table tbody tr:hover{
background:#f4f7fb;
}

.price{
font-weight:700;
color:#198754;
}

.status-badge{
background:#e9f9f1;
color:#198754;
padding:6px 12px;
border-radius:20px;
font-size:12px;
font-weight:600;
}

.action-btn{
border-radius:6px;
padding:5px 10px;
font-size:13px;
}

.btn-view{
background:#4361ee;
color:white;
border:none;
}

.btn-view:hover{
background:#3651d4;
}

/* 🔥 EDIT BUTTON */
.btn-edit{
background:#fca311;
color:white;
border:none;
}
.btn-edit:hover{
background:#e59500;
}

/* DELETE */
.btn-delete{
background:#ef233c;
color:white;
border:none;
}

.btn-delete:hover{
background:#d90429;
}

</style>

</head>

<body>

<!-- SIDEBAR -->
<jsp:include page="AdminSidebar.jsp"/>

<!-- HEADER -->
<jsp:include page="AdminHeader.jsp"/>

<div class="content">

<div class="content-card">

<div class="page-header">

<h4 class="page-title">
<i class="bi bi-car-front-fill"></i> Car Listings
</h4>

<div class="counter-badge">
Total Cars : ${allCarList.size()}
</div>

</div>

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
<th class="text-center">Action</th>

</tr>
</thead>

<tbody>

<c:forEach items="${allCarList}" var="c">

<tr>

<td>${c.listingId}</td>

<td>
<i class="bi bi-person-circle"></i>
${c.userId}
</td>

<td>${c.brandName}</td>

<td>${c.modelName}</td>

<td>${c.variantName}</td>

<td>
<i class="bi bi-geo-alt-fill"></i>
${c.city}
</td>

<td>${c.kmsDriven} km</td>

<td>${c.year}</td>

<td>${c.ownership}</td>

<td class="price">
₹ ${c.price}
</td>

<td>
<span class="status-badge">
<i class="bi bi-check-circle-fill"></i>
Available
</span>
</td>

<td>
<fmt:formatDate value="${c.createdAt}" pattern="yyyy-MM-dd"/>
</td>

<td class="text-center">

<!-- VIEW -->
<a href="viewCarListing?listingId=${c.listingId}"
class="btn btn-view action-btn btn-sm">
<i class="bi bi-eye"></i>
</a>

<!-- 🔥 EDIT -->
<a href="editCarListing?listingId=${c.listingId}"
class="btn btn-edit action-btn btn-sm">
<i class="bi bi-pencil-square"></i>
</a>

<!-- DELETE -->
<a href="deleteCarListing?listingId=${c.listingId}"
class="btn btn-delete action-btn btn-sm"
onclick="return confirm('Delete this listing?')">
<i class="bi bi-trash"></i>
</a>

</td>

</tr>

</c:forEach>

<c:if test="${empty allCarList}">

<tr>
<td colspan="13" class="text-center text-muted py-5">

<i class="bi bi-car-front" style="font-size:25px"></i>

<br><br>

No Car Listings Found

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