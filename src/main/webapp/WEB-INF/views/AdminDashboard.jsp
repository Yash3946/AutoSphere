```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>AutoSphere Admin Dashboard</title>

<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Icons -->
<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&family=Poppins:wght@500;600&display=swap" rel="stylesheet">

<!-- Charts -->
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

<style>

/* GLOBAL */

body{
margin:0;
background:#F8FAFC;
font-family:'Inter',sans-serif;
color:#0f172a;
font-size:15px;
}

/* SIDEBAR */

.sidebar{
width:260px;
position:fixed;
top:0;
bottom:0;
left:0;
background:#0F172A;
color:white;
overflow-y:auto;
z-index:1000;
}

.sidebar > a,
.sidebar .dropdown > a{
display:flex;
align-items:center;
gap:10px;
padding:14px 22px;
color:#CBD5E1;
text-decoration:none;
font-size:14px;
}

.sidebar > a:hover{
background:#1E293B;
color:white;
}

/* HEADER */

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
font-family:'Poppins',sans-serif;
font-weight:500;
}

/* CONTENT */

.content{
margin-left:260px;
margin-top:90px;
padding:40px;
padding-bottom:90px;
}

h3{
font-family:'Poppins',sans-serif;
font-weight:600;
color:#1e293b;
}

/* DASHBOARD CARDS */

.stat-card{
border-radius:18px;
padding:26px;
display:flex;
align-items:center;
justify-content:space-between;
color:white;
box-shadow:0 10px 25px rgba(0,0,0,0.1);
transition:0.25s;
}

.stat-card:hover{
transform:translateY(-6px);
cursor:pointer;
}

.stat-card h4{
font-family:'Poppins',sans-serif;
font-size:26px;
margin:0;
}

.stat-card p{
margin:0;
font-size:14px;
opacity:0.9;
}

.users{background:linear-gradient(135deg,#3B82F6,#2563EB);}
.cars{background:linear-gradient(135deg,#10B981,#059669);}
.bookings{background:linear-gradient(135deg,#F59E0B,#EA580C);}
.revenue{background:linear-gradient(135deg,#8B5CF6,#6D28D9);}

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

/* CHART CARD */

.chart-card{
background:white;
border-radius:18px;
padding:30px;
box-shadow:0 10px 25px rgba(0,0,0,0.08);
}

/* FIXED FOOTER */

.footer{
position:fixed;
bottom:0;
left:260px;
right:0;
height:55px;
background:#020617;
color:#CBD5E1;
display:flex;
align-items:center;
justify-content:space-between;
padding:0 40px;
font-family:'Inter',sans-serif;
font-size:13px;
border-top:1px solid #1E293B;
}

</style>

</head>

<body>

<!-- SIDEBAR -->
<jsp:include page="AdminSidebar.jsp"/>

<!-- HEADER -->
<jsp:include page="AdminHeader.jsp"/>

<div class="content">

<h3 class="mb-4">Dashboard Overview</h3>

<div class="row g-4 mb-5">

<div class="col-md-3">
<a href="listUser" style="text-decoration:none">
<div class="stat-card users">
<div>
<h4>${totalUser}</h4>
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
<h4>${totalAvailable}</h4>
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
<h4>${totalTransaction}</h4>
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
<h4>₹ ${totalRevenue}</h4>
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
</div>

</div>

</div>

<!-- FOOTER -->

<footer class="footer">

<div>
© 2026 <b>AutoSphere</b> Admin Panel
</div>

<div>
Developed by <b>AutoSphere Team</b>
</div>

</footer>

<script>

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
```
