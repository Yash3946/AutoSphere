<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>AutoSphere Admin Dashboard</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

    <style>
        body {
            margin: 0;
            padding: 0;
            background: #0f0f17;
            font-family: 'Inter', 'Segoe UI', sans-serif;
            color: #e2e8f0;
        }

        /* SIDEBAR */
        .sidebar {
            width: 260px;
            position: fixed;
            top: 0;
            bottom: 0;
            left: 0;
            background: #111827;
            color: #cbd5e1;
            overflow-y: auto;
            z-index: 1000;
            border-right: 1px solid #1e293b;
            box-shadow: 2px 0 16px rgba(0,0,0,0.45);
        }

        .sidebar > a,
        .sidebar .dropdown > a {
            display: flex;
            align-items: center;
            gap: 12px;
            padding: 14px 24px;
            color: #94a3b8;
            text-decoration: none;
            font-weight: 500;
            transition: all 0.25s ease;
        }

        .sidebar > a:hover,
        .sidebar .dropdown > a:hover {
            background: #1e293b;
            color: #e0f2fe;
            padding-left: 28px;
        }

        .sidebar .active {
            background: #1e293b;
            color: #c084fc;
            border-left: 4px solid #a855f7;
            font-weight: 600;
        }

        /* HEADER - ab chhota aur clean */
        .header {
            position: fixed;
            top: 0;
            left: 260px;
            right: 0;
            height: 60px;                        /* ← height kam kar di */
            background: linear-gradient(90deg, #1e1b4b 0%, #312e81 100%);
            color: #e0e7ff;
            padding: 0 30px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            border-bottom: 1px solid #4c1d95;
            box-shadow: 0 2px 12px rgba(30,27,75,0.35);
            z-index: 999;
        }

        .header h4,
        .header .navbar-brand {
            margin: 0;
            font-size: 1.25rem;                  /* ← font size bhi thoda chhota */
            font-weight: 600;
            letter-spacing: 0.4px;
            color: #c4b5fd;
        }

        .header .btn-outline-light {
            border-color: #a78bfa;
            color: #c4b5fd;
            font-size: 0.85rem;
            padding: 0.35rem 0.9rem;
        }

        .header .btn-outline-light:hover {
            background: rgba(168,85,247,0.15);
            border-color: #c084fc;
            color: white;
        }

        /* CONTENT - header ke hisaab se adjust */
        .content {
            margin-left: 260px;
            margin-top: 75px;                    /* ← 60px header + 15px buffer */
            padding: 30px;
            padding-bottom: 100px;
        }

        .stat-link {
            text-decoration: none;
            display: block;
        }

        .stat-link:hover {
            transform: scale(1.03);
            transition: 0.2s;
        }

        /* CARDS */
        .stat-card {
            border-radius: 18px;
            padding: 26px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            color: white;
            box-shadow: 0 8px 24px rgba(0,0,0,0.35);
            transition: 0.25s;
        }

        .stat-card:hover {
            transform: translateY(-6px);
        }

        .users    { background: linear-gradient(135deg, #7c3aed, #6d28d9); }
        .cars     { background: linear-gradient(135deg, #10b981, #059669); }
        .bookings { background: linear-gradient(135deg, #f472b6, #db2777); }
        .revenue  { background: linear-gradient(135deg, #06b6d4, #0891b2); }

        .stat-icon {
            width: 55px;
            height: 55px;
            border-radius: 12px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 22px;
            background: rgba(255,255,255,0.18);
        }

        /* CHART CARD */
        .chart-card {
            background: #1e293b;
            border-radius: 18px;
            padding: 30px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.3);
            color: #e2e8f0;
        }

        /* FOOTER */
        .footer {
            position: fixed;
            bottom: 0;
            left: 260px;
            right: 0;
            height: 60px;
            background: linear-gradient(90deg, #1e1b4b 0%, #312e81 100%);
            color: #a5b4fc;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0 40px;
            font-size: 14px;
            border-top: 1px solid #4c1d95;
            box-shadow: 0 -4px 16px rgba(30,27,75,0.3);
            z-index: 999;
        }

        .footer b {
            color: #c4b5fd;
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

        <!-- USERS -->
        <div class="col-md-3">
            <a href="listUser" class="stat-link">
                <div class="stat-card users">
                    <div>
                        <h4>${totalUser}</h4>
                        <p>Total Users</p>
                    </div>
                    <div class="stat-icon"><i class="bi bi-people"></i></div>
                </div>
            </a>
        </div>

        <!-- CARS -->
        <div class="col-md-3">
            <a href="allCarList" class="stat-link">
                <div class="stat-card cars">
                    <div>
                        <h4>${totalAvailable}</h4>
                        <p>Listed Cars</p>
                    </div>
                    <div class="stat-icon"><i class="bi bi-car-front"></i></div>
                </div>
            </a>
        </div>

        <!-- BOOKINGS -->
        <div class="col-md-3">
            <a href="listCarTransaction" class="stat-link">
                <div class="stat-card bookings">
                    <div>
                        <h4>${totalTransaction}</h4>
                        <p>Bookings</p>
                    </div>
                    <div class="stat-icon"><i class="bi bi-receipt"></i></div>
                </div>
            </a>
        </div>

        <!-- REVENUE -->
        <div class="col-md-3">
            <a href="listCarTransaction" class="stat-link">
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
<jsp:include page="AdminFooter.jsp"/>

<script>
    new Chart(document.getElementById("monthlyChart"), {
        type: "line",
        data: {
            labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun"],
            datasets: [{
                label: "Bookings",
                data: [12, 19, 8, 15, 22, 30],
                borderColor: "#c084fc",
                backgroundColor: "rgba(192,132,252,0.18)",
                fill: true,
                tension: 0.3
            }]
        },
        options: {
            scales: {
                y: { beginAtZero: true, ticks: { color: "#94a3b8" } },
                x: { ticks: { color: "#94a3b8" } }
            },
            plugins: { legend: { labels: { color: "#e2e8f0" } } }
        }
    });

    new Chart(document.getElementById("pieChart"), {
        type: "pie",
        data: {
            labels: ["Users", "Cars", "Bookings"],
            datasets: [{
                data: [
                    ${totalUser},
                    ${totalAvailable},
                    ${totalTransaction}
                ],
                backgroundColor: ["#a855f7", "#10b981", "#f472b6"]
            }]
        },
        options: {
            plugins: {
                legend: { labels: { color: "#e2e8f0" } }
            }
        }
    });
</script>

</body>
</html>