<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Car Listing</title>

<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

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
    max-width:700px;
    background:white;
    padding:30px;
    border-radius:15px;
    box-shadow:0 10px 25px rgba(0,0,0,0.08);
}

/* Smaller inputs */
.small-input{
    height:38px;
    font-size:14px;
}

/* Admin Button */
.btn-admin{
    background:linear-gradient(135deg,#14213D,#1D3557);
    border:none;
    color:white;
}
.btn-admin:hover{
    background:#0077B6;
    color:white;
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

<h4 class="fw-bold mb-4 text-center" style="color:#0D1B2A;">
    Add Car Listing
</h4>

<form action="saveCarListing" method="post">

    <!-- Seller -->
    <div class="mb-3">
        <label class="form-label">Seller</label>
        <select name="userId" class="form-select small-input" required>
            <option value="">Select Seller</option>
            <c:forEach items="${allUser}" var="u">
                <option value="${u.userId}">
                    ${u.firstName} ${u.lastName}
                </option>
            </c:forEach>
        </select>
    </div>

    <!-- Brand -->
    <div class="mb-3">
        <label class="form-label">Brand</label>
        <select name="brandId" class="form-select small-input" required>
            <option value="">Select Brand</option>
            <c:forEach items="${allCarBrand}" var="b">
                <option value="${b.brandId}">
                    ${b.brandName}
                </option>
            </c:forEach>
        </select>
    </div>

    <!-- Model -->
    <div class="mb-3">
        <label class="form-label">Model</label>
        <select name="modelId" class="form-select small-input" required>
            <option value="">Select Model</option>
            <c:forEach items="${allCarModel}" var="m">
                <option value="${m.modelId}">
                    ${m.modelName}
                </option>
            </c:forEach>
        </select>
    </div>

    <!-- Variant -->
    <div class="mb-3">
        <label class="form-label">Variant</label>
        <select name="variantId" class="form-select small-input" required>
            <option value="">Select Variant</option>
            <c:forEach items="${allCarVariant}" var="v">
                <option value="${v.variantId}">
                    ${v.variantName}
                </option>
            </c:forEach>
        </select>
    </div>

    <!-- City -->
    <div class="mb-3">
        <label class="form-label">City</label>
        <input type="text" name="city" class="form-control small-input" required>
    </div>

    <!-- KMS Driven -->
    <div class="mb-3">
        <label class="form-label">Kilometers Driven</label>
        <input type="number" name="kmsDriven" class="form-control small-input" required>
    </div>

    <!-- Year -->
    <div class="mb-3">
        <label class="form-label">Manufacturing Year</label>
        <input type="number" name="year" class="form-control small-input" required>
    </div>

    <!-- Ownership -->
    <div class="mb-3">
        <label class="form-label">Ownership</label>
        <select name="ownership" class="form-select small-input" required>
            <option value="FIRST">First</option>
            <option value="SECOND">Second</option>
            <option value="THIRD">Third</option>
        </select>
    </div>

    <!-- Price -->
    <div class="mb-3">
        <label class="form-label">Price</label>
        <input type="number" name="price" class="form-control small-input" required>
    </div>

    <!-- Status -->
    <div class="mb-3">
        <label class="form-label">Status</label>
        <select name="status" class="form-select small-input">
            <option value="AVAILABLE">Available</option>
            <option value="SOLD">Sold</option>
        </select>
    </div>

    <!-- Created At -->
    <div class="mb-3">
        <label class="form-label">Created Date</label>
        <input type="date" name="createdAt" class="form-control small-input">
    </div>

    <div class="d-grid mt-4">
        <button type="submit" class="btn btn-admin">
            Save Listing
        </button>
    </div>

</form>

</div>
</div>

<!-- FOOTER -->
<jsp:include page="AdminFooter.jsp"/>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
