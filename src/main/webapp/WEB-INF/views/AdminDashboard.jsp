<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Admin Dashboard</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

<style>
html,body{
	height:100%;
	margin:0;
	display:flex;
	flex-direction:column;
	background:#F4F6F9;
	font-family:'Segoe UI', sans-serif;
}

/* ===== Sidebar Styling Only (Structure Same) ===== */
.sidebar{
	width:260px;
	height:100vh;
	position:fixed;
	background:linear-gradient(180deg,#0D1B2A,#1B263B);
	color:white;
	overflow-y:auto;
	box-shadow:3px 0 15px rgba(0,0,0,0.2);
}

.sidebar h5{
	color:white;
	font-weight:600;
}

.sidebar a{
	display:block;
	padding:12px 20px;
	color:#ADB5BD;
	text-decoration:none;
	transition:0.3s;
	font-size:14px;
}

.sidebar a:hover{
	background:#1B263B;
	color:white;
	padding-left:28px;
}

.sidebar .dropdown-menu{
	background:#1B263B;
	border:none;
}

.sidebar .dropdown-item{
	color:#ADB5BD;
}

.sidebar .dropdown-item:hover{
	background:#00B4D8;
	color:white;
}

/* ===== Header ===== */
.header{
	margin-left:260px;
	background:linear-gradient(90deg,#0D1B2A,#1B263B);
	color:white;
	padding:15px 25px;
	display:flex;
	justify-content:space-between;
	align-items:center;
	box-shadow:0 3px 10px rgba(0,0,0,0.1);
}

/* ===== Content ===== */

.content{
	margin-left:260px;
	padding:30px;
	flex:1;
}

.card{
	border:none;
	border-radius:15px;
	transition:0.3s;
}

.card:hover{
	transform:translateY(-5px);
	box-shadow:0 8px 20px rgba(0,0,0,0.15);
}

/* ===== Footer ===== */
.footer{
	margin-left:260px;
	background:#0D1B2A;
	color:white;
	text-align:center;
	padding:15px;
}
</style>
</head>
<body>

<!-- ================= SIDEBAR (YOUR ORIGINAL CODE SAME) ================= -->
<div class="sidebar">
    <h5 class="text-center py-3 border-bottom">Dashboard</h5>

    <a href="admin-dashboard">
        <i class="bi bi-speedometer2 me-2"></i> Dashboard
    </a>

    <!-- USERS -->
    <div class="dropdown">
    <a class="dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">
        <i class="bi bi-people me-2"></i> Users
    </a>
    <ul class="dropdown-menu">
        <li><a class="dropdown-item" href="signup">
            <i class="bi bi-person-plus me-2"></i> Signup User</a></li>
        <li><a class="dropdown-item" href="listUser">
            <i class="bi bi-list me-2"></i> List Users</a></li>
    </ul>
    </div>

    <!-- BRAND -->
    <div class="dropdown">
    <a class="dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">
        <i class="bi bi-tags me-2"></i> Brand
    </a>
    <ul class="dropdown-menu">
        <li><a class="dropdown-item" href="addbrand">
            <i class="bi bi-plus-circle me-2"></i> Add Brand</a></li>
        <li><a class="dropdown-item" href="listbrand">
            <i class="bi bi-list me-2"></i> List Brand</a></li>
    </ul>
    </div>

    <a href="newcartype">
        <i class="bi bi-box me-2"></i> New Car Model Type
    </a>

    <!-- Car Variant -->
    <div class="dropdown">
    <a class="dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">
        <i class="bi bi-car-front me-2"></i> Car Variant
    </a>
    <ul class="dropdown-menu">
        <li><a class="dropdown-item" href="newCarVariant">
            <i class="bi bi-plus-circle me-2"></i> Add Car Variant</a></li>
        <li><a class="dropdown-item" href="listCarVariant">
            <i class="bi bi-list me-2"></i> List Car Variant</a></li>
    </ul>
    </div>

    <!-- Car Feature -->
    <div class="dropdown">
    <a class="dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">
        <i class="bi bi-gear me-2"></i> Car Feature
    </a>
    <ul class="dropdown-menu">
        <li><a class="dropdown-item" href="carFeatures">
            <i class="bi bi-plus-circle me-2"></i> Add Car Feature</a></li>
        <li><a class="dropdown-item" href="listCarFeatures">
            <i class="bi bi-list me-2"></i> List Car Feature</a></li>
    </ul>
    </div>

    <!-- Car Listing -->
    <div class="dropdown">
    <a class="dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">
        <i class="bi bi-car-front me-2"></i> Car Listing
    </a>
    <ul class="dropdown-menu">
        <li><a class="dropdown-item" href="carListing">
            <i class="bi bi-plus-circle me-2"></i> New Car Listing</a></li>
        <li><a class="dropdown-item" href="allCarList">
            <i class="bi bi-list me-2"></i> View Car Listing</a></li>
    </ul>
    </div>

    <!-- Car Offer -->
    <div class="dropdown">
    <a class="dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">
        <i class="bi bi-cash-coin me-2"></i> Car Offer
    </a>
    <ul class="dropdown-menu">
        <li><a class="dropdown-item" href="listCarOffer">
            <i class="bi bi-list me-2"></i> List Car Offer</a></li>
    </ul>
    </div>

    <!-- Car Transaction -->
    <div class="dropdown">
    <a class="dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">
        <i class="bi bi-receipt me-2"></i> Car Transaction
    </a>
    <ul class="dropdown-menu">
        <li><a class="dropdown-item" href="carTransaction">
            <i class="bi bi-plus-circle me-2"></i> New Car Transaction</a></li>
        <li><a class="dropdown-item" href="listCarTransaction">
            <i class="bi bi-list me-2"></i> List Car Transaction</a></li>
    </ul>
    </div>

    <!-- Car Reports -->
    <div class="dropdown">
    <a class="dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">
        <i class="bi bi-flag me-2"></i> Car Reports
    </a>
    <ul class="dropdown-menu">
        <li><a class="dropdown-item" href="carReports">
            <i class="bi bi-plus-circle me-2"></i> New Car Report</a></li>
        <li><a class="dropdown-item" href="listCarReports">
            <i class="bi bi-list me-2"></i> List Car Reports</a></li>
    </ul>
    </div>

    <!-- Car Images -->
    <div class="dropdown">
    <a class="dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">
        <i class="bi bi-image me-2"></i> Car Images
    </a>
    <ul class="dropdown-menu">
        <li><a class="dropdown-item" href="carImage">
            <i class="bi bi-plus-circle me-2"></i> New Car Image</a></li>
        <li><a class="dropdown-item" href="listCarImage">
            <i class="bi bi-list me-2"></i> List Car Images</a></li>
    </ul>
    </div>

    <a href="listReviewRating">
        <i class="bi bi-star me-2"></i> Car Review Rating
    </a>  

    <a href="listSavedListing">
        <i class="bi bi-bookmark me-2"></i> Car Saved List  
    </a>  
</div>

<!-- ================= HEADER ================= -->
<div class="header">
	<h5>AutoSphere Admin Panel</h5>
	<div>
		Welcome, <b>${sessionScope.user.firstName}</b>
		<a href="logout" class="btn btn-sm btn-outline-light ms-3">
			<i class="bi bi-box-arrow-right"></i> Logout
		</a>
	</div>
</div>

<!-- ================= CONTENT ================= -->
<div class="content">
	<h2 class="fw-bold mb-4" style="color:#0D1B2A;">Dashboard Overview</h2>

	<div class="row g-4">
		<div class="col-md-3">
			<div class="card text-white shadow"
				style="background:linear-gradient(135deg,#14213D,#1D3557);">
				<div class="card-body">
					<h6>Total Users</h6>
					<h3>120</h3>
				</div>
			</div>
		</div>

		<div class="col-md-3">
			<div class="card text-white shadow"
				style="background:linear-gradient(135deg,#003566,#001D3D);">
				<div class="card-body">
					<h6>Listed Cars</h6>
					<h3>340</h3>
				</div>
			</div>
		</div>

		<div class="col-md-3">
			<div class="card text-white shadow"
				style="background:linear-gradient(135deg,#005F73,#0A9396);">
				<div class="card-body">
					<h6>Bookings</h6>
					<h3>86</h3>
				</div>
			</div>
		</div>

		<div class="col-md-3">
			<div class="card text-white shadow"
				style="background:linear-gradient(135deg,#03045E,#0077B6);">
				<div class="card-body">
					<h6>Total Revenue</h6>
					<h3>₹ 12,40,000</h3>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- ================= FOOTER ================= -->
<div class="footer">
	© 2026 Admin Panel | Made by Yash
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
