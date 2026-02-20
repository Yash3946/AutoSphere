<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Car Features</title>

<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

<jsp:include page="AdminCSS.jsp"/>

<style>

/* Page Background */
body{
    background:#F4F6F9;
    font-family:'Segoe UI', sans-serif;
}

/* Content Layout */
.content{
    margin-left:260px;
    min-height:calc(100vh - 120px);
    display:flex;
    justify-content:center;
    align-items:center;
    padding:30px;
}

/* Card Style */
.content-card{
    width:100%;
    max-width:500px;
    background:white;
    padding:25px;
    border-radius:15px;
    box-shadow:0 10px 25px rgba(0,0,0,0.08);
}

/* Input size */
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
            Add Car Features
        </h4>

        <form action="saveCarFeature" method="post">

            <!-- Variant Dropdown -->
            <div class="mb-3">
                <label class="form-label">Car Variant</label>
                <select name="variantId" class="form-select small-input" required>
                    <option value="">-- Select Variant --</option>
                    <c:forEach items="${allCarType}" var="v">
                        <option value="${v.modelId}">
                            ${v.modelName}
                        </option>
                    </c:forEach>
                </select>
            </div>

            <!-- Safety -->
            <div class="mb-3">
                <label class="form-label">Safety Features</label>
                <input type="text"
                       name="safetyFeatures"
                       class="form-control small-input"
                       placeholder="Airbags, ABS" />
            </div>

            <!-- Comfort -->
            <div class="mb-3">
                <label class="form-label">Comfort Features</label>
                <input type="text"
                       name="comfortFeatures"
                       class="form-control small-input"
                       placeholder="AC, Power Steering" />
            </div>

            <!-- Entertainment -->
            <div class="mb-3">
                <label class="form-label">Entertainment Features</label>
                <input type="text"
                       name="entertainmentFeatures"
                       class="form-control small-input"
                       placeholder="Music System, Bluetooth" />
            </div>

            <!-- Exterior -->
            <div class="mb-3">
                <label class="form-label">Exterior Features</label>
                <input type="text"
                       name="exteriorFeatures"
                       class="form-control small-input"
                       placeholder="Alloy Wheels, LED Lamps" />
            </div>

            <!-- Button -->
            <div class="d-grid mt-4">
                <button type="submit" class="btn btn-admin">
                    Save Features
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
