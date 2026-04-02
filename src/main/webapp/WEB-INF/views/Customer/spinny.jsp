<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>AutoSphere | Buy & Sell Cars</title>

<style>
body {
	margin: 0;
	font-family: Arial;
	background: #f4f6fb;
}

/* HEADER */
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

.city-select {
	padding: 8px 16px;
	border-radius: 22px;
	border: 1px solid #d1c4e9;
	background: #f3e5f5;
	margin: 0 20px;
}

.search-bar {
	display: flex;
	align-items: center;
	background: #f3e5f5;
	padding: 8px 14px;
	border-radius: 25px;
	width: 320px;
}

.search-bar input {
	border: none;
	background: transparent;
	outline: none;
	width: 100%;
}

.menu {
	margin-left: auto;
}

.menu a {
	margin-left: 18px;
	text-decoration: none;
	color: #333;
}

.menu a:hover {
	color: #6a1b9a;
}

/* HERO */
.hero {
	padding: 40px;
	background: linear-gradient(135deg, #ede7f6, #f5f5f5);
	text-align: center;
}

.hero h1 {
	color: #4a148c;
}

.section h2 {
	color: #4a148c;
}

.how-section h2 {
	color: #4a148c;
}

.brand-section h2 {
	color: #4a148c;
}

/* SLIDER */
.slider-container {
	position: relative;
	overflow: hidden;
	margin-top: 30px;
}

.slider {
	display: flex;
	transition: 0.5s;
}

.slider img {
	width: 300px;
	height: 200px;
	margin-right: 15px;
	border-radius: 10px;
	object-fit: cover;
}

.arrow {
	position: absolute;
	top: 50%;
	transform: translateY(-50%);
	background: #6a1b9a;
	color: white;
	border: none;
	font-size: 20px;
	padding: 10px 15px;
	cursor: pointer;
	border-radius: 50%;
}

.left {
	left: 10px;
}

.right {
	right: 10px;
}

/* BUTTON */
.sell-btn {
	padding: 12px 25px;
	background: #e91e63;
	color: white;
	border: none;
	border-radius: 6px;
	cursor: pointer;
	margin-top: 20px;
}

/* BENEFITS */
.section {
	padding: 50px;
	text-align: center;
	background: linear-gradient(135deg, #ede7f6, #f5f5f5);
}

.cards {
	display: flex;
	justify-content: center;
	margin-top: 25px;
	flex-wrap: wrap;
}
.card-link {
    text-decoration: none;
    color: inherit;
}

.card {
    width: 300px;
    margin-right: 15px;
    border-radius: 12px;
    overflow: hidden;
    transition: 0.3s;
    cursor: pointer;
}

.card:hover {
    transform: scale(1.05);
}

.card img {
    width: 100%;
    height: 200px;
}
/* HOW WORKS */
.how-section {
	background: #f2f2f2;
	padding: 60px 20px;
	text-align: center;
}

.how-cards {
	display: flex;
	justify-content: center;
	gap: 80px;
	flex-wrap: wrap;
	margin-top: 40px;
}

.how-card {
	width: 220px;
}

.how-card img {
	width: 120px;
	margin-bottom: 10px;
}

.how-card h3 {
	font-size: 16px;
}

/* WATCH BUTTON */
.watch-area {
	margin-top: 40px;
}

.watch-btn {
	background: linear-gradient(90deg, #7b1fa2, #6a1b9a);
	color: white;
	border: none;
	padding: 16px 35px;
	font-size: 18px;
	border-radius: 14px;
	cursor: pointer;
	display: inline-flex;
	align-items: center;
	gap: 12px;
}

.play-icon {
	background: white;
	color: #6a1b9a;
	width: 28px;
	height: 28px;
	display: flex;
	align-items: center;
	justify-content: center;
	border-radius: 50%;
	font-size: 14px;
}

.learn-more {
	margin-top: 15px;
	color: #6a1b9a;
	font-weight: 600;
	cursor: pointer;
}

/* BRANDS */
.brand-section {
	padding: 60px;
	text-align: center;
	background: linear-gradient(135deg, #ede7f6, #f5f5f5);
}

.brand-grid {
	display: grid;
	grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
	gap: 25px;
	max-width: 1000px;
	margin: auto;
}

.brand-card {
	background: white;
	padding: 20px;
	border-radius: 15px;
	box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
	transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.brand-card:hover {
	transform: scale(1.08) translateY(-5px);
	background: linear-gradient(135deg, #f3e5f5, #d1c4e9);
	/* 🔥 Purple Shadow */
	box-shadow: 0 12px 30px rgba(106, 27, 154, 0.5);
}

.brand-card img {
	width: 70px;
	margin-top: 10px;
}

/* FOOTER */
.footer {
	background: #3b005a;
	color: white;
	padding: 60px;
}

.footer-container {
	display: flex;
	justify-content: space-between;
	flex-wrap: wrap;
}

.footer-col {
	width: 220px;
}

.footer-col h3 {
	margin-bottom: 15px;
}

.footer-col p {
	font-size: 14px;
	line-height: 22px;
	color: #ddd;
}

.footer-col a {
	display: block;
	color: #ddd;
	text-decoration: none;
	margin-bottom: 8px;
	font-size: 14px;
}

.footer-bottom {
	margin-top: 30px;
	text-align: center;
	color: #ccc;
	font-size: 14px;
}

.logo {
	display: flex;
	align-items: center;
	gap: 12px;
	font-size: 28px;
	font-weight: 700;
	color: #4a148c;
	text-decoration: none;
	font-family: Arial, sans-serif;
}

.logo-icon {
	width: 40px;
	height: 40px;
	background: #ff4d6d;
	display: flex;
	align-items: center;
	justify-content: center;
	transform: rotate(45deg);
	border-radius: 10px;
}

.logo-icon span {
	color: white;
	font-size: 20px;
	font-weight: 700;
	transform: rotate(-45deg);
}

/* responsive */
@media ( max-width :768px) {
	.logo {
		font-size: 22px;
	}
	.logo-icon {
		width: 32px;
		height: 32px;
	}
	.logo-icon span {
		font-size: 16px;
	}
}

/* RESPONSIVE */
@media ( max-width :768px) {
	.search-bar {
		width: 200px;
	}
	.how-cards {
		gap: 40px;
	}
}

.brand-card img {
	width: 70px;
	margin-top: 10px;
	transition: transform 0.3s ease;
}

.brand-card:hover img {
	transform: scale(1.15);
}

.suggestion-box {
    position: absolute;
    top: 45px;
    left: 0;
    width: 100%;
    background: white;
    border-radius: 10px;
    box-shadow: 0 4px 10px rgba(0,0,0,0.1);
    max-height: 200px;
    overflow-y: auto;
    display: none;
    z-index: 999;
}

.suggestion-item {
    padding: 10px;
    cursor: pointer;
}

.suggestion-item:hover {
    background: #f3e5f5;
}

.card-link {
    text-decoration: none;
    color: inherit;
}

.card {
    cursor: pointer;
}



/* RECENTLY VIEWED */

.recent-section {
    padding: 50px 40px;
    background: #ffffff;
}

.recent-section h2 {
    color: #4a148c;
    margin-bottom: 25px;
}

.recent-container {
    display: flex;
    overflow-x: auto;
    gap: 20px;
    padding-bottom: 10px;
}

.recent-card {
    min-width: 260px;
    background: #fff;
    border-radius: 15px;
    box-shadow: 0 4px 12px rgba(0,0,0,0.1);
    overflow: hidden;
    cursor: pointer;
    transition: 0.3s;
}

.recent-card:hover {
    transform: translateY(-6px);
    box-shadow: 0 10px 25px rgba(106, 27, 154, 0.3);
}

.recent-card img {
    width: 100%;
    height: 160px;
    object-fit: cover;
}

.recent-info {
    padding: 12px;
}

.car-name {
    font-weight: bold;
    margin-bottom: 5px;
}

.car-details {
    font-size: 13px;
    color: #666;
    margin-bottom: 10px;
}

.price-row {
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.price {
    font-weight: bold;
    color: #4a148c;
}

.emi {
    font-size: 12px;
    color: #888;
}

.brand-grid {
    display: grid;
    grid-template-columns: repeat(5, 1fr); /* 🔥 always 5 boxes */
    gap: 25px;
    justify-items: center;
}

.brand-card {
    width: 160px;   /* thodu adjust karo */
    height: 160px;
    background: #f8f8f8;
    border-radius: 18px;
    padding: 15px;

    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;

    box-shadow: 0 6px 18px rgba(0,0,0,0.08);
}

.brand-card img {
    width: 80px;
    height: 80px;
    object-fit: contain;
}

.brand-card:hover {
    transform: translateY(-5px);
}

.brand-card h3 {
    font-size: 16px;
    font-weight: 600;
    text-align: center;
    margin-bottom: 10px;
    text-transform: capitalize;
}


</style>
</head>

<body>

	<!-- HEADER -->

	<div class="header">

		<a href="customer-dashboard" class="logo">

			<div class="logo-icon">
				<span>A</span>
			</div> AutoSphere

		</a>
		<div style="position: relative;">
			<input type="text" id="cityInput" class="city-select"
				placeholder="Select City" onkeyup="showCitySuggestions()">

			<div id="citySuggestionBox" class="suggestion-box"></div>
		</div>



		<div class="search-bar" style="position: relative;">
			<input type="text" id="searchInput" placeholder="Search cars..."
				onkeyup="showCarSuggestions()">

			<div id="suggestionBox" class="suggestion-box"></div>
		</div>

		<div class="menu">
			<a href="CustomerCarList">List Car</a> <a href="#brands">Car
				Brand</a> <a href="wishlist">My Cart</a> <a href="#">Buy Car</a> <a
				href="#">Sell Car</a> <a href="login">Login</a> <a href="#">Register</a>
		</div>

	</div>

	<!-- HERO -->

	<div class="hero">

		<h1>Cars you’ll love to buy</h1>
		<p>Verified used cars with full inspection</p>

		<div class="slider-container">

			<button class="arrow left" onclick="slideLeft()">❮</button>

			<div class="slider" id="slider">

    <c:forEach var="car" items="${customerCarList}">
        
        <a href="customerViewCarListing?listingId=${car.listingId}" class="card-link">
            
            <div class="card">

                <img src="${car.imageUrl}" alt="car">

                <div style="padding:10px;">
                    <h5>${car.brandName} ${car.modelName}</h5>
                    <p style="color:#4a148c; font-weight:bold;">
                        ₹ ${car.price}
                    </p>
                </div>

            </div>

        </a>

    </c:forEach>

</div>

			<button class="arrow right" onclick="slideRight()">❯</button>

		</div>

		<button class="sell-btn">Sell My Car</button>

	</div>

	<!-- BENEFITS -->

	<div class="section">

    <h2>AutoSphere Assured Benefits</h2>

    <div class="cards">

        <!-- Quality Checks -->
        <a href="quality-check" class="card-link">
            <div class="card">
                <img src="https://tse2.mm.bing.net/th/id/OIP.Dt_cmV3c7iAiI9hH3a_-oQHaHa">
                <p>✔ 200+ Quality Checks</p>
            </div>
        </a>

        <!-- Trial -->
        <a href="trial" class="card-link">
            <div class="card">
                <img src="https://tse2.mm.bing.net/th/id/OIP.dLwwkw6ARI0Jm1Y6LMvgXwHaFL">
                <p>✔ 7 Days Trial</p>
            </div>
        </a>

        <!-- Warranty -->
        <a href="warranty" class="card-link">
            <div class="card">
                <img src="https://tse4.mm.bing.net/th/id/OIP.2-oHKJ06_H3EnJgGQQKTiQHaE8">
                <p>✔ 1 Year Warranty</p>
            </div>
        </a>

        <!-- Fixed Price -->
        <a href="fixed-price" class="card-link">
            <div class="card">
                <img src="https://tse3.mm.bing.net/th/id/OIP.ApW2_1cwNgxi_flgt4ZQngHaEl">
                <p>✔ Fixed Price</p>
            </div>
        </a>

    </div>
</div>
	

	<!-- HOW AUTOSPHERE WORKS -->

	<div class="how-section">

		<h2>How AutoSphere Works</h2>

		<div class="how-cards">

			<div class="how-card">
				<img src="https://cdn-icons-png.flaticon.com/512/854/854878.png">
				<h3>Choose your car</h3>
			</div>

			<div class="how-card">
				<img
					src="https://tse3.mm.bing.net/th/id/OIP.3I6DIZqr146CnNMUkrljrQHaE8">
				<h3>Book test drive</h3>
			</div>

			<div class="how-card">
				<img
					src="https://tse2.mm.bing.net/th/id/OIP.TinBeamEG8ni7EGH1fS6NAHaHa">
				<h3>Online payment</h3>
			</div>

		</div>


		<div class="watch-area">

			<button class="watch-btn">
				Watch how it works <span class="play-icon">▶️</span>
			</button>

			<p class="learn-more">Learn more</p>

		</div>

	</div>
	
	<!-- RECENTLY VIEWED CARS -->

<div class="recent-section">

   

    <div class="recent-container">

        <c:forEach var="car" items="${recentCars}">
            <div class="recent-card">

                <img src="${car.imageUrl}" alt="car">

                <div class="recent-info">
                    <p class="car-name">${car.name}</p>
                    <p class="car-details">
                        ${car.km} km • ${car.fuel} • ${car.transmission}
                    </p>

                    <div class="price-row">
                        <span class="price">₹${car.price} Lakh</span>
                        <span class="emi">EMI from ₹${car.emi}/m</span>
                    </div>
                </div>

            </div>
        </c:forEach>

    </div>

</div>
	

	<!-- BRANDS -->

	<div class="brand-section" id="brands">

    <h2>Explore Popular Brands</h2>

    <div class="brand-grid">

        <c:forEach var="brd" items="${brand}">
            
            <c:url value="/cars-by-brand" var="brandUrl">
                <c:param name="brand" value="${brd.brandName}" />
            </c:url>

            <a href="${brandUrl}" style="text-decoration: none; color: inherit;">
                <div class="brand-card">
                    <h3>${brd.brandName}</h3>
                    <img src="${brd.logoUrl}">
                </div>
            </a>

        </c:forEach>

    </div>

</div>

	<!-- FOOTER -->

	<div class="footer">

		<div class="footer-container">

			<div class="footer-col">
				<h3>AutoSphere</h3>
				<p>AutoSphere is the easiest way to buy and sell used cars
					online.</p>
			</div>

			<div class="footer-col">
				<h3>Company</h3>
				<a href="about">About</a> <a href="CareersPage">Careers</a> <a href="CustomerBlog">Blog</a>
				<a href="ContactPage">Contact</a>
			</div>

			<div class="footer-col">
				<h3>Services</h3>
				<a href="#">Buy Car</a> <a href="#">Sell Car</a> <a href="#">Car
					Loan</a> <a href="#">Insurance</a>
			</div>

			<div class="footer-col">
				<h3>Support</h3>
				<a href="#">FAQ</a> <a href="#">Terms</a> <a href="#">Privacy</a>
			</div>

		</div>

		<div class="footer-bottom">©️ 2026 AutoSphere | MCA Sem 4 Project
		</div>

	</div>

	<script>
		let scroll = 0;
		const slider = document.getElementById("slider");
		const imageWidth = 315;

		const images = slider.querySelectorAll("img");
		const totalImages = images.length;

		function slideLeft() {

			scroll += imageWidth;

			if (scroll > 0) {
				scroll = -(imageWidth * (totalImages - 1));
			}

			slider.style.transform = "translateX(" + scroll + "px)";
		}

		function slideRight() {

			scroll -= imageWidth;

			if (Math.abs(scroll) >= imageWidth * totalImages) {
				scroll = 0;
			}

			slider.style.transform = "translateX(" + scroll + "px)";
		}

		setInterval(function() {
			slideRight();
		}, 3000);
		
		
		
		let cars = ["Thar","Scorpio","Bolero","XUV300","XUV500","XUV700","Swift","Swift Dzire","Baleno","Brezza","Ertiga","Alto","WagonR","Celerio","Ignis","S-Presso","BMW","Audi","Mercedes","Fortuner","Innova","Innova Crysta","Innova Hycross","Honda City","Amaze","Civic","CR-V","Verna","Creta","Venue","i10","i20","Kia Seltos","Kia Sonet","Kia Carens","MG Hector","MG Astor","Tata Nexon","Tata Punch","Tata Harrier","Tata Safari","Tata Tiago","Tata Tigor","Skoda Slavia","Skoda Kushaq","Volkswagen Polo","Virtus","Jeep Compass","Range Rover","Land Rover","Jaguar","Mini Cooper"];
		let cities = ["Ahmedabad","Surat","Rajkot","Vadodara","Gandhinagar","Bhavnagar","Jamnagar","Junagadh","Anand","Navsari","Mehsana","Morbi","Surendranagar","Porbandar","Palanpur","Valsad","Bharuch","Godhra","Patan","Dahod","Bhuj","Veraval","Amreli","Gondal","Kalol","Nadiad","Mumbai","Delhi","Bengaluru","Chennai","Kolkata","Hyderabad","Pune","Jaipur","Lucknow","Kanpur","Nagpur","Indore","Bhopal","Patna","Chandigarh","Coimbatore","Kochi","Visakhapatnam","Agra","Varanasi","Madurai","Nashik","Vadodara","Faridabad","Ghaziabad","Noida"];

		function showCarSuggestions() {
		    let input = document.getElementById("searchInput").value.toLowerCase();
		    let box = document.getElementById("suggestionBox");
		    box.innerHTML = "";

		    if (input === "") {
		        box.style.display = "none";
		        return;
		    }

		    let matches = cars.filter(c => c.toLowerCase().includes(input));

		    matches.forEach(car => {
		        let div = document.createElement("div");
		        div.className = "suggestion-item";
		        div.innerText = car;

		        div.onclick = () => {
		            document.getElementById("searchInput").value = car;
		            box.style.display = "none";
		        };

		        box.appendChild(div);
		    });

		    box.style.display = matches.length ? "block" : "none";
		}

		function showCitySuggestions() {
		    let input = document.getElementById("cityInput").value.toLowerCase();
		    let box = document.getElementById("citySuggestionBox");
		    box.innerHTML = "";

		    if (input === "") {
		        box.style.display = "none";
		        return;
		    }

		    let matches = cities.filter(c => c.toLowerCase().includes(input));

		    matches.forEach(city => {
		        let div = document.createElement("div");
		        div.className = "suggestion-item";
		        div.innerText = city;

		        div.onclick = () => {
		            document.getElementById("cityInput").value = city;
		            box.style.display = "none";
		        };

		        box.appendChild(div);
		    });

		    box.style.display = matches.length ? "block" : "none";
		}
		
		
		
		
		document.addEventListener("click", function(event) {

		    let cityBox = document.getElementById("citySuggestionBox");
		    let cityInput = document.getElementById("cityInput");

		    let carBox = document.getElementById("suggestionBox");
		    let carInput = document.getElementById("searchInput");

		    // 🔹 City
		    if (!cityInput.contains(event.target) && !cityBox.contains(event.target)) {
		        cityBox.style.display = "none";
		        cityInput.value = ""; // 🔥 clear text
		    }

		    // 🔹 Car
		    if (!carInput.contains(event.target) && !carBox.contains(event.target)) {
		        carBox.style.display = "none";
		        carInput.value = ""; // 🔥 clear text
		    }

		});
		
	</script>

</body>
</html>