<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>

<title>Car Booking</title>

<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">

<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<style>

*{
font-family:'Montserrat',sans-serif;
}

/* Background */

body{
height:100vh;
display:flex;
align-items:center;
justify-content:center;

background:linear-gradient(135deg,#1d3557,#457b9d,#a8dadc);
}

/* Glass Card */

.booking-card{

width:950px;

background:rgba(255,255,255,0.15);

backdrop-filter:blur(10px);

border-radius:18px;

box-shadow:0 15px 40px rgba(0,0,0,0.25);

color:white;

}

/* Header */

.card-header{

background:transparent;

border:none;

text-align:center;

font-size:24px;

font-weight:600;

letter-spacing:1px;

padding:20px;

}

/* Labels */

.section-title{

font-size:13px;

font-weight:600;

margin-bottom:4px;

color:#f1f1f1;

}

/* Inputs */

.form-control{

border-radius:10px;

border:none;

height:42px;

font-size:14px;

background:rgba(255,255,255,0.9);

}

/* Amount Box */

.amount-box{

background:rgba(255,255,255,0.9);

color:#1b5e20;

border-radius:10px;

padding:12px;

text-align:center;

font-weight:600;

font-size:18px;

}

/* Button */

.confirm-btn{

background:linear-gradient(135deg,#ff7b00,#ffb703);

border:none;

border-radius:12px;

font-size:18px;

font-weight:600;

color:white;

padding:10px;

transition:0.3s;

}

.confirm-btn:hover{

transform:scale(1.05);

background:linear-gradient(135deg,#ff8800,#ffbe0b);

}

/* Card body spacing */

.card-body{

padding:30px;

}

</style>

</head>

<body>

<div class="card booking-card">

<div class="card-header">

🚗 Confirm Your Car Booking

</div>

<div class="card-body">

<form action="confirmBooking" method="post">

<input type="hidden" name="listingId" value="${carListing.listingId}">
<input type="hidden" name="bookingAmount" value="10000">

<div class="row">

<!-- LEFT SIDE -->

<div class="col-md-6">

<div class="section-title">Buyer Name</div>

<input type="text" class="form-control mb-3"

value="${sessionScope.user.firstName} ${sessionScope.user.lastName}" readonly>

<div class="section-title">Car Name</div>

<input type="text" class="form-control mb-3"

value="${carListing.brandName} ${carListing.modelName}" readonly>

<div class="section-title">Variant Name</div>

<input type="text" class="form-control mb-3"

value="${carListing.variantName}" readonly>

</div>

<!-- RIGHT SIDE -->

<div class="col-md-6">

<div class="section-title">Booking Amount</div>

<div class="amount-box mb-3">

₹10,000 Advance Booking

</div>

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

class="btn confirm-btn">

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