
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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

<style>

body{
margin:0;
background:#F8FAFC;
font-family:'Inter','Segoe UI',sans-serif;
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
}

/* CONTENT */
.content{
margin-left:260px;
margin-top:90px;
padding:40px;
padding-bottom:120px;
}

/* CARDS */

.stat-card{
border-radius:18px;
padding:26px;
display:flex;
align-items:center;
justify-content:space-between;
color:white;
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

.chart-card{
background:white;
border-radius:18px;
padding:30px;
box-shadow:0 10px 25px rgba(0,0,0,0.08);
}

/* FOOTER */


.footer{
position:fixed;
bottom:0;
left:260px;      /* sidebar width */
right:0;
height:55px;
background:#020617;
color:#CBD5E1;
display:flex;
align-items:center;
justify-content:space-between;
padding:0 40px;
font-size:14px;
border-top:1px solid #1E293B;
z-index:1000;
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
<div class="stat-card users">
<div>
<h4>${totalUser}</h4>
<p>Total Users</p>
</div>
<div class="stat-icon"><i class="bi bi-people"></i></div>
</div>
</div>

<div class="col-md-3">
<div class="stat-card cars">
<div>
<h4>${totalAvailable}</h4>
<p>Listed Cars</p>
</div>
<div class="stat-icon"><i class="bi bi-car-front"></i></div>
</div>
</div>

<div class="col-md-3">
<div class="stat-card bookings">
<div>
<h4>${totalTransaction}</h4>
<p>Bookings</p>
</div>
<div class="stat-icon"><i class="bi bi-receipt"></i></div>
</div>
</div>

<div class="col-md-3">
<div class="stat-card revenue">
<div>
<h4>₹ ${totalRevenue}</h4>
<p>Total Revenue</p>
</div>
<div class="stat-icon"><i class="bi bi-cash-coin"></i></div>
</div>
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

<div class="row">

<div class="col-md-6">
© 2026 <b>AutoSphere</b> Admin Panel
</div>

<div class="col-md-6 text-end">
Developed by <b>AutoSphere Team</b>
</div>

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
fill:true
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

