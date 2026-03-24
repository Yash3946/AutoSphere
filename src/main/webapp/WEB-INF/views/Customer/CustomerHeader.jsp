<%@ page contentType="text/html;charset=UTF-8"%>

<style>

body {
	margin: 0;
	font-family: Arial;
	background: #f4f6fb;
	padding-top: 80px; /* header space */
}

/* HEADER */
.header {
	display: flex;
	align-items: center;
	padding: 15px 40px;
	background: white;
	border-bottom: 1px solid #ddd;

	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	z-index: 1000;

	box-shadow: 0 2px 10px rgba(0,0,0,0.1);
}

/* LOGO */
.logo {
	display: flex;
	align-items: center;
	gap: 12px;
	font-size: 26px;
	font-weight: bold;
	color: #6a1b9a;
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

/* CITY */
.city-select {
	padding: 8px 16px;
	border-radius: 22px;
	border: 1px solid #d1c4e9;
	background: #f3e5f5;
	margin: 0 20px;
}

/* SEARCH */
.search-bar {
	display: flex;
	align-items: center;
	background: #f3e5f5;
	padding: 8px 14px;
	border-radius: 25px;
	width: 300px;
}

.search-bar input {
	border: none;
	background: transparent;
	outline: none;
	width: 100%;
}

/* MENU */
.menu {
	margin-left: auto;
}

.menu a {
	margin-left: 18px;
	text-decoration: none;
	color: #333;
	font-size: 14px;
}

.menu a:hover {
	color: #6a1b9a;
}

/* RESPONSIVE */
@media (max-width:768px) {

	.search-bar {
		width: 180px;
	}

	.menu a {
		font-size: 12px;
		margin-left: 10px;
	}

	.logo {
		font-size: 20px;
	}

	.logo-icon {
		width: 30px;
		height: 30px;
	}

	.logo-icon span {
		font-size: 14px;
	}
}

</style>

<!-- HEADER START -->

<div class="header">

	<!-- LOGO -->
	<a href="customer-dashboard" class="logo">
		<div class="logo-icon">
			<span>A</span>
		</div>
		AutoSphere
	</a>

	<!-- CITY -->
	<input type="text" class="city-select" placeholder="Select City">

	<!-- SEARCH -->
	<div class="search-bar">
		<input type="text" placeholder="Search cars...">
	</div>

	<!-- MENU -->
	<div class="menu">
		<a href="CustomerCarList">List Car</a>
		<a href="#brands">Car Brand</a>
		<a href="wishlist">My Cart</a>
		<a href="#">Buy Car</a>
		<a href="#">Sell Car</a>
		<a href="login">Login</a>
		<a href="CustomerSignup">Register</a>
	</div>

</div>

<!-- HEADER END -->