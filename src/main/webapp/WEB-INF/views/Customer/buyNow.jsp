<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Car Booking</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>

body{
height:100vh;
background:linear-gradient(135deg,#1f3c58,#8fbcc9);
display:flex;
align-items:center;
justify-content:center;
font-family:'Segoe UI',sans-serif;
}

.booking-box{
width:800px;
background:rgba(255,255,255,0.1);
backdrop-filter:blur(15px);
padding:40px;
border-radius:20px;
box-shadow:0 15px 40px rgba(0,0,0,0.2);
color:white;
}

.form-control{
border-radius:10px;
}

.confirm-btn{
background:linear-gradient(90deg,#ff7b00,#ffb700);
border:none;
padding:12px;
border-radius:10px;
font-weight:bold;
color:white;
}

.confirm-btn:hover{
opacity:0.9;
}

.back-btn{
background:#6c757d;
border:none;
padding:12px;
border-radius:10px;
font-weight:bold;
color:white;
margin-top:10px;
}

.back-btn:hover{
opacity:0.9;
}

</style>

</head>

<body>

<div class="booking-box">

<h3 class="text-center mb-4">🚗 Confirm Your Car Booking</h3>

<form action="confirmBooking" method="post">

<!-- ✅ FIXED hidden field -->
<input type="hidden" name="listingId" value="${carListing.listingId}">

<div class="row">

<!-- Buyer -->
<div class="col-md-6 mb-3">
<label>Buyer Name</label>
<input type="text" class="form-control"
value="${sessionScope.user.firstName} ${sessionScope.user.lastName}" readonly>
</div>

<!-- Amount -->
<div class="col-md-6 mb-3">
<label>Booking Amount</label>
<input type="text" class="form-control"
value="₹10,000 Advance Booking" readonly>
</div>

<!-- ✅ FIXED Car Name -->
<div class="col-md-6 mb-3">
<label>Car Name</label>
<input type="text" class="form-control"
value="${carListing.brandName} ${carListing.modelName}" readonly>
</div>

<!-- Payment -->
<div class="col-md-6 mb-3">
<label>Payment Method</label>
<select class="form-control" name="paymentMethod">
<option>Card</option>
<option>UPI</option>
<option>Net Banking</option>
</select>
</div>

<!-- ✅ FIXED Variant -->
<div class="col-md-6 mb-3">
<label>Variant Name</label>
<input type="text" class="form-control"
value="${carListing.variantName}" readonly>
</div>

<!-- Card -->
<div class="col-md-6 mb-3">
<label>Card Number</label>
<input type="text" class="form-control" placeholder="XXXX XXXX XXXX XXXX">
</div>

<div class="col-md-3 mb-3">
<label>Expiry</label>
<input type="text" class="form-control" placeholder="MM/YY">
</div>

<div class="col-md-3 mb-3">
<label>CVV</label>
<input type="text" class="form-control" placeholder="CVV">
</div>

</div>

<button class="btn confirm-btn w-100 mt-3">
Confirm Booking ₹10,000
</button>

</form>

<!-- Back -->
<a href="CustomerCarList" class="btn back-btn w-100">
⬅ Back to Car List
</a>

</div>

</body>
</html>