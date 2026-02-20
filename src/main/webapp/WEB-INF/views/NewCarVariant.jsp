<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add New Car Variant</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Icons -->
<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

<!-- Common Admin CSS -->
<jsp:include page="AdminCSS.jsp"/>

<style>

/* Center Content */
.content{
    margin-left:260px;
    min-height:calc(100vh - 120px);
    display:flex;
    justify-content:center;
    align-items:center;
}

/* Form Card */
.content-card{
    width:100%;
    max-width:550px;
}

/* Smaller Inputs */
.small-input{
    height:38px;
    font-size:14px;
}

/* Admin Gradient Button */
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
            Add Car Variant
        </h4>

        <form action="saveCarVariant" method="post">

            <div class="mb-3">
                <label class="form-label">Variant Name</label>
                <input type="text" name="variantName"
                       class="form-control small-input" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Ex-Showroom Price</label>
                <input type="number" name="exShowroomPrice"
                       class="form-control small-input" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Mileage</label>
                <input type="text" name="mileage"
                       class="form-control small-input">
            </div>

            <div class="mb-3">
                <label class="form-label">Engine</label>
                <input type="text" name="engine"
                       class="form-control small-input">
            </div>

            <div class="mb-3">
                <label class="form-label">Power</label>
                <input type="text" name="power"
                       class="form-control small-input">
            </div>

            <div class="mb-3">
                <label class="form-label">Torque</label>
                <input type="text" name="torque"
                       class="form-control small-input">
            </div>

            <div class="mb-3">
                <label class="form-label">Status</label>
                <select name="active"
                        class="form-select small-input">
                    <option value="true">Active</option>
                    <option value="false">Inactive</option>
                </select>
            </div>

            <div class="mb-3">
                <label class="form-label">Fuel Type</label>
                <input type="text" name="fuelType"
                       class="form-control small-input">
            </div>

            <div class="mb-3">
                <label class="form-label">Transmission</label>
                <input type="text" name="transmission"
                       class="form-control small-input">
            </div>

            <div class="d-grid mt-4">
                <button type="submit" class="btn btn-admin">
                    Save Variant
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
