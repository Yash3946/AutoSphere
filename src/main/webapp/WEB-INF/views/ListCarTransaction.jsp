<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Car Transaction List</title>

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

/* Content */
.content{
    margin-left:260px;
    padding:30px;
}

/* Card */
.content-card{
    background:white;
    padding:25px;
    border-radius:15px;
    box-shadow:0 10px 25px rgba(0,0,0,0.08);
}

/* Table Header Gradient */
.table thead{
    background:linear-gradient(90deg,#0D1B2A,#1B263B);
    color:white;
}

/* Status Badges */
.badge-completed{
    background:#28a745;
}
.badge-initiated{
    background:#ffc107;
    color:black;
}
.badge-cancelled{
    background:#dc3545;
}

/* Buttons */
.btn-view{
    background:linear-gradient(135deg,#14213D,#1D3557);
    border:none;
    color:white;
}
.btn-view:hover{
    background:#0077B6;
    color:white;
}

.btn-delete{
    background:#dc3545;
    color:white;
}
.btn-delete:hover{
    background:#bb2d3b;
    color:white;
}

</style>

</head>

<body>

<!-- HEADER -->
<jsp:include page="AdminHeader.jsp"/>

<!-- SIDEBAR -->
<jsp:include page="AdminSidebar.jsp"/>

<!-- CONTENT -->
<div class="content">

<div class="content-card">

<h4 class="fw-bold mb-4 text-center" style="color:#0D1B2A;">
    Car Transaction List
</h4>

<div class="table-responsive">
<table class="table table-hover align-middle">

<thead>
<tr>
    <th>ID</th>
    <th>Listing</th>
    <th>User</th>
    <th>Final Price</th>
    <th>Payment Mode</th>
    <th>Status</th>
    <th>Completed At</th>
    <th>Action</th>
</tr>
</thead>

<tbody>

<c:forEach var="t" items="${allTransaction}">
<tr>
    <td>${t.transactionId}</td>
    <td>${t.listingId}</td>
    <td>${t.userId}</td>
    <td>₹ ${t.finalPrice}</td>
    <td>${t.paymentMode}</td>

    <td>
        <c:choose>
            <c:when test="${t.transactionStatus == 'COMPLETED'}">
                <span class="badge badge-completed">COMPLETED</span>
            </c:when>
            <c:when test="${t.transactionStatus == 'INITIATED'}">
                <span class="badge badge-initiated">INITIATED</span>
            </c:when>
            <c:otherwise>
                <span class="badge badge-cancelled">CANCELLED</span>
            </c:otherwise>
        </c:choose>
    </td>

    <td>${t.completedAt}</td>

    <td>
        <a href="viewCarTransaction?transactionId=${t.transactionId}"
           class="btn btn-sm btn-view">
           View
        </a>

        <a href="deleteTransaction?transactionId=${t.transactionId}"
           class="btn btn-sm btn-delete"
           onclick="return confirm('Are you sure?')">
           Delete
        </a>
    </td>

</tr>
</c:forEach>

<c:if test="${empty allTransaction}">
<tr>
    <td colspan="8" class="text-center text-muted py-4">
        No Transactions Found
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
