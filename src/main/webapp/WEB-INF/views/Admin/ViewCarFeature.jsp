<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>View Car Feature</title>

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
padding:30px;
}

/* CARD */
.view-card{
background:white;
border-radius:16px;
padding:30px;
box-shadow:0 5px 20px rgba(0,0,0,0.08);
max-width:900px;
margin:auto;
}

/* TITLE */
.page-title{
font-weight:700;
margin-bottom:20px;
}

/* TABLE */
.table th{
width:30%;
background:#F1F5F9;
}

</style>

</head>

<body>

<jsp:include page="AdminSidebar.jsp"/>
<jsp:include page="AdminHeader.jsp"/>

<div class="content">

<div class="view-card">

<h3 class="page-title text-center">Car Feature Details</h3>

<c:choose>

<c:when test="${not empty carFeature}">

<table class="table table-bordered">

<tr>
<th>Feature ID</th>
<td>${carFeature.featureId}</td>
</tr>

<tr>
<th>Variant ID</th>
<td>${carFeature.variantId}</td>
</tr>

<tr>
<th>Safety Features</th>
<td>${carFeature.safetyFeatures}</td>
</tr>

<tr>
<th>Comfort Features</th>
<td>${carFeature.comfortFeatures}</td>
</tr>

<tr>
<th>Entertainment Features</th>
<td>${carFeature.entertainmentFeatures}</td>
</tr>

<tr>
<th>Exterior Features</th>
<td>${carFeature.exteriorFeatures}</td>
</tr>

</table>

</c:when>

<c:otherwise>

<div class="alert alert-warning text-center">
No Car Feature Found
</div>

</c:otherwise>

</c:choose>

<!-- BUTTONS -->
<div class="text-end mt-3">

<a href="listCarFeatures" class="btn btn-secondary">
<i class="bi bi-arrow-left"></i> Back
</a>

<c:if test="${not empty carFeature}">
<a href="editCarFeature?featureId=${carFeature.featureId}"
class="btn btn-warning">
<i class="bi bi-pencil"></i> Edit
</a>
</c:if>

</div>

</div>

</div>

<jsp:include page="AdminFooter.jsp"/>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>