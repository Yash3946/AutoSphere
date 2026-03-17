<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Car Reports</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Icons -->
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

.status-open{
    color:#0d6efd;
    font-weight:bold;
}

.status-resolved{
    color:#28a745;
    font-weight:bold;
}

.status-rejected{
    color:#dc3545;
    font-weight:bold;
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
            List Car Reports
        </h3>

        <div class="table-responsive">
            <table class="table table-hover align-middle">
                <thead>
                    <tr>
                        <th>Report ID</th>
                        <th>Seller ID</th>
                        <th>Listing ID</th>
                        <th>Reason</th>
                        <th>Status</th>
                        <th>Created At</th>
                        <th>Action</th>
                    </tr>
                </thead>

                <tbody>

                    <c:forEach items="${carReports}" var="r">
                        <tr>
                            <td>${r.reportId}</td>
                            <td>${r.userId}</td>
                            <td>${r.listingId}</td>
                            <td>${r.reason}</td>

                            <td>
                                <c:choose>
                                    <c:when test="${r.status == 'OPEN'}">
                                        <span class="status-open">OPEN</span>
                                    </c:when>
                                    <c:when test="${r.status == 'RESOLVED'}">
                                        <span class="status-resolved">RESOLVED</span>
                                    </c:when>
                                    <c:otherwise>
                                        <span class="status-rejected">REJECTED</span>
                                    </c:otherwise>
                                </c:choose>
                            </td>

                            <td>${r.createdAt}</td>

                            <td>
                                <a href="viewCarReports?reportId=${r.reportId}"
                                   class="btn btn-sm btn-view">View</a>

                                <a href="deleteCarReports?reportId=${r.reportId}"
                                   class="btn btn-sm btn-delete"
                                   onclick="return confirm('Are you sure?')">
                                   Delete
                                </a>
                            </td>
                        </tr>
                    </c:forEach>

                    <!-- Correct empty check -->
                    <c:if test="${empty carReports}">
                        <tr>
                            <td colspan="7" class="text-center text-muted py-4">
                                No car reports found
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
