<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>AutoSphere Admin Dashboard</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<style>

body{
margin:0;
background:#f1f5f9;
font-family:'Segoe UI',sans-serif;
}

/* SIDEBAR */

.sidebar{
width:260px;
position:fixed;
top:0;
bottom:0;
left:0;
background:linear-gradient(180deg,#0f172a,#1e293b);
color:white;
overflow-y:auto;
}

.sidebar h5{
padding:22px;
border-bottom:1px solid rgba(255,255,255,0.08);
}

.sidebar a{
display:block;
padding:14px 22px;
color:#cbd5e1;
text-decoration:none;
transition:0.3s;
}

.sidebar a:hover{
background:#334155;
color:white;
padding-left:28px;
}

/* HEADER */

.header{
position:fixed;
top:0;
left:260px;
right:0;
height:70px;
background:#0b1220;
color:white;
padding:0 30px;
display:flex;
align-items:center;
justify-content:space-between;
box-shadow:0 4px 15px rgba(0,0,0,0.2);
}

/* CONTENT */

.content{
margin-left:260px;
margin-top:90px;
padding:40px;
}

/* STAT CARDS */

.stat-card{
border-radius:16px;
padding:25px;
display:flex;
align-items:center;
justify-content:space-between;
color:white;
box-shadow:0 10px 25px rgba(0,0,0,0.15);
transition:0.3s;
}

.stat-card:hover{
transform:translateY(-6px);
}

.users{
background:linear-gradient(135deg,#3b82f6,#2563eb);
}

.cars{
background:linear-gradient(135deg,#10b981,#059669);
}

.bookings{
background:linear-gradient(135deg,#f59e0b,#d97706);
}

.revenue{
background:linear-gradient(135deg,#8b5cf6,#6d28d9);
}

.stat-icon{
width:55px;
height:55px;
border-radius:12px;
display:flex;
align-items:center;
justify-content:center;
font-size:22px;
background:rgba(255,255,255,0.2);
}

/* CHART CARD */

.chart-card{
background:white;
border-radius:16px;
padding:30px;
box-shadow:0 8px 25px rgba(0,0,0,0.08);
}

/* SMALL ANALYTICS */

.small-card{
border-radius:14px;
padding:20px;
text-align:center;
color:white;
box-shadow:0 6px 20px rgba(0,0,0,0.15);
}

.box1{
background:linear-gradient(135deg,#06b6d4,#0891b2);
}

.box2{
background:linear-gradient(135deg,#fb7185,#e11d48);
}

.box3{
background:linear-gradient(135deg,#22c55e,#15803d);
}

.small-card h4{
font-weight:700;
}

</style>

</head>

<body>

<!-- SIDEBAR -->

<div class="sidebar">

<h5>AutoSphere</h5>

<a href="admin-dashboard"><i class="bi bi-speedometer2"></i> Dashboard</a>
<a href="listUser"><i class="bi bi-people"></i> Users</a>
<a href="listbrand"><i class="bi bi-tags"></i> Brand</a>
<a href="newcartype"><i class="bi bi-box"></i> Car Model</a>
<a href="listCarVariant"><i class="bi bi-car-front"></i> Car Variant</a>
<a href="allCarList"><i class="bi bi-list"></i> Car Listing</a>
<a href="listCarOffer"><i class="bi bi-cash-coin"></i> Offers</a>
<a href="listCarTransaction"><i class="bi bi-receipt"></i> Transactions</a>
<a href="listCarReports"><i class="bi bi-flag"></i> Reports</a>
<a href="listCarImage"><i class="bi bi-image"></i> Images</a>
<a href="listReviewRating"><i class="bi bi-star"></i> Ratings</a>
<a href="listSavedListing"><i class="bi bi-bookmark"></i> Saved</a>

</div>

<!-- HEADER -->

<div class="header">

<h5>AutoSphere Analytics</h5>

<div>
Welcome, <b>${sessionScope.user.firstName}</b>

<a href="logout" class="btn btn-sm btn-light ms-3">
Logout
</a>

</div>

</div>

<!-- CONTENT -->

<div class="content">

<h3 class="mb-4">Dashboard Overview</h3>

<!-- STAT CARDS -->

<div class="row g-4 mb-5">

<!-- USERS -->
<div class="col-md-3">
<div class="stat-card users">
<div>
<h4>${totalUser}</h4>
<p>Total Users</p>
</div>
<div class="stat-icon">
<i class="bi bi-people"></i>
</div>
</div>
</div>

<!-- CARS -->
<div class="col-md-3">
<div class="stat-card cars">
<div>
<h4>${totalAvailable}</h4>
<p>Listed Cars</p>
</div>
<div class="stat-icon">
<i class="bi bi-car-front"></i>
</div>
</div>
</div>

<!-- BOOKINGS -->
<div class="col-md-3">
<div class="stat-card bookings">
<div>
<h4>${totalTransaction}</h4>
<p>Bookings</p>
</div>
<div class="stat-icon">
<i class="bi bi-receipt"></i>
</div>
</div>
</div>

<!-- REVENUE -->
<div class="col-md-3">
<div class="stat-card revenue">
<div>
<h4>₹ ${totalRevenue}</h4>
<p>Total Revenue</p>
</div>
<div class="stat-icon">
<i class="bi bi-cash-coin"></i>
</div>
</div>
</div>

</div>


<!-- CHART + ANALYTICS -->

<div class="row">

<div class="col-md-8">

<div class="chart-card">

<canvas id="dashboardChart"></canvas>

</div>

</div>

<div class="col-md-4">

<div class="row g-3">

<div class="col-12">
<div class="small-card box1">
<h4>70%</h4>
<p>Completion</p>
</div>
</div>

<div class="col-12">
<div class="small-card box2">
<h4>770</h4>
<p>Views</p>
</div>
</div>

<div class="col-12">
<div class="small-card box3">
<h4>Daily</h4>
<p>Traffic</p>
</div>
</div>

</div>

</div>

</div>

</div>


<script>

const ctx=document.getElementById('dashboardChart');

new Chart(ctx,{

type:'bar',

data:{

labels:['Users','Cars','Bookings'],

datasets:[{

data:[
${totalUser},
${totalAvailable},
${totalTransaction}
],

backgroundColor:[
'#3b82f6',
'#10b981',
'#f59e0b'
],

borderRadius:8

}]

},

options:{
responsive:true,
plugins:{legend:{display:false}}
}

});

</script>

</body>


</html>