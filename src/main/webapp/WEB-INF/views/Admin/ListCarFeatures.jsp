<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Car Features</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Icons -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

<!-- Your Main Layout CSS -->
<jsp:include page="AdminCSS.jsp"/>

<style>

.content-card{
    background:white;
    padding:25px;
    border-radius:15px;
    box-shadow:0 10px 25px rgba(0,0,0,0.08);
}

.table thead{
    background:linear-gradient(90deg,#0D1B2A,#1B263B);
    color:white;
}

.btn-view{
    background:linear-gradient(135deg,#14213D,#1D3557);
    color:white;
    border:none;
}

.btn-view:hover{
    background:#0077B6;
    color:white;
}

.btn-delete{
    background:#dc3545;
    color:white;
    border:none;
}

.btn-delete:hover{
    background:#bb2d3b;
    color:white;
}

</style>
</head>

<body>

<!-- Sidebar -->
<jsp:include page="AdminSidebar.jsp"/>

<!-- Header -->
<jsp:include page="AdminHeader.jsp"/>

<div class="content">

    <div class="content-card">

        <h3 class="fw-bold mb-4" style="color:#0D1B2A;">
            List Car Features
        </h3>

        <div class="table-responsive">
            <table class="table table-hover align-middle">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Variant ID</th>
                        <th>Safety</th>
                        <th>Comfort</th>
                        <th>Entertainment</th>
                        <th>Exterior</th>
                        <th>Action</th>
                    </tr>
                </thead>

                <tbody>

                    <c:forEach items="${allCarFeatures}" var="f">
                        <tr>
                            <td>${f.featureId}</td>
                            <td>${f.variantId}</td>
                            <td>${f.safetyFeatures}</td>
                            <td>${f.comfortFeatures}</td>
                            <td>${f.entertainmentFeatures}</td>
                            <td>${f.exteriorFeatures}</td>
                            <td>
                                <a href="viewCarFeatures?featureId=${f.featureId}"
                                   class="btn btn-sm btn-view">View</a>

                                <a href="deleteCarFeatures?featureId=${f.featureId}"
                                   class="btn btn-sm btn-delete"
                                   onclick="return confirm('Are you sure?')">
                                   Delete
                                </a>
                            </td>
                        </tr>
                    </c:forEach>

                    <c:if test="${empty allCarFeatures}">
                        <tr>
                            <td colspan="7" class="text-center text-muted py-4">
                                No car features found
                            </td>
                        </tr>
                    </c:if>

                </tbody>
            </table>
        </div>

    </div>

</div>

<!-- Footer -->
<jsp:include page="AdminFooter.jsp"/>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
