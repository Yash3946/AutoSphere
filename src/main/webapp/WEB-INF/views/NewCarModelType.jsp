<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add New Car Model Type</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Icons -->
<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

<!-- Common Admin CSS -->
<jsp:include page="AdminCSS.jsp"/>

<style>

/* Center Content Properly */
.content{
    margin-left:260px;
    min-height:calc(100vh - 120px);
    display:flex;
    justify-content:center;
    align-items:center;
}

/* Form Card Width */
.content-card{
    width:100%;
    max-width:450px;
}

/* Smaller Input */
.small-input{
    height:38px;
    font-size:14px;
}

/* Same Admin Gradient Button */
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
            Add New Car Model Type
        </h4>

        <form action="savecartype" method="post">

            <div class="mb-3">
                <label class="form-label">Body Type</label>
                <input type="text"
                       name="bodyType"
                       class="form-control small-input"
                       placeholder="Enter body type (e.g., SUV)"
                       required>
            </div>

            <div class="mb-3">
                <label class="form-label">Model Name</label>
                <input type="text"
                       name="modelName"
                       class="form-control small-input"
                       placeholder="Enter model name (optional)">
            </div>

            <div class="d-grid gap-2 mt-4">
                <button type="submit" class="btn btn-admin">
                    Save Car Model Type
                </button>

                <a href="admin-dashboard" class="btn btn-secondary">
                    Cancel
                </a>
            </div>

        </form>

    </div>

</div>

<!-- FOOTER -->
<jsp:include page="AdminFooter.jsp"/>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
