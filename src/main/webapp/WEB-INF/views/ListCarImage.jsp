<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>
<head>

<title>Car Image List</title>

<!-- Bootstrap -->

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Admin CSS -->

<jsp:include page="AdminCSS.jsp"/>

<style>

.page-wrapper{
padding:30px;
}

.page-card{
background:#fff;
padding:30px;
border-radius:12px;
box-shadow:0 3px 12px rgba(0,0,0,0.08);
}

.table img{
border-radius:8px;
}

</style>

</head>

<body>

<!-- ================= SIDEBAR ================= -->

<jsp:include page="AdminSidebar.jsp"/>

<!-- ================= HEADER ================= -->

<jsp:include page="AdminHeader.jsp"/>

<!-- ================= CONTENT ================= -->

<div class="content">

<div class="page-wrapper">

<div class="container-fluid">

<div class="page-card">

<h3 class="text-center fw-bold mb-4">Car Image List</h3>

<table class="table table-hover align-middle">

<thead class="table-dark text-center">

<tr>
<th>ID</th>
<th>Model Name</th>
<th>Image</th>
<th>Primary</th>
<th>Action</th>
</tr>

</thead>

<tbody class="text-center">

<c:forEach var="c" items="${carList}">

<tr>

<td>${c.imageId}</td>

<td>${c.modelName}</td>

<td>
<img src="${c.imageURL}" width="120" class="img-thumbnail">
</td>

<td>

<c:if test="${c.isPrimary}"> <span class="badge bg-success">Primary</span>
</c:if>

<c:if test="${!c.isPrimary}"> <span class="badge bg-secondary">Secondary</span>
</c:if>

</td>

<td>

<a href="viewCarImage?imageId=${c.imageId}" 
class="btn btn-info btn-sm">View</a>

<a href="deleteCarImage?imageId=${c.imageId}" 
class="btn btn-danger btn-sm">Delete</a>

</td>

</tr>

</c:forEach>

</tbody>

</table>

</div>

</div>

</div>

</div>

<!-- ================= FOOTER ================= -->

<jsp:include page="AdminFooter.jsp"/>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>