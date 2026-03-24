<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>Edit Car Variant</title>

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
display:flex;
justify-content:center;
}

.card-box{
width:100%;
max-width:600px;
background:white;
padding:25px;
border-radius:15px;
box-shadow:0 5px 20px rgba(0,0,0,0.08);
}

.page-title{
font-weight:700;
margin-bottom:20px;
}

.btn-update{
background:#2563EB;
color:white;
}

.btn-update:hover{
background:#1D4ED8;
color:white;
}

</style>

</head>

<body>

<jsp:include page="AdminSidebar.jsp"/>
<jsp:include page="AdminHeader.jsp"/>

<div class="content">

<div class="card-box">

<h3 class="page-title text-center">Edit Car Variant</h3>

<form action="updateCarVariant" method="post">

<input type="hidden" name="variantId" value="${carVariant.variantId}">

<div class="mb-3">
<label>Variant Name</label>
<input type="text" name="variantName" value="${carVariant.variantName}" class="form-control">
</div>

<div class="mb-3">
<label>Ex-Showroom Price</label>
<input type="number" name="exShowroomPrice" value="${carVariant.exShowroomPrice}" class="form-control">
</div>

<div class="mb-3">
<label>Mileage</label>
<input type="text" name="mileage" value="${carVariant.mileage}" class="form-control">
</div>

<div class="mb-3">
<label>Engine</label>
<input type="text" name="engine" value="${carVariant.engine}" class="form-control">
</div>

<div class="mb-3">
<label>Power</label>
<input type="text" name="power" value="${carVariant.power}" class="form-control">
</div>

<div class="mb-3">
<label>Torque</label>
<input type="text" name="torque" value="${carVariant.torque}" class="form-control">
</div>

<div class="mb-3">
<label>Fuel Type</label>
<input type="text" name="fuelType" value="${carVariant.fuelType}" class="form-control">
</div>

<div class="mb-3">
<label>Transmission</label>
<input type="text" name="transmission" value="${carVariant.transmission}" class="form-control">
</div>

<div class="mb-3">
<label>Status</label>
<select name="active" class="form-control">
<option value="true" ${carVariant.active ? 'selected' : ''}>Active</option>
<option value="false" ${!carVariant.active ? 'selected' : ''}>Inactive</option>
</select>
</div>

<div class="d-flex justify-content-between">

<a href="listCarVariant" class="btn btn-secondary">
Back
</a>

<button type="submit" class="btn btn-update">
<i class="bi bi-check-circle"></i> Update
</button>

</div>

</form>

</div>

</div>

<jsp:include page="AdminFooter.jsp"/>

</body>
</html>