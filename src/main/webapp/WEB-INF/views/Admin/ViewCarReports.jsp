<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>Car Report Details</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
.report-card {
    max-width: 1100px;
    width: 100%;
    border-radius: 18px;
    box-shadow: 0 20px 50px rgba(0,0,0,0.25);
    overflow: hidden;
}

/* Header */
.report-header {
    background: linear-gradient(135deg,#0D1B2A,#1B263B);
    color: white;
    padding: 22px 35px;
    font-size: 24px;
    font-weight: 600;
}

/* Body */
.report-body {
    padding: 35px 40px;
}

/* Row */
.report-row {
    display: flex;
    justify-content: space-between;
    padding: 14px 0;
    border-bottom: 1px solid #eee;
}

/* Label */
.report-label {
    font-weight: 600;
    color: #555;
    font-size: 17px;
}

/* Value */
.report-value {
    font-size: 17px;
    font-weight: 500;
}

/* Footer */
.report-footer {
    padding: 20px 35px;
    display: flex;
    justify-content: flex-end;
    gap: 12px;
}

/* Buttons */
.btn-edit {
    background: #fca311;
    color: white;
}
.btn-edit:hover {
    background: #e59500;
}

.btn-delete {
    background: #dc3545;
    color: white;
}
.btn-delete:hover {
    background: #bb2d3b;
}
</style>

<jsp:include page="AdminCSS.jsp"/>

</head>

<body>

<jsp:include page="AdminHeader.jsp"/>
<jsp:include page="AdminSidebar.jsp"/>

<!-- 🔥 LEFT ALIGN FIX -->
<div style="margin-left:280px; margin-top:90px; padding-right:30px;">

    <div class="report-card">

        <!-- HEADER -->
        <div class="report-header">
            Car Report Details
        </div>

        <!-- BODY -->
        <div class="report-body">

            <div class="report-row">
                <span class="report-label">Report ID</span>
                <span class="report-value">${report.reportId}</span>
            </div>

            <div class="report-row">
                <span class="report-label">User ID</span>
                <span class="report-value">${report.userId}</span>
            </div>

            <div class="report-row">
                <span class="report-label">Listing ID</span>
                <span class="report-value">${report.listingId}</span>
            </div>

            <div class="report-row">
                <span class="report-label">Reason</span>
                <span class="report-value">${report.reason}</span>
            </div>

            <div class="report-row">
                <span class="report-label">Status</span>
                <span class="report-value">
                    <c:choose>
                        <c:when test="${report.status == 'OPEN'}">
                            <span class="badge bg-primary">OPEN</span>
                        </c:when>
                        <c:when test="${report.status == 'RESOLVED'}">
                            <span class="badge bg-success">RESOLVED</span>
                        </c:when>
                        <c:otherwise>
                            <span class="badge bg-danger">REJECTED</span>
                        </c:otherwise>
                    </c:choose>
                </span>
            </div>

            <div class="report-row" style="border:none;">
                <span class="report-label">Created At</span>
                <span class="report-value">${report.createdAt}</span>
            </div>

        </div>

        <!-- FOOTER -->
        <div class="report-footer">

            <a href="listCarReports" class="btn btn-secondary">
                Back
            </a>

            <a href="editCarReport?reportId=${report.reportId}" 
               class="btn btn-edit">
                Edit
            </a>

            <a href="deleteCarReports?reportId=${report.reportId}" 
               class="btn btn-delete"
               onclick="return confirm('Delete this report?')">
                Delete
            </a>

        </div>

    </div>

</div>

</body>
</html>