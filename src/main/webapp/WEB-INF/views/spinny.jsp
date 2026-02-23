<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>AutoSphere | Buy & Sell Cars</title>

    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: #f4f6fb;
        }

        /* ===== HEADER ===== */
        .header {
            display: flex;
            align-items: center;
            padding: 15px 40px;
            background: white;
            border-bottom: 1px solid #ddd;
        }

        .logo {
            font-size: 26px;
            font-weight: bold;
            color: #6a1b9a;
        }

        /* ===== CITY SELECT ===== */
        .city-select {
            padding: 8px 16px;
            border-radius: 22px;
            border: 1px solid #d1c4e9;
            background: #f3e5f5;
            color: #4a148c;
            font-size: 14px;
            font-weight: 500;
            outline: none;
            cursor: pointer;
            margin: 0 20px;
            transition: all 0.3s ease;
        }

        .city-select:hover {
            background: #ede7f6;
        }

        .city-select:focus {
            background: #ffffff;
            border-color: #6a1b9a;
            box-shadow: 0 0 0 3px rgba(106,27,154,0.15);
        }

        /* ===== SEARCH BAR ===== */
        .search-bar {
            display: flex;
            align-items: center;
            background: #f3e5f5;
            padding: 8px 14px;
            border-radius: 25px;
            width: 320px;
        }

        .search-icon {
            font-size: 16px;
            color: #6a1b9a;
            margin-right: 8px;
        }

        .search-bar input {
            border: none;
            outline: none;
            background: transparent;
            width: 100%;
            font-size: 14px;
        }

        /* ===== MENU ===== */
        .menu {
            margin-left: auto;
        }

        .menu a {
            margin-left: 18px;
            text-decoration: none;
            color: #333;
            font-weight: 500;
        }

        .menu a:hover {
            color: #6a1b9a;
        }

        /* ===== HERO ===== */
        .hero {
            display: flex;
            padding: 40px;
            background: linear-gradient(135deg, #ede7f6, #f5f5f5);
        }

        .hero-box {
            width: 50%;
            padding: 30px;
        }

        .hero-box h1 {
            font-size: 28px;
            color: #4a148c;
        }

        .hero-box p {
            color: #555;
        }

        .hero-img {
            width: 100%;
            height: 220px;
            object-fit: cover;
            border-radius: 10px;
            margin-top: 15px;
        }

        .sell-btn {
            padding: 12px 25px;
            background: #e91e63;
            color: white;
            border: none;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
        }

        /* ===== SECTION ===== */
        .section {
            padding: 40px;
            text-align: center;
            background: white;
        }

        .cards {
            display: flex;
            justify-content: center;
            margin-top: 25px;
        }

        .card {
            width: 200px;
            margin: 10px;
            padding: 15px;
            background: #fafafa;
            box-shadow: 0 4px 12px rgba(0,0,0,0.08);
            border-radius: 10px;
            transition: 0.3s;
        }

        .card:hover {
            transform: translateY(-5px);
        }

        .card img {
            width: 100%;
            height: 120px;
            object-fit: cover;
            border-radius: 8px;
            margin-bottom: 10px;
        }

        /* ===== FOOTER ===== */
        .footer {
            background: #6a1b9a;
            color: white;
            text-align: center;
            padding: 15px;
        }
    </style>
</head>

<body>

<!-- ===== HEADER ===== -->
<div class="header">

	
    <div class="logo">AutoSphere</div>  

    <!-- City Dropdown -->
    <!-- City Auto Suggest -->
<div style="position:relative; margin:0 20px;">
    <input type="text"
           id="cityInput"
           class="city-select"
           placeholder="Select City">

    <div id="citySuggestions"
         style="
            position:absolute;
            top:42px;
            left:0;
            width:100%;
            background:white;
            border-radius:8px;
            box-shadow:0 6px 16px rgba(0,0,0,0.15);
            display:none;
            z-index:999;">
    </div>
</div>


    <div class="search-bar" style="position:relative;">
    <span class="search-icon">🔍</span>
    <input type="text" id="searchInput" placeholder="Search cars by brand or model">

    <div id="searchSuggestions"
         style="
            position:absolute;
            top:42px;
            left:0;
            width:100%;
            background:white;
            border-radius:8px;
            box-shadow:0 6px 16px rgba(0,0,0,0.15);
            display:none;
            z-index:999;">
    </div>
</div>


    <!-- Menu -->
    <div class="menu">
        <a href="listbrand">Car Brand</a>
        <a href="carlist">Buy Car</a>
        <a href="#">Sell Car</a>
        <a href="Login">Login</a>
        <a href="#">Register</a>
    </div>

</div>
<script>
const carSuggestions = [
    "Maruti Swift","Maruti Baleno","Maruti Brezza",
    "Hyundai i10","Hyundai i20","Hyundai Creta",
    "Tata Nexon","Tata Punch","Tata Harrier",
    "Mahindra Thar","Mahindra Scorpio","Mahindra XUV700",
    "Kia Seltos","Kia Sonet",
    "Toyota Fortuner","Toyota Innova",
    "Honda City","Honda Amaze",
    "Volkswagen Virtus","Skoda Slavia",
    "MG Hector","Renault Kiger","Jeep Compass"
];

const searchInput = document.getElementById("searchInput");
const searchBox = document.getElementById("searchSuggestions");

searchInput.addEventListener("input", function () {
    const value = this.value.toLowerCase();
    searchBox.innerHTML = "";

    if (value === "") {
        searchBox.style.display = "none";
        return;
    }

    const filtered = carSuggestions.filter(item =>
        item.toLowerCase().includes(value)
    );

    filtered.forEach(item => {
        const div = document.createElement("div");
        div.textContent = item;
        div.style.padding = "10px 14px";
        div.style.cursor = "pointer";

        div.onclick = () => {
            searchInput.value = item;
            searchBox.style.display = "none";
        };

        div.onmouseover = () => div.style.background = "#ede7f6";
        div.onmouseout  = () => div.style.background = "white";

        searchBox.appendChild(div);
    });

    searchBox.style.display = filtered.length ? "block" : "none";
});

document.addEventListener("click", function (e) {
    if (!e.target.closest("#searchInput")) {
        searchBox.style.display = "none";
    }
});
</script>

<script>
const gujaratCities = [
    "Ahmedabad","Amreli","Anand","Aravalli","Banaskantha","Bharuch",
    "Bhavnagar","Botad","Chhota Udaipur","Dahod","Dang","Devbhoomi Dwarka",
    "Gandhinagar","Gir Somnath","Jamnagar","Junagadh","Kachchh","Kheda",
    "Mahisagar","Mehsana","Morbi","Narmada","Navsari","Panchmahal",
    "Patan","Porbandar","Rajkot","Sabarkantha","Surat","Surendranagar",
    "Tapi","Vadodara","Valsad","Vapi","Veraval","Vyara","Godhra",
    "Himmatnagar","Kalol","Nadiad","Petlad","Sanand","Dholka","Unjha",
    "Visnagar","Bhuj","Mandvi","Anjar","Dwarka","Okha","baroda"
];

const cityInput = document.getElementById("cityInput");
const suggestionBox = document.getElementById("citySuggestions");

cityInput.addEventListener("input", function () {
    const value = this.value.toLowerCase();
    suggestionBox.innerHTML = "";

    if (value === "") {
        suggestionBox.style.display = "none";
        return;
    }

    const filtered = gujaratCities.filter(city =>
        city.toLowerCase().includes(value)
    );

    filtered.forEach(city => {
        const div = document.createElement("div");
        div.textContent = city;
        div.style.padding = "10px 14px";
        div.style.cursor = "pointer";

        div.onclick = () => {
            cityInput.value = city;
            suggestionBox.style.display = "none";
        };

        div.onmouseover = () => div.style.background = "#ede7f6";
        div.onmouseout  = () => div.style.background = "white";

        suggestionBox.appendChild(div);
    });

    suggestionBox.style.display = filtered.length ? "block" : "none";
});

document.addEventListener("click", function (e) {
    if (!e.target.closest("#cityInput")) {
        suggestionBox.style.display = "none";
    }
});
</script>

<!-- ===== HERO ===== -->
<div class="hero">

    <div class="hero-box">
        <h1>Cars you’ll love to buy</h1>
        <p>Verified used cars with full inspection</p>
        <img src="https://source.unsplash.com/600x400/?car,showroom" class="hero-img">
    </div>

    <div class="hero-box">
        <h1>Sell your car for the best price</h1>
        <p>Instant valuation & quick payment</p>
        <img src="https://source.unsplash.com/600x400/?car,selling" class="hero-img">
        <br><br>
        <button class="sell-btn">Sell My Car</button>
    </div>

</div>

<!-- ===== BENEFITS ===== -->
<div class="section">
    <h2>AutoSphere Assured Benefits</h2>

    <div class="cards">
        <div class="card">
            <img src="https://source.unsplash.com/400x300/?car,inspection">
            ✔ 200+ Quality Checks
        </div>

        <div class="card">
            <img src="https://source.unsplash.com/400x300/?car,test-drive">
            ✔ 7 Days Trial
        </div>

        <div class="card">
            <img src="https://source.unsplash.com/400x300/?car,warranty">
            ✔ 1 Year Warranty
        </div>

        <div class="card">
            <img src="https://source.unsplash.com/400x300/?car,price">
            ✔ Fixed Price
        </div>
    </div>
</div>

<!-- ===== FOOTER ===== -->
<div class="footer">
    © 2026 AutoSphere | user panel
</div>

</body>
</html>