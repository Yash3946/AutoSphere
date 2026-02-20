<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Car Variant</title>

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

/* Content Alignment */
.content{
    margin-left:260px;
    padding:30px;
    min-height:calc(100vh - 120px);
}

/* Card Style */
.content-card{
    background:white;
    padding:25px;
    border-radius:15px;
    box-shadow:0 10px 25px rgba(0,0,0,0.08);
}

/* Table Header */
.table thead{
    background:linear-gradient(90deg,#0D1B2A,#1B263B);
    color:white;
}

/* Status */
.status-active{
    color:#28a745;
    font-weight:600;
}
.status-inactive{
    color:#dc3545;
    font-weight:600;
}

/* Admin Button */
.btn-admin{
    background:linear-gradient(135deg,#14213D,#1D3557);
    border:none;
    color:white;
    font-size:13px;
    padding:5px 12px;
}
.btn-admin:hover{
    background:#0077B6;
    color:white;
}

/* Delete Button */
.btn-delete{
    background:#dc3545;
    color:white;
    font-size:13px;
    padding:5px 12px;
}
.btn-delete:hover{
    background:#bb2d3b;
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

        <h4 class="fw-bold mb-4" style="color:#0D1B2A;">
            List Car Variant
        </h4>

        <div class="table-responsive">
            <table class="table table-hover align-middle">

                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Variant Name</th>
                        <th>Price</th>
                        <th>Mileage</th>
                        <th>Engine</th>
                        <th>Power</th>
                        <th>Torque</th>
                        <th>Fuel Type</th>
                        <th>Transmission</th>
                        <th>Status</th>
                        <th>Action</th>
                    </tr>
                </thead>

                <tbody>

                    <c:forEach items="${allCarVariant}" var="v">
                        <tr>
                            <td>${v.variantId}</td>
                            <td>${v.variantName}</td>
                            <td>${v.exShowroomPrice}</td>
                            <td>${v.mileage}</td>
                            <td>${v.engine}</td>
                            <td>${v.power}</td>
                            <td>${v.torque}</td>
                            <td>${v.fuelType}</td>
                            <td>${v.transmission}</td>

                            <td>
                                <c:choose>
                                    <c:when test="${v.active}">
                                        <span class="status-active">Active</span>
                                    </c:when>
                                    <c:otherwise>
                                        <span class="status-inactive">Inactive</span>
                                    </c:otherwise>
                                </c:choose>
                            </td>

                            <td>
                                <a href="editCarVariant?variantId=${v.variantId}"
                                   class="btn btn-admin btn-sm">
                                   View
                                </a>

                                <a href="deleteCarVariant?variantId=${v.variantId}"
                                   class="btn btn-delete btn-sm"
                                   onclick="return confirm('Are you sure you want to delete this variant?')">
                                   Delete
                                </a>
                            </td>
                        </tr>
                    </c:forEach>

                    <c:if test="${empty allCarVariant}">
                        <tr>
                            <td colspan="11" class="text-center text-muted py-4">
                                No car variants found
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
