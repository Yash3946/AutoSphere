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
    z-index:1000;
}

.sidebar h5{
    color:white;
    margin:0;
}

.sidebar > a,
.sidebar .dropdown > a{
    display:flex;
    align-items:center;
    gap:10px;
    padding:14px 22px;
    color:#CBD5E1;
    text-decoration:none;
    transition:.25s;
    border-left:3px solid transparent;
    cursor:pointer;
}

.sidebar > a:hover,
.sidebar .dropdown > a:hover{
    background:#1E293B;
    color:white;
    border-left:3px solid #3B82F6;
}

.sidebar > a.active{
    background:#1E293B;
    color:white;
    border-left:3px solid #3B82F6;
}

.sidebar .dropdown-menu{
    margin-left:18px;
    background:#1E293B;
    border:none;
    border-radius:10px;
    padding:8px 0;
    min-width:210px;
}

.sidebar .dropdown-item{
    color:#E2E8F0;
    padding:10px 18px;
}

.sidebar .dropdown-item:hover{
    background:#334155;
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
    z-index:999;
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

<!-- ================= NEW SIDEBAR ================= -->
<div class="sidebar">
    <h5 class="text-center py-3 border-bottom">Dashboard</h5>

    <a href="admin-dashboard" class="active">
        <i class="bi bi-speedometer2 me-2"></i> Dashboard
    </a>

    <!-- USERS -->
    <div class="dropdown">
        <a class="dropdown-toggle" role="button" data-bs-toggle="dropdown">
            <i class="bi bi-people me-2"></i> Users
        </a>
        <ul class="dropdown-menu">
            <li>
                <a class="dropdown-item" href="signup">
                    <i class="bi bi-person-plus me-2"></i> Signup User
                </a>
            </li>
            <li>
                <a class="dropdown-item" href="listUser">
                    <i class="bi bi-list me-2"></i> List Users
                </a>
            </li>
        </ul>
    </div>

    <!-- BRAND -->
    <div class="dropdown">
        <a class="dropdown-toggle" role="button" data-bs-toggle="dropdown">
            <i class="bi bi-tags me-2"></i> Brand
        </a>
        <ul class="dropdown-menu">
            <li>
                <a class="dropdown-item" href="addbrand">
                    <i class="bi bi-plus-circle me-2"></i> Add Brand
                </a>
            </li>
            <li>
                <a class="dropdown-item" href="listbrand">
                    <i class="bi bi-list me-2"></i> List Brand
                </a>
            </li>
        </ul>
    </div>

    <a href="newcartype">
        <i class="bi bi-box me-2"></i> New Car Model Type
    </a>

    <!-- Car Variant -->
    <div class="dropdown">
        <a class="dropdown-toggle" role="button" data-bs-toggle="dropdown">
            <i class="bi bi-car-front me-2"></i> Car Variant
        </a>
        <ul class="dropdown-menu">
            <li>
                <a class="dropdown-item" href="newCarVariant">
                    <i class="bi bi-plus-circle me-2"></i> Add Car Variant
                </a>
            </li>
            <li>
                <a class="dropdown-item" href="listCarVariant">
                    <i class="bi bi-list me-2"></i> List Car Variant
                </a>
            </li>
        </ul>
    </div>

    <!-- Car Feature -->
    <div class="dropdown">
        <a class="dropdown-toggle" role="button" data-bs-toggle="dropdown">
            <i class="bi bi-gear me-2"></i> Car Feature
        </a>
        <ul class="dropdown-menu">
            <li>
                <a class="dropdown-item" href="carFeatures">
                    <i class="bi bi-plus-circle me-2"></i> Add Car Feature
                </a>
            </li>
            <li>
                <a class="dropdown-item" href="listCarFeatures">
                    <i class="bi bi-list me-2"></i> List Car Feature
                </a>
            </li>
        </ul>
    </div>

    <!-- Car Listing -->
    <div class="dropdown">
        <a class="dropdown-toggle" role="button" data-bs-toggle="dropdown">
            <i class="bi bi-car-front me-2"></i> Car Listing
        </a>
        <ul class="dropdown-menu">
            <li>
                <a class="dropdown-item" href="carListing">
                    <i class="bi bi-plus-circle me-2"></i> New Car Listing
                </a>
            </li>
            <li>
                <a class="dropdown-item" href="allCarList">
                    <i class="bi bi-list me-2"></i> View Car Listing
                </a>
            </li>
        </ul>
    </div>

    <!-- Car Offer -->
    <div class="dropdown">
        <a class="dropdown-toggle" role="button" data-bs-toggle="dropdown">
            <i class="bi bi-cash-coin me-2"></i> Car Offer
        </a>
        <ul class="dropdown-menu">
            <li>
                <a class="dropdown-item" href="listCarOffer">
                    <i class="bi bi-list me-2"></i> List Car Offer
                </a>
            </li>
        </ul>
    </div>

    <!-- Car Transaction -->
    <div class="dropdown">
        <a class="dropdown-toggle" role="button" data-bs-toggle="dropdown">
            <i class="bi bi-receipt me-2"></i> Car Transaction
        </a>
        <ul class="dropdown-menu">
            <li>
                <a class="dropdown-item" href="carTransaction">
                    <i class="bi bi-plus-circle me-2"></i> New Car Transaction
                </a>
            </li>
            <li>
                <a class="dropdown-item" href="listCarTransaction">
                    <i class="bi bi-list me-2"></i> List Car Transaction
                </a>
            </li>
        </ul>
    </div>

    <!-- Car Reports -->
    <div class="dropdown">
        <a class="dropdown-toggle" role="button" data-bs-toggle="dropdown">
            <i class="bi bi-flag me-2"></i> Car Reports
        </a>
        <ul class="dropdown-menu">
            <li>
                <a class="dropdown-item" href="carReports">
                    <i class="bi bi-plus-circle me-2"></i> New Car Report
                </a>
            </li>
            <li>
                <a class="dropdown-item" href="listCarReports">
                    <i class="bi bi-list me-2"></i> List Car Reports
                </a>
            </li>
        </ul>
    </div>

    <!-- Car Images -->
    <div class="dropdown">
        <a class="dropdown-toggle" role="button" data-bs-toggle="dropdown">
            <i class="bi bi-image me-2"></i> Car Images
        </a>
        <ul class="dropdown-menu">
            <li>
                <a class="dropdown-item" href="carImage">
                    <i class="bi bi-plus-circle me-2"></i> New Car Image
                </a>
            </li>
            <li>
                <a class="dropdown-item" href="listCarImage">
                    <i class="bi bi-list me-2"></i> List Car Images
                </a>
            </li>
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
    <h5>AutoSphere Analytics</h5>

    <div>
        Welcome, <b>${sessionScope.user.firstName}</b>
        <a href="logout" class="btn btn-sm btn-light ms-3">Logout</a>
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
    let stepTime=Math.abs(Math.floor(duration/(range || 1)));

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