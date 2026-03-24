<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Car Listing</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css" rel="stylesheet">

<jsp:include page="AdminCSS.jsp"/>

<style>

body{
    background:#F4F6F9;
    font-family:'Segoe UI', sans-serif;
}

.content{
    margin-left:260px;
    margin-top:90px;
    padding:30px;
}

/* GRID */
.main-box{
    display:flex;
    gap:20px;
}

/* FORM */
.form-card{
    flex:2;
    background:white;
    padding:25px;
    border-radius:16px;
    box-shadow:0 10px 30px rgba(0,0,0,0.08);
}

/* IMAGE CARD */
.image-card{
    flex:1;
    background:white;
    padding:15px;
    border-radius:16px;
    box-shadow:0 10px 25px rgba(0,0,0,0.08);
    text-align:center;
}

/* IMAGE */
.side-img{
    width:100%;
    height:180px;
    object-fit:cover;
    border-radius:10px;
}

/* HEADER ROW */
.top-bar{
    display:flex;
    justify-content:space-between;
    align-items:center;
    margin-bottom:15px;
}

/* BUTTON */
.btn-update{
    background:linear-gradient(135deg,#14213D,#1D3557);
    color:white;
    border:none;
}
.btn-update:hover{
    background:#0077B6;
}

/* BACK BUTTON */
.btn-back{
    background:#6c757d;
    color:white;
    border:none;
}
.btn-back:hover{
    background:#5a6268;
}

</style>

</head>

<body>

<jsp:include page="AdminSidebar.jsp"/>
<jsp:include page="AdminHeader.jsp"/>

<div class="content">

<div class="main-box">

<!-- LEFT -->
<div class="form-card">

<!-- 🔥 TOP BAR -->
<div class="top-bar">
    <h5>
        <i class="bi bi-pencil-square"></i> Edit Car Listing
    </h5>

    <!-- 🔥 BACK BUTTON -->
    <a href="allCarList" class="btn btn-back btn-sm">
        <i class="bi bi-arrow-left"></i> Back
    </a>
</div>

<form action="updateCarListing" method="post" enctype="multipart/form-data">

<input type="hidden" name="listingId" value="${car.listingId}"/>

<div class="mb-3">
<label>Brand</label>
<select name="brandId" class="form-select">
<c:forEach items="${allCarBrand}" var="b">
<option value="${b.brandId}" ${b.brandId == car.brandId ? 'selected' : ''}>
${b.brandName}
</option>
</c:forEach>
</select>
</div>

<div class="mb-3">
<label>Model</label>
<select name="modelId" class="form-select">
<c:forEach items="${allCarModel}" var="m">
<option value="${m.modelId}" ${m.modelId == car.modelId ? 'selected' : ''}>
${m.modelName}
</option>
</c:forEach>
</select>
</div>

<div class="mb-3">
<label>Variant</label>
<select name="variantId" class="form-select">
<c:forEach items="${allCarVariant}" var="v">
<option value="${v.variantId}" ${v.variantId == car.variantId ? 'selected' : ''}>
${v.variantName}
</option>
</c:forEach>
</select>
</div>

<div class="mb-3">
<label>City</label>
<input type="text" name="city" value="${car.city}" class="form-control"/>
</div>

<div class="mb-3">
<label>KMS</label>
<input type="number" name="kmsDriven" value="${car.kmsDriven}" class="form-control"/>
</div>

<div class="mb-3">
<label>Price</label>
<input type="number" name="price" value="${car.price}" class="form-control"/>
</div>

<div class="mb-3">
<label>Change Image</label>
<input type="file" name="imageFile" class="form-control"/>
</div>

<div class="d-grid mt-3">
<button class="btn btn-update">
<i class="bi bi-check-circle"></i> Update Car
</button>
</div>

</form>

</div>

<!-- RIGHT IMAGE -->
<div class="image-card">

<h6>Car Preview</h6>

<c:if test="${not empty car.imageUrl}">
    <img src="${car.imageUrl}" class="side-img"/>
</c:if>

<p class="mt-2 text-muted">
${car.brandName} ${car.modelName}
</p>

</div>

</div>

</div>

</body>
</html>