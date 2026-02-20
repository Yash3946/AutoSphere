<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Car Transaction Details</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">

    <style>
        .label {
            font-weight: 600;
            color: #555;
        }
    </style>
</head>

<body>
<div class="container mt-4">

    <div class="card shadow">
        <div class="card-header bg-dark text-white">
            <h4 class="mb-0">Car Transaction Details</h4>
        </div>

        <div class="card-body">
            <div class="row">

                <!-- Variant Info -->
                <div class="col-md-12">
                    
                    
                    <table class="table table-bordered">
    <tr>
        <td class="label">Transaction ID</td>
        <td>${carTransaction.transactionId}</td>
    </tr>
    <tr>
        <td class="label">Listing ID</td>
        <td>${carTransaction.listingId}</td>
    </tr>
    <tr>
        <td class="label">User ID</td>
        <td>${carTransaction.userId}</td>
    </tr>
    <tr>
        <td class="label">Final Price</td>
        <td>${carTransaction.finalPrice}</td>
    </tr>
    <tr>
        <td class="label">Payment Mode</td>
        <td>${carTransaction.paymentMode}</td>
    </tr>
    <tr>
        <td class="label">Transaction Status</td>
        <td>${carTransaction.transactionStatus}</td>
    </tr>
    <tr>
        <td class="label">Completed At</td>
        <td>${carTransaction.completedAt}</td>
    </tr>
</table>

                </div>

            </div>
        </div>

        <div class="card-footer text-end">
            <a href="listCarVariant" class="btn btn-secondary">Back</a>
            <a href="viewCarTransaction?transactionId=${carTransaction.transactionId}" class="btn btn-warning">
                Edit
            </a>
        </div>
    </div>

</div>
</body>
</html> 