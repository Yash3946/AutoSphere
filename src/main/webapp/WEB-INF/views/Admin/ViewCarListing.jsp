<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<title>View Car Listing</title>

<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">

<style>
.label{
font-weight:600;
color:#555;
}
</style>

</head>

<body>

<div class="container mt-4">

<div class="card shadow">

<div class="card-header bg-dark text-white">
<h4 class="mb-0">Car Listing Details</h4>
</div>

<div class="card-body">

<c:if test="${not empty carListing}">

<table class="table table-borderless">

<tr>
<td class="label">Listing ID</td>
<td>${carListing.listingId}</td>
</tr>

<tr>
<td class="label">Seller ID</td>
<td>${carListing.userId}</td>
</tr>

<tr>
<td class="label">Brand</td>
<td>${carListing.brandName}</td>
</tr>

<tr>
<td class="label">Model</td>
<td>${carListing.modelName}</td>
</tr>

<tr>
<td class="label">Variant</td>
<td>${carListing.variantName}</td>
</tr>

<tr>
<td class="label">City</td>
<td>${carListing.city}</td>
</tr>

<tr>
<td class="label">KMS Driven</td>
<td>${carListing.kmsDriven}</td>
</tr>

<tr>
<td class="label">Year</td>
<td>${carListing.year}</td>
</tr>

<tr>
<td class="label">Ownership</td>
<td>${carListing.ownership}</td>
</tr>

<tr>
<td class="label">Price</td>
<td>₹ ${carListing.price}</td>
</tr>

<tr>
<td class="label">Status</td>
<td>
<span class="badge bg-success">Active</span>
</td>
</tr>

<tr>
<td class="label">Created At</td>
<td>${carListing.createdAt}</td>
</tr>

</table>

</c:if>

<c:if test="${empty carListing}">

<div class="alert alert-warning">
No Car Listing Found.
</div>

</c:if>

</div>

<div class="card-footer text-end">

<a href="allCarList" class="btn btn-secondary">Back</a>

<a href="editCarListing?listingId=${carListing.listingId}"
class="btn btn-warning">

Edit

</a>

</div>

</div>

</div>

</body>
</html>