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

/* ================= GLOBAL ================= */

body{
margin:0;
background:#F8FAFC;
font-family:'Inter','Segoe UI',sans-serif;
color:#0f172a;
}

/* ================= SIDEBAR ================= */

.sidebar{
width:260px;
position:fixed;
top:0;
bottom:0;
left:0;
background:#0F172A;
color:white;
overflow-y:auto;
box-shadow:4px 0 20px rgba(0,0,0,0.35);
}

/* LOGO */

.logo-box{
text-align:center;
padding:20px;
border-bottom:1px solid rgba(255,255,255,0.05);
}

.logo-circle{
width:60px;
height:60px;
border-radius:50%;
background:#1E293B;
display:flex;
align-items:center;
justify-content:center;
margin:auto;
}

.logo-img{
width:38px;
}

/* MENU */

.menu-item{
display:flex;
align-items:center;
gap:12px;
padding:15px 24px;
color:#CBD5F5;
text-decoration:none;
transition:.25s;
border-left:3px solid transparent;
}

.menu-item i{
font-size:18px;
}

.menu-item:hover{
background:#1E293B;
color:white;
padding-left:28px;
}

.menu-item.active{
background:#1E293B;
border-left:3px solid #3B82F6;
color:white;
}

/* ================= HEADER ================= */

.header{
position:fixed;
top:0;
left:260px;
right:0;
height:70px;
background:#020617;
color:white;
padding:0 30px;
display:flex;
align-items:center;
justify-content:space-between;
box-shadow:0 4px 15px rgba(0,0,0,0.2);
}

/* ================= CONTENT ================= */

.content{
margin-left:260px;
margin-top:90px;
padding:40px;
}

/* ================= DASHBOARD CARDS ================= */

.stat-card{
border-radius:18px;
padding:26px;
display:flex;
align-items:center;
justify-content:space-between;
color:white;
box-shadow:0 12px 30px rgba(0,0,0,0.15);
transition:.3s;
cursor:pointer;
}

.stat-card:hover{
transform:translateY(-8px) scale(1.02);
}

/* CARD COLORS */

.users{
background:linear-gradient(135deg,#3B82F6,#2563EB);
}

.cars{
background:linear-gradient(135deg,#10B981,#059669);
}

.bookings{
background:linear-gradient(135deg,#F59E0B,#EA580C);
}

.revenue{
background:linear-gradient(135deg,#8B5CF6,#6D28D9);
}

.stat-icon{
width:55px;
height:55px;
border-radius:12px;
display:flex;
align-items:center;
justify-content:center;
font-size:22px;
background:rgba(255,255,255,0.25);
}

/* ================= CHART ================= */

.chart-card{
background:white;
border-radius:18px;
padding:30px;
box-shadow:0 10px 25px rgba(0,0,0,0.08);
}

/* ================= SMALL CARDS ================= */

.small-card{
border-radius:16px;
padding:22px;
text-align:center;
color:white;
box-shadow:0 8px 20px rgba(0,0,0,0.2);
}

.box1{
background:linear-gradient(135deg,#06B6D4,#0284C7);
}

.box2{
background:linear-gradient(135deg,#F43F5E,#E11D48);
}

.box3{
background:linear-gradient(135deg,#22C55E,#15803D);
}

.small-card h4{
font-weight:700;
}

</style>

</head>

<body>

<!-- ================= SIDEBAR ================= -->

<div class="sidebar">

<div class="logo-box">
<div class="logo-circle">
<img src="/images/defender-logo.png" class="logo-img">
</div>
</div>

<a href="admin-dashboard" class="menu-item active"><i class="bi bi-speedometer2"></i> Dashboard</a>
<a href="listUser" class="menu-item"><i class="bi bi-people"></i> Users</a>
<a href="listbrand" class="menu-item"><i class="bi bi-tags"></i> Brand</a>
<a href="newcartype" class="menu-item"><i class="bi bi-box"></i> Car Model</a>
<a href="listCarVariant" class="menu-item"><i class="bi bi-car-front"></i> Car Variant</a>
<a href="allCarList" class="menu-item"><i class="bi bi-list"></i> Car Listing</a>
<a href="listCarOffer" class="menu-item"><i class="bi bi-cash-coin"></i> Offers</a>
<a href="listCarTransaction" class="menu-item"><i class="bi bi-receipt"></i> Transactions</a>
<a href="listCarReports" class="menu-item"><i class="bi bi-flag"></i> Reports</a>
<a href="listCarImage" class="menu-item"><i class="bi bi-image"></i> Images</a>
<a href="listReviewRating" class="menu-item"><i class="bi bi-star"></i> Ratings</a>
<a href="listSavedListing" class="menu-item"><i class="bi bi-bookmark"></i> Saved</a>

</div>

<!-- ================= HEADER ================= -->

<div class="header">

<h5>AutoSphere Analytics</h5>

<div>
Welcome, <b>${sessionScope.user.firstName}</b>

<a href="logout" class="btn btn-sm btn-light ms-3">
Logout
</a>

</div>

</div>

<!-- ================= CONTENT ================= -->

<div class="content">

<h3 class="mb-4">Dashboard Overview</h3>

<div class="row g-4 mb-5">

<div class="col-md-3">
<a href="listUser" style="text-decoration:none">
<div class="stat-card users">
<div>
<h4 id="usersCount">${totalUser}</h4>
<p>Total Users</p>
</div>
<div class="stat-icon"><i class="bi bi-people"></i></div>
</div>
</a>
</div>

<div class="col-md-3">
<a href="allCarList" style="text-decoration:none">
<div class="stat-card cars">
<div>
<h4 id="carsCount">${totalAvailable}</h4>
<p>Listed Cars</p>
</div>
<div class="stat-icon"><i class="bi bi-car-front"></i></div>
</div>
</a>
</div>

<div class="col-md-3">
<a href="listCarTransaction" style="text-decoration:none">
<div class="stat-card bookings">
<div>
<h4 id="bookingCount">${totalTransaction}</h4>
<p>Bookings</p>
</div>
<div class="stat-icon"><i class="bi bi-receipt"></i></div>
</div>
</a>
</div>

<div class="col-md-3">
<a href="listCarTransaction" style="text-decoration:none">
<div class="stat-card revenue">
<div>
<h4 id="revenueCount">₹ ${totalRevenue}</h4>
<p>Total Revenue</p>
</div>
<div class="stat-icon"><i class="bi bi-cash-coin"></i></div>
</div>
</a>
</div>

</div>

<div class="row">

<div class="col-md-8">

<div class="chart-card">
<canvas id="monthlyChart"></canvas>
</div>

</div>

<div class="col-md-4">

<div class="chart-card">
<canvas id="pieChart"></canvas>
</div>

<div class="row g-3 mt-3">

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

function animateValue(id,start,end,duration){

let range=end-start;
let current=start;
let increment=end>start?1:-1;
let stepTime=Math.abs(Math.floor(duration/range));

let obj=document.getElementById(id);

let timer=setInterval(function(){

current+=increment;
obj.innerHTML=current;

if(current==end){
clearInterval(timer);
}

},stepTime);

}

animateValue("usersCount",0,${totalUser},1200);
animateValue("carsCount",0,${totalAvailable},1200);
animateValue("bookingCount",0,${totalTransaction},1200);

setTimeout(function(){
document.getElementById("revenueCount").innerHTML="₹ ${totalRevenue}"
},2500);

/* LINE CHART */

new Chart(document.getElementById("monthlyChart"),{

type:"line",

data:{
labels:["Jan","Feb","Mar","Apr","May","Jun"],
datasets:[{
label:"Bookings",
data:[12,19,8,15,22,30],
borderColor:"#3B82F6",
backgroundColor:"rgba(59,130,246,0.2)",
fill:true,
tension:.4
}]
}

});

/* PIE CHART */

new Chart(document.getElementById("pieChart"),{

type:"pie",

data:{
labels:["Users","Cars","Bookings"],
datasets:[{
data:[
${totalUser},
${totalAvailable},
${totalTransaction}
],
backgroundColor:["#3B82F6","#10B981","#F59E0B"]
}]
}

});

</script>

</body>
</html>