<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Transaction</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<jsp:include page="AdminCSS.jsp"/>

<style>
body{
    background:#F4F6F9;
    font-family:'Segoe UI', sans-serif;
}

.content{
    margin-left:260px;
    padding:30px;
}

.card{
    border-radius:15px;
    box-shadow:0 10px 25px rgba(0,0,0,0.08);
}
</style>

</head>

<body>

<jsp:include page="AdminHeader.jsp"/>
<jsp:include page="AdminSidebar.jsp"/>

<div class="content">

<div class="card p-4">

<h4 class="mb-4 text-center fw-bold">Transaction Details</h4>

<table class="table table-bordered">

<tr>
    <th>ID</th>
    <td>${carTransaction.transactionId}</td>
</tr>

<tr>
    <th>Car</th>
    <td>${carTransaction.listing.modelName}</td>
</tr>

<tr>
    <th>Buyer</th>
    <td>
        ${carTransaction.buyer.firstName}
        ${carTransaction.buyer.lastName}
    </td>
</tr>

<tr>
    <th>Seller</th>
    <td>
        ${carTransaction.seller.firstName}
        ${carTransaction.seller.lastName}
    </td>
</tr>

<tr>
    <th>Final Price</th>
    <td>₹ ${carTransaction.finalPrice}</td>
</tr>

<tr>
    <th>Payment Mode</th>
    <td>${carTransaction.paymentMode}</td>
</tr>

<tr>
    <th>Status</th>
    <td>${carTransaction.transactionStatus}</td>
</tr>

<tr>
    <th>Completed At</th>
    <td>${carTransaction.completedAt}</td>
</tr>

</table>

<div class="text-center mt-3">
    <a href="listCarTransaction" class="btn btn-primary">Back</a>
</div>

</div>

</div>

<jsp:include page="AdminFooter.jsp"/>

</body>
</html>