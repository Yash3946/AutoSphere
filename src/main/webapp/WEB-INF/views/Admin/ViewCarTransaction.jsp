<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>Car Transaction Details</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

<style>
.big-card {
    max-width: 850px;
    width: 100%;
    margin: auto;
    border-radius: 16px;
    box-shadow: 0 15px 40px rgba(0,0,0,0.2);
}

.big-card .card-header {
    padding: 15px 25px;
    font-size: 20px;
    font-weight: 600;
}

.big-card .card-body {
    padding: 25px 30px;
}

.big-card .card-body p {
    margin-bottom: 12px;
    font-size: 16px;
}

.big-card .card-footer {
    padding: 15px 25px;
}

.action-btns a {
    margin-left: 8px;
}
</style>

<jsp:include page="AdminCSS.jsp"/>

</head>

<body>

<jsp:include page="AdminHeader.jsp"/>
<jsp:include page="AdminSidebar.jsp"/>

<div style="margin-left:260px; margin-top:90px;"
     class="container d-flex justify-content-center">

    <div class="card big-card">

        <div class="card-header bg-dark text-white">
            Car Transaction Details
        </div>

        <div class="card-body">

            <p><b>Transaction ID:</b> ${carTransaction.transactionId}</p>
            <p><b>Listing ID:</b> ${carTransaction.listingId}</p>
            <p><b>User ID:</b> ${carTransaction.userId}</p>
            <p><b>Final Price:</b> ₹ ${carTransaction.finalPrice}</p>

            <p><b>Payment Mode:</b> ${carTransaction.paymentMode}</p>

            <p><b>Status:</b>
                <span class="badge 
                    ${carTransaction.transactionStatus == 'FAILED' ? 'bg-danger' : 
                      carTransaction.transactionStatus == 'SUCCESS' ? 'bg-success' : 'bg-warning'}">
                    ${carTransaction.transactionStatus}
                </span>
            </p>

            <p><b>Completed At:</b> ${carTransaction.completedAt}</p>

        </div>

        <div class="card-footer d-flex justify-content-end action-btns">

            <!-- BACK -->
            <a href="listCarTransaction" class="btn btn-secondary">
                <i class="bi bi-arrow-left"></i> Back
            </a>

            <!-- EDIT -->
            <a href="editCarTransaction?transactionId=${carTransaction.transactionId}" 
               class="btn btn-warning">
                <i class="bi bi-pencil-square"></i> Edit
            </a>

            <!-- DELETE -->
            <a href="deleteTransaction?transactionId=${carTransaction.transactionId}" 
               class="btn btn-danger"
               onclick="return confirm('Are you sure you want to delete this transaction?')">
                <i class="bi bi-trash"></i> Delete
            </a>

        </div>

    </div>

</div>

</body>
</html>