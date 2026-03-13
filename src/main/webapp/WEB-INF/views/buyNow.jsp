<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>

<title>Car Booking</title>

<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">

<style>

body{
background:#eef2f7;
height:100vh;
display:flex;
align-items:center;
justify-content:center;
font-family:Segoe UI;
}

.booking-card{
width:900px;
border-radius:12px;
}

.card-header{
background:#1e3a5f;
color:white;
font-weight:600;
letter-spacing:1px;
}

.section-title{
font-size:14px;
font-weight:600;
color:#444;
margin-bottom:5px;
}

.form-control{
height:38px;
font-size:14px;
}

.confirm-btn{
background:#1e3a5f;
border:none;
}

.confirm-btn:hover{
background:#16314d;
}

.amount-box{
background:#f4f6f9;
border-radius:8px;
padding:10px;
font-weight:600;
color:#2e7d32;
text-align:center;
}

</style>

</head>

<body>

<div class="card booking-card shadow">

<div class="card-header text-center">
🚗 Car Booking
</div>

<div class="card-body">

<form action="confirmBooking" method="post">

<div class="row">

<!-- LEFT SIDE -->

<div class="col-md-6">

<div class="section-title">Buyer ID</div>
<input type="text" class="form-control mb-2"
value="${buyer.userId}" name="buyerId" readonly>

<div class="section-title">Buyer Name</div>
<input type="text" class="form-control mb-2"
value="${buyer.firstName} ${buyer.lastName}" readonly>

<div class="section-title">Seller ID</div>
<input type="text" class="form-control mb-2"
value="${seller.userId}" name="sellerId" readonly>

<div class="section-title">Seller Name</div>
<input type="text" class="form-control mb-2"
value="${seller.firstName} ${seller.lastName}" readonly>

<div class="section-title">Car Name</div>
<input type="text" class="form-control mb-2"
value="${car.carName}" name="carName" readonly>

<div class="section-title">Variant</div>
<input type="text" class="form-control"
value="${car.variantName}" name="variantName" readonly>

</div>

<!-- RIGHT SIDE -->

<div class="col-md-6">

<div class="section-title">Booking Amount</div>

<div class="amount-box mb-3">
₹10,000 Advance Booking
</div>

<input type="hidden" name="bookingAmount" value="10000">

<div class="section-title">Payment Method</div>

<select class="form-select mb-3" name="paymentMethod" required>
<option value="">Select Payment</option>
<option value="Credit Card">Credit Card</option>
</select>

<div class="section-title">Card Number</div>

<input type="text"
class="form-control mb-3"
name="cardNumber"
placeholder="XXXX XXXX XXXX XXXX"
required>

<div class="row">

<div class="col-md-6">
<div class="section-title">Expiry</div>
<input type="text"
class="form-control"
name="expiryDate"
placeholder="MM/YY"
required>
</div>

<div class="col-md-6">
<div class="section-title">CVV</div>
<input type="password"
class="form-control"
name="cvv"
placeholder="CVV"
required>
</div>

</div>

<br>

<div class="d-grid">

<button type="submit"
class="btn confirm-btn text-white btn-lg">

Confirm Booking ₹10,000

</button>

</div>

</div>

</div>

</form>

</div>

</div>

</body>
</html>