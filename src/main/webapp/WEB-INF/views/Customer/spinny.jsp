<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>AutoSphere | Buy & Sell Cars</title>

<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	font-family: Arial, sans-serif;
	background: #f4f6fb;
}

/* HEADER */
.header {
	display: flex;
	align-items: center;
	padding: 15px 40px;
	background: white;
	border-bottom: 1px solid #ddd;
	flex-wrap: wrap;
	gap: 15px;
}

.logo {
	display: flex;
	align-items: center;
	gap: 12px;
	font-size: 28px;
	font-weight: 700;
	color: #4a148c;
	text-decoration: none;
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

.city-select {
	padding: 8px 16px;
	border-radius: 22px;
	border: 1px solid #d1c4e9;
	background: #f3e5f5;
	width: 150px;
	outline: none;
}

.search-bar {
	display: flex;
	align-items: center;
	background: #f3e5f5;
	padding: 8px 14px;
	border-radius: 25px;
	width: 320px;
	position: relative;
}

.search-bar input {
	border: none;
	background: transparent;
	outline: none;
	width: 100%;
}

.menu {
	margin-left: auto;
	display: flex;
	gap: 18px;
	flex-wrap: wrap;
}

.menu a {
	text-decoration: none;
	color: #333;
	transition: color 0.3s;
}

.menu a:hover {
	color: #6a1b9a;
}

/* HERO SECTION */
.hero {
	padding: 40px;
	background: linear-gradient(135deg, #ede7f6, #f5f5f5);
	text-align: center;
}

.hero h1 {
	color: #4a148c;
	margin-bottom: 10px;
}

.hero p {
	color: #666;
	margin-bottom: 30px;
}

/* SLIDER - FULLY WORKING */
.slider-container {
	position: relative;
	max-width: 1240px;
	margin: 0 auto;
	padding: 0 50px;
}

.slider-wrapper {
	overflow-x: auto;
	scroll-behavior: smooth;
	scrollbar-width: none;
	-ms-overflow-style: none;
}

.slider-wrapper::-webkit-scrollbar {
	display: none;
}

.slider {
	display: flex;
	gap: 15px;
}

.card-link {
	text-decoration: none;
	color: inherit;
	flex: 0 0 300px;
}

.card {
	background: white;
	border-radius: 12px;
	overflow: hidden;
	transition: transform 0.3s ease, box-shadow 0.3s ease;
	cursor: pointer;
	box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
}

.card:hover {
	transform: translateY(-10px);
	box-shadow: 0 8px 25px rgba(106, 27, 154, 0.3);
}

.card img {
	width: 100%;
	height: 180px;
	object-fit: cover;
}
.card-link {
    flex: 0 0 265px;   /* was 300px */
}

.card h5 {
	font-size: 16px;
	margin-bottom: 5px;
	color: #333;
}

.card p {
	font-weight: bold;
	color: #4a148c;
	margin-top: 5px;
}

.arrow {
	position: absolute;
	top: 50%;
	transform: translateY(-50%);
	background: #6a1b9a;
	color: white;
	border: none;
	font-size: 24px;
	padding: 12px 18px;
	cursor: pointer;
	border-radius: 50%;
	z-index: 10;
	transition: all 0.3s ease;
}

.arrow:hover {
	background: #ff4d6d;
	transform: translateY(-50%) scale(1.1);
}

.left {
	left: 0;
}

.right {
	right: 0;
}

/* DOTS INDICATOR */
.dots-container {
	display: flex;
	justify-content: center;
	gap: 10px;
	margin-top: 20px;
}

.dot {
	width: 10px;
	height: 10px;
	border-radius: 50%;
	background: #d1c4e9;
	cursor: pointer;
	transition: all 0.3s ease;
}

.dot.active {
	background: #6a1b9a;
	width: 25px;
	border-radius: 5px;
}

/* BUTTON */
.sell-btn {
	padding: 12px 25px;
	background: #e91e63;
	color: white;
	border: none;
	border-radius: 6px;
	cursor: pointer;
	margin-top: 30px;
	font-size: 16px;
	transition: all 0.3s ease;
}

.sell-btn:hover {
	background: #c2185b;
	transform: scale(1.05);
}

/* BENEFITS SECTION */
.section {
	padding: 50px;
	text-align: center;
	background: linear-gradient(135deg, #ede7f6, #f5f5f5);
}

.section h2 {
	color: #4a148c;
	margin-bottom: 30px;
}

.cards {
	display: flex;
	justify-content: center;
	gap: 25px;
	flex-wrap: wrap;
}

.cards .card {
	width: 250px;
	padding: 0;
}

.cards .card p {
	padding: 15px;
	margin: 0;
	font-weight: normal;
}

/* HOW WORKS */
.how-section {
	background: #f2f2f2;
	padding: 60px 20px;
	text-align: center;
}

.how-section h2 {
	color: #4a148c;
	margin-bottom: 40px;
}

.how-cards {
	display: flex;
	justify-content: center;
	gap: 80px;
	flex-wrap: wrap;
}

.how-card {
	width: 220px;
	transition: transform 0.3s ease;
}

.how-card:hover {
	transform: translateY(-10px);
}

.how-card img {
	width: 120px;
	margin-bottom: 15px;
}

.how-card h3 {
	font-size: 18px;
	color: #333;
}

.filter-btn {
	padding: 10px 20px;
	border: none;
	margin: 5px;
	border-radius: 20px;
	background: #e1bee7;
	cursor: pointer;
	font-weight: 600;
	transition: 0.3s;
}

.filter-btn:hover {
	background: #ba68c8;
	color: white;
}

.filter-btn.active {
	background: #6a1b9a;
	color: white;
}
/* WATCH BUTTON */
.watch-area {
	margin-top: 40px;
}
.filter-car .card {
    border-radius: 16px;
    overflow: hidden;
    background: white;
    box-shadow: 0 6px 20px rgba(0,0,0,0.1);
    transition: 0.3s;
}

.filter-car .card:hover {
    transform: translateY(-8px);
    box-shadow: 0 12px 30px rgba(106,27,154,0.3);
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
	transition: all 0.3s ease;
}
.filter-car .card div {
    padding: 15px;
}

.filter-car h5 {
    font-size: 17px;
    margin-bottom: 5px;
}

.filter-car p {
    font-size: 16px;
    font-weight: bold;
    color: #6a1b9a;
}
.filter-car img {
    width: 100%;
    height: 220px;
    object-fit: contain; /* 🔥 IMPORTANT */
    background: #f8f8f8;
}

.watch-btn:hover {
	transform: scale(1.05);
	box-shadow: 0 5px 20px rgba(106, 27, 154, 0.4);
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
	transition: color 0.3s;
}

.learn-more:hover {
	color: #ff4d6d;
}

/* BRANDS SECTION */
.brand-section {
	padding: 60px;
	text-align: center;
	background: linear-gradient(135deg, #ede7f6, #f5f5f5);
}

.brand-section h2 {
	color: #4a148c;
	margin-bottom: 40px;
}

.brand-grid {
	display: grid;
	grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
	gap: 25px;
	max-width: 1000px;
	margin: 0 auto;
}

.brand-card {
	background: white;
	padding: 20px;
	border-radius: 18px;
	box-shadow: 0 6px 18px rgba(0, 0, 0, 0.08);
	transition: all 0.3s ease;
	cursor: pointer;
	text-align: center;
}

.brand-card:hover {
	transform: scale(1.08) translateY(-5px);
	background: linear-gradient(135deg, #f3e5f5, #d1c4e9);
	box-shadow: 0 12px 30px rgba(106, 27, 154, 0.5);
}

.brand-card h3 {
	font-size: 16px;
	font-weight: 600;
	margin-bottom: 10px;
	text-transform: capitalize;
	color: #333;
}

.brand-card img {
	width: 80px;
	height: 80px;
	object-fit: contain;
	transition: transform 0.3s ease;
}

.brand-card:hover img {
	transform: scale(1.15);
}

/* FOOTER */
.footer {
	background: #3b005a;
	color: white;
	padding: 50px 60px 30px;
}

.footer-container {
	display: flex;
	justify-content: space-between;
	flex-wrap: wrap;
	gap: 30px;
	margin-bottom: 30px;
}

.footer-col {
	flex: 1;
	min-width: 180px;
}

.footer-col h3 {
	margin-bottom: 15px;
	font-size: 18px;
}

.footer-col p {
	font-size: 14px;
	line-height: 1.6;
	color: #ddd;
}

.footer-col a {
	display: block;
	color: #ddd;
	text-decoration: none;
	margin-bottom: 8px;
	font-size: 14px;
	transition: color 0.3s;
}

.footer-col a:hover {
	color: #ff4d6d;
}

.footer-bottom {
	text-align: center;
	padding-top: 20px;
	border-top: 1px solid rgba(255, 255, 255, 0.1);
	color: #ccc;
	font-size: 14px;
}

/* SUGGESTION BOX */
.suggestion-box {
	position: absolute;
	top: 45px;
	left: 0;
	width: 100%;
	background: white;
	border-radius: 10px;
	box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
	max-height: 200px;
	overflow-y: auto;
	display: none;
	z-index: 999;
}

.suggestion-item {
	padding: 10px 15px;
	cursor: pointer;
	transition: background 0.3s;
}

.suggestion-item:hover {
	background: #f3e5f5;
}

/* RESPONSIVE */
@media ( max-width : 768px) {
	.header {
		flex-direction: column;
		align-items: stretch;
	}
	.menu {
		margin-left: 0;
		justify-content: center;
	}
	.search-bar {
		width: 100%;
	}
	.slider-container {
		padding: 0 40px;
	}
	.card-link {
		flex: 0 0 250px;
	}
	.brand-grid {
		grid-template-columns: repeat(2, 1fr);
		gap: 15px;
	}
	.footer {
		padding: 40px 20px;
	}
	.footer-container {
		flex-direction: column;
		text-align: center;
	}
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

	<!-- HERO SECTION WITH SLIDER -->
	<div class="hero">
		<h1>Cars you'll love to buy</h1>
		<p>Verified used cars with full inspection</p>

		<div class="slider-container">
			<button class="arrow left" id="prevBtn">&#10094;</button>

			<div class="slider-wrapper" id="sliderWrapper">
				<div class="slider" id="slider">
					<c:forEach var="car" items="${customerCarList}">
						<a href="customerViewCarListing1?listingId=${car.listingId}"
							class="card-link car-item">
							<div class="card">
								<img src="${car.imageUrl}" alt="car">
								<div style="padding: 10px;">
									<h5>${car.brandName}${car.modelName}</h5>
									<p style="color: #4a148c; font-weight: bold;">&#8377;
										${car.price}</p>
								</div>
							</div>
						</a>
					</c:forEach>
				</div>
			</div>

			<button class="arrow right" id="nextBtn">&#10095;</button>
		</div>

		<div class="dots-container" id="dotsContainer"></div>

		<button class="sell-btn">Sell My Car</button>
	</div>

	<!-- BENEFITS SECTION -->
	<div class="section">
		<h2>AutoSphere Assured Benefits</h2>
		<div class="cards">
			<a href="quality-check" class="card-link">
				<div class="card">
					<img
						src="https://tse2.mm.bing.net/th/id/OIP.Dt_cmV3c7iAiI9hH3a_-oQHaHa">
					<p>&#10004; 200+ Quality Checks</p>
				</div>
			</a> <a href="trial" class="card-link">
				<div class="card">
					<img
						src="https://tse2.mm.bing.net/th/id/OIP.dLwwkw6ARI0Jm1Y6LMvgXwHaFL">
					<p>&#10004; 7 Days Trial</p>
				</div>
			</a> <a href="warranty" class="card-link">
				<div class="card">
					<img
						src="https://tse4.mm.bing.net/th/id/OIP.2-oHKJ06_H3EnJgGQQKTiQHaE8">
					<p>&#10004; 1 Year Warranty</p>
				</div>
			</a> <a href="fixed-price" class="card-link">
				<div class="card">
					<img
						src="https://tse3.mm.bing.net/th/id/OIP.ApW2_1cwNgxi_flgt4ZQngHaEl">
					<p>&#10004; Fixed Price</p>
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
			<button onclick="showVideo()" class="watch-btn">Watch how it
				works ▶️</button>
				<div id="videoContainer"
				style="display: none; text-align: center; margin-top: 30px; position: relative;">

				<!-- ❌ Close Button -->
				<span onclick="closeVideo()"
					style="position: absolute; right: 50px; top: -10px; font-size: 30px; cursor: pointer;">
					✖ </span>

				<iframe width="1000" height="550" src="" frameborder="0"
					allow="autoplay" allowfullscreen> </iframe>

			</div>
			<p class="learn-more">Learn more</p>
		</div>
	</div>

	<!-- BODY TYPE FILTER -->
	<div style="text-align: center; margin: 40px 0;">
		<h2 style="color: #4a148c;">Explore by Body Type</h2>

		<div style="margin-top: 20px;">
			<button class="filter-btn active" onclick="filterCars('ALL', this)">All</button>
<button class="filter-btn" onclick="filterCars('SUV', this)">SUV</button>
<button class="filter-btn" onclick="filterCars('SEDAN', this)">Sedan</button>
<button class="filter-btn" onclick="filterCars('HATCHBACK', this)">Hatchback</button>
<button class="filter-btn" onclick="filterCars('MUV', this)">MUV</button>
		</div>
	</div>
	<!-- FILTERED CARS SECTION -->
<div id="filteredCars" style="display:flex; flex-wrap:wrap; gap:20px; justify-content:center; padding:20px;">

    <c:forEach var="car" items="${customerCarList}">
    <div class="filter-car" data-type="${car.bodyType != null ? car.bodyType : 'UNKNOWN'}" style="width:250px;">
       
            
            <div class="card">
                <img src="${car.imageUrl}" alt="car">
                <div style="padding:10px;">
                    <h5>${car.brandName} ${car.modelName}</h5>
                    <p style="color:#4a148c; font-weight:bold;">
                        &#8377; ${car.price}
                    </p>
                </div>
            </div>

        </div>
    </c:forEach>

</div>

	<!-- BRANDS SECTION -->
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
				<a href="about">About</a> <a href="CareersPage">Careers</a> <a
					href="CustomerBlog">Blog</a> <a href="ContactPage">Contact</a>
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
		<div class="footer-bottom">&#169; 2026 AutoSphere | MCA Sem 4
			Project</div>
	</div>

	<script>
// ========== SLIDER CODE - 100% WORKING ==========
const sliderWrapper = document.getElementById('sliderWrapper');
const slider = document.getElementById('slider');
const prevBtn = document.getElementById('prevBtn');
const nextBtn = document.getElementById('nextBtn');
const dotsContainer = document.getElementById('dotsContainer');

let currentIndex = 0;
let autoSlideInterval;
let totalSlides = 0;
let slides = [];

// Get all cards
function getSlides() {
    return Array.from(document.querySelectorAll('#slider .card-link'));
}

// Calculate card width (including gap)
function getCardWidth() {
    const firstCard = document.querySelector('#slider .card-link');
    if (!firstCard) return 315;
    const style = window.getComputedStyle(firstCard);
    const marginRight = parseInt(style.marginRight) || 0;
    return firstCard.offsetWidth + marginRight;
}

// Update slider position
function updateSliderPosition(animate = true) {
    if (animate) {
        sliderWrapper.style.scrollBehavior = 'smooth';
    } else {
        sliderWrapper.style.scrollBehavior = 'auto';
    }
    const cardWidth = getCardWidth();
    sliderWrapper.scrollLeft = currentIndex * cardWidth;
}

// Go to specific slide
function goToSlide(index) {
    if (index < 0) {
        index = 0;
    }
    if (index >= totalSlides) {
        index = totalSlides - 1;
    }
    currentIndex = index;
    updateSliderPosition(true);
    updateDots();
    resetAutoPlay();
}

// Next slide
function nextSlide() {
    if (currentIndex < totalSlides - 1) {
        currentIndex++;
        updateSliderPosition(true);
    } else {
        // Loop to first slide
        currentIndex = 0;
        updateSliderPosition(true);
    }
    updateDots();
    resetAutoPlay();
}

// Previous slide
function prevSlide() {
    if (currentIndex > 0) {
        currentIndex--;
        updateSliderPosition(true);
    } else {
        // Loop to last slide
        currentIndex = totalSlides - 1;
        updateSliderPosition(true);
    }
    updateDots();
    resetAutoPlay();
}

// Create dots
function createDots() {
    if (!dotsContainer) return;
    dotsContainer.innerHTML = '';
    
    for (let i = 0; i < totalSlides; i++) {
        const dot = document.createElement('div');
        dot.classList.add('dot');
        dot.addEventListener('click', () => goToSlide(i));
        dotsContainer.appendChild(dot);
    }
    updateDots();
}

// Update active dot
function updateDots() {
    const dots = document.querySelectorAll('.dot');
    dots.forEach((dot, i) => {
        if (i === currentIndex) {
            dot.classList.add('active');
        } else {
            dot.classList.remove('active');
        }
    });
}

// Auto play
function startAutoPlay() {
    if (autoSlideInterval) clearInterval(autoSlideInterval);
    autoSlideInterval = setInterval(() => {
        nextSlide();
    }, 3000);
}

function resetAutoPlay() {
    clearInterval(autoSlideInterval);
    startAutoPlay();
}

// Stop auto on hover
function setupHoverPause() {
    const container = document.querySelector('.slider-container');
    if (container) {
        container.addEventListener('mouseenter', () => {
            clearInterval(autoSlideInterval);
        });
        container.addEventListener('mouseleave', () => {
            startAutoPlay();
        });
    }
}

// Handle scroll event to update current index
function handleScroll() {
    const cardWidth = getCardWidth();
    const scrollPosition = sliderWrapper.scrollLeft;
    const newIndex = Math.round(scrollPosition / cardWidth);
    
    if (newIndex !== currentIndex && newIndex >= 0 && newIndex < totalSlides) {
        currentIndex = newIndex;
        updateDots();
    }
}

// Initialize slider
function initSlider() {
    slides = getSlides();
    totalSlides = slides.length;
    
    if (totalSlides === 0) return;
    
    createDots();
    startAutoPlay();
    setupHoverPause();
    
    // Add scroll listener
    sliderWrapper.addEventListener('scroll', handleScroll);
    
    // Add button listeners
    if (prevBtn) prevBtn.addEventListener('click', prevSlide);
    if (nextBtn) nextBtn.addEventListener('click', nextSlide);
}

// Initialize when page loads
window.addEventListener('load', initSlider);

// ========== SEARCH SUGGESTIONS ==========
const cars = ["Thar","Scorpio","Bolero","XUV300","XUV500","XUV700",
              "Swift","Swift Dzire","Baleno","Brezza","Ertiga","Alto",
              "WagonR","Celerio","Ignis","S-Presso","BMW","Audi","Mercedes",
              "Fortuner","Innova","Innova Crysta","Innova Hycross","Honda City",
              "Amaze","Civic","CR-V","Verna","Creta","Venue","i10","i20",
              "Kia Seltos","Kia Sonet","Kia Carens","MG Hector","MG Astor",
              "Tata Nexon","Tata Punch","Tata Harrier","Tata Safari","Tata Tiago",
              "Tata Tigor","Skoda Slavia","Skoda Kushaq","Volkswagen Polo",
              "Virtus","Jeep Compass","Range Rover","Land Rover","Jaguar","Mini Cooper"];

const cities = ["Ahmedabad","Surat","Rajkot","Vadodara","Gandhinagar",
                "Bhavnagar","Jamnagar","Junagadh","Anand","Navsari","Mehsana",
                "Morbi","Surendranagar","Porbandar","Palanpur","Valsad","Bharuch",
                "Godhra","Patan","Dahod","Bhuj","Veraval","Amreli","Gondal",
                "Kalol","Nadiad","Mumbai","Delhi","Bengaluru","Chennai","Kolkata",
                "Hyderabad","Pune","Jaipur","Lucknow","Kanpur","Nagpur","Indore",
                "Bhopal","Patna","Chandigarh","Coimbatore","Kochi","Visakhapatnam",
                "Agra","Varanasi","Madurai","Nashik","Faridabad","Ghaziabad","Noida"];

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

// Click outside to close suggestions
document.addEventListener("click", function(event) {
    let cityBox = document.getElementById("citySuggestionBox");
    let cityInput = document.getElementById("cityInput");
    let carBox = document.getElementById("suggestionBox");
    let carInput = document.getElementById("searchInput");

    if (cityInput && cityBox && !cityInput.contains(event.target) && !cityBox.contains(event.target)) {
        cityBox.style.display = "none";
        cityInput.value = "";
    }

    if (carInput && carBox && !carInput.contains(event.target) && !carBox.contains(event.target)) {
        carBox.style.display = "none";
        carInput.value = "";
    }
});

function filterCars(type, btn) {

    let cars = document.querySelectorAll(".filter-car");

    cars.forEach(car => {
        let carType = car.getAttribute("data-type");

        // 🔥 NULL / UNKNOWN safe
        if (!carType || carType === "UNKNOWN") {
            car.style.display = "block";
            return;
        }

        if (type === "ALL" || carType === type) {
            car.style.display = "block";
        } else {
            car.style.display = "none";
        }
    });

    document.querySelectorAll(".filter-btn").forEach(b => {
        b.classList.remove("active");
    });

    btn.classList.add("active");
}
function showVideo() {
    const container = document.getElementById("videoContainer");
    const iframe = container.querySelector("iframe");

    container.style.display = "block";
    iframe.src = "https://www.youtube.com/embed/COl7h8BEUZA?autoplay=1";
}

function closeVideo() {
    const container = document.getElementById("videoContainer");
    const iframe = container.querySelector("iframe");

    container.style.display = "none";
    iframe.src = ""; // video stop
}
</script>

</body>
</html>